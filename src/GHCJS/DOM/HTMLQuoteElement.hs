{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLQuoteElement
       (webkit_dom_html_quote_element_set_cite, htmlQuoteElementSetCite,
        webkit_dom_html_quote_element_get_cite, htmlQuoteElementGetCite)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cite\"] = $2;"
        webkit_dom_html_quote_element_set_cite ::
        JSRef HTMLQuoteElement -> JSString -> IO ()
#else 
webkit_dom_html_quote_element_set_cite ::
                                         JSRef HTMLQuoteElement -> JSString -> IO ()
webkit_dom_html_quote_element_set_cite = undefined
#endif
 
htmlQuoteElementSetCite ::
                        (HTMLQuoteElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlQuoteElementSetCite self val
  = webkit_dom_html_quote_element_set_cite
      (unHTMLQuoteElement (toHTMLQuoteElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cite\"]"
        webkit_dom_html_quote_element_get_cite ::
        JSRef HTMLQuoteElement -> IO JSString
#else 
webkit_dom_html_quote_element_get_cite ::
                                         JSRef HTMLQuoteElement -> IO JSString
webkit_dom_html_quote_element_get_cite = undefined
#endif
 
htmlQuoteElementGetCite ::
                        (HTMLQuoteElementClass self, FromJSString result) =>
                          self -> IO result
htmlQuoteElementGetCite self
  = fromJSString <$>
      (webkit_dom_html_quote_element_get_cite
         (unHTMLQuoteElement (toHTMLQuoteElement self)))