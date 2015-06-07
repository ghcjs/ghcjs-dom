{-# LANGUAGE CPP #-}
module GHCJS.DOM.DOMImplementation (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.DOMImplementation
#else
  module Graphics.UI.Gtk.WebKit.DOM.DOMImplementation
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.DOMImplementation
#else
import Graphics.UI.Gtk.WebKit.DOM.DOMImplementation
#endif
