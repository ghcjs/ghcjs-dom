{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDListElement
       (webkit_dom_htmld_list_element_set_compact,
        htmldListElementSetCompact,
        webkit_dom_htmld_list_element_get_compact,
        htmldListElementGetCompact)
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
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        webkit_dom_htmld_list_element_set_compact ::
        JSRef HTMLDListElement -> JSBool -> IO ()
#else 
webkit_dom_htmld_list_element_set_compact ::
                                            JSRef HTMLDListElement -> JSBool -> IO ()
webkit_dom_htmld_list_element_set_compact = undefined
#endif
 
htmldListElementSetCompact ::
                           (HTMLDListElementClass self) => self -> Bool -> IO ()
htmldListElementSetCompact self val
  = webkit_dom_htmld_list_element_set_compact
      (unHTMLDListElement (toHTMLDListElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        webkit_dom_htmld_list_element_get_compact ::
        JSRef HTMLDListElement -> IO JSBool
#else 
webkit_dom_htmld_list_element_get_compact ::
                                            JSRef HTMLDListElement -> IO JSBool
webkit_dom_htmld_list_element_get_compact = undefined
#endif
 
htmldListElementGetCompact ::
                           (HTMLDListElementClass self) => self -> IO Bool
htmldListElementGetCompact self
  = fromJSBool <$>
      (webkit_dom_htmld_list_element_get_compact
         (unHTMLDListElement (toHTMLDListElement self)))