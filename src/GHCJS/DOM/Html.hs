{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Html (Blob, IsBlob) where
 
data Blob = Blob
 
class IsBlob a
 
instance IsBlob Blob
#else
module GHCJS.DOM.Html (
  module Graphics.UI.Gtk.WebKit.DOM.Html
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Html
#endif
