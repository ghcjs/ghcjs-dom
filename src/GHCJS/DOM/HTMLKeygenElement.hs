{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLKeygenElement
       (ghcjs_dom_html_keygen_element_check_validity,
        htmlKeygenElementCheckValidity,
        ghcjs_dom_html_keygen_element_set_custom_validity,
        htmlKeygenElementSetCustomValidity,
        ghcjs_dom_html_keygen_element_set_autofocus,
        htmlKeygenElementSetAutofocus,
        ghcjs_dom_html_keygen_element_get_autofocus,
        htmlKeygenElementGetAutofocus,
        ghcjs_dom_html_keygen_element_set_challenge,
        htmlKeygenElementSetChallenge,
        ghcjs_dom_html_keygen_element_get_challenge,
        htmlKeygenElementGetChallenge,
        ghcjs_dom_html_keygen_element_set_disabled,
        htmlKeygenElementSetDisabled,
        ghcjs_dom_html_keygen_element_get_disabled,
        htmlKeygenElementGetDisabled,
        ghcjs_dom_html_keygen_element_get_form, htmlKeygenElementGetForm,
        ghcjs_dom_html_keygen_element_set_keytype,
        htmlKeygenElementSetKeytype,
        ghcjs_dom_html_keygen_element_get_keytype,
        htmlKeygenElementGetKeytype,
        ghcjs_dom_html_keygen_element_set_name, htmlKeygenElementSetName,
        ghcjs_dom_html_keygen_element_get_name, htmlKeygenElementGetName,
        ghcjs_dom_html_keygen_element_get_will_validate,
        htmlKeygenElementGetWillValidate,
        ghcjs_dom_html_keygen_element_get_validity,
        htmlKeygenElementGetValidity,
        ghcjs_dom_html_keygen_element_get_validation_message,
        htmlKeygenElementGetValidationMessage,
        ghcjs_dom_html_keygen_element_get_labels,
        htmlKeygenElementGetLabels, HTMLKeygenElement, IsHTMLKeygenElement,
        castToHTMLKeygenElement, gTypeHTMLKeygenElement,
        toHTMLKeygenElement)
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
        ghcjs_dom_html_keygen_element_check_validity ::
        JSRef HTMLKeygenElement -> IO Bool
#else 
ghcjs_dom_html_keygen_element_check_validity ::
                                               JSRef HTMLKeygenElement -> IO Bool
ghcjs_dom_html_keygen_element_check_validity = undefined
#endif
 
htmlKeygenElementCheckValidity ::
                               (IsHTMLKeygenElement self) => self -> IO Bool
htmlKeygenElementCheckValidity self
  = ghcjs_dom_html_keygen_element_check_validity
      (unHTMLKeygenElement (toHTMLKeygenElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_keygen_element_set_custom_validity ::
        JSRef HTMLKeygenElement -> JSString -> IO ()
#else 
ghcjs_dom_html_keygen_element_set_custom_validity ::
                                                    JSRef HTMLKeygenElement -> JSString -> IO ()
ghcjs_dom_html_keygen_element_set_custom_validity = undefined
#endif
 
htmlKeygenElementSetCustomValidity ::
                                   (IsHTMLKeygenElement self, ToJSString error) =>
                                     self -> error -> IO ()
htmlKeygenElementSetCustomValidity self error
  = ghcjs_dom_html_keygen_element_set_custom_validity
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSString error)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_keygen_element_set_autofocus ::
        JSRef HTMLKeygenElement -> Bool -> IO ()
#else 
ghcjs_dom_html_keygen_element_set_autofocus ::
                                              JSRef HTMLKeygenElement -> Bool -> IO ()
ghcjs_dom_html_keygen_element_set_autofocus = undefined
#endif
 
htmlKeygenElementSetAutofocus ::
                              (IsHTMLKeygenElement self) => self -> Bool -> IO ()
htmlKeygenElementSetAutofocus self val
  = ghcjs_dom_html_keygen_element_set_autofocus
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_keygen_element_get_autofocus ::
        JSRef HTMLKeygenElement -> IO Bool
#else 
ghcjs_dom_html_keygen_element_get_autofocus ::
                                              JSRef HTMLKeygenElement -> IO Bool
ghcjs_dom_html_keygen_element_get_autofocus = undefined
#endif
 
htmlKeygenElementGetAutofocus ::
                              (IsHTMLKeygenElement self) => self -> IO Bool
htmlKeygenElementGetAutofocus self
  = ghcjs_dom_html_keygen_element_get_autofocus
      (unHTMLKeygenElement (toHTMLKeygenElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"challenge\"] = $2;"
        ghcjs_dom_html_keygen_element_set_challenge ::
        JSRef HTMLKeygenElement -> JSString -> IO ()
#else 
ghcjs_dom_html_keygen_element_set_challenge ::
                                              JSRef HTMLKeygenElement -> JSString -> IO ()
ghcjs_dom_html_keygen_element_set_challenge = undefined
#endif
 
htmlKeygenElementSetChallenge ::
                              (IsHTMLKeygenElement self, ToJSString val) => self -> val -> IO ()
htmlKeygenElementSetChallenge self val
  = ghcjs_dom_html_keygen_element_set_challenge
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"challenge\"]"
        ghcjs_dom_html_keygen_element_get_challenge ::
        JSRef HTMLKeygenElement -> IO JSString
#else 
ghcjs_dom_html_keygen_element_get_challenge ::
                                              JSRef HTMLKeygenElement -> IO JSString
ghcjs_dom_html_keygen_element_get_challenge = undefined
#endif
 
htmlKeygenElementGetChallenge ::
                              (IsHTMLKeygenElement self, FromJSString result) =>
                                self -> IO result
htmlKeygenElementGetChallenge self
  = fromJSString <$>
      (ghcjs_dom_html_keygen_element_get_challenge
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_keygen_element_set_disabled ::
        JSRef HTMLKeygenElement -> Bool -> IO ()
#else 
ghcjs_dom_html_keygen_element_set_disabled ::
                                             JSRef HTMLKeygenElement -> Bool -> IO ()
ghcjs_dom_html_keygen_element_set_disabled = undefined
#endif
 
htmlKeygenElementSetDisabled ::
                             (IsHTMLKeygenElement self) => self -> Bool -> IO ()
htmlKeygenElementSetDisabled self val
  = ghcjs_dom_html_keygen_element_set_disabled
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_keygen_element_get_disabled ::
        JSRef HTMLKeygenElement -> IO Bool
#else 
ghcjs_dom_html_keygen_element_get_disabled ::
                                             JSRef HTMLKeygenElement -> IO Bool
ghcjs_dom_html_keygen_element_get_disabled = undefined
#endif
 
htmlKeygenElementGetDisabled ::
                             (IsHTMLKeygenElement self) => self -> IO Bool
htmlKeygenElementGetDisabled self
  = ghcjs_dom_html_keygen_element_get_disabled
      (unHTMLKeygenElement (toHTMLKeygenElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_keygen_element_get_form ::
        JSRef HTMLKeygenElement -> IO (JSRef HTMLFormElement)
#else 
ghcjs_dom_html_keygen_element_get_form ::
                                         JSRef HTMLKeygenElement -> IO (JSRef HTMLFormElement)
ghcjs_dom_html_keygen_element_get_form = undefined
#endif
 
htmlKeygenElementGetForm ::
                         (IsHTMLKeygenElement self) => self -> IO (Maybe HTMLFormElement)
htmlKeygenElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_keygen_element_get_form
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"keytype\"] = $2;"
        ghcjs_dom_html_keygen_element_set_keytype ::
        JSRef HTMLKeygenElement -> JSString -> IO ()
#else 
ghcjs_dom_html_keygen_element_set_keytype ::
                                            JSRef HTMLKeygenElement -> JSString -> IO ()
ghcjs_dom_html_keygen_element_set_keytype = undefined
#endif
 
htmlKeygenElementSetKeytype ::
                            (IsHTMLKeygenElement self, ToJSString val) => self -> val -> IO ()
htmlKeygenElementSetKeytype self val
  = ghcjs_dom_html_keygen_element_set_keytype
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"keytype\"]"
        ghcjs_dom_html_keygen_element_get_keytype ::
        JSRef HTMLKeygenElement -> IO JSString
#else 
ghcjs_dom_html_keygen_element_get_keytype ::
                                            JSRef HTMLKeygenElement -> IO JSString
ghcjs_dom_html_keygen_element_get_keytype = undefined
#endif
 
htmlKeygenElementGetKeytype ::
                            (IsHTMLKeygenElement self, FromJSString result) =>
                              self -> IO result
htmlKeygenElementGetKeytype self
  = fromJSString <$>
      (ghcjs_dom_html_keygen_element_get_keytype
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_keygen_element_set_name ::
        JSRef HTMLKeygenElement -> JSString -> IO ()
#else 
ghcjs_dom_html_keygen_element_set_name ::
                                         JSRef HTMLKeygenElement -> JSString -> IO ()
ghcjs_dom_html_keygen_element_set_name = undefined
#endif
 
htmlKeygenElementSetName ::
                         (IsHTMLKeygenElement self, ToJSString val) => self -> val -> IO ()
htmlKeygenElementSetName self val
  = ghcjs_dom_html_keygen_element_set_name
      (unHTMLKeygenElement (toHTMLKeygenElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_keygen_element_get_name ::
        JSRef HTMLKeygenElement -> IO JSString
#else 
ghcjs_dom_html_keygen_element_get_name ::
                                         JSRef HTMLKeygenElement -> IO JSString
ghcjs_dom_html_keygen_element_get_name = undefined
#endif
 
htmlKeygenElementGetName ::
                         (IsHTMLKeygenElement self, FromJSString result) =>
                           self -> IO result
htmlKeygenElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_keygen_element_get_name
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_keygen_element_get_will_validate ::
        JSRef HTMLKeygenElement -> IO Bool
#else 
ghcjs_dom_html_keygen_element_get_will_validate ::
                                                  JSRef HTMLKeygenElement -> IO Bool
ghcjs_dom_html_keygen_element_get_will_validate = undefined
#endif
 
htmlKeygenElementGetWillValidate ::
                                 (IsHTMLKeygenElement self) => self -> IO Bool
htmlKeygenElementGetWillValidate self
  = ghcjs_dom_html_keygen_element_get_will_validate
      (unHTMLKeygenElement (toHTMLKeygenElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_keygen_element_get_validity ::
        JSRef HTMLKeygenElement -> IO (JSRef ValidityState)
#else 
ghcjs_dom_html_keygen_element_get_validity ::
                                             JSRef HTMLKeygenElement -> IO (JSRef ValidityState)
ghcjs_dom_html_keygen_element_get_validity = undefined
#endif
 
htmlKeygenElementGetValidity ::
                             (IsHTMLKeygenElement self) => self -> IO (Maybe ValidityState)
htmlKeygenElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (ghcjs_dom_html_keygen_element_get_validity
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_keygen_element_get_validation_message ::
        JSRef HTMLKeygenElement -> IO JSString
#else 
ghcjs_dom_html_keygen_element_get_validation_message ::
                                                       JSRef HTMLKeygenElement -> IO JSString
ghcjs_dom_html_keygen_element_get_validation_message = undefined
#endif
 
htmlKeygenElementGetValidationMessage ::
                                      (IsHTMLKeygenElement self, FromJSString result) =>
                                        self -> IO result
htmlKeygenElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_keygen_element_get_validation_message
         (unHTMLKeygenElement (toHTMLKeygenElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_keygen_element_get_labels ::
        JSRef HTMLKeygenElement -> IO (JSRef NodeList)
#else 
ghcjs_dom_html_keygen_element_get_labels ::
                                           JSRef HTMLKeygenElement -> IO (JSRef NodeList)
ghcjs_dom_html_keygen_element_get_labels = undefined
#endif
 
htmlKeygenElementGetLabels ::
                           (IsHTMLKeygenElement self) => self -> IO (Maybe NodeList)
htmlKeygenElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_html_keygen_element_get_labels
         (unHTMLKeygenElement (toHTMLKeygenElement self)))
#else
module GHCJS.DOM.HTMLKeygenElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLKeygenElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLKeygenElement
#endif
