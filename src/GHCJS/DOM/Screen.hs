{-# LANGUAGE CPP #-}
module GHCJS.DOM.Screen (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Screen
#else
  module Graphics.UI.Gtk.WebKit.DOM.Screen
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Screen
#else
import Graphics.UI.Gtk.WebKit.DOM.Screen
#endif
