{-# LANGUAGE CPP #-}
module GHCJS.DOM.Geolocation (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Geolocation
#else
  module Graphics.UI.Gtk.WebKit.DOM.Geolocation
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Geolocation
#else
import Graphics.UI.Gtk.WebKit.DOM.Geolocation
#endif
