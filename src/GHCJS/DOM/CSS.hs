{-# LANGUAGE CPP #-}
module GHCJS.DOM.CSS (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.CSS
#else
  module Graphics.UI.Gtk.WebKit.DOM.CSS
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.CSS
#else
import Graphics.UI.Gtk.WebKit.DOM.CSS
#endif
