{-# LANGUAGE CPP #-}
module GHCJS.DOM.Window (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Window
#else
  module Graphics.UI.Gtk.WebKit.DOM.Window
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Window
#else
import Graphics.UI.Gtk.WebKit.DOM.Window
#endif
