{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLQuoteElement
       (ghcjs_dom_html_quote_element_set_cite, htmlQuoteElementSetCite,
        ghcjs_dom_html_quote_element_get_cite, htmlQuoteElementGetCite,
        HTMLQuoteElement, IsHTMLQuoteElement, castToHTMLQuoteElement,
        gTypeHTMLQuoteElement, toHTMLQuoteElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"cite\"] = $2;"
        ghcjs_dom_html_quote_element_set_cite ::
        JSRef HTMLQuoteElement -> JSString -> IO ()
 
htmlQuoteElementSetCite ::
                        (IsHTMLQuoteElement self, ToJSString val) => self -> val -> IO ()
htmlQuoteElementSetCite self val
  = ghcjs_dom_html_quote_element_set_cite
      (unHTMLQuoteElement (toHTMLQuoteElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cite\"]"
        ghcjs_dom_html_quote_element_get_cite ::
        JSRef HTMLQuoteElement -> IO JSString
 
htmlQuoteElementGetCite ::
                        (IsHTMLQuoteElement self, FromJSString result) => self -> IO result
htmlQuoteElementGetCite self
  = fromJSString <$>
      (ghcjs_dom_html_quote_element_get_cite
         (unHTMLQuoteElement (toHTMLQuoteElement self)))
#else
module GHCJS.DOM.HTMLQuoteElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLQuoteElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLQuoteElement
#endif
