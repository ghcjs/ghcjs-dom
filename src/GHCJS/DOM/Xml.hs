{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Xml (XMLHttpRequest, IsXMLHttpRequest) where
 
data XMLHttpRequest = XMLHttpRequest
 
class IsXMLHttpRequest a
 
instance IsXMLHttpRequest XMLHttpRequest
#else
module GHCJS.DOM.Xml (
  module Graphics.UI.Gtk.WebKit.DOM.Xml
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Xml
#endif
