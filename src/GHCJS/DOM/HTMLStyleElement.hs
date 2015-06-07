{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLStyleElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLStyleElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLStyleElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
#endif
