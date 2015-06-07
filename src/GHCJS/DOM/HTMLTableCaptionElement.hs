{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLTableCaptionElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLTableCaptionElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableCaptionElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLTableCaptionElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableCaptionElement
#endif
