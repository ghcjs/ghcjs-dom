{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLImageElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLImageElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLImageElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLImageElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLImageElement
#endif
