{-# LANGUAGE CPP, ForeignFunctionInterface, OverloadedStrings #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE JavaScriptFFI #-}
#endif
module GHCJS.DOM (
  currentWindow
, currentDocument
, WebView(..)
, webViewGetDomDocument
, runWebGUI
, enableInspector
, postGUISync
, postGUIAsync
) where

import qualified Data.Text as T
import Data.Monoid ((<>))
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.Types (JSRef(..))
import Control.Applicative ((<$>))
#else
import Graphics.UI.Gtk.WebKit.WebView
       (webViewSetWebSettings, webViewGetWebSettings, loadStarted,
        webViewLoadUri, loadFinished, webViewNew, webViewGetDomDocument,
        webViewGetInspector)
import Graphics.UI.Gtk.WebKit.WebInspector
       (showWindow, inspectWebView)
import Graphics.UI.Gtk
       (timeoutAddFull, widgetShowAll, mainQuit, objectDestroy,
        WindowPosition(..), containerAdd, scrolledWindowNew,
        windowSetPosition, windowSetDefaultSize, windowNew, mainGUI,
        initGUI, postGUISync, postGUIAsync)
import System.Glib.Signals (on)
import System.Glib.Attributes (get, AttrOp(..), set)
import System.Glib.FFI (maybeNull)
import System.Glib.MainLoop (priorityLow)
import Graphics.UI.Gtk.WebKit.WebSettings
       (webSettingsMonospaceFontFamily, webSettingsUserAgent,
        webSettingsEnableDeveloperExtras)
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

#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
postGUIAsync :: IO () -> IO ()
postGUIAsync = id

postGUISync :: IO a -> IO a
postGUISync = id

#ifdef ghcjs_HOST_OS
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

runWebGUI' :: T.Text -> (WebView -> IO ()) -> IO ()
runWebGUI' userAgentKey main = do
  -- Are we in a java script inside some kind of browser
  mbWindow <- currentWindow
  case mbWindow of
    Just window -> do
      -- Check if we are running in javascript inside the the native version
      Just n <- domWindowGetNavigator window
      agent <- navigatorGetUserAgent n
      unless ((" " <> userAgentKey) `T.isSuffixOf` agent) $ main (castToWebView window)
    Nothing -> do
      makeDefaultWebView userAgentKey main

makeDefaultWebView :: T.Text -> (WebView -> IO ()) -> IO ()
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
makeDefaultWebView _ _ = error "Unsupported makeDefaultWebView"
#else
makeDefaultWebView userAgentKey main = do
  initGUI
  window <- windowNew
  timeoutAddFull (yield >> return True) priorityLow 10
  windowSetDefaultSize window 900 600
  windowSetPosition window WinPosCenter
  scrollWin <- scrolledWindowNew Nothing Nothing
  webView <- webViewNew
  settings <- webViewGetWebSettings webView
  userAgent <- settings `get` webSettingsUserAgent
  settings `set` [webSettingsUserAgent := userAgent <> " " <> userAgentKey]
  webViewSetWebSettings webView settings
  window `containerAdd` scrollWin
  scrollWin `containerAdd` webView
  on window objectDestroy . liftIO $ mainQuit
  widgetShowAll window
  webView `on` loadFinished $ \frame -> do
    main webView
  args <- getArgs
  case args of
    uri:_ -> webViewLoadUri webView (T.pack uri)
    []    -> do
      main webView
  mainGUI
#endif

enableInspector :: WebView -> IO ()
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
enableInspector _ = return ()
#else
enableInspector webView = do
  settings <- webViewGetWebSettings webView
  settings `set` [webSettingsEnableDeveloperExtras := True]
  webViewSetWebSettings webView settings
  inspector <- webViewGetInspector webView
  window <- windowNew
  windowSetDefaultSize window 900 300
  scrollWin <- scrolledWindowNew Nothing Nothing
  inspector `on` inspectWebView $ \view -> do
    inspectorView <- webViewNew
    settings <- webViewGetWebSettings inspectorView
    settings `set` [webSettingsMonospaceFontFamily := ("Consolas" :: String)]
    webViewSetWebSettings inspectorView settings
    scrollWin `containerAdd` inspectorView
    window `containerAdd` scrollWin
    widgetShowAll window
    return inspectorView
  inspector `on` showWindow $ do
    widgetShowAll window
    return True
  return ()
#endif
