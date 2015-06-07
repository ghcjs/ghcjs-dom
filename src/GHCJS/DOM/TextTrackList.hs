{-# LANGUAGE CPP #-}
module GHCJS.DOM.TextTrackList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.TextTrackList
#else
  module Graphics.UI.Gtk.WebKit.DOM.TextTrackList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.TextTrackList
#else
import Graphics.UI.Gtk.WebKit.DOM.TextTrackList
#endif
