{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDListElement
       (ghcjs_dom_htmld_list_element_set_compact,
        htmldListElementSetCompact,
        ghcjs_dom_htmld_list_element_get_compact,
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
        ghcjs_dom_htmld_list_element_set_compact ::
        JSRef HTMLDListElement -> JSBool -> IO ()
#else 
ghcjs_dom_htmld_list_element_set_compact ::
                                           JSRef HTMLDListElement -> JSBool -> IO ()
ghcjs_dom_htmld_list_element_set_compact = undefined
#endif
 
htmldListElementSetCompact ::
                           (IsHTMLDListElement self) => self -> Bool -> IO ()
htmldListElementSetCompact self val
  = ghcjs_dom_htmld_list_element_set_compact
      (unHTMLDListElement (toHTMLDListElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_htmld_list_element_get_compact ::
        JSRef HTMLDListElement -> IO JSBool
#else 
ghcjs_dom_htmld_list_element_get_compact ::
                                           JSRef HTMLDListElement -> IO JSBool
ghcjs_dom_htmld_list_element_get_compact = undefined
#endif
 
htmldListElementGetCompact ::
                           (IsHTMLDListElement self) => self -> IO Bool
htmldListElementGetCompact self
  = fromJSBool <$>
      (ghcjs_dom_htmld_list_element_get_compact
         (unHTMLDListElement (toHTMLDListElement self)))