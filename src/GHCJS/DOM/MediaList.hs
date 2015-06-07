{-# LANGUAGE CPP #-}
module GHCJS.DOM.MediaList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.MediaList
#else
  module Graphics.UI.Gtk.WebKit.DOM.MediaList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.MediaList
#else
import Graphics.UI.Gtk.WebKit.DOM.MediaList
#endif
