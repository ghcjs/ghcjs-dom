{-# LANGUAGE CPP #-}
module GHCJS.DOM.WebKitPoint (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.WebKitPoint
#else
  module Graphics.UI.Gtk.WebKit.DOM.WebKitPoint
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.WebKitPoint
#else
import Graphics.UI.Gtk.WebKit.DOM.WebKitPoint
#endif
