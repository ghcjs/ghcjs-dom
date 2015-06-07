{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLHeadElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLHeadElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHeadElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLHeadElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLHeadElement
#endif
