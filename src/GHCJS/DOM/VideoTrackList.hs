{-# LANGUAGE CPP #-}
module GHCJS.DOM.VideoTrackList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.VideoTrackList
#else
  module Graphics.UI.Gtk.WebKit.DOM.VideoTrackList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.VideoTrackList
#else
import Graphics.UI.Gtk.WebKit.DOM.VideoTrackList
#endif
