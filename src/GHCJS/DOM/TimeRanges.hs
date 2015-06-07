{-# LANGUAGE CPP #-}
module GHCJS.DOM.TimeRanges (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.TimeRanges
#else
  module Graphics.UI.Gtk.WebKit.DOM.TimeRanges
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.TimeRanges
#else
import Graphics.UI.Gtk.WebKit.DOM.TimeRanges
#endif
