{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Ranges (DOMRange, IsDOMRange) where
 
data DOMRange = DOMRange
 
class IsDOMRange a
 
instance IsDOMRange DOMRange
#else
module GHCJS.DOM.Ranges (
  module Graphics.UI.Gtk.WebKit.DOM.Ranges
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Ranges
#endif
