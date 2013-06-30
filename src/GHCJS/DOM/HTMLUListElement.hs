{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLUListElement
       (webkit_dom_htmlu_list_element_set_compact,
        htmluListElementSetCompact,
        webkit_dom_htmlu_list_element_get_compact,
        htmluListElementGetCompact)
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
        webkit_dom_htmlu_list_element_set_compact ::
        JSRef HTMLUListElement -> JSBool -> IO ()
#else 
webkit_dom_htmlu_list_element_set_compact ::
                                            JSRef HTMLUListElement -> JSBool -> IO ()
webkit_dom_htmlu_list_element_set_compact = undefined
#endif
 
htmluListElementSetCompact ::
                           (HTMLUListElementClass self) => self -> Bool -> IO ()
htmluListElementSetCompact self val
  = webkit_dom_htmlu_list_element_set_compact
      (unHTMLUListElement (toHTMLUListElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        webkit_dom_htmlu_list_element_get_compact ::
        JSRef HTMLUListElement -> IO JSBool
#else 
webkit_dom_htmlu_list_element_get_compact ::
                                            JSRef HTMLUListElement -> IO JSBool
webkit_dom_htmlu_list_element_get_compact = undefined
#endif
 
htmluListElementGetCompact ::
                           (HTMLUListElementClass self) => self -> IO Bool
htmluListElementGetCompact self
  = fromJSBool <$>
      (webkit_dom_htmlu_list_element_get_compact
         (unHTMLUListElement (toHTMLUListElement self)))