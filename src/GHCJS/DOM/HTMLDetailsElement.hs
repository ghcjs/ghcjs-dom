{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDetailsElement
       (ghcjs_dom_html_details_element_set_open,
        htmlDetailsElementSetOpen, ghcjs_dom_html_details_element_get_open,
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
        ghcjs_dom_html_details_element_set_open ::
        JSRef HTMLDetailsElement -> JSBool -> IO ()
#else 
ghcjs_dom_html_details_element_set_open ::
                                          JSRef HTMLDetailsElement -> JSBool -> IO ()
ghcjs_dom_html_details_element_set_open = undefined
#endif
 
htmlDetailsElementSetOpen ::
                          (IsHTMLDetailsElement self) => self -> Bool -> IO ()
htmlDetailsElementSetOpen self val
  = ghcjs_dom_html_details_element_set_open
      (unHTMLDetailsElement (toHTMLDetailsElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"open\"] ? 1 : 0)"
        ghcjs_dom_html_details_element_get_open ::
        JSRef HTMLDetailsElement -> IO JSBool
#else 
ghcjs_dom_html_details_element_get_open ::
                                          JSRef HTMLDetailsElement -> IO JSBool
ghcjs_dom_html_details_element_get_open = undefined
#endif
 
htmlDetailsElementGetOpen ::
                          (IsHTMLDetailsElement self) => self -> IO Bool
htmlDetailsElementGetOpen self
  = fromJSBool <$>
      (ghcjs_dom_html_details_element_get_open
         (unHTMLDetailsElement (toHTMLDetailsElement self)))