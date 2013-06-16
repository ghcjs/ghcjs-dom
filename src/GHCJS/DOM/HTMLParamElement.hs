{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLParamElement
       (webkit_dom_html_param_element_set_name, htmlParamElementSetName,
        webkit_dom_html_param_element_get_name, htmlParamElementGetName,
        webkit_dom_html_param_element_set_value, htmlParamElementSetValue,
        webkit_dom_html_param_element_get_value, htmlParamElementGetValue,
        webkit_dom_html_param_element_set_value_type,
        htmlParamElementSetValueType,
        webkit_dom_html_param_element_get_value_type,
        htmlParamElementGetValueType)
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
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_param_element_set_name ::
        JSRef HTMLParamElement -> JSString -> IO ()
#else 
webkit_dom_html_param_element_set_name ::
                                         JSRef HTMLParamElement -> JSString -> IO ()
webkit_dom_html_param_element_set_name = undefined
#endif
 
htmlParamElementSetName ::
                        (HTMLParamElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlParamElementSetName self val
  = webkit_dom_html_param_element_set_name
      (unHTMLParamElement (toHTMLParamElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_param_element_get_name ::
        JSRef HTMLParamElement -> IO JSString
#else 
webkit_dom_html_param_element_get_name ::
                                         JSRef HTMLParamElement -> IO JSString
webkit_dom_html_param_element_get_name = undefined
#endif
 
htmlParamElementGetName ::
                        (HTMLParamElementClass self, FromJSString result) =>
                          self -> IO result
htmlParamElementGetName self
  = fromJSString <$>
      (webkit_dom_html_param_element_get_name
         (unHTMLParamElement (toHTMLParamElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        webkit_dom_html_param_element_set_value ::
        JSRef HTMLParamElement -> JSString -> IO ()
#else 
webkit_dom_html_param_element_set_value ::
                                          JSRef HTMLParamElement -> JSString -> IO ()
webkit_dom_html_param_element_set_value = undefined
#endif
 
htmlParamElementSetValue ::
                         (HTMLParamElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlParamElementSetValue self val
  = webkit_dom_html_param_element_set_value
      (unHTMLParamElement (toHTMLParamElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        webkit_dom_html_param_element_get_value ::
        JSRef HTMLParamElement -> IO JSString
#else 
webkit_dom_html_param_element_get_value ::
                                          JSRef HTMLParamElement -> IO JSString
webkit_dom_html_param_element_get_value = undefined
#endif
 
htmlParamElementGetValue ::
                         (HTMLParamElementClass self, FromJSString result) =>
                           self -> IO result
htmlParamElementGetValue self
  = fromJSString <$>
      (webkit_dom_html_param_element_get_value
         (unHTMLParamElement (toHTMLParamElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"valueType\"] = $2;"
        webkit_dom_html_param_element_set_value_type ::
        JSRef HTMLParamElement -> JSString -> IO ()
#else 
webkit_dom_html_param_element_set_value_type ::
                                               JSRef HTMLParamElement -> JSString -> IO ()
webkit_dom_html_param_element_set_value_type = undefined
#endif
 
htmlParamElementSetValueType ::
                             (HTMLParamElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlParamElementSetValueType self val
  = webkit_dom_html_param_element_set_value_type
      (unHTMLParamElement (toHTMLParamElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"valueType\"]"
        webkit_dom_html_param_element_get_value_type ::
        JSRef HTMLParamElement -> IO JSString
#else 
webkit_dom_html_param_element_get_value_type ::
                                               JSRef HTMLParamElement -> IO JSString
webkit_dom_html_param_element_get_value_type = undefined
#endif
 
htmlParamElementGetValueType ::
                             (HTMLParamElementClass self, FromJSString result) =>
                               self -> IO result
htmlParamElementGetValueType self
  = fromJSString <$>
      (webkit_dom_html_param_element_get_value_type
         (unHTMLParamElement (toHTMLParamElement self)))