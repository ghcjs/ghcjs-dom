{-# LANGUAGE CPP #-}
module GHCJS.DOM.TextTrackCueList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.TextTrackCueList
#else
  module Graphics.UI.Gtk.WebKit.DOM.TextTrackCueList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.TextTrackCueList
#else
import Graphics.UI.Gtk.WebKit.DOM.TextTrackCueList
#endif
