{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLParamElement
       (ghcjs_dom_html_param_element_set_name, htmlParamElementSetName,
        ghcjs_dom_html_param_element_get_name, htmlParamElementGetName,
        ghcjs_dom_html_param_element_set_value, htmlParamElementSetValue,
        ghcjs_dom_html_param_element_get_value, htmlParamElementGetValue,
        ghcjs_dom_html_param_element_set_value_type,
        htmlParamElementSetValueType,
        ghcjs_dom_html_param_element_get_value_type,
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
        ghcjs_dom_html_param_element_set_name ::
        JSRef HTMLParamElement -> JSString -> IO ()
#else 
ghcjs_dom_html_param_element_set_name ::
                                        JSRef HTMLParamElement -> JSString -> IO ()
ghcjs_dom_html_param_element_set_name = undefined
#endif
 
htmlParamElementSetName ::
                        (IsHTMLParamElement self, ToJSString val) => self -> val -> IO ()
htmlParamElementSetName self val
  = ghcjs_dom_html_param_element_set_name
      (unHTMLParamElement (toHTMLParamElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_param_element_get_name ::
        JSRef HTMLParamElement -> IO JSString
#else 
ghcjs_dom_html_param_element_get_name ::
                                        JSRef HTMLParamElement -> IO JSString
ghcjs_dom_html_param_element_get_name = undefined
#endif
 
htmlParamElementGetName ::
                        (IsHTMLParamElement self, FromJSString result) => self -> IO result
htmlParamElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_param_element_get_name
         (unHTMLParamElement (toHTMLParamElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_param_element_set_value ::
        JSRef HTMLParamElement -> JSString -> IO ()
#else 
ghcjs_dom_html_param_element_set_value ::
                                         JSRef HTMLParamElement -> JSString -> IO ()
ghcjs_dom_html_param_element_set_value = undefined
#endif
 
htmlParamElementSetValue ::
                         (IsHTMLParamElement self, ToJSString val) => self -> val -> IO ()
htmlParamElementSetValue self val
  = ghcjs_dom_html_param_element_set_value
      (unHTMLParamElement (toHTMLParamElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_param_element_get_value ::
        JSRef HTMLParamElement -> IO JSString
#else 
ghcjs_dom_html_param_element_get_value ::
                                         JSRef HTMLParamElement -> IO JSString
ghcjs_dom_html_param_element_get_value = undefined
#endif
 
htmlParamElementGetValue ::
                         (IsHTMLParamElement self, FromJSString result) => self -> IO result
htmlParamElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_param_element_get_value
         (unHTMLParamElement (toHTMLParamElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"valueType\"] = $2;"
        ghcjs_dom_html_param_element_set_value_type ::
        JSRef HTMLParamElement -> JSString -> IO ()
#else 
ghcjs_dom_html_param_element_set_value_type ::
                                              JSRef HTMLParamElement -> JSString -> IO ()
ghcjs_dom_html_param_element_set_value_type = undefined
#endif
 
htmlParamElementSetValueType ::
                             (IsHTMLParamElement self, ToJSString val) => self -> val -> IO ()
htmlParamElementSetValueType self val
  = ghcjs_dom_html_param_element_set_value_type
      (unHTMLParamElement (toHTMLParamElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"valueType\"]"
        ghcjs_dom_html_param_element_get_value_type ::
        JSRef HTMLParamElement -> IO JSString
#else 
ghcjs_dom_html_param_element_get_value_type ::
                                              JSRef HTMLParamElement -> IO JSString
ghcjs_dom_html_param_element_get_value_type = undefined
#endif
 
htmlParamElementGetValueType ::
                             (IsHTMLParamElement self, FromJSString result) => self -> IO result
htmlParamElementGetValueType self
  = fromJSString <$>
      (ghcjs_dom_html_param_element_get_value_type
         (unHTMLParamElement (toHTMLParamElement self)))
#else
module GHCJS.DOM.HTMLParamElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLParamElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLParamElement
#endif
