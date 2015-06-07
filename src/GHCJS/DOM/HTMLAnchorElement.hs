{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLAnchorElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLAnchorElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAnchorElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLAnchorElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLAnchorElement
#endif
