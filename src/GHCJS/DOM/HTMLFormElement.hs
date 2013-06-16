{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLFormElement
       (webkit_dom_html_form_element_submit, htmlFormElementSubmit,
        webkit_dom_html_form_element_reset, htmlFormElementReset,
        webkit_dom_html_form_element_check_validity,
        htmlFormElementCheckValidity,
        webkit_dom_html_form_element_set_accept_charset,
        htmlFormElementSetAcceptCharset,
        webkit_dom_html_form_element_get_accept_charset,
        htmlFormElementGetAcceptCharset,
        webkit_dom_html_form_element_set_action, htmlFormElementSetAction,
        webkit_dom_html_form_element_get_action, htmlFormElementGetAction,
        webkit_dom_html_form_element_set_autocomplete,
        htmlFormElementSetAutocomplete,
        webkit_dom_html_form_element_get_autocomplete,
        htmlFormElementGetAutocomplete,
        webkit_dom_html_form_element_set_enctype,
        htmlFormElementSetEnctype,
        webkit_dom_html_form_element_get_enctype,
        htmlFormElementGetEnctype,
        webkit_dom_html_form_element_set_encoding,
        htmlFormElementSetEncoding,
        webkit_dom_html_form_element_get_encoding,
        htmlFormElementGetEncoding,
        webkit_dom_html_form_element_set_method, htmlFormElementSetMethod,
        webkit_dom_html_form_element_get_method, htmlFormElementGetMethod,
        webkit_dom_html_form_element_set_name, htmlFormElementSetName,
        webkit_dom_html_form_element_get_name, htmlFormElementGetName,
        webkit_dom_html_form_element_set_no_validate,
        htmlFormElementSetNoValidate,
        webkit_dom_html_form_element_get_no_validate,
        htmlFormElementGetNoValidate,
        webkit_dom_html_form_element_set_target, htmlFormElementSetTarget,
        webkit_dom_html_form_element_get_target, htmlFormElementGetTarget,
        webkit_dom_html_form_element_get_elements,
        htmlFormElementGetElements,
        webkit_dom_html_form_element_get_length, htmlFormElementGetLength)
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
        webkit_dom_html_form_element_submit ::
        JSRef HTMLFormElement -> IO ()
#else 
webkit_dom_html_form_element_submit ::
                                      JSRef HTMLFormElement -> IO ()
webkit_dom_html_form_element_submit = undefined
#endif
 
htmlFormElementSubmit ::
                      (HTMLFormElementClass self) => self -> IO ()
htmlFormElementSubmit self
  = webkit_dom_html_form_element_submit
      (unHTMLFormElement (toHTMLFormElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"reset\"]()"
        webkit_dom_html_form_element_reset ::
        JSRef HTMLFormElement -> IO ()
#else 
webkit_dom_html_form_element_reset ::
                                     JSRef HTMLFormElement -> IO ()
webkit_dom_html_form_element_reset = undefined
#endif
 
htmlFormElementReset ::
                     (HTMLFormElementClass self) => self -> IO ()
htmlFormElementReset self
  = webkit_dom_html_form_element_reset
      (unHTMLFormElement (toHTMLFormElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"checkValidity\"]()"
        webkit_dom_html_form_element_check_validity ::
        JSRef HTMLFormElement -> IO JSBool
#else 
webkit_dom_html_form_element_check_validity ::
                                              JSRef HTMLFormElement -> IO JSBool
webkit_dom_html_form_element_check_validity = undefined
#endif
 
htmlFormElementCheckValidity ::
                             (HTMLFormElementClass self) => self -> IO Bool
htmlFormElementCheckValidity self
  = fromJSBool <$>
      (webkit_dom_html_form_element_check_validity
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"acceptCharset\"] = $2;"
        webkit_dom_html_form_element_set_accept_charset ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
webkit_dom_html_form_element_set_accept_charset ::
                                                  JSRef HTMLFormElement -> JSString -> IO ()
webkit_dom_html_form_element_set_accept_charset = undefined
#endif
 
htmlFormElementSetAcceptCharset ::
                                (HTMLFormElementClass self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAcceptCharset self val
  = webkit_dom_html_form_element_set_accept_charset
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"acceptCharset\"]"
        webkit_dom_html_form_element_get_accept_charset ::
        JSRef HTMLFormElement -> IO JSString
#else 
webkit_dom_html_form_element_get_accept_charset ::
                                                  JSRef HTMLFormElement -> IO JSString
webkit_dom_html_form_element_get_accept_charset = undefined
#endif
 
htmlFormElementGetAcceptCharset ::
                                (HTMLFormElementClass self, FromJSString result) =>
                                  self -> IO result
htmlFormElementGetAcceptCharset self
  = fromJSString <$>
      (webkit_dom_html_form_element_get_accept_charset
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"action\"] = $2;"
        webkit_dom_html_form_element_set_action ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
webkit_dom_html_form_element_set_action ::
                                          JSRef HTMLFormElement -> JSString -> IO ()
webkit_dom_html_form_element_set_action = undefined
#endif
 
htmlFormElementSetAction ::
                         (HTMLFormElementClass self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAction self val
  = webkit_dom_html_form_element_set_action
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"action\"]"
        webkit_dom_html_form_element_get_action ::
        JSRef HTMLFormElement -> IO JSString
#else 
webkit_dom_html_form_element_get_action ::
                                          JSRef HTMLFormElement -> IO JSString
webkit_dom_html_form_element_get_action = undefined
#endif
 
htmlFormElementGetAction ::
                         (HTMLFormElementClass self, FromJSString result) =>
                           self -> IO result
htmlFormElementGetAction self
  = fromJSString <$>
      (webkit_dom_html_form_element_get_action
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        webkit_dom_html_form_element_set_autocomplete ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
webkit_dom_html_form_element_set_autocomplete ::
                                                JSRef HTMLFormElement -> JSString -> IO ()
webkit_dom_html_form_element_set_autocomplete = undefined
#endif
 
htmlFormElementSetAutocomplete ::
                               (HTMLFormElementClass self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetAutocomplete self val
  = webkit_dom_html_form_element_set_autocomplete
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        webkit_dom_html_form_element_get_autocomplete ::
        JSRef HTMLFormElement -> IO JSString
#else 
webkit_dom_html_form_element_get_autocomplete ::
                                                JSRef HTMLFormElement -> IO JSString
webkit_dom_html_form_element_get_autocomplete = undefined
#endif
 
htmlFormElementGetAutocomplete ::
                               (HTMLFormElementClass self, FromJSString result) =>
                                 self -> IO result
htmlFormElementGetAutocomplete self
  = fromJSString <$>
      (webkit_dom_html_form_element_get_autocomplete
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"enctype\"] = $2;"
        webkit_dom_html_form_element_set_enctype ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
webkit_dom_html_form_element_set_enctype ::
                                           JSRef HTMLFormElement -> JSString -> IO ()
webkit_dom_html_form_element_set_enctype = undefined
#endif
 
htmlFormElementSetEnctype ::
                          (HTMLFormElementClass self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetEnctype self val
  = webkit_dom_html_form_element_set_enctype
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"enctype\"]"
        webkit_dom_html_form_element_get_enctype ::
        JSRef HTMLFormElement -> IO JSString
#else 
webkit_dom_html_form_element_get_enctype ::
                                           JSRef HTMLFormElement -> IO JSString
webkit_dom_html_form_element_get_enctype = undefined
#endif
 
htmlFormElementGetEnctype ::
                          (HTMLFormElementClass self, FromJSString result) =>
                            self -> IO result
htmlFormElementGetEnctype self
  = fromJSString <$>
      (webkit_dom_html_form_element_get_enctype
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        webkit_dom_html_form_element_set_encoding ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
webkit_dom_html_form_element_set_encoding ::
                                            JSRef HTMLFormElement -> JSString -> IO ()
webkit_dom_html_form_element_set_encoding = undefined
#endif
 
htmlFormElementSetEncoding ::
                           (HTMLFormElementClass self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetEncoding self val
  = webkit_dom_html_form_element_set_encoding
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"encoding\"]"
        webkit_dom_html_form_element_get_encoding ::
        JSRef HTMLFormElement -> IO JSString
#else 
webkit_dom_html_form_element_get_encoding ::
                                            JSRef HTMLFormElement -> IO JSString
webkit_dom_html_form_element_get_encoding = undefined
#endif
 
htmlFormElementGetEncoding ::
                           (HTMLFormElementClass self, FromJSString result) =>
                             self -> IO result
htmlFormElementGetEncoding self
  = fromJSString <$>
      (webkit_dom_html_form_element_get_encoding
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"method\"] = $2;"
        webkit_dom_html_form_element_set_method ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
webkit_dom_html_form_element_set_method ::
                                          JSRef HTMLFormElement -> JSString -> IO ()
webkit_dom_html_form_element_set_method = undefined
#endif
 
htmlFormElementSetMethod ::
                         (HTMLFormElementClass self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetMethod self val
  = webkit_dom_html_form_element_set_method
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"method\"]"
        webkit_dom_html_form_element_get_method ::
        JSRef HTMLFormElement -> IO JSString
#else 
webkit_dom_html_form_element_get_method ::
                                          JSRef HTMLFormElement -> IO JSString
webkit_dom_html_form_element_get_method = undefined
#endif
 
htmlFormElementGetMethod ::
                         (HTMLFormElementClass self, FromJSString result) =>
                           self -> IO result
htmlFormElementGetMethod self
  = fromJSString <$>
      (webkit_dom_html_form_element_get_method
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_form_element_set_name ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
webkit_dom_html_form_element_set_name ::
                                        JSRef HTMLFormElement -> JSString -> IO ()
webkit_dom_html_form_element_set_name = undefined
#endif
 
htmlFormElementSetName ::
                       (HTMLFormElementClass self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetName self val
  = webkit_dom_html_form_element_set_name
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_form_element_get_name ::
        JSRef HTMLFormElement -> IO JSString
#else 
webkit_dom_html_form_element_get_name ::
                                        JSRef HTMLFormElement -> IO JSString
webkit_dom_html_form_element_get_name = undefined
#endif
 
htmlFormElementGetName ::
                       (HTMLFormElementClass self, FromJSString result) =>
                         self -> IO result
htmlFormElementGetName self
  = fromJSString <$>
      (webkit_dom_html_form_element_get_name
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noValidate\"] = $2;"
        webkit_dom_html_form_element_set_no_validate ::
        JSRef HTMLFormElement -> JSBool -> IO ()
#else 
webkit_dom_html_form_element_set_no_validate ::
                                               JSRef HTMLFormElement -> JSBool -> IO ()
webkit_dom_html_form_element_set_no_validate = undefined
#endif
 
htmlFormElementSetNoValidate ::
                             (HTMLFormElementClass self) => self -> Bool -> IO ()
htmlFormElementSetNoValidate self val
  = webkit_dom_html_form_element_set_no_validate
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noValidate\"]"
        webkit_dom_html_form_element_get_no_validate ::
        JSRef HTMLFormElement -> IO JSBool
#else 
webkit_dom_html_form_element_get_no_validate ::
                                               JSRef HTMLFormElement -> IO JSBool
webkit_dom_html_form_element_get_no_validate = undefined
#endif
 
htmlFormElementGetNoValidate ::
                             (HTMLFormElementClass self) => self -> IO Bool
htmlFormElementGetNoValidate self
  = fromJSBool <$>
      (webkit_dom_html_form_element_get_no_validate
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        webkit_dom_html_form_element_set_target ::
        JSRef HTMLFormElement -> JSString -> IO ()
#else 
webkit_dom_html_form_element_set_target ::
                                          JSRef HTMLFormElement -> JSString -> IO ()
webkit_dom_html_form_element_set_target = undefined
#endif
 
htmlFormElementSetTarget ::
                         (HTMLFormElementClass self, ToJSString val) => self -> val -> IO ()
htmlFormElementSetTarget self val
  = webkit_dom_html_form_element_set_target
      (unHTMLFormElement (toHTMLFormElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"]"
        webkit_dom_html_form_element_get_target ::
        JSRef HTMLFormElement -> IO JSString
#else 
webkit_dom_html_form_element_get_target ::
                                          JSRef HTMLFormElement -> IO JSString
webkit_dom_html_form_element_get_target = undefined
#endif
 
htmlFormElementGetTarget ::
                         (HTMLFormElementClass self, FromJSString result) =>
                           self -> IO result
htmlFormElementGetTarget self
  = fromJSString <$>
      (webkit_dom_html_form_element_get_target
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"elements\"]"
        webkit_dom_html_form_element_get_elements ::
        JSRef HTMLFormElement -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_form_element_get_elements ::
                                            JSRef HTMLFormElement -> IO (JSRef HTMLCollection)
webkit_dom_html_form_element_get_elements = undefined
#endif
 
htmlFormElementGetElements ::
                           (HTMLFormElementClass self) => self -> IO (Maybe HTMLCollection)
htmlFormElementGetElements self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_form_element_get_elements
         (unHTMLFormElement (toHTMLFormElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_html_form_element_get_length ::
        JSRef HTMLFormElement -> IO Int
#else 
webkit_dom_html_form_element_get_length ::
                                          JSRef HTMLFormElement -> IO Int
webkit_dom_html_form_element_get_length = undefined
#endif
 
htmlFormElementGetLength ::
                         (HTMLFormElementClass self) => self -> IO Int
htmlFormElementGetLength self
  = webkit_dom_html_form_element_get_length
      (unHTMLFormElement (toHTMLFormElement self))