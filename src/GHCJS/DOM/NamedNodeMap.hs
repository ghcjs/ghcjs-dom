{-# LANGUAGE CPP #-}
module GHCJS.DOM.NamedNodeMap (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.NamedNodeMap
#else
  module Graphics.UI.Gtk.WebKit.DOM.NamedNodeMap
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.NamedNodeMap
#else
import Graphics.UI.Gtk.WebKit.DOM.NamedNodeMap
#endif
