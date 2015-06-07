{-# LANGUAGE CPP #-}
module GHCJS.DOM.NodeList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.NodeList
#else
  module Graphics.UI.Gtk.WebKit.DOM.NodeList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.NodeList
#else
import Graphics.UI.Gtk.WebKit.DOM.NodeList
#endif
