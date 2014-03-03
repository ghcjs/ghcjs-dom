{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Xpath (XPathExpression, IsXPathExpression) where
 
data XPathExpression = XPathExpression
 
class IsXPathExpression a
 
instance IsXPathExpression XPathExpression
#else
module GHCJS.DOM.Xpath (
  module Graphics.UI.Gtk.WebKit.DOM.Xpath
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Xpath
#endif
