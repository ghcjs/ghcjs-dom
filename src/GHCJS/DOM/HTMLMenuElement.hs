{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLMenuElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLMenuElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMenuElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLMenuElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLMenuElement
#endif
