{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOutputElement
       (ghcjs_dom_html_output_element_check_validity,
        htmlOutputElementCheckValidity,
        ghcjs_dom_html_output_element_set_custom_validity,
        htmlOutputElementSetCustomValidity,
        ghcjs_dom_html_output_element_get_html_for,
        htmlOutputElementGetHtmlFor,
        ghcjs_dom_html_output_element_get_form, htmlOutputElementGetForm,
        ghcjs_dom_html_output_element_set_name, htmlOutputElementSetName,
        ghcjs_dom_html_output_element_get_name, htmlOutputElementGetName,
        ghcjs_dom_html_output_element_set_default_value,
        htmlOutputElementSetDefaultValue,
        ghcjs_dom_html_output_element_get_default_value,
        htmlOutputElementGetDefaultValue,
        ghcjs_dom_html_output_element_set_value, htmlOutputElementSetValue,
        ghcjs_dom_html_output_element_get_value, htmlOutputElementGetValue,
        ghcjs_dom_html_output_element_get_will_validate,
        htmlOutputElementGetWillValidate,
        ghcjs_dom_html_output_element_get_validity,
        htmlOutputElementGetValidity,
        ghcjs_dom_html_output_element_get_validation_message,
        htmlOutputElementGetValidationMessage,
        ghcjs_dom_html_output_element_get_labels,
        htmlOutputElementGetLabels, HTMLOutputElement, IsHTMLOutputElement,
        castToHTMLOutputElement, gTypeHTMLOutputElement,
        toHTMLOutputElement)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_output_element_check_validity ::
        JSRef HTMLOutputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.checkValidity Mozilla HTMLOutputElement.checkValidity documentation> 
htmlOutputElementCheckValidity ::
                               (IsHTMLOutputElement self) => self -> IO Bool
htmlOutputElementCheckValidity self
  = ghcjs_dom_html_output_element_check_validity
      (unHTMLOutputElement (toHTMLOutputElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_output_element_set_custom_validity ::
        JSRef HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.customValidity Mozilla HTMLOutputElement.customValidity documentation> 
htmlOutputElementSetCustomValidity ::
                                   (IsHTMLOutputElement self, ToJSString error) =>
                                     self -> error -> IO ()
htmlOutputElementSetCustomValidity self error
  = ghcjs_dom_html_output_element_set_custom_validity
      (unHTMLOutputElement (toHTMLOutputElement self))
      (toJSString error)
 
foreign import javascript unsafe "$1[\"htmlFor\"]"
        ghcjs_dom_html_output_element_get_html_for ::
        JSRef HTMLOutputElement -> IO (JSRef DOMSettableTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.htmlFor Mozilla HTMLOutputElement.htmlFor documentation> 
htmlOutputElementGetHtmlFor ::
                            (IsHTMLOutputElement self) =>
                              self -> IO (Maybe DOMSettableTokenList)
htmlOutputElementGetHtmlFor self
  = (ghcjs_dom_html_output_element_get_html_for
       (unHTMLOutputElement (toHTMLOutputElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_output_element_get_form ::
        JSRef HTMLOutputElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.form Mozilla HTMLOutputElement.form documentation> 
htmlOutputElementGetForm ::
                         (IsHTMLOutputElement self) => self -> IO (Maybe HTMLFormElement)
htmlOutputElementGetForm self
  = (ghcjs_dom_html_output_element_get_form
       (unHTMLOutputElement (toHTMLOutputElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_output_element_set_name ::
        JSRef HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
htmlOutputElementSetName ::
                         (IsHTMLOutputElement self, ToJSString val) => self -> val -> IO ()
htmlOutputElementSetName self val
  = ghcjs_dom_html_output_element_set_name
      (unHTMLOutputElement (toHTMLOutputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_output_element_get_name ::
        JSRef HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
htmlOutputElementGetName ::
                         (IsHTMLOutputElement self, FromJSString result) =>
                           self -> IO result
htmlOutputElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_output_element_get_name
         (unHTMLOutputElement (toHTMLOutputElement self)))
 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        ghcjs_dom_html_output_element_set_default_value ::
        JSRef HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
htmlOutputElementSetDefaultValue ::
                                 (IsHTMLOutputElement self, ToJSString val) => self -> val -> IO ()
htmlOutputElementSetDefaultValue self val
  = ghcjs_dom_html_output_element_set_default_value
      (unHTMLOutputElement (toHTMLOutputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        ghcjs_dom_html_output_element_get_default_value ::
        JSRef HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
htmlOutputElementGetDefaultValue ::
                                 (IsHTMLOutputElement self, FromJSString result) =>
                                   self -> IO result
htmlOutputElementGetDefaultValue self
  = fromJSString <$>
      (ghcjs_dom_html_output_element_get_default_value
         (unHTMLOutputElement (toHTMLOutputElement self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_output_element_set_value ::
        JSRef HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
htmlOutputElementSetValue ::
                          (IsHTMLOutputElement self, ToJSString val) => self -> val -> IO ()
htmlOutputElementSetValue self val
  = ghcjs_dom_html_output_element_set_value
      (unHTMLOutputElement (toHTMLOutputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_output_element_get_value ::
        JSRef HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
htmlOutputElementGetValue ::
                          (IsHTMLOutputElement self, FromJSString result) =>
                            self -> IO result
htmlOutputElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_output_element_get_value
         (unHTMLOutputElement (toHTMLOutputElement self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_output_element_get_will_validate ::
        JSRef HTMLOutputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.willValidate Mozilla HTMLOutputElement.willValidate documentation> 
htmlOutputElementGetWillValidate ::
                                 (IsHTMLOutputElement self) => self -> IO Bool
htmlOutputElementGetWillValidate self
  = ghcjs_dom_html_output_element_get_will_validate
      (unHTMLOutputElement (toHTMLOutputElement self))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_output_element_get_validity ::
        JSRef HTMLOutputElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validity Mozilla HTMLOutputElement.validity documentation> 
htmlOutputElementGetValidity ::
                             (IsHTMLOutputElement self) => self -> IO (Maybe ValidityState)
htmlOutputElementGetValidity self
  = (ghcjs_dom_html_output_element_get_validity
       (unHTMLOutputElement (toHTMLOutputElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_output_element_get_validation_message ::
        JSRef HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validationMessage Mozilla HTMLOutputElement.validationMessage documentation> 
htmlOutputElementGetValidationMessage ::
                                      (IsHTMLOutputElement self, FromJSString result) =>
                                        self -> IO result
htmlOutputElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_output_element_get_validation_message
         (unHTMLOutputElement (toHTMLOutputElement self)))
 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_output_element_get_labels ::
        JSRef HTMLOutputElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.labels Mozilla HTMLOutputElement.labels documentation> 
htmlOutputElementGetLabels ::
                           (IsHTMLOutputElement self) => self -> IO (Maybe NodeList)
htmlOutputElementGetLabels self
  = (ghcjs_dom_html_output_element_get_labels
       (unHTMLOutputElement (toHTMLOutputElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLOutputElement (
  ) where
#endif
