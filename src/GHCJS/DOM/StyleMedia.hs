{-# LANGUAGE CPP #-}
module GHCJS.DOM.StyleMedia (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.StyleMedia
#else
  module Graphics.UI.Gtk.WebKit.DOM.StyleMedia
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.StyleMedia
#else
import Graphics.UI.Gtk.WebKit.DOM.StyleMedia
#endif
