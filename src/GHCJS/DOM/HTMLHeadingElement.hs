{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLHeadingElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLHeadingElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHeadingElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLHeadingElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLHeadingElement
#endif
