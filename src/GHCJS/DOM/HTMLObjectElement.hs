{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLObjectElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLObjectElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLObjectElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLObjectElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLObjectElement
#endif
