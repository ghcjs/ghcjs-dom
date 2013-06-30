{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLFieldSetElement
       (webkit_dom_html_field_set_element_check_validity,
        htmlFieldSetElementCheckValidity,
        webkit_dom_html_field_set_element_set_custom_validity,
        htmlFieldSetElementSetCustomValidity,
        webkit_dom_html_field_set_element_set_disabled,
        htmlFieldSetElementSetDisabled,
        webkit_dom_html_field_set_element_get_disabled,
        htmlFieldSetElementGetDisabled,
        webkit_dom_html_field_set_element_get_form,
        htmlFieldSetElementGetForm,
        webkit_dom_html_field_set_element_set_name,
        htmlFieldSetElementSetName,
        webkit_dom_html_field_set_element_get_name,
        htmlFieldSetElementGetName,
        webkit_dom_html_field_set_element_get_elements,
        htmlFieldSetElementGetElements,
        webkit_dom_html_field_set_element_get_will_validate,
        htmlFieldSetElementGetWillValidate,
        webkit_dom_html_field_set_element_get_validity,
        htmlFieldSetElementGetValidity,
        webkit_dom_html_field_set_element_get_validation_message,
        htmlFieldSetElementGetValidationMessage)
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
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        webkit_dom_html_field_set_element_check_validity ::
        JSRef HTMLFieldSetElement -> IO JSBool
#else 
webkit_dom_html_field_set_element_check_validity ::
                                                   JSRef HTMLFieldSetElement -> IO JSBool
webkit_dom_html_field_set_element_check_validity = undefined
#endif
 
htmlFieldSetElementCheckValidity ::
                                 (HTMLFieldSetElementClass self) => self -> IO Bool
htmlFieldSetElementCheckValidity self
  = fromJSBool <$>
      (webkit_dom_html_field_set_element_check_validity
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        webkit_dom_html_field_set_element_set_custom_validity ::
        JSRef HTMLFieldSetElement -> JSString -> IO ()
#else 
webkit_dom_html_field_set_element_set_custom_validity ::
                                                        JSRef HTMLFieldSetElement ->
                                                          JSString -> IO ()
webkit_dom_html_field_set_element_set_custom_validity = undefined
#endif
 
htmlFieldSetElementSetCustomValidity ::
                                     (HTMLFieldSetElementClass self, ToJSString error) =>
                                       self -> error -> IO ()
htmlFieldSetElementSetCustomValidity self error
  = webkit_dom_html_field_set_element_set_custom_validity
      (unHTMLFieldSetElement (toHTMLFieldSetElement self))
      (toJSString error)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_field_set_element_set_disabled ::
        JSRef HTMLFieldSetElement -> JSBool -> IO ()
#else 
webkit_dom_html_field_set_element_set_disabled ::
                                                 JSRef HTMLFieldSetElement -> JSBool -> IO ()
webkit_dom_html_field_set_element_set_disabled = undefined
#endif
 
htmlFieldSetElementSetDisabled ::
                               (HTMLFieldSetElementClass self) => self -> Bool -> IO ()
htmlFieldSetElementSetDisabled self val
  = webkit_dom_html_field_set_element_set_disabled
      (unHTMLFieldSetElement (toHTMLFieldSetElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        webkit_dom_html_field_set_element_get_disabled ::
        JSRef HTMLFieldSetElement -> IO JSBool
#else 
webkit_dom_html_field_set_element_get_disabled ::
                                                 JSRef HTMLFieldSetElement -> IO JSBool
webkit_dom_html_field_set_element_get_disabled = undefined
#endif
 
htmlFieldSetElementGetDisabled ::
                               (HTMLFieldSetElementClass self) => self -> IO Bool
htmlFieldSetElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_field_set_element_get_disabled
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        webkit_dom_html_field_set_element_get_form ::
        JSRef HTMLFieldSetElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_field_set_element_get_form ::
                                             JSRef HTMLFieldSetElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_field_set_element_get_form = undefined
#endif
 
htmlFieldSetElementGetForm ::
                           (HTMLFieldSetElementClass self) =>
                             self -> IO (Maybe HTMLFormElement)
htmlFieldSetElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_field_set_element_get_form
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_field_set_element_set_name ::
        JSRef HTMLFieldSetElement -> JSString -> IO ()
#else 
webkit_dom_html_field_set_element_set_name ::
                                             JSRef HTMLFieldSetElement -> JSString -> IO ()
webkit_dom_html_field_set_element_set_name = undefined
#endif
 
htmlFieldSetElementSetName ::
                           (HTMLFieldSetElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlFieldSetElementSetName self val
  = webkit_dom_html_field_set_element_set_name
      (unHTMLFieldSetElement (toHTMLFieldSetElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_field_set_element_get_name ::
        JSRef HTMLFieldSetElement -> IO JSString
#else 
webkit_dom_html_field_set_element_get_name ::
                                             JSRef HTMLFieldSetElement -> IO JSString
webkit_dom_html_field_set_element_get_name = undefined
#endif
 
htmlFieldSetElementGetName ::
                           (HTMLFieldSetElementClass self, FromJSString result) =>
                             self -> IO result
htmlFieldSetElementGetName self
  = fromJSString <$>
      (webkit_dom_html_field_set_element_get_name
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"elements\"]"
        webkit_dom_html_field_set_element_get_elements ::
        JSRef HTMLFieldSetElement -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_field_set_element_get_elements ::
                                                 JSRef HTMLFieldSetElement ->
                                                   IO (JSRef HTMLCollection)
webkit_dom_html_field_set_element_get_elements = undefined
#endif
 
htmlFieldSetElementGetElements ::
                               (HTMLFieldSetElementClass self) =>
                                 self -> IO (Maybe HTMLCollection)
htmlFieldSetElementGetElements self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_field_set_element_get_elements
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        webkit_dom_html_field_set_element_get_will_validate ::
        JSRef HTMLFieldSetElement -> IO JSBool
#else 
webkit_dom_html_field_set_element_get_will_validate ::
                                                      JSRef HTMLFieldSetElement -> IO JSBool
webkit_dom_html_field_set_element_get_will_validate = undefined
#endif
 
htmlFieldSetElementGetWillValidate ::
                                   (HTMLFieldSetElementClass self) => self -> IO Bool
htmlFieldSetElementGetWillValidate self
  = fromJSBool <$>
      (webkit_dom_html_field_set_element_get_will_validate
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validity\"]"
        webkit_dom_html_field_set_element_get_validity ::
        JSRef HTMLFieldSetElement -> IO (JSRef ValidityState)
#else 
webkit_dom_html_field_set_element_get_validity ::
                                                 JSRef HTMLFieldSetElement ->
                                                   IO (JSRef ValidityState)
webkit_dom_html_field_set_element_get_validity = undefined
#endif
 
htmlFieldSetElementGetValidity ::
                               (HTMLFieldSetElementClass self) => self -> IO (Maybe ValidityState)
htmlFieldSetElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (webkit_dom_html_field_set_element_get_validity
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        webkit_dom_html_field_set_element_get_validation_message ::
        JSRef HTMLFieldSetElement -> IO JSString
#else 
webkit_dom_html_field_set_element_get_validation_message ::
                                                           JSRef HTMLFieldSetElement -> IO JSString
webkit_dom_html_field_set_element_get_validation_message
  = undefined
#endif
 
htmlFieldSetElementGetValidationMessage ::
                                        (HTMLFieldSetElementClass self, FromJSString result) =>
                                          self -> IO result
htmlFieldSetElementGetValidationMessage self
  = fromJSString <$>
      (webkit_dom_html_field_set_element_get_validation_message
         (unHTMLFieldSetElement (toHTMLFieldSetElement self)))