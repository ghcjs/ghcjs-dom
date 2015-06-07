{-# LANGUAGE CPP #-}
module GHCJS.DOM.StyleSheet (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.StyleSheet
#else
  module Graphics.UI.Gtk.WebKit.DOM.StyleSheet
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.StyleSheet
#else
import Graphics.UI.Gtk.WebKit.DOM.StyleSheet
#endif
