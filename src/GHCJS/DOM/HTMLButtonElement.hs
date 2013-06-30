{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLButtonElement
       (webkit_dom_html_button_element_check_validity,
        htmlButtonElementCheckValidity,
        webkit_dom_html_button_element_set_custom_validity,
        htmlButtonElementSetCustomValidity,
        webkit_dom_html_button_element_set_autofocus,
        htmlButtonElementSetAutofocus,
        webkit_dom_html_button_element_get_autofocus,
        htmlButtonElementGetAutofocus,
        webkit_dom_html_button_element_set_disabled,
        htmlButtonElementSetDisabled,
        webkit_dom_html_button_element_get_disabled,
        htmlButtonElementGetDisabled,
        webkit_dom_html_button_element_get_form, htmlButtonElementGetForm,
        webkit_dom_html_button_element_set_form_action,
        htmlButtonElementSetFormAction,
        webkit_dom_html_button_element_get_form_action,
        htmlButtonElementGetFormAction,
        webkit_dom_html_button_element_set_form_enctype,
        htmlButtonElementSetFormEnctype,
        webkit_dom_html_button_element_get_form_enctype,
        htmlButtonElementGetFormEnctype,
        webkit_dom_html_button_element_set_form_method,
        htmlButtonElementSetFormMethod,
        webkit_dom_html_button_element_get_form_method,
        htmlButtonElementGetFormMethod,
        webkit_dom_html_button_element_set_form_no_validate,
        htmlButtonElementSetFormNoValidate,
        webkit_dom_html_button_element_get_form_no_validate,
        htmlButtonElementGetFormNoValidate,
        webkit_dom_html_button_element_set_form_target,
        htmlButtonElementSetFormTarget,
        webkit_dom_html_button_element_get_form_target,
        htmlButtonElementGetFormTarget,
        webkit_dom_html_button_element_set_name, htmlButtonElementSetName,
        webkit_dom_html_button_element_get_name, htmlButtonElementGetName,
        webkit_dom_html_button_element_set_value,
        htmlButtonElementSetValue,
        webkit_dom_html_button_element_get_value,
        htmlButtonElementGetValue,
        webkit_dom_html_button_element_get_will_validate,
        htmlButtonElementGetWillValidate,
        webkit_dom_html_button_element_get_validity,
        htmlButtonElementGetValidity,
        webkit_dom_html_button_element_get_validation_message,
        htmlButtonElementGetValidationMessage,
        webkit_dom_html_button_element_get_labels,
        htmlButtonElementGetLabels)
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
        webkit_dom_html_button_element_check_validity ::
        JSRef HTMLButtonElement -> IO JSBool
#else 
webkit_dom_html_button_element_check_validity ::
                                                JSRef HTMLButtonElement -> IO JSBool
webkit_dom_html_button_element_check_validity = undefined
#endif
 
htmlButtonElementCheckValidity ::
                               (HTMLButtonElementClass self) => self -> IO Bool
htmlButtonElementCheckValidity self
  = fromJSBool <$>
      (webkit_dom_html_button_element_check_validity
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        webkit_dom_html_button_element_set_custom_validity ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
webkit_dom_html_button_element_set_custom_validity ::
                                                     JSRef HTMLButtonElement -> JSString -> IO ()
webkit_dom_html_button_element_set_custom_validity = undefined
#endif
 
htmlButtonElementSetCustomValidity ::
                                   (HTMLButtonElementClass self, ToJSString error) =>
                                     self -> error -> IO ()
htmlButtonElementSetCustomValidity self error
  = webkit_dom_html_button_element_set_custom_validity
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString error)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        webkit_dom_html_button_element_set_autofocus ::
        JSRef HTMLButtonElement -> JSBool -> IO ()
#else 
webkit_dom_html_button_element_set_autofocus ::
                                               JSRef HTMLButtonElement -> JSBool -> IO ()
webkit_dom_html_button_element_set_autofocus = undefined
#endif
 
htmlButtonElementSetAutofocus ::
                              (HTMLButtonElementClass self) => self -> Bool -> IO ()
htmlButtonElementSetAutofocus self val
  = webkit_dom_html_button_element_set_autofocus
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        webkit_dom_html_button_element_get_autofocus ::
        JSRef HTMLButtonElement -> IO JSBool
#else 
webkit_dom_html_button_element_get_autofocus ::
                                               JSRef HTMLButtonElement -> IO JSBool
webkit_dom_html_button_element_get_autofocus = undefined
#endif
 
htmlButtonElementGetAutofocus ::
                              (HTMLButtonElementClass self) => self -> IO Bool
htmlButtonElementGetAutofocus self
  = fromJSBool <$>
      (webkit_dom_html_button_element_get_autofocus
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_button_element_set_disabled ::
        JSRef HTMLButtonElement -> JSBool -> IO ()
#else 
webkit_dom_html_button_element_set_disabled ::
                                              JSRef HTMLButtonElement -> JSBool -> IO ()
webkit_dom_html_button_element_set_disabled = undefined
#endif
 
htmlButtonElementSetDisabled ::
                             (HTMLButtonElementClass self) => self -> Bool -> IO ()
htmlButtonElementSetDisabled self val
  = webkit_dom_html_button_element_set_disabled
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        webkit_dom_html_button_element_get_disabled ::
        JSRef HTMLButtonElement -> IO JSBool
#else 
webkit_dom_html_button_element_get_disabled ::
                                              JSRef HTMLButtonElement -> IO JSBool
webkit_dom_html_button_element_get_disabled = undefined
#endif
 
htmlButtonElementGetDisabled ::
                             (HTMLButtonElementClass self) => self -> IO Bool
htmlButtonElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_button_element_get_disabled
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        webkit_dom_html_button_element_get_form ::
        JSRef HTMLButtonElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_button_element_get_form ::
                                          JSRef HTMLButtonElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_button_element_get_form = undefined
#endif
 
htmlButtonElementGetForm ::
                         (HTMLButtonElementClass self) => self -> IO (Maybe HTMLFormElement)
htmlButtonElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_button_element_get_form
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        webkit_dom_html_button_element_set_form_action ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
webkit_dom_html_button_element_set_form_action ::
                                                 JSRef HTMLButtonElement -> JSString -> IO ()
webkit_dom_html_button_element_set_form_action = undefined
#endif
 
htmlButtonElementSetFormAction ::
                               (HTMLButtonElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlButtonElementSetFormAction self val
  = webkit_dom_html_button_element_set_form_action
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formAction\"]"
        webkit_dom_html_button_element_get_form_action ::
        JSRef HTMLButtonElement -> IO JSString
#else 
webkit_dom_html_button_element_get_form_action ::
                                                 JSRef HTMLButtonElement -> IO JSString
webkit_dom_html_button_element_get_form_action = undefined
#endif
 
htmlButtonElementGetFormAction ::
                               (HTMLButtonElementClass self, FromJSString result) =>
                                 self -> IO result
htmlButtonElementGetFormAction self
  = fromJSString <$>
      (webkit_dom_html_button_element_get_form_action
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        webkit_dom_html_button_element_set_form_enctype ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
webkit_dom_html_button_element_set_form_enctype ::
                                                  JSRef HTMLButtonElement -> JSString -> IO ()
webkit_dom_html_button_element_set_form_enctype = undefined
#endif
 
htmlButtonElementSetFormEnctype ::
                                (HTMLButtonElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmlButtonElementSetFormEnctype self val
  = webkit_dom_html_button_element_set_form_enctype
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        webkit_dom_html_button_element_get_form_enctype ::
        JSRef HTMLButtonElement -> IO JSString
#else 
webkit_dom_html_button_element_get_form_enctype ::
                                                  JSRef HTMLButtonElement -> IO JSString
webkit_dom_html_button_element_get_form_enctype = undefined
#endif
 
htmlButtonElementGetFormEnctype ::
                                (HTMLButtonElementClass self, FromJSString result) =>
                                  self -> IO result
htmlButtonElementGetFormEnctype self
  = fromJSString <$>
      (webkit_dom_html_button_element_get_form_enctype
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        webkit_dom_html_button_element_set_form_method ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
webkit_dom_html_button_element_set_form_method ::
                                                 JSRef HTMLButtonElement -> JSString -> IO ()
webkit_dom_html_button_element_set_form_method = undefined
#endif
 
htmlButtonElementSetFormMethod ::
                               (HTMLButtonElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlButtonElementSetFormMethod self val
  = webkit_dom_html_button_element_set_form_method
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formMethod\"]"
        webkit_dom_html_button_element_get_form_method ::
        JSRef HTMLButtonElement -> IO JSString
#else 
webkit_dom_html_button_element_get_form_method ::
                                                 JSRef HTMLButtonElement -> IO JSString
webkit_dom_html_button_element_get_form_method = undefined
#endif
 
htmlButtonElementGetFormMethod ::
                               (HTMLButtonElementClass self, FromJSString result) =>
                                 self -> IO result
htmlButtonElementGetFormMethod self
  = fromJSString <$>
      (webkit_dom_html_button_element_get_form_method
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        webkit_dom_html_button_element_set_form_no_validate ::
        JSRef HTMLButtonElement -> JSBool -> IO ()
#else 
webkit_dom_html_button_element_set_form_no_validate ::
                                                      JSRef HTMLButtonElement -> JSBool -> IO ()
webkit_dom_html_button_element_set_form_no_validate = undefined
#endif
 
htmlButtonElementSetFormNoValidate ::
                                   (HTMLButtonElementClass self) => self -> Bool -> IO ()
htmlButtonElementSetFormNoValidate self val
  = webkit_dom_html_button_element_set_form_no_validate
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        webkit_dom_html_button_element_get_form_no_validate ::
        JSRef HTMLButtonElement -> IO JSBool
#else 
webkit_dom_html_button_element_get_form_no_validate ::
                                                      JSRef HTMLButtonElement -> IO JSBool
webkit_dom_html_button_element_get_form_no_validate = undefined
#endif
 
htmlButtonElementGetFormNoValidate ::
                                   (HTMLButtonElementClass self) => self -> IO Bool
htmlButtonElementGetFormNoValidate self
  = fromJSBool <$>
      (webkit_dom_html_button_element_get_form_no_validate
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        webkit_dom_html_button_element_set_form_target ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
webkit_dom_html_button_element_set_form_target ::
                                                 JSRef HTMLButtonElement -> JSString -> IO ()
webkit_dom_html_button_element_set_form_target = undefined
#endif
 
htmlButtonElementSetFormTarget ::
                               (HTMLButtonElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlButtonElementSetFormTarget self val
  = webkit_dom_html_button_element_set_form_target
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formTarget\"]"
        webkit_dom_html_button_element_get_form_target ::
        JSRef HTMLButtonElement -> IO JSString
#else 
webkit_dom_html_button_element_get_form_target ::
                                                 JSRef HTMLButtonElement -> IO JSString
webkit_dom_html_button_element_get_form_target = undefined
#endif
 
htmlButtonElementGetFormTarget ::
                               (HTMLButtonElementClass self, FromJSString result) =>
                                 self -> IO result
htmlButtonElementGetFormTarget self
  = fromJSString <$>
      (webkit_dom_html_button_element_get_form_target
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_button_element_set_name ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
webkit_dom_html_button_element_set_name ::
                                          JSRef HTMLButtonElement -> JSString -> IO ()
webkit_dom_html_button_element_set_name = undefined
#endif
 
htmlButtonElementSetName ::
                         (HTMLButtonElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlButtonElementSetName self val
  = webkit_dom_html_button_element_set_name
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_button_element_get_name ::
        JSRef HTMLButtonElement -> IO JSString
#else 
webkit_dom_html_button_element_get_name ::
                                          JSRef HTMLButtonElement -> IO JSString
webkit_dom_html_button_element_get_name = undefined
#endif
 
htmlButtonElementGetName ::
                         (HTMLButtonElementClass self, FromJSString result) =>
                           self -> IO result
htmlButtonElementGetName self
  = fromJSString <$>
      (webkit_dom_html_button_element_get_name
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        webkit_dom_html_button_element_set_value ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
webkit_dom_html_button_element_set_value ::
                                           JSRef HTMLButtonElement -> JSString -> IO ()
webkit_dom_html_button_element_set_value = undefined
#endif
 
htmlButtonElementSetValue ::
                          (HTMLButtonElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlButtonElementSetValue self val
  = webkit_dom_html_button_element_set_value
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        webkit_dom_html_button_element_get_value ::
        JSRef HTMLButtonElement -> IO JSString
#else 
webkit_dom_html_button_element_get_value ::
                                           JSRef HTMLButtonElement -> IO JSString
webkit_dom_html_button_element_get_value = undefined
#endif
 
htmlButtonElementGetValue ::
                          (HTMLButtonElementClass self, FromJSString result) =>
                            self -> IO result
htmlButtonElementGetValue self
  = fromJSString <$>
      (webkit_dom_html_button_element_get_value
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        webkit_dom_html_button_element_get_will_validate ::
        JSRef HTMLButtonElement -> IO JSBool
#else 
webkit_dom_html_button_element_get_will_validate ::
                                                   JSRef HTMLButtonElement -> IO JSBool
webkit_dom_html_button_element_get_will_validate = undefined
#endif
 
htmlButtonElementGetWillValidate ::
                                 (HTMLButtonElementClass self) => self -> IO Bool
htmlButtonElementGetWillValidate self
  = fromJSBool <$>
      (webkit_dom_html_button_element_get_will_validate
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validity\"]"
        webkit_dom_html_button_element_get_validity ::
        JSRef HTMLButtonElement -> IO (JSRef ValidityState)
#else 
webkit_dom_html_button_element_get_validity ::
                                              JSRef HTMLButtonElement -> IO (JSRef ValidityState)
webkit_dom_html_button_element_get_validity = undefined
#endif
 
htmlButtonElementGetValidity ::
                             (HTMLButtonElementClass self) => self -> IO (Maybe ValidityState)
htmlButtonElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (webkit_dom_html_button_element_get_validity
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        webkit_dom_html_button_element_get_validation_message ::
        JSRef HTMLButtonElement -> IO JSString
#else 
webkit_dom_html_button_element_get_validation_message ::
                                                        JSRef HTMLButtonElement -> IO JSString
webkit_dom_html_button_element_get_validation_message = undefined
#endif
 
htmlButtonElementGetValidationMessage ::
                                      (HTMLButtonElementClass self, FromJSString result) =>
                                        self -> IO result
htmlButtonElementGetValidationMessage self
  = fromJSString <$>
      (webkit_dom_html_button_element_get_validation_message
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"labels\"]"
        webkit_dom_html_button_element_get_labels ::
        JSRef HTMLButtonElement -> IO (JSRef NodeList)
#else 
webkit_dom_html_button_element_get_labels ::
                                            JSRef HTMLButtonElement -> IO (JSRef NodeList)
webkit_dom_html_button_element_get_labels = undefined
#endif
 
htmlButtonElementGetLabels ::
                           (HTMLButtonElementClass self) => self -> IO (Maybe NodeList)
htmlButtonElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_html_button_element_get_labels
         (unHTMLButtonElement (toHTMLButtonElement self)))