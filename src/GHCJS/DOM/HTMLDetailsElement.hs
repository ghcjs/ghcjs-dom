{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDetailsElement
       (webkit_dom_html_details_element_set_open,
        htmlDetailsElementSetOpen,
        webkit_dom_html_details_element_get_open,
        htmlDetailsElementGetOpen)
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
foreign import javascript unsafe "$1[\"open\"] = $2;"
        webkit_dom_html_details_element_set_open ::
        JSRef HTMLDetailsElement -> JSBool -> IO ()
#else 
webkit_dom_html_details_element_set_open ::
                                           JSRef HTMLDetailsElement -> JSBool -> IO ()
webkit_dom_html_details_element_set_open = undefined
#endif
 
htmlDetailsElementSetOpen ::
                          (HTMLDetailsElementClass self) => self -> Bool -> IO ()
htmlDetailsElementSetOpen self val
  = webkit_dom_html_details_element_set_open
      (unHTMLDetailsElement (toHTMLDetailsElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"open\"] ? 1 : 0)"
        webkit_dom_html_details_element_get_open ::
        JSRef HTMLDetailsElement -> IO JSBool
#else 
webkit_dom_html_details_element_get_open ::
                                           JSRef HTMLDetailsElement -> IO JSBool
webkit_dom_html_details_element_get_open = undefined
#endif
 
htmlDetailsElementGetOpen ::
                          (HTMLDetailsElementClass self) => self -> IO Bool
htmlDetailsElementGetOpen self
  = fromJSBool <$>
      (webkit_dom_html_details_element_get_open
         (unHTMLDetailsElement (toHTMLDetailsElement self)))