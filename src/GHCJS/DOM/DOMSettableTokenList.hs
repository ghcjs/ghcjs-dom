{-# LANGUAGE CPP #-}
module GHCJS.DOM.DOMSettableTokenList (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.DOMSettableTokenList
#else
  module Graphics.UI.Gtk.WebKit.DOM.DOMSettableTokenList
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.DOMSettableTokenList
#else
import Graphics.UI.Gtk.WebKit.DOM.DOMSettableTokenList
#endif
