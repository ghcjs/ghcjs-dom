{-# LANGUAGE CPP #-}
module GHCJS.DOM.DOMTokenList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.DOMTokenList
#else
  module Graphics.UI.Gtk.WebKit.DOM.DOMTokenList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.DOMTokenList
#else
import Graphics.UI.Gtk.WebKit.DOM.DOMTokenList
#endif
