{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLHtmlElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLHtmlElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHtmlElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLHtmlElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLHtmlElement
#endif
