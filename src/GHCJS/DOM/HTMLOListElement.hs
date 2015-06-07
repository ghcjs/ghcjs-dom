{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLOListElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLOListElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOListElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLOListElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLOListElement
#endif
