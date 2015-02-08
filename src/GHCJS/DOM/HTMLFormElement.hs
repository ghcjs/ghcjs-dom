{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFormElement
       (ghcjs_dom_html_form_element_get, htmlFormElement_get,
        ghcjs_dom_html_form_element_submit, htmlFormElementSubmit,
        ghcjs_dom_html_form_element_reset, htmlFormElementReset,
        ghcjs_dom_html_form_element_check_validity,
        htmlFormElementCheckValidity,
        ghcjs_dom_html_form_element_request_autocomplete,
        htmlFormElementRequestAutocomplete,
        ghcjs_dom_html_form_element_set_accept_charset,
        htmlFormElementSetAcceptCharset,
        ghcjs_dom_html_form_element_get_accept_charset,
        htmlFormElementGetAcceptCharset,
        ghcjs_dom_html_form_element_set_action, htmlFormElementSetAction,
        ghcjs_dom_html_form_element_get_action, htmlFormElementGetAction,
        ghcjs_dom_html_form_element_set_autocomplete,
        htmlFormElementSetAutocomplete,
        ghcjs_dom_html_form_element_get_autocomplete,
        htmlFormElementGetAutocomplete,
        ghcjs_dom_html_form_element_set_enctype, htmlFormElementSetEnctype,
        ghcjs_dom_html_form_element_get_enctype, htmlFormElementGetEnctype,
        ghcjs_dom_html_form_element_set_encoding,
        htmlFormElementSetEncoding,
        ghcjs_dom_html_form_element_get_encoding,
        htmlFormElementGetEncoding, ghcjs_dom_html_form_element_set_method,
        htmlFormElementSetMethod, ghcjs_dom_html_form_element_get_method,
        htmlFormElementGetMethod, ghcjs_dom_html_form_element_set_name,
        htmlFormElementSetName, ghcjs_dom_html_form_element_get_name,
        htmlFormElementGetName,
        ghcjs_dom_html_form_element_set_no_validate,
        htmlFormElementSetNoValidate,
        ghcjs_dom_html_form_element_get_no_validate,
        htmlFormElementGetNoValidate,
        ghcjs_dom_html_form_element_set_target, htmlFormElementSetTarget,
        ghcjs_dom_html_form_element_get_target, htmlFormElementGetTarget,
        ghcjs_dom_html_form_element_get_elements,
        htmlFormElementGetElements, ghcjs_dom_html_form_element_get_length,
        htmlFormElementGetLength,
        ghcjs_dom_html_form_element_set_autocorrect,
        htmlFormElementSetAutocorrect,
        ghcjs_dom_html_form_element_get_autocorrect,
        htmlFormElementGetAutocorrect,
        ghcjs_dom_html_form_element_set_autocapitalize,
        htmlFormElementSetAutocapitalize,
        ghcjs_dom_html_form_element_get_autocapitalize,
        htmlFormElementGetAutocapitalize, HTMLFormElement,
        IsHTMLFormElement, castToHTMLFormElement, gTypeHTMLFormElement,
        toHTMLFormElement)
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

 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_html_form_element_get ::
        JSRef HTMLFormElement -> Word -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement._get Mozilla HTMLFormElement._get documentation> 
htmlFormElement_get ::
                    (MonadIO m, IsHTMLFormElement self) =>
                      self -> Word -> m (Maybe Element)
htmlFormElement_get self index
  = liftIO
      ((ghcjs_dom_html_form_element_get
          (unHTMLFormElement (toHTMLFormElement self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"submit\"]()"
        ghcjs_dom_html_form_element_submit ::
        JSRef HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.submit Mozilla HTMLFormElement.submit documentation> 
htmlFormElementSubmit ::
                      (MonadIO m, IsHTMLFormElement self) => self -> m ()
htmlFormElementSubmit self
  = liftIO
      (ghcjs_dom_html_form_element_submit
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"reset\"]()"
        ghcjs_dom_html_form_element_reset :: JSRef HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reset Mozilla HTMLFormElement.reset documentation> 
htmlFormElementReset ::
                     (MonadIO m, IsHTMLFormElement self) => self -> m ()
htmlFormElementReset self
  = liftIO
      (ghcjs_dom_html_form_element_reset
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_form_element_check_validity ::
        JSRef HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.checkValidity Mozilla HTMLFormElement.checkValidity documentation> 
htmlFormElementCheckValidity ::
                             (MonadIO m, IsHTMLFormElement self) => self -> m Bool
htmlFormElementCheckValidity self
  = liftIO
      (ghcjs_dom_html_form_element_check_validity
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"requestAutocomplete\"]()"
        ghcjs_dom_html_form_element_request_autocomplete ::
        JSRef HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.requestAutocomplete Mozilla HTMLFormElement.requestAutocomplete documentation> 
htmlFormElementRequestAutocomplete ::
                                   (MonadIO m, IsHTMLFormElement self) => self -> m ()
htmlFormElementRequestAutocomplete self
  = liftIO
      (ghcjs_dom_html_form_element_request_autocomplete
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"acceptCharset\"] = $2;"
        ghcjs_dom_html_form_element_set_accept_charset ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
htmlFormElementSetAcceptCharset ::
                                (MonadIO m, IsHTMLFormElement self, ToJSString val) =>
                                  self -> val -> m ()
htmlFormElementSetAcceptCharset self val
  = liftIO
      (ghcjs_dom_html_form_element_set_accept_charset
         (unHTMLFormElement (toHTMLFormElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"acceptCharset\"]"
        ghcjs_dom_html_form_element_get_accept_charset ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
htmlFormElementGetAcceptCharset ::
                                (MonadIO m, IsHTMLFormElement self, FromJSString result) =>
                                  self -> m result
htmlFormElementGetAcceptCharset self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_form_element_get_accept_charset
            (unHTMLFormElement (toHTMLFormElement self))))
 
foreign import javascript unsafe "$1[\"action\"] = $2;"
        ghcjs_dom_html_form_element_set_action ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
htmlFormElementSetAction ::
                         (MonadIO m, IsHTMLFormElement self, ToJSString val) =>
                           self -> val -> m ()
htmlFormElementSetAction self val
  = liftIO
      (ghcjs_dom_html_form_element_set_action
         (unHTMLFormElement (toHTMLFormElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"action\"]"
        ghcjs_dom_html_form_element_get_action ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
htmlFormElementGetAction ::
                         (MonadIO m, IsHTMLFormElement self, FromJSString result) =>
                           self -> m result
htmlFormElementGetAction self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_form_element_get_action
            (unHTMLFormElement (toHTMLFormElement self))))
 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        ghcjs_dom_html_form_element_set_autocomplete ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
htmlFormElementSetAutocomplete ::
                               (MonadIO m, IsHTMLFormElement self, ToJSString val) =>
                                 self -> val -> m ()
htmlFormElementSetAutocomplete self val
  = liftIO
      (ghcjs_dom_html_form_element_set_autocomplete
         (unHTMLFormElement (toHTMLFormElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        ghcjs_dom_html_form_element_get_autocomplete ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
htmlFormElementGetAutocomplete ::
                               (MonadIO m, IsHTMLFormElement self, FromJSString result) =>
                                 self -> m result
htmlFormElementGetAutocomplete self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_form_element_get_autocomplete
            (unHTMLFormElement (toHTMLFormElement self))))
 
foreign import javascript unsafe "$1[\"enctype\"] = $2;"
        ghcjs_dom_html_form_element_set_enctype ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
htmlFormElementSetEnctype ::
                          (MonadIO m, IsHTMLFormElement self, ToJSString val) =>
                            self -> val -> m ()
htmlFormElementSetEnctype self val
  = liftIO
      (ghcjs_dom_html_form_element_set_enctype
         (unHTMLFormElement (toHTMLFormElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"enctype\"]"
        ghcjs_dom_html_form_element_get_enctype ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
htmlFormElementGetEnctype ::
                          (MonadIO m, IsHTMLFormElement self, FromJSString result) =>
                            self -> m result
htmlFormElementGetEnctype self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_form_element_get_enctype
            (unHTMLFormElement (toHTMLFormElement self))))
 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        ghcjs_dom_html_form_element_set_encoding ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
htmlFormElementSetEncoding ::
                           (MonadIO m, IsHTMLFormElement self, ToJSString val) =>
                             self -> val -> m ()
htmlFormElementSetEncoding self val
  = liftIO
      (ghcjs_dom_html_form_element_set_encoding
         (unHTMLFormElement (toHTMLFormElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"encoding\"]"
        ghcjs_dom_html_form_element_get_encoding ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
htmlFormElementGetEncoding ::
                           (MonadIO m, IsHTMLFormElement self, FromJSString result) =>
                             self -> m result
htmlFormElementGetEncoding self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_form_element_get_encoding
            (unHTMLFormElement (toHTMLFormElement self))))
 
foreign import javascript unsafe "$1[\"method\"] = $2;"
        ghcjs_dom_html_form_element_set_method ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
htmlFormElementSetMethod ::
                         (MonadIO m, IsHTMLFormElement self, ToJSString val) =>
                           self -> val -> m ()
htmlFormElementSetMethod self val
  = liftIO
      (ghcjs_dom_html_form_element_set_method
         (unHTMLFormElement (toHTMLFormElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"method\"]"
        ghcjs_dom_html_form_element_get_method ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
htmlFormElementGetMethod ::
                         (MonadIO m, IsHTMLFormElement self, FromJSString result) =>
                           self -> m result
htmlFormElementGetMethod self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_form_element_get_method
            (unHTMLFormElement (toHTMLFormElement self))))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_form_element_set_name ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
htmlFormElementSetName ::
                       (MonadIO m, IsHTMLFormElement self, ToJSString val) =>
                         self -> val -> m ()
htmlFormElementSetName self val
  = liftIO
      (ghcjs_dom_html_form_element_set_name
         (unHTMLFormElement (toHTMLFormElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_form_element_get_name ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
htmlFormElementGetName ::
                       (MonadIO m, IsHTMLFormElement self, FromJSString result) =>
                         self -> m result
htmlFormElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_form_element_get_name
            (unHTMLFormElement (toHTMLFormElement self))))
 
foreign import javascript unsafe "$1[\"noValidate\"] = $2;"
        ghcjs_dom_html_form_element_set_no_validate ::
        JSRef HTMLFormElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
htmlFormElementSetNoValidate ::
                             (MonadIO m, IsHTMLFormElement self) => self -> Bool -> m ()
htmlFormElementSetNoValidate self val
  = liftIO
      (ghcjs_dom_html_form_element_set_no_validate
         (unHTMLFormElement (toHTMLFormElement self))
         val)
 
foreign import javascript unsafe "($1[\"noValidate\"] ? 1 : 0)"
        ghcjs_dom_html_form_element_get_no_validate ::
        JSRef HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
htmlFormElementGetNoValidate ::
                             (MonadIO m, IsHTMLFormElement self) => self -> m Bool
htmlFormElementGetNoValidate self
  = liftIO
      (ghcjs_dom_html_form_element_get_no_validate
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_form_element_set_target ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
htmlFormElementSetTarget ::
                         (MonadIO m, IsHTMLFormElement self, ToJSString val) =>
                           self -> val -> m ()
htmlFormElementSetTarget self val
  = liftIO
      (ghcjs_dom_html_form_element_set_target
         (unHTMLFormElement (toHTMLFormElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_form_element_get_target ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
htmlFormElementGetTarget ::
                         (MonadIO m, IsHTMLFormElement self, FromJSString result) =>
                           self -> m result
htmlFormElementGetTarget self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_form_element_get_target
            (unHTMLFormElement (toHTMLFormElement self))))
 
foreign import javascript unsafe "$1[\"elements\"]"
        ghcjs_dom_html_form_element_get_elements ::
        JSRef HTMLFormElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.elements Mozilla HTMLFormElement.elements documentation> 
htmlFormElementGetElements ::
                           (MonadIO m, IsHTMLFormElement self) =>
                             self -> m (Maybe HTMLCollection)
htmlFormElementGetElements self
  = liftIO
      ((ghcjs_dom_html_form_element_get_elements
          (unHTMLFormElement (toHTMLFormElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_html_form_element_get_length ::
        JSRef HTMLFormElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.length Mozilla HTMLFormElement.length documentation> 
htmlFormElementGetLength ::
                         (MonadIO m, IsHTMLFormElement self) => self -> m Int
htmlFormElementGetLength self
  = liftIO
      (ghcjs_dom_html_form_element_get_length
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        ghcjs_dom_html_form_element_set_autocorrect ::
        JSRef HTMLFormElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocorrect Mozilla HTMLFormElement.autocorrect documentation> 
htmlFormElementSetAutocorrect ::
                              (MonadIO m, IsHTMLFormElement self) => self -> Bool -> m ()
htmlFormElementSetAutocorrect self val
  = liftIO
      (ghcjs_dom_html_form_element_set_autocorrect
         (unHTMLFormElement (toHTMLFormElement self))
         val)
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        ghcjs_dom_html_form_element_get_autocorrect ::
        JSRef HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocorrect Mozilla HTMLFormElement.autocorrect documentation> 
htmlFormElementGetAutocorrect ::
                              (MonadIO m, IsHTMLFormElement self) => self -> m Bool
htmlFormElementGetAutocorrect self
  = liftIO
      (ghcjs_dom_html_form_element_get_autocorrect
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        ghcjs_dom_html_form_element_set_autocapitalize ::
        JSRef HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocapitalize Mozilla HTMLFormElement.autocapitalize documentation> 
htmlFormElementSetAutocapitalize ::
                                 (MonadIO m, IsHTMLFormElement self, ToJSString val) =>
                                   self -> val -> m ()
htmlFormElementSetAutocapitalize self val
  = liftIO
      (ghcjs_dom_html_form_element_set_autocapitalize
         (unHTMLFormElement (toHTMLFormElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        ghcjs_dom_html_form_element_get_autocapitalize ::
        JSRef HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocapitalize Mozilla HTMLFormElement.autocapitalize documentation> 
htmlFormElementGetAutocapitalize ::
                                 (MonadIO m, IsHTMLFormElement self, FromJSString result) =>
                                   self -> m result
htmlFormElementGetAutocapitalize self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_form_element_get_autocapitalize
            (unHTMLFormElement (toHTMLFormElement self))))
#else
module GHCJS.DOM.HTMLFormElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFormElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFormElement
#endif
