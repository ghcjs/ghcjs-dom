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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_button_element_check_validity ::
        JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.checkValidity Mozilla HTMLButtonElement.checkValidity documentation> 
htmlButtonElementCheckValidity ::
                               (MonadIO m, IsHTMLButtonElement self) => self -> m Bool
htmlButtonElementCheckValidity self
  = liftIO
      (ghcjs_dom_html_button_element_check_validity
         (unHTMLButtonElement (toHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_button_element_set_custom_validity ::
        JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.customValidity Mozilla HTMLButtonElement.customValidity documentation> 
htmlButtonElementSetCustomValidity ::
                                   (MonadIO m, IsHTMLButtonElement self, ToJSString error) =>
                                     self -> error -> m ()
htmlButtonElementSetCustomValidity self error
  = liftIO
      (ghcjs_dom_html_button_element_set_custom_validity
         (unHTMLButtonElement (toHTMLButtonElement self))
         (toJSString error))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_button_element_set_autofocus ::
        JSRef HTMLButtonElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.autofocus Mozilla HTMLButtonElement.autofocus documentation> 
htmlButtonElementSetAutofocus ::
                              (MonadIO m, IsHTMLButtonElement self) => self -> Bool -> m ()
htmlButtonElementSetAutofocus self val
  = liftIO
      (ghcjs_dom_html_button_element_set_autofocus
         (unHTMLButtonElement (toHTMLButtonElement self))
         val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_button_element_get_autofocus ::
        JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.autofocus Mozilla HTMLButtonElement.autofocus documentation> 
htmlButtonElementGetAutofocus ::
                              (MonadIO m, IsHTMLButtonElement self) => self -> m Bool
htmlButtonElementGetAutofocus self
  = liftIO
      (ghcjs_dom_html_button_element_get_autofocus
         (unHTMLButtonElement (toHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_button_element_set_disabled ::
        JSRef HTMLButtonElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.disabled Mozilla HTMLButtonElement.disabled documentation> 
htmlButtonElementSetDisabled ::
                             (MonadIO m, IsHTMLButtonElement self) => self -> Bool -> m ()
htmlButtonElementSetDisabled self val
  = liftIO
      (ghcjs_dom_html_button_element_set_disabled
         (unHTMLButtonElement (toHTMLButtonElement self))
         val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_button_element_get_disabled ::
        JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.disabled Mozilla HTMLButtonElement.disabled documentation> 
htmlButtonElementGetDisabled ::
                             (MonadIO m, IsHTMLButtonElement self) => self -> m Bool
htmlButtonElementGetDisabled self
  = liftIO
      (ghcjs_dom_html_button_element_get_disabled
         (unHTMLButtonElement (toHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_button_element_get_form ::
        JSRef HTMLButtonElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.form Mozilla HTMLButtonElement.form documentation> 
htmlButtonElementGetForm ::
                         (MonadIO m, IsHTMLButtonElement self) =>
                           self -> m (Maybe HTMLFormElement)
htmlButtonElementGetForm self
  = liftIO
      ((ghcjs_dom_html_button_element_get_form
          (unHTMLButtonElement (toHTMLButtonElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        ghcjs_dom_html_button_element_set_form_action ::
        JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formAction Mozilla HTMLButtonElement.formAction documentation> 
htmlButtonElementSetFormAction ::
                               (MonadIO m, IsHTMLButtonElement self, ToJSString val) =>
                                 self -> val -> m ()
htmlButtonElementSetFormAction self val
  = liftIO
      (ghcjs_dom_html_button_element_set_form_action
         (unHTMLButtonElement (toHTMLButtonElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"formAction\"]"
        ghcjs_dom_html_button_element_get_form_action ::
        JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formAction Mozilla HTMLButtonElement.formAction documentation> 
htmlButtonElementGetFormAction ::
                               (MonadIO m, IsHTMLButtonElement self, FromJSString result) =>
                                 self -> m result
htmlButtonElementGetFormAction self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_button_element_get_form_action
            (unHTMLButtonElement (toHTMLButtonElement self))))
 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        ghcjs_dom_html_button_element_set_form_enctype ::
        JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
htmlButtonElementSetFormEnctype ::
                                (MonadIO m, IsHTMLButtonElement self, ToJSString val) =>
                                  self -> val -> m ()
htmlButtonElementSetFormEnctype self val
  = liftIO
      (ghcjs_dom_html_button_element_set_form_enctype
         (unHTMLButtonElement (toHTMLButtonElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        ghcjs_dom_html_button_element_get_form_enctype ::
        JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
htmlButtonElementGetFormEnctype ::
                                (MonadIO m, IsHTMLButtonElement self, FromJSString result) =>
                                  self -> m result
htmlButtonElementGetFormEnctype self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_button_element_get_form_enctype
            (unHTMLButtonElement (toHTMLButtonElement self))))
 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        ghcjs_dom_html_button_element_set_form_method ::
        JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
htmlButtonElementSetFormMethod ::
                               (MonadIO m, IsHTMLButtonElement self, ToJSString val) =>
                                 self -> val -> m ()
htmlButtonElementSetFormMethod self val
  = liftIO
      (ghcjs_dom_html_button_element_set_form_method
         (unHTMLButtonElement (toHTMLButtonElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"formMethod\"]"
        ghcjs_dom_html_button_element_get_form_method ::
        JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
htmlButtonElementGetFormMethod ::
                               (MonadIO m, IsHTMLButtonElement self, FromJSString result) =>
                                 self -> m result
htmlButtonElementGetFormMethod self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_button_element_get_form_method
            (unHTMLButtonElement (toHTMLButtonElement self))))
 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        ghcjs_dom_html_button_element_set_form_no_validate ::
        JSRef HTMLButtonElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formNoValidate Mozilla HTMLButtonElement.formNoValidate documentation> 
htmlButtonElementSetFormNoValidate ::
                                   (MonadIO m, IsHTMLButtonElement self) => self -> Bool -> m ()
htmlButtonElementSetFormNoValidate self val
  = liftIO
      (ghcjs_dom_html_button_element_set_form_no_validate
         (unHTMLButtonElement (toHTMLButtonElement self))
         val)
 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        ghcjs_dom_html_button_element_get_form_no_validate ::
        JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formNoValidate Mozilla HTMLButtonElement.formNoValidate documentation> 
htmlButtonElementGetFormNoValidate ::
                                   (MonadIO m, IsHTMLButtonElement self) => self -> m Bool
htmlButtonElementGetFormNoValidate self
  = liftIO
      (ghcjs_dom_html_button_element_get_form_no_validate
         (unHTMLButtonElement (toHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        ghcjs_dom_html_button_element_set_form_target ::
        JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formTarget Mozilla HTMLButtonElement.formTarget documentation> 
htmlButtonElementSetFormTarget ::
                               (MonadIO m, IsHTMLButtonElement self, ToJSString val) =>
                                 self -> val -> m ()
htmlButtonElementSetFormTarget self val
  = liftIO
      (ghcjs_dom_html_button_element_set_form_target
         (unHTMLButtonElement (toHTMLButtonElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"formTarget\"]"
        ghcjs_dom_html_button_element_get_form_target ::
        JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formTarget Mozilla HTMLButtonElement.formTarget documentation> 
htmlButtonElementGetFormTarget ::
                               (MonadIO m, IsHTMLButtonElement self, FromJSString result) =>
                                 self -> m result
htmlButtonElementGetFormTarget self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_button_element_get_form_target
            (unHTMLButtonElement (toHTMLButtonElement self))))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_button_element_set_name ::
        JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.name Mozilla HTMLButtonElement.name documentation> 
htmlButtonElementSetName ::
                         (MonadIO m, IsHTMLButtonElement self, ToJSString val) =>
                           self -> val -> m ()
htmlButtonElementSetName self val
  = liftIO
      (ghcjs_dom_html_button_element_set_name
         (unHTMLButtonElement (toHTMLButtonElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_button_element_get_name ::
        JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.name Mozilla HTMLButtonElement.name documentation> 
htmlButtonElementGetName ::
                         (MonadIO m, IsHTMLButtonElement self, FromJSString result) =>
                           self -> m result
htmlButtonElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_button_element_get_name
            (unHTMLButtonElement (toHTMLButtonElement self))))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_button_element_set_value ::
        JSRef HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.value Mozilla HTMLButtonElement.value documentation> 
htmlButtonElementSetValue ::
                          (MonadIO m, IsHTMLButtonElement self, ToJSString val) =>
                            self -> val -> m ()
htmlButtonElementSetValue self val
  = liftIO
      (ghcjs_dom_html_button_element_set_value
         (unHTMLButtonElement (toHTMLButtonElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_button_element_get_value ::
        JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.value Mozilla HTMLButtonElement.value documentation> 
htmlButtonElementGetValue ::
                          (MonadIO m, IsHTMLButtonElement self, FromJSString result) =>
                            self -> m result
htmlButtonElementGetValue self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_button_element_get_value
            (unHTMLButtonElement (toHTMLButtonElement self))))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_button_element_get_will_validate ::
        JSRef HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.willValidate Mozilla HTMLButtonElement.willValidate documentation> 
htmlButtonElementGetWillValidate ::
                                 (MonadIO m, IsHTMLButtonElement self) => self -> m Bool
htmlButtonElementGetWillValidate self
  = liftIO
      (ghcjs_dom_html_button_element_get_will_validate
         (unHTMLButtonElement (toHTMLButtonElement self)))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_button_element_get_validity ::
        JSRef HTMLButtonElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validity Mozilla HTMLButtonElement.validity documentation> 
htmlButtonElementGetValidity ::
                             (MonadIO m, IsHTMLButtonElement self) =>
                               self -> m (Maybe ValidityState)
htmlButtonElementGetValidity self
  = liftIO
      ((ghcjs_dom_html_button_element_get_validity
          (unHTMLButtonElement (toHTMLButtonElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_button_element_get_validation_message ::
        JSRef HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validationMessage Mozilla HTMLButtonElement.validationMessage documentation> 
htmlButtonElementGetValidationMessage ::
                                      (MonadIO m, IsHTMLButtonElement self, FromJSString result) =>
                                        self -> m result
htmlButtonElementGetValidationMessage self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_button_element_get_validation_message
            (unHTMLButtonElement (toHTMLButtonElement self))))
 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_button_element_get_labels ::
        JSRef HTMLButtonElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.labels Mozilla HTMLButtonElement.labels documentation> 
htmlButtonElementGetLabels ::
                           (MonadIO m, IsHTMLButtonElement self) => self -> m (Maybe NodeList)
htmlButtonElementGetLabels self
  = liftIO
      ((ghcjs_dom_html_button_element_get_labels
          (unHTMLButtonElement (toHTMLButtonElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLButtonElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLButtonElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLButtonElement
#endif
