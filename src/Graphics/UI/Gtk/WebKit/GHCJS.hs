{-# LANGUAGE ForeignFunctionInterface #-}
module Graphics.UI.Gtk.WebKit.GHCJS (
  currentWindow
, currentDocument
, runWebGUI
) where

import System.Glib.FFI
import Graphics.UI.Gtk.WebKit.Types
import Foreign (ForeignPtr, nullPtr, Ptr)
import Control.Monad (unless, forever, liftM)
import Graphics.UI.Gtk.WebKit.WebView
       (webViewSetWebSettings, webViewGetWebSettings, loadStarted,
        webViewLoadUri, loadFinished, webViewNew)
import Graphics.UI.Gtk
       (timeoutAddFull, widgetShowAll, mainQuit, onDestroy,
        WindowPosition(..), containerAdd, scrolledWindowNew,
        windowSetPosition, windowSetDefaultSize, windowNew, mainGUI,
        initGUI)
import Control.Concurrent
       (yield, threadDelay, takeMVar, newEmptyMVar)
import System.Glib.Signals (on)
import System.Environment (getArgs)
import System.Glib.Attributes (get, AttrOp(..), set)
import Graphics.UI.Gtk.WebKit.WebSettings (webSettingsUserAgent)
import Data.List (isSuffixOf)
import Graphics.UI.Gtk.WebKit.DOM.DOMWindow (domWindowGetNavigator)
import Graphics.UI.Gtk.WebKit.DOM.Navigator (navigatorGetUserAgent)
import Graphics.UI.Gtk.General.General (priorityHigh)

foreign import ccall safe "ghcjs_currentWindow"
  ghcjs_currentWindow :: IO (Ptr WebView)

currentWindow :: IO (Maybe WebView)
currentWindow = maybeNull (makeNewGObject mkWebView) ghcjs_currentWindow

foreign import ccall unsafe "ghcjs_currentDocument"
  ghcjs_currentDocument :: IO (Ptr Document)

currentDocument :: IO (Maybe Document)
currentDocument = maybeNull (makeNewGObject mkDocument) ghcjs_currentDocument

runWebGUI :: (WebView -> IO ()) -> IO ()
runWebGUI = runWebGUI' "GHCJS"

runWebGUI' :: String -> (WebView -> IO ()) -> IO ()
runWebGUI' userAgentKey main = do
  -- Are we in a java script inside some kind of browser
  mbWebView <- currentWindow
  case mbWebView of
    Just webView -> do
      -- Check if we are running in javascript inside the the native version
      Just n <- domWindowGetNavigator (castToDOMWindow webView)
      agent <- navigatorGetUserAgent n
      unless ((" " ++ userAgentKey) `isSuffixOf` agent) $ main webView
    Nothing -> do
      makeDefaultWebView userAgentKey main

makeDefaultWebView :: String -> (WebView -> IO ()) -> IO ()
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
  window `onDestroy` mainQuit
  widgetShowAll window
  webView `on` loadFinished $ \frame -> do
    main webView
  args <- getArgs
  case args of
    uri:_ -> webViewLoadUri webView uri
    []    -> main webView
  mainGUI

