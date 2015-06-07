{-# LANGUAGE CPP #-}
module GHCJS.DOM.PerformanceTiming (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.PerformanceTiming
#else
  module Graphics.UI.Gtk.WebKit.DOM.PerformanceTiming
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.PerformanceTiming
#else
import Graphics.UI.Gtk.WebKit.DOM.PerformanceTiming
#endif
