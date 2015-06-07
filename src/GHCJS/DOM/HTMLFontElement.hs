{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLFontElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLFontElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFontElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLFontElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLFontElement
#endif
