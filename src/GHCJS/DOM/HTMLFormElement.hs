{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLFormElement
       (ghcjs_dom_html_form_element_submit, htmlFormElementSubmit,
        ghcjs_dom_html_form_element_reset, htmlFormElementReset,
        ghcjs_dom_html_form_element_check_validity,
        htmlFormElementCheckValidity,
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
        htmlFormElementGetLength)
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
foreign import javascript unsafe "$1[\"submit\"]()"
        ghcjs_dom_html_form_element_submit ::
        JSRef HTMLFormElement -> IO ()
#else 
ghcjs_dom_html_form_element_submit ::
                                     JSRef HTMLFormElement -> IO ()
ghcjs_dom_html_form_element_submit = undefined
#endif
 
htmlFormElementSubmit :: (IsHTMLFormElement self) => self -> IO ()
htmlFormElementSubmit self
  = ghcjs_dom_html_form_element_submit
      (unHTMLFormElement (toHTMLFormElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"reset\"]()"
        ghcjs_dom_html_form_element_reset :: JSRef HTMLFormElement -> IO ()
#else 
ghcjs_dom_html_form_element_reset :: JSRef HTMLFormElement -> IO ()
ghcjs_dom_html_form_element_reset = undefined
#endif
 
htmlFormElementReset :: (IsHTMLFormElement self) => self -> IO ()
htmlFormElementReset self
  = ghcjs_dom_html_form_element_reset
      (unHTMLFormElement (toHTMLFormElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_form_element_check_validity ::
        JSRef HTMLFormElement -> IO Bool
#else 
ghcjs_dom_html_form_element_check_validity ::
                                             JSRef HTMLFormElement -> IO Bool
ghcjs_dom_html_form_element_check_validity = undefined
#endif
 
htmlFormElementCheckValidity ::
                             (IsHTMLFormElement self) => self -> IO Bool
htmlFormElementCheckValidity self
  = ghcjs_dom_html_form_element_check_validity
      (unHTMLFormElement (toHTMLFormElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"acceptCharset\"] = $2;"
        ghcjs_dom_html_form_element_set_accept_charset ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
ghcjs_dom_html_form_element_set_accept_charset ::
                                                 JSRef HTMLFormElement -> JSString -> IO ()
ghcjs_dom_html_form_element_set_accept_charset = undefined
#endif
 
htmlFormElementSetAcceptCharset ::
                                (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAcceptCharset self val
  = ghcjs_dom_html_form_element_set_accept_charset
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"acceptCharset\"]"
        ghcjs_dom_html_form_element_get_accept_charset ::
        JSRef HTMLFormElement -> IO JSString
#else 
ghcjs_dom_html_form_element_get_accept_charset ::
                                                 JSRef HTMLFormElement -> IO JSString
ghcjs_dom_html_form_element_get_accept_charset = undefined
#endif
 
htmlFormElementGetAcceptCharset ::
                                (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetAcceptCharset self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_accept_charset
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"action\"] = $2;"
        ghcjs_dom_html_form_element_set_action ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
ghcjs_dom_html_form_element_set_action ::
                                         JSRef HTMLFormElement -> JSString -> IO ()
ghcjs_dom_html_form_element_set_action = undefined
#endif
 
htmlFormElementSetAction ::
                         (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAction self val
  = ghcjs_dom_html_form_element_set_action
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"action\"]"
        ghcjs_dom_html_form_element_get_action ::
        JSRef HTMLFormElement -> IO JSString
#else 
ghcjs_dom_html_form_element_get_action ::
                                         JSRef HTMLFormElement -> IO JSString
ghcjs_dom_html_form_element_get_action = undefined
#endif
 
htmlFormElementGetAction ::
                         (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetAction self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_action
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        ghcjs_dom_html_form_element_set_autocomplete ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
ghcjs_dom_html_form_element_set_autocomplete ::
                                               JSRef HTMLFormElement -> JSString -> IO ()
ghcjs_dom_html_form_element_set_autocomplete = undefined
#endif
 
htmlFormElementSetAutocomplete ::
                               (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAutocomplete self val
  = ghcjs_dom_html_form_element_set_autocomplete
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        ghcjs_dom_html_form_element_get_autocomplete ::
        JSRef HTMLFormElement -> IO JSString
#else 
ghcjs_dom_html_form_element_get_autocomplete ::
                                               JSRef HTMLFormElement -> IO JSString
ghcjs_dom_html_form_element_get_autocomplete = undefined
#endif
 
htmlFormElementGetAutocomplete ::
                               (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetAutocomplete self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_autocomplete
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"enctype\"] = $2;"
        ghcjs_dom_html_form_element_set_enctype ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
ghcjs_dom_html_form_element_set_enctype ::
                                          JSRef HTMLFormElement -> JSString -> IO ()
ghcjs_dom_html_form_element_set_enctype = undefined
#endif
 
htmlFormElementSetEnctype ::
                          (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetEnctype self val
  = ghcjs_dom_html_form_element_set_enctype
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"enctype\"]"
        ghcjs_dom_html_form_element_get_enctype ::
        JSRef HTMLFormElement -> IO JSString
#else 
ghcjs_dom_html_form_element_get_enctype ::
                                          JSRef HTMLFormElement -> IO JSString
ghcjs_dom_html_form_element_get_enctype = undefined
#endif
 
htmlFormElementGetEnctype ::
                          (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetEnctype self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_enctype
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        ghcjs_dom_html_form_element_set_encoding ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
ghcjs_dom_html_form_element_set_encoding ::
                                           JSRef HTMLFormElement -> JSString -> IO ()
ghcjs_dom_html_form_element_set_encoding = undefined
#endif
 
htmlFormElementSetEncoding ::
                           (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetEncoding self val
  = ghcjs_dom_html_form_element_set_encoding
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"encoding\"]"
        ghcjs_dom_html_form_element_get_encoding ::
        JSRef HTMLFormElement -> IO JSString
#else 
ghcjs_dom_html_form_element_get_encoding ::
                                           JSRef HTMLFormElement -> IO JSString
ghcjs_dom_html_form_element_get_encoding = undefined
#endif
 
htmlFormElementGetEncoding ::
                           (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetEncoding self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_encoding
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"method\"] = $2;"
        ghcjs_dom_html_form_element_set_method ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
ghcjs_dom_html_form_element_set_method ::
                                         JSRef HTMLFormElement -> JSString -> IO ()
ghcjs_dom_html_form_element_set_method = undefined
#endif
 
htmlFormElementSetMethod ::
                         (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetMethod self val
  = ghcjs_dom_html_form_element_set_method
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"method\"]"
        ghcjs_dom_html_form_element_get_method ::
        JSRef HTMLFormElement -> IO JSString
#else 
ghcjs_dom_html_form_element_get_method ::
                                         JSRef HTMLFormElement -> IO JSString
ghcjs_dom_html_form_element_get_method = undefined
#endif
 
htmlFormElementGetMethod ::
                         (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetMethod self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_method
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_form_element_set_name ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
ghcjs_dom_html_form_element_set_name ::
                                       JSRef HTMLFormElement -> JSString -> IO ()
ghcjs_dom_html_form_element_set_name = undefined
#endif
 
htmlFormElementSetName ::
                       (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetName self val
  = ghcjs_dom_html_form_element_set_name
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_form_element_get_name ::
        JSRef HTMLFormElement -> IO JSString
#else 
ghcjs_dom_html_form_element_get_name ::
                                       JSRef HTMLFormElement -> IO JSString
ghcjs_dom_html_form_element_get_name = undefined
#endif
 
htmlFormElementGetName ::
                       (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_name
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noValidate\"] = $2;"
        ghcjs_dom_html_form_element_set_no_validate ::
        JSRef HTMLFormElement -> Bool -> IO ()
#else 
ghcjs_dom_html_form_element_set_no_validate ::
                                              JSRef HTMLFormElement -> Bool -> IO ()
ghcjs_dom_html_form_element_set_no_validate = undefined
#endif
 
htmlFormElementSetNoValidate ::
                             (IsHTMLFormElement self) => self -> Bool -> IO ()
htmlFormElementSetNoValidate self val
  = ghcjs_dom_html_form_element_set_no_validate
      (unHTMLFormElement (toHTMLFormElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"noValidate\"] ? 1 : 0)"
        ghcjs_dom_html_form_element_get_no_validate ::
        JSRef HTMLFormElement -> IO Bool
#else 
ghcjs_dom_html_form_element_get_no_validate ::
                                              JSRef HTMLFormElement -> IO Bool
ghcjs_dom_html_form_element_get_no_validate = undefined
#endif
 
htmlFormElementGetNoValidate ::
                             (IsHTMLFormElement self) => self -> IO Bool
htmlFormElementGetNoValidate self
  = ghcjs_dom_html_form_element_get_no_validate
      (unHTMLFormElement (toHTMLFormElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_form_element_set_target ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
ghcjs_dom_html_form_element_set_target ::
                                         JSRef HTMLFormElement -> JSString -> IO ()
ghcjs_dom_html_form_element_set_target = undefined
#endif
 
htmlFormElementSetTarget ::
                         (IsHTMLFormElement self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetTarget self val
  = ghcjs_dom_html_form_element_set_target
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_form_element_get_target ::
        JSRef HTMLFormElement -> IO JSString
#else 
ghcjs_dom_html_form_element_get_target ::
                                         JSRef HTMLFormElement -> IO JSString
ghcjs_dom_html_form_element_get_target = undefined
#endif
 
htmlFormElementGetTarget ::
                         (IsHTMLFormElement self, FromJSString result) => self -> IO result
htmlFormElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_form_element_get_target
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"elements\"]"
        ghcjs_dom_html_form_element_get_elements ::
        JSRef HTMLFormElement -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_html_form_element_get_elements ::
                                           JSRef HTMLFormElement -> IO (JSRef HTMLCollection)
ghcjs_dom_html_form_element_get_elements = undefined
#endif
 
htmlFormElementGetElements ::
                           (IsHTMLFormElement self) => self -> IO (Maybe HTMLCollection)
htmlFormElementGetElements self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_form_element_get_elements
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_html_form_element_get_length ::
        JSRef HTMLFormElement -> IO Int
#else 
ghcjs_dom_html_form_element_get_length ::
                                         JSRef HTMLFormElement -> IO Int
ghcjs_dom_html_form_element_get_length = undefined
#endif
 
htmlFormElementGetLength ::
                         (IsHTMLFormElement self) => self -> IO Int
htmlFormElementGetLength self
  = ghcjs_dom_html_form_element_get_length
      (unHTMLFormElement (toHTMLFormElement self))