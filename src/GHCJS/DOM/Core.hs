{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Core (DOMAttr, IsDOMAttr) where
 
data DOMAttr = DOMAttr
 
class (IsNode a) => IsDOMAttr a
 
instance IsDOMAttr DOMAttr
 
instance IsNode DOMAttr
#else
module GHCJS.DOM.Core (
  module Graphics.UI.Gtk.WebKit.DOM.Core
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Core
#endif
