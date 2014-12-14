{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLParamElement
       (ghcjs_dom_html_param_element_set_name, htmlParamElementSetName,
        ghcjs_dom_html_param_element_get_name, htmlParamElementGetName,
        ghcjs_dom_html_param_element_set_value, htmlParamElementSetValue,
        ghcjs_dom_html_param_element_get_value, htmlParamElementGetValue,
        ghcjs_dom_html_param_element_set_value_type,
        htmlParamElementSetValueType,
        ghcjs_dom_html_param_element_get_value_type,
        htmlParamElementGetValueType, HTMLParamElement, IsHTMLParamElement,
        castToHTMLParamElement, gTypeHTMLParamElement, toHTMLParamElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_param_element_set_name ::
        JSRef HTMLParamElement -> JSString -> IO ()
 
htmlParamElementSetName ::
                        (IsHTMLParamElement self, ToJSString val) => self -> val -> IO ()
htmlParamElementSetName self val
  = ghcjs_dom_html_param_element_set_name
      (unHTMLParamElement (toHTMLParamElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_param_element_get_name ::
        JSRef HTMLParamElement -> IO JSString
 
htmlParamElementGetName ::
                        (IsHTMLParamElement self, FromJSString result) => self -> IO result
htmlParamElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_param_element_get_name
         (unHTMLParamElement (toHTMLParamElement self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_param_element_set_value ::
        JSRef HTMLParamElement -> JSString -> IO ()
 
htmlParamElementSetValue ::
                         (IsHTMLParamElement self, ToJSString val) => self -> val -> IO ()
htmlParamElementSetValue self val
  = ghcjs_dom_html_param_element_set_value
      (unHTMLParamElement (toHTMLParamElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_param_element_get_value ::
        JSRef HTMLParamElement -> IO JSString
 
htmlParamElementGetValue ::
                         (IsHTMLParamElement self, FromJSString result) => self -> IO result
htmlParamElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_param_element_get_value
         (unHTMLParamElement (toHTMLParamElement self)))
 
foreign import javascript unsafe "$1[\"valueType\"] = $2;"
        ghcjs_dom_html_param_element_set_value_type ::
        JSRef HTMLParamElement -> JSString -> IO ()
 
htmlParamElementSetValueType ::
                             (IsHTMLParamElement self, ToJSString val) => self -> val -> IO ()
htmlParamElementSetValueType self val
  = ghcjs_dom_html_param_element_set_value_type
      (unHTMLParamElement (toHTMLParamElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"valueType\"]"
        ghcjs_dom_html_param_element_get_value_type ::
        JSRef HTMLParamElement -> IO JSString
 
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
