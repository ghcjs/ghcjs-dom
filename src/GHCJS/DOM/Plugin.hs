{-# LANGUAGE CPP #-}
module GHCJS.DOM.Plugin (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.Plugin
#else
  module Graphics.UI.Gtk.WebKit.DOM.Plugin
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.Plugin
#else
import Graphics.UI.Gtk.WebKit.DOM.Plugin
#endif
