{-# LANGUAGE CPP #-}
module GHCJS.DOM.WebKitNamedFlow (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.WebKitNamedFlow
#else
  module Graphics.UI.Gtk.WebKit.DOM.WebKitNamedFlow
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.WebKitNamedFlow
#else
import Graphics.UI.Gtk.WebKit.DOM.WebKitNamedFlow
#endif
