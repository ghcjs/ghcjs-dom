{-# LANGUAGE CPP #-}
module GHCJS.DOM.NodeIterator (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.NodeIterator
#else
  module Graphics.UI.Gtk.WebKit.DOM.NodeIterator
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.NodeIterator
#else
import Graphics.UI.Gtk.WebKit.DOM.NodeIterator
#endif
