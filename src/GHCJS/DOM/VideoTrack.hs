{-# LANGUAGE CPP #-}
module GHCJS.DOM.VideoTrack (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.VideoTrack
#else
  module Graphics.UI.Gtk.WebKit.DOM.VideoTrack
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.VideoTrack
#else
import Graphics.UI.Gtk.WebKit.DOM.VideoTrack
#endif
