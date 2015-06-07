{-# LANGUAGE CPP #-}
module GHCJS.DOM.TextTrack (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.TextTrack
#else
  module Graphics.UI.Gtk.WebKit.DOM.TextTrack
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.TextTrack
#else
import Graphics.UI.Gtk.WebKit.DOM.TextTrack
#endif
