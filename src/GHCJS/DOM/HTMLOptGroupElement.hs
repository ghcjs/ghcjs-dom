{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLOptGroupElement
       (webkit_dom_html_opt_group_element_set_disabled,
        htmlOptGroupElementSetDisabled,
        webkit_dom_html_opt_group_element_get_disabled,
        htmlOptGroupElementGetDisabled,
        webkit_dom_html_opt_group_element_set_label,
        htmlOptGroupElementSetLabel,
        webkit_dom_html_opt_group_element_get_label,
        htmlOptGroupElementGetLabel)
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
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_opt_group_element_set_disabled ::
        JSRef HTMLOptGroupElement -> JSBool -> IO ()
#else 
webkit_dom_html_opt_group_element_set_disabled ::
                                                 JSRef HTMLOptGroupElement -> JSBool -> IO ()
webkit_dom_html_opt_group_element_set_disabled = undefined
#endif
 
htmlOptGroupElementSetDisabled ::
                               (HTMLOptGroupElementClass self) => self -> Bool -> IO ()
htmlOptGroupElementSetDisabled self val
  = webkit_dom_html_opt_group_element_set_disabled
      (unHTMLOptGroupElement (toHTMLOptGroupElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        webkit_dom_html_opt_group_element_get_disabled ::
        JSRef HTMLOptGroupElement -> IO JSBool
#else 
webkit_dom_html_opt_group_element_get_disabled ::
                                                 JSRef HTMLOptGroupElement -> IO JSBool
webkit_dom_html_opt_group_element_get_disabled = undefined
#endif
 
htmlOptGroupElementGetDisabled ::
                               (HTMLOptGroupElementClass self) => self -> IO Bool
htmlOptGroupElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_opt_group_element_get_disabled
         (unHTMLOptGroupElement (toHTMLOptGroupElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"label\"] = $2;"
        webkit_dom_html_opt_group_element_set_label ::
        JSRef HTMLOptGroupElement -> JSString -> IO ()
#else 
webkit_dom_html_opt_group_element_set_label ::
                                              JSRef HTMLOptGroupElement -> JSString -> IO ()
webkit_dom_html_opt_group_element_set_label = undefined
#endif
 
htmlOptGroupElementSetLabel ::
                            (HTMLOptGroupElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlOptGroupElementSetLabel self val
  = webkit_dom_html_opt_group_element_set_label
      (unHTMLOptGroupElement (toHTMLOptGroupElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"label\"]"
        webkit_dom_html_opt_group_element_get_label ::
        JSRef HTMLOptGroupElement -> IO JSString
#else 
webkit_dom_html_opt_group_element_get_label ::
                                              JSRef HTMLOptGroupElement -> IO JSString
webkit_dom_html_opt_group_element_get_label = undefined
#endif
 
htmlOptGroupElementGetLabel ::
                            (HTMLOptGroupElementClass self, FromJSString result) =>
                              self -> IO result
htmlOptGroupElementGetLabel self
  = fromJSString <$>
      (webkit_dom_html_opt_group_element_get_label
         (unHTMLOptGroupElement (toHTMLOptGroupElement self)))