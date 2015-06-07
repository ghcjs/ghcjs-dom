{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLTableElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLTableElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLTableElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableElement
#endif
