{-# LANGUAGE ForeignFunctionInterface #-}
module GHCJS.DOM (
  currentWindow
, currentDocument
, runWebGUI
) where

import Graphics.UI.Gtk.WebKit.WebView
       (webViewSetWebSettings, webViewGetWebSettings, loadStarted,
        webViewLoadUri, loadFinished, webViewNew, webViewGetDomDocument)
import Graphics.UI.Gtk
       (timeoutAddFull, widgetShowAll, mainQuit, destroyEvent,
        WindowPosition(..), containerAdd, scrolledWindowNew,
        windowSetPosition, windowSetDefaultSize, windowNew, mainGUI,
        initGUI)
import System.Glib.Signals (on)
import System.Glib.Attributes (get, AttrOp(..), set)
import System.Glib.FFI (maybeNull)
import System.Glib.MainLoop (priorityHigh)
import Graphics.UI.Gtk.WebKit.WebSettings (webSettingsUserAgent)

import GHCJS.DOM.Types
import GHCJS.DOM.Document (documentGetDefaultView)
import GHCJS.DOM.DOMWindow (domWindowGetNavigator)
import GHCJS.DOM.Navigator (navigatorGetUserAgent)
import Foreign (ForeignPtr, nullPtr, Ptr)
import Control.Monad (unless, forever, liftM)
import Control.Concurrent
       (yield, threadDelay, takeMVar, newEmptyMVar)
import System.Environment (getArgs)
import Data.List (isSuffixOf)
import Control.Monad.Trans (liftIO)

foreign import ccall safe "ghcjs_currentWindow"
  ghcjs_currentWindow :: IO (Ptr DOMWindow)

currentWindow :: IO (Maybe DOMWindow)
currentWindow = maybeNull (makeNewGObject mkDOMWindow) ghcjs_currentWindow

foreign import ccall unsafe "ghcjs_currentDocument"
  ghcjs_currentDocument :: IO (Ptr Document)

currentDocument :: IO (Maybe Document)
currentDocument = maybeNull (makeNewGObject mkDocument) ghcjs_currentDocument

runWebGUI :: (DOMWindow -> IO ()) -> IO ()
runWebGUI = runWebGUI' "GHCJS"

runWebGUI' :: String -> (DOMWindow -> IO ()) -> IO ()
runWebGUI' userAgentKey main = do
  -- Are we in a java script inside some kind of browser
  mbWindow <- currentWindow
  case mbWindow of
    Just window -> do
      -- Check if we are running in javascript inside the the native version
      Just n <- domWindowGetNavigator window
      agent <- navigatorGetUserAgent n
      unless ((" " ++ userAgentKey) `isSuffixOf` agent) $ main window
    Nothing -> do
      makeDefaultWebView userAgentKey main

makeDefaultWebView :: String -> (DOMWindow -> IO ()) -> IO ()
makeDefaultWebView userAgentKey main = do
  initGUI
  window <- windowNew
  timeoutAddFull (yield >> return True) priorityHigh 10
  windowSetDefaultSize window 900 600
  windowSetPosition window WinPosCenter
  scrollWin <- scrolledWindowNew Nothing Nothing
  webView <- webViewNew
  settings <- webViewGetWebSettings webView
  userAgent <- settings `get` webSettingsUserAgent
  settings `set` [webSettingsUserAgent := userAgent ++ " " ++ userAgentKey]
  webViewSetWebSettings webView settings
  window `containerAdd` scrollWin
  scrollWin `containerAdd` webView
  on window destroyEvent . liftIO $ mainQuit >> return False
  widgetShowAll window
  webView `on` loadFinished $ \frame -> do
    Just doc <- webViewGetDomDocument webView
    Just window <- documentGetDefaultView doc
    main window
  args <- getArgs
  case args of
    uri:_ -> webViewLoadUri webView uri
    []    -> do
        Just doc <- webViewGetDomDocument webView
        Just window <- documentGetDefaultView doc
        main window
  mainGUI
