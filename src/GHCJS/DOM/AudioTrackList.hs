{-# LANGUAGE CPP #-}
module GHCJS.DOM.AudioTrackList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.AudioTrackList
#else
  module Graphics.UI.Gtk.WebKit.DOM.AudioTrackList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.AudioTrackList
#else
import Graphics.UI.Gtk.WebKit.DOM.AudioTrackList
#endif
