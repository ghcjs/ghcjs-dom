{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLBRElement
       (webkit_dom_htmlbr_element_set_clear, htmlbrElementSetClear,
        webkit_dom_htmlbr_element_get_clear, htmlbrElementGetClear)
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
foreign import javascript unsafe "$1[\"clear\"] = $2;"
        webkit_dom_htmlbr_element_set_clear ::
        JSRef HTMLBRElement -> JSString -> IO ()
#else 
webkit_dom_htmlbr_element_set_clear ::
                                      JSRef HTMLBRElement -> JSString -> IO ()
webkit_dom_htmlbr_element_set_clear = undefined
#endif
 
htmlbrElementSetClear ::
                      (HTMLBRElementClass self, ToJSString val) => self -> val -> IO ()
htmlbrElementSetClear self val
  = webkit_dom_htmlbr_element_set_clear
      (unHTMLBRElement (toHTMLBRElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clear\"]"
        webkit_dom_htmlbr_element_get_clear ::
        JSRef HTMLBRElement -> IO JSString
#else 
webkit_dom_htmlbr_element_get_clear ::
                                      JSRef HTMLBRElement -> IO JSString
webkit_dom_htmlbr_element_get_clear = undefined
#endif
 
htmlbrElementGetClear ::
                      (HTMLBRElementClass self, FromJSString result) => self -> IO result
htmlbrElementGetClear self
  = fromJSString <$>
      (webkit_dom_htmlbr_element_get_clear
         (unHTMLBRElement (toHTMLBRElement self)))