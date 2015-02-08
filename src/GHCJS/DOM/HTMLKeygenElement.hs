{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
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
        ghcjs_dom_html_keygen_element_check_validity ::
        JSRef HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.checkValidity Mozilla HTMLKeygenElement.checkValidity documentation> 
htmlKeygenElementCheckValidity ::
                               (MonadIO m, IsHTMLKeygenElement self) => self -> m Bool
htmlKeygenElementCheckValidity self
  = liftIO
      (ghcjs_dom_html_keygen_element_check_validity
         (unHTMLKeygenElement (toHTMLKeygenElement self)))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_keygen_element_set_custom_validity ::
        JSRef HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.customValidity Mozilla HTMLKeygenElement.customValidity documentation> 
htmlKeygenElementSetCustomValidity ::
                                   (MonadIO m, IsHTMLKeygenElement self, ToJSString error) =>
                                     self -> error -> m ()
htmlKeygenElementSetCustomValidity self error
  = liftIO
      (ghcjs_dom_html_keygen_element_set_custom_validity
         (unHTMLKeygenElement (toHTMLKeygenElement self))
         (toJSString error))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_keygen_element_set_autofocus ::
        JSRef HTMLKeygenElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.autofocus Mozilla HTMLKeygenElement.autofocus documentation> 
htmlKeygenElementSetAutofocus ::
                              (MonadIO m, IsHTMLKeygenElement self) => self -> Bool -> m ()
htmlKeygenElementSetAutofocus self val
  = liftIO
      (ghcjs_dom_html_keygen_element_set_autofocus
         (unHTMLKeygenElement (toHTMLKeygenElement self))
         val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_keygen_element_get_autofocus ::
        JSRef HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.autofocus Mozilla HTMLKeygenElement.autofocus documentation> 
htmlKeygenElementGetAutofocus ::
                              (MonadIO m, IsHTMLKeygenElement self) => self -> m Bool
htmlKeygenElementGetAutofocus self
  = liftIO
      (ghcjs_dom_html_keygen_element_get_autofocus
         (unHTMLKeygenElement (toHTMLKeygenElement self)))
 
foreign import javascript unsafe "$1[\"challenge\"] = $2;"
        ghcjs_dom_html_keygen_element_set_challenge ::
        JSRef HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.challenge Mozilla HTMLKeygenElement.challenge documentation> 
htmlKeygenElementSetChallenge ::
                              (MonadIO m, IsHTMLKeygenElement self, ToJSString val) =>
                                self -> val -> m ()
htmlKeygenElementSetChallenge self val
  = liftIO
      (ghcjs_dom_html_keygen_element_set_challenge
         (unHTMLKeygenElement (toHTMLKeygenElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"challenge\"]"
        ghcjs_dom_html_keygen_element_get_challenge ::
        JSRef HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.challenge Mozilla HTMLKeygenElement.challenge documentation> 
htmlKeygenElementGetChallenge ::
                              (MonadIO m, IsHTMLKeygenElement self, FromJSString result) =>
                                self -> m result
htmlKeygenElementGetChallenge self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_keygen_element_get_challenge
            (unHTMLKeygenElement (toHTMLKeygenElement self))))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_keygen_element_set_disabled ::
        JSRef HTMLKeygenElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.disabled Mozilla HTMLKeygenElement.disabled documentation> 
htmlKeygenElementSetDisabled ::
                             (MonadIO m, IsHTMLKeygenElement self) => self -> Bool -> m ()
htmlKeygenElementSetDisabled self val
  = liftIO
      (ghcjs_dom_html_keygen_element_set_disabled
         (unHTMLKeygenElement (toHTMLKeygenElement self))
         val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_keygen_element_get_disabled ::
        JSRef HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.disabled Mozilla HTMLKeygenElement.disabled documentation> 
htmlKeygenElementGetDisabled ::
                             (MonadIO m, IsHTMLKeygenElement self) => self -> m Bool
htmlKeygenElementGetDisabled self
  = liftIO
      (ghcjs_dom_html_keygen_element_get_disabled
         (unHTMLKeygenElement (toHTMLKeygenElement self)))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_keygen_element_get_form ::
        JSRef HTMLKeygenElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.form Mozilla HTMLKeygenElement.form documentation> 
htmlKeygenElementGetForm ::
                         (MonadIO m, IsHTMLKeygenElement self) =>
                           self -> m (Maybe HTMLFormElement)
htmlKeygenElementGetForm self
  = liftIO
      ((ghcjs_dom_html_keygen_element_get_form
          (unHTMLKeygenElement (toHTMLKeygenElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"keytype\"] = $2;"
        ghcjs_dom_html_keygen_element_set_keytype ::
        JSRef HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.keytype Mozilla HTMLKeygenElement.keytype documentation> 
htmlKeygenElementSetKeytype ::
                            (MonadIO m, IsHTMLKeygenElement self, ToJSString val) =>
                              self -> val -> m ()
htmlKeygenElementSetKeytype self val
  = liftIO
      (ghcjs_dom_html_keygen_element_set_keytype
         (unHTMLKeygenElement (toHTMLKeygenElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"keytype\"]"
        ghcjs_dom_html_keygen_element_get_keytype ::
        JSRef HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.keytype Mozilla HTMLKeygenElement.keytype documentation> 
htmlKeygenElementGetKeytype ::
                            (MonadIO m, IsHTMLKeygenElement self, FromJSString result) =>
                              self -> m result
htmlKeygenElementGetKeytype self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_keygen_element_get_keytype
            (unHTMLKeygenElement (toHTMLKeygenElement self))))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_keygen_element_set_name ::
        JSRef HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.name Mozilla HTMLKeygenElement.name documentation> 
htmlKeygenElementSetName ::
                         (MonadIO m, IsHTMLKeygenElement self, ToJSString val) =>
                           self -> val -> m ()
htmlKeygenElementSetName self val
  = liftIO
      (ghcjs_dom_html_keygen_element_set_name
         (unHTMLKeygenElement (toHTMLKeygenElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_keygen_element_get_name ::
        JSRef HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.name Mozilla HTMLKeygenElement.name documentation> 
htmlKeygenElementGetName ::
                         (MonadIO m, IsHTMLKeygenElement self, FromJSString result) =>
                           self -> m result
htmlKeygenElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_keygen_element_get_name
            (unHTMLKeygenElement (toHTMLKeygenElement self))))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_keygen_element_get_will_validate ::
        JSRef HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.willValidate Mozilla HTMLKeygenElement.willValidate documentation> 
htmlKeygenElementGetWillValidate ::
                                 (MonadIO m, IsHTMLKeygenElement self) => self -> m Bool
htmlKeygenElementGetWillValidate self
  = liftIO
      (ghcjs_dom_html_keygen_element_get_will_validate
         (unHTMLKeygenElement (toHTMLKeygenElement self)))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_keygen_element_get_validity ::
        JSRef HTMLKeygenElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.validity Mozilla HTMLKeygenElement.validity documentation> 
htmlKeygenElementGetValidity ::
                             (MonadIO m, IsHTMLKeygenElement self) =>
                               self -> m (Maybe ValidityState)
htmlKeygenElementGetValidity self
  = liftIO
      ((ghcjs_dom_html_keygen_element_get_validity
          (unHTMLKeygenElement (toHTMLKeygenElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_keygen_element_get_validation_message ::
        JSRef HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.validationMessage Mozilla HTMLKeygenElement.validationMessage documentation> 
htmlKeygenElementGetValidationMessage ::
                                      (MonadIO m, IsHTMLKeygenElement self, FromJSString result) =>
                                        self -> m result
htmlKeygenElementGetValidationMessage self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_keygen_element_get_validation_message
            (unHTMLKeygenElement (toHTMLKeygenElement self))))
 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_keygen_element_get_labels ::
        JSRef HTMLKeygenElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.labels Mozilla HTMLKeygenElement.labels documentation> 
htmlKeygenElementGetLabels ::
                           (MonadIO m, IsHTMLKeygenElement self) => self -> m (Maybe NodeList)
htmlKeygenElementGetLabels self
  = liftIO
      ((ghcjs_dom_html_keygen_element_get_labels
          (unHTMLKeygenElement (toHTMLKeygenElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLKeygenElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLKeygenElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLKeygenElement
#endif
