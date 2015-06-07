{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLLabelElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLLabelElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLabelElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLLabelElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLLabelElement
#endif
