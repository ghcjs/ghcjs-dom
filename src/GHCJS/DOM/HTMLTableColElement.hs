{-# LANGUAGE CPP #-}
module GHCJS.DOM.HTMLTableColElement (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.HTMLTableColElement
#else
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableColElement
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.HTMLTableColElement
#else
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableColElement
#endif
