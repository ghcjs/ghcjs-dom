{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLBaseFontElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLBaseFontElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBaseFontElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLBaseFontElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLBaseFontElement
#endif
