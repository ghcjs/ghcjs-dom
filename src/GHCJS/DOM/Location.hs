{-# LANGUAGE CPP #-}
module GHCJS.DOM.Location (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Location
#else
  module Graphics.UI.Gtk.WebKit.DOM.Location
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Location
#else
import Graphics.UI.Gtk.WebKit.DOM.Location
#endif
