{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLLegendElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLLegendElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLegendElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLLegendElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLLegendElement
#endif
