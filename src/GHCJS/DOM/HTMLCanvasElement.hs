{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLCanvasElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLCanvasElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLCanvasElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLCanvasElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLCanvasElement
#endif
