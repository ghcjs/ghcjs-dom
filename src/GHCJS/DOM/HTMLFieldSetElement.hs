{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLFieldSetElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLFieldSetElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFieldSetElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLFieldSetElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLFieldSetElement
#endif
