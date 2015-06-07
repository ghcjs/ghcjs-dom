{-# LANGUAGE CPP #-}
module GHCJS.DOM.TextTrackCue (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.TextTrackCue
#else
  module Graphics.UI.Gtk.WebKit.DOM.TextTrackCue
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.TextTrackCue
#else
import Graphics.UI.Gtk.WebKit.DOM.TextTrackCue
#endif
