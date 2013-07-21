{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Window (BarInfo, IsBarInfo) where
 
data BarInfo = BarInfo
 
class IsBarInfo a
 
instance IsBarInfo BarInfo
#else
module GHCJS.DOM.Window (
  module Graphics.UI.Gtk.WebKit.DOM.Window
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Window
#endif
