{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLObjectElement
       (webkit_dom_html_object_element_check_validity,
        htmlObjectElementCheckValidity,
        webkit_dom_html_object_element_set_custom_validity,
        htmlObjectElementSetCustomValidity,
        webkit_dom_html_object_element_get_form, htmlObjectElementGetForm,
        webkit_dom_html_object_element_set_code, htmlObjectElementSetCode,
        webkit_dom_html_object_element_get_code, htmlObjectElementGetCode,
        webkit_dom_html_object_element_set_align,
        htmlObjectElementSetAlign,
        webkit_dom_html_object_element_get_align,
        htmlObjectElementGetAlign,
        webkit_dom_html_object_element_set_archive,
        htmlObjectElementSetArchive,
        webkit_dom_html_object_element_get_archive,
        htmlObjectElementGetArchive,
        webkit_dom_html_object_element_set_border,
        htmlObjectElementSetBorder,
        webkit_dom_html_object_element_get_border,
        htmlObjectElementGetBorder,
        webkit_dom_html_object_element_set_code_base,
        htmlObjectElementSetCodeBase,
        webkit_dom_html_object_element_get_code_base,
        htmlObjectElementGetCodeBase,
        webkit_dom_html_object_element_set_code_type,
        htmlObjectElementSetCodeType,
        webkit_dom_html_object_element_get_code_type,
        htmlObjectElementGetCodeType,
        webkit_dom_html_object_element_set_data, htmlObjectElementSetData,
        webkit_dom_html_object_element_get_data, htmlObjectElementGetData,
        webkit_dom_html_object_element_set_declare,
        htmlObjectElementSetDeclare,
        webkit_dom_html_object_element_get_declare,
        htmlObjectElementGetDeclare,
        webkit_dom_html_object_element_set_height,
        htmlObjectElementSetHeight,
        webkit_dom_html_object_element_get_height,
        htmlObjectElementGetHeight,
        webkit_dom_html_object_element_set_hspace,
        htmlObjectElementSetHspace,
        webkit_dom_html_object_element_get_hspace,
        htmlObjectElementGetHspace,
        webkit_dom_html_object_element_set_name, htmlObjectElementSetName,
        webkit_dom_html_object_element_get_name, htmlObjectElementGetName,
        webkit_dom_html_object_element_set_standby,
        htmlObjectElementSetStandby,
        webkit_dom_html_object_element_get_standby,
        htmlObjectElementGetStandby,
        webkit_dom_html_object_element_set_use_map,
        htmlObjectElementSetUseMap,
        webkit_dom_html_object_element_get_use_map,
        htmlObjectElementGetUseMap,
        webkit_dom_html_object_element_set_vspace,
        htmlObjectElementSetVspace,
        webkit_dom_html_object_element_get_vspace,
        htmlObjectElementGetVspace,
        webkit_dom_html_object_element_set_width,
        htmlObjectElementSetWidth,
        webkit_dom_html_object_element_get_width,
        htmlObjectElementGetWidth,
        webkit_dom_html_object_element_get_will_validate,
        htmlObjectElementGetWillValidate,
        webkit_dom_html_object_element_get_validity,
        htmlObjectElementGetValidity,
        webkit_dom_html_object_element_get_validation_message,
        htmlObjectElementGetValidationMessage,
        webkit_dom_html_object_element_get_content_document,
        htmlObjectElementGetContentDocument)
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
        webkit_dom_html_object_element_check_validity ::
        JSRef HTMLObjectElement -> IO JSBool
#else 
webkit_dom_html_object_element_check_validity ::
                                                JSRef HTMLObjectElement -> IO JSBool
webkit_dom_html_object_element_check_validity = undefined
#endif
 
htmlObjectElementCheckValidity ::
                               (HTMLObjectElementClass self) => self -> IO Bool
htmlObjectElementCheckValidity self
  = fromJSBool <$>
      (webkit_dom_html_object_element_check_validity
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        webkit_dom_html_object_element_set_custom_validity ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_custom_validity ::
                                                     JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_custom_validity = undefined
#endif
 
htmlObjectElementSetCustomValidity ::
                                   (HTMLObjectElementClass self, ToJSString error) =>
                                     self -> error -> IO ()
htmlObjectElementSetCustomValidity self error
  = webkit_dom_html_object_element_set_custom_validity
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString error)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        webkit_dom_html_object_element_get_form ::
        JSRef HTMLObjectElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_object_element_get_form ::
                                          JSRef HTMLObjectElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_object_element_get_form = undefined
#endif
 
htmlObjectElementGetForm ::
                         (HTMLObjectElementClass self) => self -> IO (Maybe HTMLFormElement)
htmlObjectElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_object_element_get_form
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"code\"] = $2;"
        webkit_dom_html_object_element_set_code ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_code ::
                                          JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_code = undefined
#endif
 
htmlObjectElementSetCode ::
                         (HTMLObjectElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlObjectElementSetCode self val
  = webkit_dom_html_object_element_set_code
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"code\"]"
        webkit_dom_html_object_element_get_code ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_code ::
                                          JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_code = undefined
#endif
 
htmlObjectElementGetCode ::
                         (HTMLObjectElementClass self, FromJSString result) =>
                           self -> IO result
htmlObjectElementGetCode self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_code
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_object_element_set_align ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_align ::
                                           JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_align = undefined
#endif
 
htmlObjectElementSetAlign ::
                          (HTMLObjectElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlObjectElementSetAlign self val
  = webkit_dom_html_object_element_set_align
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_object_element_get_align ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_align ::
                                           JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_align = undefined
#endif
 
htmlObjectElementGetAlign ::
                          (HTMLObjectElementClass self, FromJSString result) =>
                            self -> IO result
htmlObjectElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_align
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        webkit_dom_html_object_element_set_archive ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_archive ::
                                             JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_archive = undefined
#endif
 
htmlObjectElementSetArchive ::
                            (HTMLObjectElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlObjectElementSetArchive self val
  = webkit_dom_html_object_element_set_archive
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"archive\"]"
        webkit_dom_html_object_element_get_archive ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_archive ::
                                             JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_archive = undefined
#endif
 
htmlObjectElementGetArchive ::
                            (HTMLObjectElementClass self, FromJSString result) =>
                              self -> IO result
htmlObjectElementGetArchive self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_archive
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        webkit_dom_html_object_element_set_border ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_border ::
                                            JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_border = undefined
#endif
 
htmlObjectElementSetBorder ::
                           (HTMLObjectElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlObjectElementSetBorder self val
  = webkit_dom_html_object_element_set_border
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"border\"]"
        webkit_dom_html_object_element_get_border ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_border ::
                                            JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_border = undefined
#endif
 
htmlObjectElementGetBorder ::
                           (HTMLObjectElementClass self, FromJSString result) =>
                             self -> IO result
htmlObjectElementGetBorder self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_border
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        webkit_dom_html_object_element_set_code_base ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_code_base ::
                                               JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_code_base = undefined
#endif
 
htmlObjectElementSetCodeBase ::
                             (HTMLObjectElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlObjectElementSetCodeBase self val
  = webkit_dom_html_object_element_set_code_base
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"codeBase\"]"
        webkit_dom_html_object_element_get_code_base ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_code_base ::
                                               JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_code_base = undefined
#endif
 
htmlObjectElementGetCodeBase ::
                             (HTMLObjectElementClass self, FromJSString result) =>
                               self -> IO result
htmlObjectElementGetCodeBase self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_code_base
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"codeType\"] = $2;"
        webkit_dom_html_object_element_set_code_type ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_code_type ::
                                               JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_code_type = undefined
#endif
 
htmlObjectElementSetCodeType ::
                             (HTMLObjectElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlObjectElementSetCodeType self val
  = webkit_dom_html_object_element_set_code_type
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"codeType\"]"
        webkit_dom_html_object_element_get_code_type ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_code_type ::
                                               JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_code_type = undefined
#endif
 
htmlObjectElementGetCodeType ::
                             (HTMLObjectElementClass self, FromJSString result) =>
                               self -> IO result
htmlObjectElementGetCodeType self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_code_type
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        webkit_dom_html_object_element_set_data ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_data ::
                                          JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_data = undefined
#endif
 
htmlObjectElementSetData ::
                         (HTMLObjectElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlObjectElementSetData self val
  = webkit_dom_html_object_element_set_data
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"data\"]"
        webkit_dom_html_object_element_get_data ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_data ::
                                          JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_data = undefined
#endif
 
htmlObjectElementGetData ::
                         (HTMLObjectElementClass self, FromJSString result) =>
                           self -> IO result
htmlObjectElementGetData self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_data
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"declare\"] = $2;"
        webkit_dom_html_object_element_set_declare ::
        JSRef HTMLObjectElement -> JSBool -> IO ()
#else 
webkit_dom_html_object_element_set_declare ::
                                             JSRef HTMLObjectElement -> JSBool -> IO ()
webkit_dom_html_object_element_set_declare = undefined
#endif
 
htmlObjectElementSetDeclare ::
                            (HTMLObjectElementClass self) => self -> Bool -> IO ()
htmlObjectElementSetDeclare self val
  = webkit_dom_html_object_element_set_declare
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"declare\"]"
        webkit_dom_html_object_element_get_declare ::
        JSRef HTMLObjectElement -> IO JSBool
#else 
webkit_dom_html_object_element_get_declare ::
                                             JSRef HTMLObjectElement -> IO JSBool
webkit_dom_html_object_element_get_declare = undefined
#endif
 
htmlObjectElementGetDeclare ::
                            (HTMLObjectElementClass self) => self -> IO Bool
htmlObjectElementGetDeclare self
  = fromJSBool <$>
      (webkit_dom_html_object_element_get_declare
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_object_element_set_height ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_height ::
                                            JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_height = undefined
#endif
 
htmlObjectElementSetHeight ::
                           (HTMLObjectElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlObjectElementSetHeight self val
  = webkit_dom_html_object_element_set_height
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_object_element_get_height ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_height ::
                                            JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_height = undefined
#endif
 
htmlObjectElementGetHeight ::
                           (HTMLObjectElementClass self, FromJSString result) =>
                             self -> IO result
htmlObjectElementGetHeight self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_height
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        webkit_dom_html_object_element_set_hspace ::
        JSRef HTMLObjectElement -> Int -> IO ()
#else 
webkit_dom_html_object_element_set_hspace ::
                                            JSRef HTMLObjectElement -> Int -> IO ()
webkit_dom_html_object_element_set_hspace = undefined
#endif
 
htmlObjectElementSetHspace ::
                           (HTMLObjectElementClass self) => self -> Int -> IO ()
htmlObjectElementSetHspace self val
  = webkit_dom_html_object_element_set_hspace
      (unHTMLObjectElement (toHTMLObjectElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"]"
        webkit_dom_html_object_element_get_hspace ::
        JSRef HTMLObjectElement -> IO Int
#else 
webkit_dom_html_object_element_get_hspace ::
                                            JSRef HTMLObjectElement -> IO Int
webkit_dom_html_object_element_get_hspace = undefined
#endif
 
htmlObjectElementGetHspace ::
                           (HTMLObjectElementClass self) => self -> IO Int
htmlObjectElementGetHspace self
  = webkit_dom_html_object_element_get_hspace
      (unHTMLObjectElement (toHTMLObjectElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_object_element_set_name ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_name ::
                                          JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_name = undefined
#endif
 
htmlObjectElementSetName ::
                         (HTMLObjectElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlObjectElementSetName self val
  = webkit_dom_html_object_element_set_name
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_object_element_get_name ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_name ::
                                          JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_name = undefined
#endif
 
htmlObjectElementGetName ::
                         (HTMLObjectElementClass self, FromJSString result) =>
                           self -> IO result
htmlObjectElementGetName self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_name
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"standby\"] = $2;"
        webkit_dom_html_object_element_set_standby ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_standby ::
                                             JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_standby = undefined
#endif
 
htmlObjectElementSetStandby ::
                            (HTMLObjectElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlObjectElementSetStandby self val
  = webkit_dom_html_object_element_set_standby
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"standby\"]"
        webkit_dom_html_object_element_get_standby ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_standby ::
                                             JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_standby = undefined
#endif
 
htmlObjectElementGetStandby ::
                            (HTMLObjectElementClass self, FromJSString result) =>
                              self -> IO result
htmlObjectElementGetStandby self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_standby
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        webkit_dom_html_object_element_set_use_map ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_use_map ::
                                             JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_use_map = undefined
#endif
 
htmlObjectElementSetUseMap ::
                           (HTMLObjectElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlObjectElementSetUseMap self val
  = webkit_dom_html_object_element_set_use_map
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"useMap\"]"
        webkit_dom_html_object_element_get_use_map ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_use_map ::
                                             JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_use_map = undefined
#endif
 
htmlObjectElementGetUseMap ::
                           (HTMLObjectElementClass self, FromJSString result) =>
                             self -> IO result
htmlObjectElementGetUseMap self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_use_map
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        webkit_dom_html_object_element_set_vspace ::
        JSRef HTMLObjectElement -> Int -> IO ()
#else 
webkit_dom_html_object_element_set_vspace ::
                                            JSRef HTMLObjectElement -> Int -> IO ()
webkit_dom_html_object_element_set_vspace = undefined
#endif
 
htmlObjectElementSetVspace ::
                           (HTMLObjectElementClass self) => self -> Int -> IO ()
htmlObjectElementSetVspace self val
  = webkit_dom_html_object_element_set_vspace
      (unHTMLObjectElement (toHTMLObjectElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"]"
        webkit_dom_html_object_element_get_vspace ::
        JSRef HTMLObjectElement -> IO Int
#else 
webkit_dom_html_object_element_get_vspace ::
                                            JSRef HTMLObjectElement -> IO Int
webkit_dom_html_object_element_get_vspace = undefined
#endif
 
htmlObjectElementGetVspace ::
                           (HTMLObjectElementClass self) => self -> IO Int
htmlObjectElementGetVspace self
  = webkit_dom_html_object_element_get_vspace
      (unHTMLObjectElement (toHTMLObjectElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_object_element_set_width ::
        JSRef HTMLObjectElement -> JSString -> IO ()
#else 
webkit_dom_html_object_element_set_width ::
                                           JSRef HTMLObjectElement -> JSString -> IO ()
webkit_dom_html_object_element_set_width = undefined
#endif
 
htmlObjectElementSetWidth ::
                          (HTMLObjectElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlObjectElementSetWidth self val
  = webkit_dom_html_object_element_set_width
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_object_element_get_width ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_width ::
                                           JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_width = undefined
#endif
 
htmlObjectElementGetWidth ::
                          (HTMLObjectElementClass self, FromJSString result) =>
                            self -> IO result
htmlObjectElementGetWidth self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_width
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"willValidate\"]"
        webkit_dom_html_object_element_get_will_validate ::
        JSRef HTMLObjectElement -> IO JSBool
#else 
webkit_dom_html_object_element_get_will_validate ::
                                                   JSRef HTMLObjectElement -> IO JSBool
webkit_dom_html_object_element_get_will_validate = undefined
#endif
 
htmlObjectElementGetWillValidate ::
                                 (HTMLObjectElementClass self) => self -> IO Bool
htmlObjectElementGetWillValidate self
  = fromJSBool <$>
      (webkit_dom_html_object_element_get_will_validate
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validity\"]"
        webkit_dom_html_object_element_get_validity ::
        JSRef HTMLObjectElement -> IO (JSRef ValidityState)
#else 
webkit_dom_html_object_element_get_validity ::
                                              JSRef HTMLObjectElement -> IO (JSRef ValidityState)
webkit_dom_html_object_element_get_validity = undefined
#endif
 
htmlObjectElementGetValidity ::
                             (HTMLObjectElementClass self) => self -> IO (Maybe ValidityState)
htmlObjectElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (webkit_dom_html_object_element_get_validity
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        webkit_dom_html_object_element_get_validation_message ::
        JSRef HTMLObjectElement -> IO JSString
#else 
webkit_dom_html_object_element_get_validation_message ::
                                                        JSRef HTMLObjectElement -> IO JSString
webkit_dom_html_object_element_get_validation_message = undefined
#endif
 
htmlObjectElementGetValidationMessage ::
                                      (HTMLObjectElementClass self, FromJSString result) =>
                                        self -> IO result
htmlObjectElementGetValidationMessage self
  = fromJSString <$>
      (webkit_dom_html_object_element_get_validation_message
         (unHTMLObjectElement (toHTMLObjectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        webkit_dom_html_object_element_get_content_document ::
        JSRef HTMLObjectElement -> IO (JSRef Document)
#else 
webkit_dom_html_object_element_get_content_document ::
                                                      JSRef HTMLObjectElement -> IO (JSRef Document)
webkit_dom_html_object_element_get_content_document = undefined
#endif
 
htmlObjectElementGetContentDocument ::
                                    (HTMLObjectElementClass self) => self -> IO (Maybe Document)
htmlObjectElementGetContentDocument self
  = fmap Document . maybeJSNull <$>
      (webkit_dom_html_object_element_get_content_document
         (unHTMLObjectElement (toHTMLObjectElement self)))