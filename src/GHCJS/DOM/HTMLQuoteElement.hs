{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLQuoteElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLQuoteElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLQuoteElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLQuoteElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLQuoteElement
#endif
