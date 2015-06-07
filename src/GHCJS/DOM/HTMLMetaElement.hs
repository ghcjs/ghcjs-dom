{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLMetaElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLMetaElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMetaElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLMetaElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLMetaElement
#endif
