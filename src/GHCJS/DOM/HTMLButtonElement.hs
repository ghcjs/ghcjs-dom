{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLButtonElement
       (ghcjs_dom_html_button_element_check_validity,
        htmlButtonElementCheckValidity,
        ghcjs_dom_html_button_element_set_custom_validity,
        htmlButtonElementSetCustomValidity,
        ghcjs_dom_html_button_element_set_autofocus,
        htmlButtonElementSetAutofocus,
        ghcjs_dom_html_button_element_get_autofocus,
        htmlButtonElementGetAutofocus,
        ghcjs_dom_html_button_element_set_disabled,
        htmlButtonElementSetDisabled,
        ghcjs_dom_html_button_element_get_disabled,
        htmlButtonElementGetDisabled,
        ghcjs_dom_html_button_element_get_form, htmlButtonElementGetForm,
        ghcjs_dom_html_button_element_set_form_action,
        htmlButtonElementSetFormAction,
        ghcjs_dom_html_button_element_get_form_action,
        htmlButtonElementGetFormAction,
        ghcjs_dom_html_button_element_set_form_enctype,
        htmlButtonElementSetFormEnctype,
        ghcjs_dom_html_button_element_get_form_enctype,
        htmlButtonElementGetFormEnctype,
        ghcjs_dom_html_button_element_set_form_method,
        htmlButtonElementSetFormMethod,
        ghcjs_dom_html_button_element_get_form_method,
        htmlButtonElementGetFormMethod,
        ghcjs_dom_html_button_element_set_form_no_validate,
        htmlButtonElementSetFormNoValidate,
        ghcjs_dom_html_button_element_get_form_no_validate,
        htmlButtonElementGetFormNoValidate,
        ghcjs_dom_html_button_element_set_form_target,
        htmlButtonElementSetFormTarget,
        ghcjs_dom_html_button_element_get_form_target,
        htmlButtonElementGetFormTarget,
        ghcjs_dom_html_button_element_set_name, htmlButtonElementSetName,
        ghcjs_dom_html_button_element_get_name, htmlButtonElementGetName,
        ghcjs_dom_html_button_element_set_value, htmlButtonElementSetValue,
        ghcjs_dom_html_button_element_get_value, htmlButtonElementGetValue,
        ghcjs_dom_html_button_element_get_will_validate,
        htmlButtonElementGetWillValidate,
        ghcjs_dom_html_button_element_get_validity,
        htmlButtonElementGetValidity,
        ghcjs_dom_html_button_element_get_validation_message,
        htmlButtonElementGetValidationMessage,
        ghcjs_dom_html_button_element_get_labels,
        htmlButtonElementGetLabels, HTMLButtonElement, IsHTMLButtonElement,
        castToHTMLButtonElement, gTypeHTMLButtonElement,
        toHTMLButtonElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_button_element_check_validity ::
        JSRef HTMLButtonElement -> IO Bool
#else 
ghcjs_dom_html_button_element_check_validity ::
                                               JSRef HTMLButtonElement -> IO Bool
ghcjs_dom_html_button_element_check_validity = undefined
#endif
 
htmlButtonElementCheckValidity ::
                               (IsHTMLButtonElement self) => self -> IO Bool
htmlButtonElementCheckValidity self
  = ghcjs_dom_html_button_element_check_validity
      (unHTMLButtonElement (toHTMLButtonElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_button_element_set_custom_validity ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
ghcjs_dom_html_button_element_set_custom_validity ::
                                                    JSRef HTMLButtonElement -> JSString -> IO ()
ghcjs_dom_html_button_element_set_custom_validity = undefined
#endif
 
htmlButtonElementSetCustomValidity ::
                                   (IsHTMLButtonElement self, ToJSString error) =>
                                     self -> error -> IO ()
htmlButtonElementSetCustomValidity self error
  = ghcjs_dom_html_button_element_set_custom_validity
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString error)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_button_element_set_autofocus ::
        JSRef HTMLButtonElement -> Bool -> IO ()
#else 
ghcjs_dom_html_button_element_set_autofocus ::
                                              JSRef HTMLButtonElement -> Bool -> IO ()
ghcjs_dom_html_button_element_set_autofocus = undefined
#endif
 
htmlButtonElementSetAutofocus ::
                              (IsHTMLButtonElement self) => self -> Bool -> IO ()
htmlButtonElementSetAutofocus self val
  = ghcjs_dom_html_button_element_set_autofocus
      (unHTMLButtonElement (toHTMLButtonElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_button_element_get_autofocus ::
        JSRef HTMLButtonElement -> IO Bool
#else 
ghcjs_dom_html_button_element_get_autofocus ::
                                              JSRef HTMLButtonElement -> IO Bool
ghcjs_dom_html_button_element_get_autofocus = undefined
#endif
 
htmlButtonElementGetAutofocus ::
                              (IsHTMLButtonElement self) => self -> IO Bool
htmlButtonElementGetAutofocus self
  = ghcjs_dom_html_button_element_get_autofocus
      (unHTMLButtonElement (toHTMLButtonElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_button_element_set_disabled ::
        JSRef HTMLButtonElement -> Bool -> IO ()
#else 
ghcjs_dom_html_button_element_set_disabled ::
                                             JSRef HTMLButtonElement -> Bool -> IO ()
ghcjs_dom_html_button_element_set_disabled = undefined
#endif
 
htmlButtonElementSetDisabled ::
                             (IsHTMLButtonElement self) => self -> Bool -> IO ()
htmlButtonElementSetDisabled self val
  = ghcjs_dom_html_button_element_set_disabled
      (unHTMLButtonElement (toHTMLButtonElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_button_element_get_disabled ::
        JSRef HTMLButtonElement -> IO Bool
#else 
ghcjs_dom_html_button_element_get_disabled ::
                                             JSRef HTMLButtonElement -> IO Bool
ghcjs_dom_html_button_element_get_disabled = undefined
#endif
 
htmlButtonElementGetDisabled ::
                             (IsHTMLButtonElement self) => self -> IO Bool
htmlButtonElementGetDisabled self
  = ghcjs_dom_html_button_element_get_disabled
      (unHTMLButtonElement (toHTMLButtonElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_button_element_get_form ::
        JSRef HTMLButtonElement -> IO (JSRef HTMLFormElement)
#else 
ghcjs_dom_html_button_element_get_form ::
                                         JSRef HTMLButtonElement -> IO (JSRef HTMLFormElement)
ghcjs_dom_html_button_element_get_form = undefined
#endif
 
htmlButtonElementGetForm ::
                         (IsHTMLButtonElement self) => self -> IO (Maybe HTMLFormElement)
htmlButtonElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_button_element_get_form
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        ghcjs_dom_html_button_element_set_form_action ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
ghcjs_dom_html_button_element_set_form_action ::
                                                JSRef HTMLButtonElement -> JSString -> IO ()
ghcjs_dom_html_button_element_set_form_action = undefined
#endif
 
htmlButtonElementSetFormAction ::
                               (IsHTMLButtonElement self, ToJSString val) => self -> val -> IO ()
htmlButtonElementSetFormAction self val
  = ghcjs_dom_html_button_element_set_form_action
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"formAction\"]"
        ghcjs_dom_html_button_element_get_form_action ::
        JSRef HTMLButtonElement -> IO JSString
#else 
ghcjs_dom_html_button_element_get_form_action ::
                                                JSRef HTMLButtonElement -> IO JSString
ghcjs_dom_html_button_element_get_form_action = undefined
#endif
 
htmlButtonElementGetFormAction ::
                               (IsHTMLButtonElement self, FromJSString result) =>
                                 self -> IO result
htmlButtonElementGetFormAction self
  = fromJSString <$>
      (ghcjs_dom_html_button_element_get_form_action
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        ghcjs_dom_html_button_element_set_form_enctype ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
ghcjs_dom_html_button_element_set_form_enctype ::
                                                 JSRef HTMLButtonElement -> JSString -> IO ()
ghcjs_dom_html_button_element_set_form_enctype = undefined
#endif
 
htmlButtonElementSetFormEnctype ::
                                (IsHTMLButtonElement self, ToJSString val) => self -> val -> IO ()
htmlButtonElementSetFormEnctype self val
  = ghcjs_dom_html_button_element_set_form_enctype
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        ghcjs_dom_html_button_element_get_form_enctype ::
        JSRef HTMLButtonElement -> IO JSString
#else 
ghcjs_dom_html_button_element_get_form_enctype ::
                                                 JSRef HTMLButtonElement -> IO JSString
ghcjs_dom_html_button_element_get_form_enctype = undefined
#endif
 
htmlButtonElementGetFormEnctype ::
                                (IsHTMLButtonElement self, FromJSString result) =>
                                  self -> IO result
htmlButtonElementGetFormEnctype self
  = fromJSString <$>
      (ghcjs_dom_html_button_element_get_form_enctype
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        ghcjs_dom_html_button_element_set_form_method ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
ghcjs_dom_html_button_element_set_form_method ::
                                                JSRef HTMLButtonElement -> JSString -> IO ()
ghcjs_dom_html_button_element_set_form_method = undefined
#endif
 
htmlButtonElementSetFormMethod ::
                               (IsHTMLButtonElement self, ToJSString val) => self -> val -> IO ()
htmlButtonElementSetFormMethod self val
  = ghcjs_dom_html_button_element_set_form_method
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"formMethod\"]"
        ghcjs_dom_html_button_element_get_form_method ::
        JSRef HTMLButtonElement -> IO JSString
#else 
ghcjs_dom_html_button_element_get_form_method ::
                                                JSRef HTMLButtonElement -> IO JSString
ghcjs_dom_html_button_element_get_form_method = undefined
#endif
 
htmlButtonElementGetFormMethod ::
                               (IsHTMLButtonElement self, FromJSString result) =>
                                 self -> IO result
htmlButtonElementGetFormMethod self
  = fromJSString <$>
      (ghcjs_dom_html_button_element_get_form_method
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        ghcjs_dom_html_button_element_set_form_no_validate ::
        JSRef HTMLButtonElement -> Bool -> IO ()
#else 
ghcjs_dom_html_button_element_set_form_no_validate ::
                                                     JSRef HTMLButtonElement -> Bool -> IO ()
ghcjs_dom_html_button_element_set_form_no_validate = undefined
#endif
 
htmlButtonElementSetFormNoValidate ::
                                   (IsHTMLButtonElement self) => self -> Bool -> IO ()
htmlButtonElementSetFormNoValidate self val
  = ghcjs_dom_html_button_element_set_form_no_validate
      (unHTMLButtonElement (toHTMLButtonElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        ghcjs_dom_html_button_element_get_form_no_validate ::
        JSRef HTMLButtonElement -> IO Bool
#else 
ghcjs_dom_html_button_element_get_form_no_validate ::
                                                     JSRef HTMLButtonElement -> IO Bool
ghcjs_dom_html_button_element_get_form_no_validate = undefined
#endif
 
htmlButtonElementGetFormNoValidate ::
                                   (IsHTMLButtonElement self) => self -> IO Bool
htmlButtonElementGetFormNoValidate self
  = ghcjs_dom_html_button_element_get_form_no_validate
      (unHTMLButtonElement (toHTMLButtonElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        ghcjs_dom_html_button_element_set_form_target ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
ghcjs_dom_html_button_element_set_form_target ::
                                                JSRef HTMLButtonElement -> JSString -> IO ()
ghcjs_dom_html_button_element_set_form_target = undefined
#endif
 
htmlButtonElementSetFormTarget ::
                               (IsHTMLButtonElement self, ToJSString val) => self -> val -> IO ()
htmlButtonElementSetFormTarget self val
  = ghcjs_dom_html_button_element_set_form_target
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"formTarget\"]"
        ghcjs_dom_html_button_element_get_form_target ::
        JSRef HTMLButtonElement -> IO JSString
#else 
ghcjs_dom_html_button_element_get_form_target ::
                                                JSRef HTMLButtonElement -> IO JSString
ghcjs_dom_html_button_element_get_form_target = undefined
#endif
 
htmlButtonElementGetFormTarget ::
                               (IsHTMLButtonElement self, FromJSString result) =>
                                 self -> IO result
htmlButtonElementGetFormTarget self
  = fromJSString <$>
      (ghcjs_dom_html_button_element_get_form_target
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_button_element_set_name ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
ghcjs_dom_html_button_element_set_name ::
                                         JSRef HTMLButtonElement -> JSString -> IO ()
ghcjs_dom_html_button_element_set_name = undefined
#endif
 
htmlButtonElementSetName ::
                         (IsHTMLButtonElement self, ToJSString val) => self -> val -> IO ()
htmlButtonElementSetName self val
  = ghcjs_dom_html_button_element_set_name
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_button_element_get_name ::
        JSRef HTMLButtonElement -> IO JSString
#else 
ghcjs_dom_html_button_element_get_name ::
                                         JSRef HTMLButtonElement -> IO JSString
ghcjs_dom_html_button_element_get_name = undefined
#endif
 
htmlButtonElementGetName ::
                         (IsHTMLButtonElement self, FromJSString result) =>
                           self -> IO result
htmlButtonElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_button_element_get_name
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_button_element_set_value ::
        JSRef HTMLButtonElement -> JSString -> IO ()
#else 
ghcjs_dom_html_button_element_set_value ::
                                          JSRef HTMLButtonElement -> JSString -> IO ()
ghcjs_dom_html_button_element_set_value = undefined
#endif
 
htmlButtonElementSetValue ::
                          (IsHTMLButtonElement self, ToJSString val) => self -> val -> IO ()
htmlButtonElementSetValue self val
  = ghcjs_dom_html_button_element_set_value
      (unHTMLButtonElement (toHTMLButtonElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_button_element_get_value ::
        JSRef HTMLButtonElement -> IO JSString
#else 
ghcjs_dom_html_button_element_get_value ::
                                          JSRef HTMLButtonElement -> IO JSString
ghcjs_dom_html_button_element_get_value = undefined
#endif
 
htmlButtonElementGetValue ::
                          (IsHTMLButtonElement self, FromJSString result) =>
                            self -> IO result
htmlButtonElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_button_element_get_value
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_button_element_get_will_validate ::
        JSRef HTMLButtonElement -> IO Bool
#else 
ghcjs_dom_html_button_element_get_will_validate ::
                                                  JSRef HTMLButtonElement -> IO Bool
ghcjs_dom_html_button_element_get_will_validate = undefined
#endif
 
htmlButtonElementGetWillValidate ::
                                 (IsHTMLButtonElement self) => self -> IO Bool
htmlButtonElementGetWillValidate self
  = ghcjs_dom_html_button_element_get_will_validate
      (unHTMLButtonElement (toHTMLButtonElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_button_element_get_validity ::
        JSRef HTMLButtonElement -> IO (JSRef ValidityState)
#else 
ghcjs_dom_html_button_element_get_validity ::
                                             JSRef HTMLButtonElement -> IO (JSRef ValidityState)
ghcjs_dom_html_button_element_get_validity = undefined
#endif
 
htmlButtonElementGetValidity ::
                             (IsHTMLButtonElement self) => self -> IO (Maybe ValidityState)
htmlButtonElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (ghcjs_dom_html_button_element_get_validity
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_button_element_get_validation_message ::
        JSRef HTMLButtonElement -> IO JSString
#else 
ghcjs_dom_html_button_element_get_validation_message ::
                                                       JSRef HTMLButtonElement -> IO JSString
ghcjs_dom_html_button_element_get_validation_message = undefined
#endif
 
htmlButtonElementGetValidationMessage ::
                                      (IsHTMLButtonElement self, FromJSString result) =>
                                        self -> IO result
htmlButtonElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_button_element_get_validation_message
         (unHTMLButtonElement (toHTMLButtonElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_button_element_get_labels ::
        JSRef HTMLButtonElement -> IO (JSRef NodeList)
#else 
ghcjs_dom_html_button_element_get_labels ::
                                           JSRef HTMLButtonElement -> IO (JSRef NodeList)
ghcjs_dom_html_button_element_get_labels = undefined
#endif
 
htmlButtonElementGetLabels ::
                           (IsHTMLButtonElement self) => self -> IO (Maybe NodeList)
htmlButtonElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_html_button_element_get_labels
         (unHTMLButtonElement (toHTMLButtonElement self)))
#else
module GHCJS.DOM.HTMLButtonElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLButtonElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLButtonElement
#endif
