{-# LANGUAGE CPP #-}
module GHCJS.DOM.XPathExpression (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.XPathExpression
#else
  module Graphics.UI.Gtk.WebKit.DOM.XPathExpression
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.XPathExpression
#else
import Graphics.UI.Gtk.WebKit.DOM.XPathExpression
#endif
