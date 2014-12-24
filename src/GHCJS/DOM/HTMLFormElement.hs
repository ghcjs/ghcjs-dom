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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_html_form_element_get ::
        JSRef HTMLFormElement -> Word -> IO (JSRef Element)
 
htmlFormElement_get ::
                    (IsHTMLFormElement self) => self -> Word -> IO (Maybe Element)
htmlFormElement_get self index
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_html_form_element_get
         (unHTMLFormElement (toHTMLFormElement self))
         index)
 
foreign import javascript unsafe "$1[\"submit\"]()"
        ghcjs_dom_html_form_element_submit ::
        JSRef HTMLFormElement -> IO ()
 
htmlFormElementSubmit :: (IsHTMLFormElement self) => self -> IO ()
htmlFormElementSubmit self
  = ghcjs_dom_html_form_element_submit
      (unHTMLFormElement (toHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"reset\"]()"
        ghcjs_dom_html_form_element_reset :: JSRef HTMLFormElement -> IO ()
 
htmlFormElementReset :: (IsHTMLFormElement self) => self -> IO ()
htmlFormElementReset self
  = ghcjs_dom_html_form_element_reset
      (unHTMLFormElement (toHTMLFormElement self))
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_form_element_check_validity ::
        JSRef HTMLFormElement -> IO Bool
 
htmlFormElementCheckValidity ::
                             (IsHTMLFormElement self) => self -> IO Bool
htmlFormElementCheckValidity self
  = ghcjs_dom_html_form_element_check_validity
      (unHTMLFormElement (toHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"requestAutocomplete\"]()"
        ghcjs_dom_html_form_element_request_autocomplete ::
        JSRef HTMLFormElement -> IO ()
 
htmlFormElementRequestAutocomplete ::
                                   (IsHTMLFormElement self) => self -> IO ()
htmlFormElementRequestAutocomplete self
  = ghcjs_dom_html_form_element_request_autocomplete
      (unHTMLFormElement (toHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"acceptCharset\"] = $2;"
        ghcjs_dom_html_form_element_set_accept_charset ::
        JSRef HTMLFormElement -> JSString -> IO ()
 
htmlFormElementSetAcceptCharset ::
                                (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAcceptCharset self val
  = ghcjs_dom_html_form_element_set_accept_charset
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"acceptCharset\"]"
        ghcjs_dom_html_form_element_get_accept_charset ::
        JSRef HTMLFormElement -> IO JSString
 
htmlFormElementGetAcceptCharset ::
                                (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetAcceptCharset self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_accept_charset
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"action\"] = $2;"
        ghcjs_dom_html_form_element_set_action ::
        JSRef HTMLFormElement -> JSString -> IO ()
 
htmlFormElementSetAction ::
                         (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAction self val
  = ghcjs_dom_html_form_element_set_action
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"action\"]"
        ghcjs_dom_html_form_element_get_action ::
        JSRef HTMLFormElement -> IO JSString
 
htmlFormElementGetAction ::
                         (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetAction self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_action
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        ghcjs_dom_html_form_element_set_autocomplete ::
        JSRef HTMLFormElement -> JSString -> IO ()
 
htmlFormElementSetAutocomplete ::
                               (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAutocomplete self val
  = ghcjs_dom_html_form_element_set_autocomplete
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        ghcjs_dom_html_form_element_get_autocomplete ::
        JSRef HTMLFormElement -> IO JSString
 
htmlFormElementGetAutocomplete ::
                               (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetAutocomplete self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_autocomplete
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"enctype\"] = $2;"
        ghcjs_dom_html_form_element_set_enctype ::
        JSRef HTMLFormElement -> JSString -> IO ()
 
htmlFormElementSetEnctype ::
                          (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetEnctype self val
  = ghcjs_dom_html_form_element_set_enctype
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"enctype\"]"
        ghcjs_dom_html_form_element_get_enctype ::
        JSRef HTMLFormElement -> IO JSString
 
htmlFormElementGetEnctype ::
                          (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetEnctype self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_enctype
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        ghcjs_dom_html_form_element_set_encoding ::
        JSRef HTMLFormElement -> JSString -> IO ()
 
htmlFormElementSetEncoding ::
                           (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetEncoding self val
  = ghcjs_dom_html_form_element_set_encoding
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"encoding\"]"
        ghcjs_dom_html_form_element_get_encoding ::
        JSRef HTMLFormElement -> IO JSString
 
htmlFormElementGetEncoding ::
                           (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetEncoding self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_encoding
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"method\"] = $2;"
        ghcjs_dom_html_form_element_set_method ::
        JSRef HTMLFormElement -> JSString -> IO ()
 
htmlFormElementSetMethod ::
                         (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetMethod self val
  = ghcjs_dom_html_form_element_set_method
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"method\"]"
        ghcjs_dom_html_form_element_get_method ::
        JSRef HTMLFormElement -> IO JSString
 
htmlFormElementGetMethod ::
                         (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetMethod self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_method
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_form_element_set_name ::
        JSRef HTMLFormElement -> JSString -> IO ()
 
htmlFormElementSetName ::
                       (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetName self val
  = ghcjs_dom_html_form_element_set_name
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_form_element_get_name ::
        JSRef HTMLFormElement -> IO JSString
 
htmlFormElementGetName ::
                       (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_name
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"noValidate\"] = $2;"
        ghcjs_dom_html_form_element_set_no_validate ::
        JSRef HTMLFormElement -> Bool -> IO ()
 
htmlFormElementSetNoValidate ::
                             (IsHTMLFormElement self) => self -> Bool -> IO ()
htmlFormElementSetNoValidate self val
  = ghcjs_dom_html_form_element_set_no_validate
      (unHTMLFormElement (toHTMLFormElement self))
      val
 
foreign import javascript unsafe "($1[\"noValidate\"] ? 1 : 0)"
        ghcjs_dom_html_form_element_get_no_validate ::
        JSRef HTMLFormElement -> IO Bool
 
htmlFormElementGetNoValidate ::
                             (IsHTMLFormElement self) => self -> IO Bool
htmlFormElementGetNoValidate self
  = ghcjs_dom_html_form_element_get_no_validate
      (unHTMLFormElement (toHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_form_element_set_target ::
        JSRef HTMLFormElement -> JSString -> IO ()
 
htmlFormElementSetTarget ::
                         (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetTarget self val
  = ghcjs_dom_html_form_element_set_target
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_form_element_get_target ::
        JSRef HTMLFormElement -> IO JSString
 
htmlFormElementGetTarget ::
                         (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_target
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"elements\"]"
        ghcjs_dom_html_form_element_get_elements ::
        JSRef HTMLFormElement -> IO (JSRef HTMLCollection)
 
htmlFormElementGetElements ::
                           (IsHTMLFormElement self) => self -> IO (Maybe HTMLCollection)
htmlFormElementGetElements self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_form_element_get_elements
         (unHTMLFormElement (toHTMLFormElement self)))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_html_form_element_get_length ::
        JSRef HTMLFormElement -> IO Int
 
htmlFormElementGetLength ::
                         (IsHTMLFormElement self) => self -> IO Int
htmlFormElementGetLength self
  = ghcjs_dom_html_form_element_get_length
      (unHTMLFormElement (toHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        ghcjs_dom_html_form_element_set_autocorrect ::
        JSRef HTMLFormElement -> Bool -> IO ()
 
htmlFormElementSetAutocorrect ::
                              (IsHTMLFormElement self) => self -> Bool -> IO ()
htmlFormElementSetAutocorrect self val
  = ghcjs_dom_html_form_element_set_autocorrect
      (unHTMLFormElement (toHTMLFormElement self))
      val
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        ghcjs_dom_html_form_element_get_autocorrect ::
        JSRef HTMLFormElement -> IO Bool
 
htmlFormElementGetAutocorrect ::
                              (IsHTMLFormElement self) => self -> IO Bool
htmlFormElementGetAutocorrect self
  = ghcjs_dom_html_form_element_get_autocorrect
      (unHTMLFormElement (toHTMLFormElement self))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        ghcjs_dom_html_form_element_set_autocapitalize ::
        JSRef HTMLFormElement -> JSString -> IO ()
 
htmlFormElementSetAutocapitalize ::
                                 (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAutocapitalize self val
  = ghcjs_dom_html_form_element_set_autocapitalize
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        ghcjs_dom_html_form_element_get_autocapitalize ::
        JSRef HTMLFormElement -> IO JSString
 
htmlFormElementGetAutocapitalize ::
                                 (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetAutocapitalize self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_autocapitalize
         (unHTMLFormElement (toHTMLFormElement self)))
#else
module GHCJS.DOM.HTMLFormElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFormElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFormElement
#endif
