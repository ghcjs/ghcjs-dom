{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFieldSetElement
       (ghcjs_dom_html_field_set_element_check_validity,
        htmlFieldSetElementCheckValidity,
        ghcjs_dom_html_field_set_element_set_custom_validity,
        htmlFieldSetElementSetCustomValidity,
        ghcjs_dom_html_field_set_element_set_disabled,
        htmlFieldSetElementSetDisabled,
        ghcjs_dom_html_field_set_element_get_disabled,
        htmlFieldSetElementGetDisabled,
        ghcjs_dom_html_field_set_element_get_form,
        htmlFieldSetElementGetForm,
        ghcjs_dom_html_field_set_element_set_name,
        htmlFieldSetElementSetName,
        ghcjs_dom_html_field_set_element_get_name,
        htmlFieldSetElementGetName,
        ghcjs_dom_html_field_set_element_get_elements,
        htmlFieldSetElementGetElements,
        ghcjs_dom_html_field_set_element_get_will_validate,
        htmlFieldSetElementGetWillValidate,
        ghcjs_dom_html_field_set_element_get_validity,
        htmlFieldSetElementGetValidity,
        ghcjs_dom_html_field_set_element_get_validation_message,
        htmlFieldSetElementGetValidationMessage, HTMLFieldSetElement,
        IsHTMLFieldSetElement, castToHTMLFieldSetElement,
        gTypeHTMLFieldSetElement, toHTMLFieldSetElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_field_set_element_check_validity ::
        JSRef HTMLFieldSetElement -> IO Bool
 
htmlFieldSetElementCheckValidity ::
                                 (IsHTMLFieldSetElement self) => self -> IO Bool
htmlFieldSetElementCheckValidity self
  = ghcjs_dom_html_field_set_element_check_validity
      (unHTMLFieldSetElement (toHTMLFieldSetElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_field_set_element_set_custom_validity ::
        JSRef HTMLFieldSetElement -> JSString -> IO ()
 
htmlFieldSetElementSetCustomValidity ::
                                     (IsHTMLFieldSetElement self, ToJSString error) =>
                                       self -> error -> IO ()
htmlFieldSetElementSetCustomValidity self error
  = ghcjs_dom_html_field_set_element_set_custom_validity
      (unHTMLFieldSetElement (toHTMLFieldSetElement self))
      (toJSString error)
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_field_set_element_set_disabled ::
        JSRef HTMLFieldSetElement -> Bool -> IO ()
 
htmlFieldSetElementSetDisabled ::
                               (IsHTMLFieldSetElement self) => self -> Bool -> IO ()
htmlFieldSetElementSetDisabled self val
  = ghcjs_dom_html_field_set_element_set_disabled
      (unHTMLFieldSetElement (toHTMLFieldSetElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_field_set_element_get_disabled ::
        JSRef HTMLFieldSetElement -> IO Bool
 
htmlFieldSetElementGetDisabled ::
                               (IsHTMLFieldSetElement self) => self -> IO Bool
htmlFieldSetElementGetDisabled self
  = ghcjs_dom_html_field_set_element_get_disabled
      (unHTMLFieldSetElement (toHTMLFieldSetElement self))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_field_set_element_get_form ::
        JSRef HTMLFieldSetElement -> IO (JSRef HTMLFormElement)
 
htmlFieldSetElementGetForm ::
                           (IsHTMLFieldSetElement self) => self -> IO (Maybe HTMLFormElement)
htmlFieldSetElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_field_set_element_get_form
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_field_set_element_set_name ::
        JSRef HTMLFieldSetElement -> JSString -> IO ()
 
htmlFieldSetElementSetName ::
                           (IsHTMLFieldSetElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlFieldSetElementSetName self val
  = ghcjs_dom_html_field_set_element_set_name
      (unHTMLFieldSetElement (toHTMLFieldSetElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_field_set_element_get_name ::
        JSRef HTMLFieldSetElement -> IO JSString
 
htmlFieldSetElementGetName ::
                           (IsHTMLFieldSetElement self, FromJSString result) =>
                             self -> IO result
htmlFieldSetElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_field_set_element_get_name
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))
 
foreign import javascript unsafe "$1[\"elements\"]"
        ghcjs_dom_html_field_set_element_get_elements ::
        JSRef HTMLFieldSetElement -> IO (JSRef HTMLCollection)
 
htmlFieldSetElementGetElements ::
                               (IsHTMLFieldSetElement self) => self -> IO (Maybe HTMLCollection)
htmlFieldSetElementGetElements self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_field_set_element_get_elements
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_field_set_element_get_will_validate ::
        JSRef HTMLFieldSetElement -> IO Bool
 
htmlFieldSetElementGetWillValidate ::
                                   (IsHTMLFieldSetElement self) => self -> IO Bool
htmlFieldSetElementGetWillValidate self
  = ghcjs_dom_html_field_set_element_get_will_validate
      (unHTMLFieldSetElement (toHTMLFieldSetElement self))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_field_set_element_get_validity ::
        JSRef HTMLFieldSetElement -> IO (JSRef ValidityState)
 
htmlFieldSetElementGetValidity ::
                               (IsHTMLFieldSetElement self) => self -> IO (Maybe ValidityState)
htmlFieldSetElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (ghcjs_dom_html_field_set_element_get_validity
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_field_set_element_get_validation_message ::
        JSRef HTMLFieldSetElement -> IO JSString
 
htmlFieldSetElementGetValidationMessage ::
                                        (IsHTMLFieldSetElement self, FromJSString result) =>
                                          self -> IO result
htmlFieldSetElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_field_set_element_get_validation_message
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))
#else
module GHCJS.DOM.HTMLFieldSetElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFieldSetElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFieldSetElement
#endif
