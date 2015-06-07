{-# LANGUAGE CPP #-}
module GHCJS.DOM.XPathResult (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.XPathResult
#else
  module Graphics.UI.Gtk.WebKit.DOM.XPathResult
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.XPathResult
#else
import Graphics.UI.Gtk.WebKit.DOM.XPathResult
#endif
