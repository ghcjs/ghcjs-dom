{-# LANGUAGE ForeignFunctionInterface #-}
module Graphics.UI.Gtk.WebKit.GHCJS (
  currentWindow
, currentDocument
, runWebGUI
) where

import System.Glib.FFI
import Graphics.UI.Gtk.WebKit.Types
import Foreign (ForeignPtr, nullPtr, Ptr)
import Control.Monad (liftM)
import Graphics.UI.Gtk.WebKit.WebView (webViewNew)
import Graphics.UI.Gtk
       (widgetShowAll, mainQuit, onDestroy, WindowPosition(..),
        containerAdd, scrolledWindowNew, windowSetPosition,
        windowSetDefaultSize, windowNew, mainGUI, initGUI)

foreign import ccall safe "ghcjs_currentWindow"
  ghcjs_currentWindow :: IO (Ptr WebView)

currentWindow :: IO (Maybe WebView)
currentWindow = maybeNull (makeNewGObject mkWebView) ghcjs_currentWindow

foreign import ccall unsafe "ghcjs_currentDocument"
  ghcjs_currentDocument :: IO (Ptr Document)

currentDocument :: IO (Maybe Document)
currentDocument = maybeNull (makeNewGObject mkDocument) ghcjs_currentDocument

runWebGUI main = do
  mbWebView <- currentWindow
  case mbWebView of
    Just webView -> main webView
    Nothing -> do
      initGUI
      webView <- makeDefaultWebView
      result <- main webView
      mainGUI
      return result

makeDefaultWebView = do
  window <- windowNew
  windowSetDefaultSize window 900 600
  windowSetPosition window WinPosCenter
  scrollWin <- scrolledWindowNew Nothing Nothing
  webView <- webViewNew
  window `containerAdd` scrollWin
  scrollWin `containerAdd` webView
  window `onDestroy` mainQuit
  widgetShowAll window
  return webView
