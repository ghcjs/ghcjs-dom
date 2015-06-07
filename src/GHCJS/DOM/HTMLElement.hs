{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLElement
#endif
