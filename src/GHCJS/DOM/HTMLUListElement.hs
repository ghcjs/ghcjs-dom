{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLUListElement
       (ghcjs_dom_htmlu_list_element_set_compact,
        htmluListElementSetCompact,
        ghcjs_dom_htmlu_list_element_get_compact,
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
        ghcjs_dom_htmlu_list_element_set_compact ::
        JSRef HTMLUListElement -> JSBool -> IO ()
#else 
ghcjs_dom_htmlu_list_element_set_compact ::
                                           JSRef HTMLUListElement -> JSBool -> IO ()
ghcjs_dom_htmlu_list_element_set_compact = undefined
#endif
 
htmluListElementSetCompact ::
                           (IsHTMLUListElement self) => self -> Bool -> IO ()
htmluListElementSetCompact self val
  = ghcjs_dom_htmlu_list_element_set_compact
      (unHTMLUListElement (toHTMLUListElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_htmlu_list_element_get_compact ::
        JSRef HTMLUListElement -> IO JSBool
#else 
ghcjs_dom_htmlu_list_element_get_compact ::
                                           JSRef HTMLUListElement -> IO JSBool
ghcjs_dom_htmlu_list_element_get_compact = undefined
#endif
 
htmluListElementGetCompact ::
                           (IsHTMLUListElement self) => self -> IO Bool
htmluListElementGetCompact self
  = fromJSBool <$>
      (ghcjs_dom_htmlu_list_element_get_compact
         (unHTMLUListElement (toHTMLUListElement self)))