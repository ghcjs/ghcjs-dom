{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLLIElement
       (webkit_dom_htmlli_element_set_value, htmlliElementSetValue,
        webkit_dom_htmlli_element_get_value, htmlliElementGetValue)
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
foreign import javascript unsafe "$1[\"value\"] = $2;"
        webkit_dom_htmlli_element_set_value ::
        JSRef HTMLLIElement -> Int -> IO ()
#else 
webkit_dom_htmlli_element_set_value ::
                                      JSRef HTMLLIElement -> Int -> IO ()
webkit_dom_htmlli_element_set_value = undefined
#endif
 
htmlliElementSetValue ::
                      (HTMLLIElementClass self) => self -> Int -> IO ()
htmlliElementSetValue self val
  = webkit_dom_htmlli_element_set_value
      (unHTMLLIElement (toHTMLLIElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        webkit_dom_htmlli_element_get_value ::
        JSRef HTMLLIElement -> IO Int
#else 
webkit_dom_htmlli_element_get_value ::
                                      JSRef HTMLLIElement -> IO Int
webkit_dom_htmlli_element_get_value = undefined
#endif
 
htmlliElementGetValue ::
                      (HTMLLIElementClass self) => self -> IO Int
htmlliElementGetValue self
  = webkit_dom_htmlli_element_get_value
      (unHTMLLIElement (toHTMLLIElement self))