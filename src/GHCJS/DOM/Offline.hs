{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Offline
       (DOMApplicationCache, IsDOMApplicationCache) where
 
data DOMApplicationCache = DOMApplicationCache
 
class IsDOMApplicationCache a
 
instance IsDOMApplicationCache DOMApplicationCache
#else
module GHCJS.DOM.Offline (
  module Graphics.UI.Gtk.WebKit.DOM.Offline
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Offline
#endif
