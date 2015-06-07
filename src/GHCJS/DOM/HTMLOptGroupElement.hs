{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLOptGroupElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLOptGroupElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptGroupElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLOptGroupElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptGroupElement
#endif
