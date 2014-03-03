{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Traversal (NodeFilter, IsNodeFilter) where
 
data NodeFilter = NodeFilter
 
class IsNodeFilter a
 
instance IsNodeFilter NodeFilter
#else
module GHCJS.DOM.Traversal (
  module Graphics.UI.Gtk.WebKit.DOM.Traversal
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Traversal
#endif
