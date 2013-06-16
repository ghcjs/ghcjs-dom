{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLKeygenElement
       (webkit_dom_html_keygen_element_check_validity,
        htmlKeygenElementCheckValidity,
        webkit_dom_html_keygen_element_set_custom_validity,
        htmlKeygenElementSetCustomValidity,
        webkit_dom_html_keygen_element_set_autofocus,
        htmlKeygenElementSetAutofocus,
        webkit_dom_html_keygen_element_get_autofocus,
        htmlKeygenElementGetAutofocus,
        webkit_dom_html_keygen_element_set_challenge,
        htmlKeygenElementSetChallenge,
        webkit_dom_html_keygen_element_get_challenge,
        htmlKeygenElementGetChallenge,
        webkit_dom_html_keygen_element_set_disabled,
        htmlKeygenElementSetDisabled,
        webkit_dom_html_keygen_element_get_disabled,
        htmlKeygenElementGetDisabled,
        webkit_dom_html_keygen_element_get_form, htmlKeygenElementGetForm,
        webkit_dom_html_keygen_element_set_keytype,
        htmlKeygenElementSetKeytype,
        webkit_dom_html_keygen_element_get_keytype,
        htmlKeygenElementGetKeytype,
        webkit_dom_html_keygen_element_set_name, htmlKeygenElementSetName,
        webkit_dom_html_keygen_element_get_name, htmlKeygenElementGetName,
        webkit_dom_html_keygen_element_get_will_validate,
        htmlKeygenElementGetWillValidate,
        webkit_dom_html_keygen_element_get_validity,
        htmlKeygenElementGetValidity,
        webkit_dom_html_keygen_element_get_validation_message,
        htmlKeygenElementGetValidationMessage,
        webkit_dom_html_keygen_element_get_labels,
        htmlKeygenElementGetLabels)
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
foreign import javascript unsafe "$1[\"checkValidity\"]()"
        webkit_dom_html_keygen_element_check_validity ::
        JSRef HTMLKeygenElement -> IO JSBool
#else 
webkit_dom_html_keygen_element_check_validity ::
                                                JSRef HTMLKeygenElement -> IO JSBool
webkit_dom_html_keygen_element_check_validity = undefined
#endif
 
htmlKeygenElementCheckValidity ::
                               (HTMLKeygenElementClass self) => self -> IO Bool
htmlKeygenElementCheckValidity self
  = fromJSBool <$>
      (webkit_dom_html_keygen_element_check_validity
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        webkit_dom_html_keygen_element_set_custom_validity ::
        JSRef HTMLKeygenElement -> JSString -> IO ()
#else 
webkit_dom_html_keygen_element_set_custom_validity ::
                                                     JSRef HTMLKeygenElement -> JSString -> IO ()
webkit_dom_html_keygen_element_set_custom_validity = undefined
#endif
 
htmlKeygenElementSetCustomValidity ::
                                   (HTMLKeygenElementClass self, ToJSString error) =>
                                     self -> error -> IO ()
htmlKeygenElementSetCustomValidity self error
  = webkit_dom_html_keygen_element_set_custom_validity
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSString error)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        webkit_dom_html_keygen_element_set_autofocus ::
        JSRef HTMLKeygenElement -> JSBool -> IO ()
#else 
webkit_dom_html_keygen_element_set_autofocus ::
                                               JSRef HTMLKeygenElement -> JSBool -> IO ()
webkit_dom_html_keygen_element_set_autofocus = undefined
#endif
 
htmlKeygenElementSetAutofocus ::
                              (HTMLKeygenElementClass self) => self -> Bool -> IO ()
htmlKeygenElementSetAutofocus self val
  = webkit_dom_html_keygen_element_set_autofocus
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"]"
        webkit_dom_html_keygen_element_get_autofocus ::
        JSRef HTMLKeygenElement -> IO JSBool
#else 
webkit_dom_html_keygen_element_get_autofocus ::
                                               JSRef HTMLKeygenElement -> IO JSBool
webkit_dom_html_keygen_element_get_autofocus = undefined
#endif
 
htmlKeygenElementGetAutofocus ::
                              (HTMLKeygenElementClass self) => self -> IO Bool
htmlKeygenElementGetAutofocus self
  = fromJSBool <$>
      (webkit_dom_html_keygen_element_get_autofocus
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"challenge\"] = $2;"
        webkit_dom_html_keygen_element_set_challenge ::
        JSRef HTMLKeygenElement -> JSString -> IO ()
#else 
webkit_dom_html_keygen_element_set_challenge ::
                                               JSRef HTMLKeygenElement -> JSString -> IO ()
webkit_dom_html_keygen_element_set_challenge = undefined
#endif
 
htmlKeygenElementSetChallenge ::
                              (HTMLKeygenElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlKeygenElementSetChallenge self val
  = webkit_dom_html_keygen_element_set_challenge
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"challenge\"]"
        webkit_dom_html_keygen_element_get_challenge ::
        JSRef HTMLKeygenElement -> IO JSString
#else 
webkit_dom_html_keygen_element_get_challenge ::
                                               JSRef HTMLKeygenElement -> IO JSString
webkit_dom_html_keygen_element_get_challenge = undefined
#endif
 
htmlKeygenElementGetChallenge ::
                              (HTMLKeygenElementClass self, FromJSString result) =>
                                self -> IO result
htmlKeygenElementGetChallenge self
  = fromJSString <$>
      (webkit_dom_html_keygen_element_get_challenge
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_keygen_element_set_disabled ::
        JSRef HTMLKeygenElement -> JSBool -> IO ()
#else 
webkit_dom_html_keygen_element_set_disabled ::
                                              JSRef HTMLKeygenElement -> JSBool -> IO ()
webkit_dom_html_keygen_element_set_disabled = undefined
#endif
 
htmlKeygenElementSetDisabled ::
                             (HTMLKeygenElementClass self) => self -> Bool -> IO ()
htmlKeygenElementSetDisabled self val
  = webkit_dom_html_keygen_element_set_disabled
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"]"
        webkit_dom_html_keygen_element_get_disabled ::
        JSRef HTMLKeygenElement -> IO JSBool
#else 
webkit_dom_html_keygen_element_get_disabled ::
                                              JSRef HTMLKeygenElement -> IO JSBool
webkit_dom_html_keygen_element_get_disabled = undefined
#endif
 
htmlKeygenElementGetDisabled ::
                             (HTMLKeygenElementClass self) => self -> IO Bool
htmlKeygenElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_keygen_element_get_disabled
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        webkit_dom_html_keygen_element_get_form ::
        JSRef HTMLKeygenElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_keygen_element_get_form ::
                                          JSRef HTMLKeygenElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_keygen_element_get_form = undefined
#endif
 
htmlKeygenElementGetForm ::
                         (HTMLKeygenElementClass self) => self -> IO (Maybe HTMLFormElement)
htmlKeygenElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_keygen_element_get_form
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"keytype\"] = $2;"
        webkit_dom_html_keygen_element_set_keytype ::
        JSRef HTMLKeygenElement -> JSString -> IO ()
#else 
webkit_dom_html_keygen_element_set_keytype ::
                                             JSRef HTMLKeygenElement -> JSString -> IO ()
webkit_dom_html_keygen_element_set_keytype = undefined
#endif
 
htmlKeygenElementSetKeytype ::
                            (HTMLKeygenElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlKeygenElementSetKeytype self val
  = webkit_dom_html_keygen_element_set_keytype
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"keytype\"]"
        webkit_dom_html_keygen_element_get_keytype ::
        JSRef HTMLKeygenElement -> IO JSString
#else 
webkit_dom_html_keygen_element_get_keytype ::
                                             JSRef HTMLKeygenElement -> IO JSString
webkit_dom_html_keygen_element_get_keytype = undefined
#endif
 
htmlKeygenElementGetKeytype ::
                            (HTMLKeygenElementClass self, FromJSString result) =>
                              self -> IO result
htmlKeygenElementGetKeytype self
  = fromJSString <$>
      (webkit_dom_html_keygen_element_get_keytype
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_keygen_element_set_name ::
        JSRef HTMLKeygenElement -> JSString -> IO ()
#else 
webkit_dom_html_keygen_element_set_name ::
                                          JSRef HTMLKeygenElement -> JSString -> IO ()
webkit_dom_html_keygen_element_set_name = undefined
#endif
 
htmlKeygenElementSetName ::
                         (HTMLKeygenElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlKeygenElementSetName self val
  = webkit_dom_html_keygen_element_set_name
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_keygen_element_get_name ::
        JSRef HTMLKeygenElement -> IO JSString
#else 
webkit_dom_html_keygen_element_get_name ::
                                          JSRef HTMLKeygenElement -> IO JSString
webkit_dom_html_keygen_element_get_name = undefined
#endif
 
htmlKeygenElementGetName ::
                         (HTMLKeygenElementClass self, FromJSString result) =>
                           self -> IO result
htmlKeygenElementGetName self
  = fromJSString <$>
      (webkit_dom_html_keygen_element_get_name
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"willValidate\"]"
        webkit_dom_html_keygen_element_get_will_validate ::
        JSRef HTMLKeygenElement -> IO JSBool
#else 
webkit_dom_html_keygen_element_get_will_validate ::
                                                   JSRef HTMLKeygenElement -> IO JSBool
webkit_dom_html_keygen_element_get_will_validate = undefined
#endif
 
htmlKeygenElementGetWillValidate ::
                                 (HTMLKeygenElementClass self) => self -> IO Bool
htmlKeygenElementGetWillValidate self
  = fromJSBool <$>
      (webkit_dom_html_keygen_element_get_will_validate
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validity\"]"
        webkit_dom_html_keygen_element_get_validity ::
        JSRef HTMLKeygenElement -> IO (JSRef ValidityState)
#else 
webkit_dom_html_keygen_element_get_validity ::
                                              JSRef HTMLKeygenElement -> IO (JSRef ValidityState)
webkit_dom_html_keygen_element_get_validity = undefined
#endif
 
htmlKeygenElementGetValidity ::
                             (HTMLKeygenElementClass self) => self -> IO (Maybe ValidityState)
htmlKeygenElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (webkit_dom_html_keygen_element_get_validity
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        webkit_dom_html_keygen_element_get_validation_message ::
        JSRef HTMLKeygenElement -> IO JSString
#else 
webkit_dom_html_keygen_element_get_validation_message ::
                                                        JSRef HTMLKeygenElement -> IO JSString
webkit_dom_html_keygen_element_get_validation_message = undefined
#endif
 
htmlKeygenElementGetValidationMessage ::
                                      (HTMLKeygenElementClass self, FromJSString result) =>
                                        self -> IO result
htmlKeygenElementGetValidationMessage self
  = fromJSString <$>
      (webkit_dom_html_keygen_element_get_validation_message
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"labels\"]"
        webkit_dom_html_keygen_element_get_labels ::
        JSRef HTMLKeygenElement -> IO (JSRef NodeList)
#else 
webkit_dom_html_keygen_element_get_labels ::
                                            JSRef HTMLKeygenElement -> IO (JSRef NodeList)
webkit_dom_html_keygen_element_get_labels = undefined
#endif
 
htmlKeygenElementGetLabels ::
                           (HTMLKeygenElementClass self) => self -> IO (Maybe NodeList)
htmlKeygenElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_html_keygen_element_get_labels
         (unHTMLKeygenElement (toHTMLKeygenElement self)))