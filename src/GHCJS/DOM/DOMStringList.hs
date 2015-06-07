{-# LANGUAGE CPP #-}
module GHCJS.DOM.DOMStringList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.DOMStringList
#else
  module Graphics.UI.Gtk.WebKit.DOM.DOMStringList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.DOMStringList
#else
import Graphics.UI.Gtk.WebKit.DOM.DOMStringList
#endif
