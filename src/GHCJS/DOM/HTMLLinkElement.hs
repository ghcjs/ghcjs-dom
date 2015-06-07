{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLLinkElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLLinkElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLinkElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLLinkElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLLinkElement
#endif
