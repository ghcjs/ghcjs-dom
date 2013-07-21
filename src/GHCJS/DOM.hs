{-# LANGUAGE CPP, ForeignFunctionInterface #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE JavaScriptFFI #-}
#endif
module GHCJS.DOM (
  currentWindow
, currentDocument
, WebView(..)
, webViewGetDomDocument
, runWebGUI
) where

#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.Types (JSRef(..))
import Control.Applicative ((<$>))
#else
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
import Control.Monad.IO.Class (liftIO)
#endif

import GHCJS.DOM.Types
import GHCJS.DOM.DOMWindow (domWindowGetNavigator, domWindowGetDocument)
import GHCJS.DOM.Navigator (navigatorGetUserAgent)
import Foreign (ForeignPtr, nullPtr, Ptr)
import Control.Monad (unless, forever, liftM)
import Control.Concurrent
       (yield, threadDelay, takeMVar, newEmptyMVar)
import System.Environment (getArgs)
import Data.List (isSuffixOf)

#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
#ifdef __GHCJS__
foreign import javascript unsafe "$r = window"
  ghcjs_currentWindow :: IO (JSRef DOMWindow)
foreign import javascript unsafe "$r = document"
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

type WebView = DOMWindow
castToWebView = id

webViewGetDomDocument :: IsDOMWindow w => w -> IO (Maybe Document)
webViewGetDomDocument = domWindowGetDocument
#else
foreign import ccall safe "ghcjs_currentWindow"
  ghcjs_currentWindow :: IO (Ptr DOMWindow)

currentWindow :: IO (Maybe DOMWindow)
currentWindow = maybeNull (makeNewGObject mkDOMWindow) ghcjs_currentWindow

foreign import ccall unsafe "ghcjs_currentDocument"
  ghcjs_currentDocument :: IO (Ptr Document)

currentDocument :: IO (Maybe Document)
currentDocument = maybeNull (makeNewGObject mkDocument) ghcjs_currentDocument
#endif

runWebGUI :: (WebView -> IO ()) -> IO ()
runWebGUI = runWebGUI' "GHCJS"

runWebGUI' :: String -> (WebView -> IO ()) -> IO ()
runWebGUI' userAgentKey main = do
  -- Are we in a java script inside some kind of browser
  mbWindow <- currentWindow
  case mbWindow of
    Just window -> do
      -- Check if we are running in javascript inside the the native version
      Just n <- domWindowGetNavigator window
      agent <- navigatorGetUserAgent n
      unless ((" " ++ userAgentKey) `isSuffixOf` agent) $ main (castToWebView window)
    Nothing -> do
      makeDefaultWebView userAgentKey main

makeDefaultWebView :: String -> (WebView -> IO ()) -> IO ()
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
makeDefaultWebView _ _ = error "Unsupported makeDefaultWebView"
#else
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
    main webView
  args <- getArgs
  case args of
    uri:_ -> webViewLoadUri webView uri
    []    -> do
      main webView
  mainGUI
#endif
