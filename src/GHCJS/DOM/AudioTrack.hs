{-# LANGUAGE CPP #-}
module GHCJS.DOM.AudioTrack (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.AudioTrack
#else
  module Graphics.UI.Gtk.WebKit.DOM.AudioTrack
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.AudioTrack
#else
import Graphics.UI.Gtk.WebKit.DOM.AudioTrack
#endif
