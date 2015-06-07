{-# LANGUAGE CPP #-}
module GHCJS.DOM.Node (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Node
#else
  module Graphics.UI.Gtk.WebKit.DOM.Node
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Node
#else
import Graphics.UI.Gtk.WebKit.DOM.Node
#endif
