{-# LANGUAGE CPP #-}
module GHCJS.DOM.Selection (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Selection
#else
  module Graphics.UI.Gtk.WebKit.DOM.Selection
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Selection
#else
import Graphics.UI.Gtk.WebKit.DOM.Selection
#endif
