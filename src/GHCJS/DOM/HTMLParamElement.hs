{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLParamElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLParamElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLParamElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLParamElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLParamElement
#endif
