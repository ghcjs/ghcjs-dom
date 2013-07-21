{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.View (MediaQueryList, IsMediaQueryList) where
 
data MediaQueryList = MediaQueryList
 
class IsMediaQueryList a
 
instance IsMediaQueryList MediaQueryList
#else
module GHCJS.DOM.View (
  module Graphics.UI.Gtk.WebKit.DOM.View
  ) where
import Graphics.UI.Gtk.WebKit.DOM.View
#endif
