{-# LANGUAGE CPP #-}
module GHCJS.DOM.Navigator (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Navigator
#else
  module Graphics.UI.Gtk.WebKit.DOM.Navigator
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Navigator
#else
import Graphics.UI.Gtk.WebKit.DOM.Navigator
#endif
