{-# LANGUAGE CPP, ForeignFunctionInterface #-}
#ifndef MIN_VERSION_webkit
{-# LANGUAGE JavaScriptFFI #-}
#endif
module GHCJS.DOM (
  currentWindow
, currentDocument
, runWebGUI
) where

#ifdef MIN_VERSION_webkit
import Graphics.UI.Gtk.WebKit.WebView
       (webViewSetWebSettings, webViewGetWebSettings, loadStarted,
        webViewLoadUri, loadFinished, webViewNew)
import Graphics.UI.Gtk
       (timeoutAddFull, widgetShowAll, mainQuit, onDestroy,
        WindowPosition(..), containerAdd, scrolledWindowNew,
        windowSetPosition, windowSetDefaultSize, windowNew, mainGUI,
        initGUI)
import System.Glib.Signals (on)
import System.Glib.Attributes (get, AttrOp(..), set)
import Graphics.UI.Gtk.WebKit.WebSettings (webSettingsUserAgent)
#else
import GHCJS.Types (JSRef(..))
import Control.Applicative ((<$>))
#endif

import GHCJS.DOM.Types
import GHCJS.DOM.DOMWindow (domWindowGetNavigator)
import GHCJS.DOM.Navigator (navigatorGetUserAgent)
import Foreign (ForeignPtr, nullPtr, Ptr)
import Control.Monad (unless, forever, liftM)
import Control.Concurrent
       (yield, threadDelay, takeMVar, newEmptyMVar)
import System.Environment (getArgs)
import Data.List (isSuffixOf)

#ifdef MIN_VERSION_webkit
foreign import ccall safe "ghcjs_currentWindow"
  ghcjs_currentWindow :: IO (Ptr DOMWindow)

currentWindow :: IO (Maybe DOMWindow)
currentWindow = maybeNull (makeNewGObject mkDOMWindow) ghcjs_currentWindow

foreign import ccall unsafe "ghcjs_currentDocument"
  ghcjs_currentDocument :: IO (Ptr Document)

currentDocument :: IO (Maybe Document)
currentDocument = maybeNull (makeNewGObject mkDocument) ghcjs_currentDocument
#else

#ifdef __GHCJS__ 
foreign import javascript unsafe "window.window"
  ghcjs_currentWindow :: IO (JSRef DOMWindow)
foreign import javascript unsafe "window.document"
  ghcjs_currentDocument :: IO (JSRef Document)
#else 
ghcjs_currentWindow :: IO (JSRef DOMWindow)
ghcjs_currentWindow = undefined
ghcjs_currentDocument :: IO (JSRef Document)
ghcjs_currentDocument = undefined
#endif

currentWindow :: IO (Maybe DOMWindow)
currentWindow = fmap DOMWindow . maybeJSNull <$> ghcjs_currentWindow
currentDocument :: IO (Maybe Document)
currentDocument = fmap Document . maybeJSNull <$> ghcjs_currentDocument
#endif

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
#ifdef MIN_VERSION_webkit
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
    []    -> main (castToDOMWindow webView)
  mainGUI
#else
makeDefaultWebView _ _ = error "Unsupported makeDefaultWebView"
#endif
