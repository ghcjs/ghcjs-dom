{-# LANGUAGE CPP #-}
module GHCJS.DOM.PerformanceNavigation (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.PerformanceNavigation
#else
  module Graphics.UI.Gtk.WebKit.DOM.PerformanceNavigation
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.PerformanceNavigation
#else
import Graphics.UI.Gtk.WebKit.DOM.PerformanceNavigation
#endif
