{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLParagraphElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLParagraphElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLParagraphElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLParagraphElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLParagraphElement
#endif
