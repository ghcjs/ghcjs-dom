{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLObjectElement
       (ghcjs_dom_html_object_element_check_validity,
        htmlObjectElementCheckValidity,
        ghcjs_dom_html_object_element_set_custom_validity,
        htmlObjectElementSetCustomValidity,
        ghcjs_dom_html_object_element_get_form, htmlObjectElementGetForm,
        ghcjs_dom_html_object_element_set_code, htmlObjectElementSetCode,
        ghcjs_dom_html_object_element_get_code, htmlObjectElementGetCode,
        ghcjs_dom_html_object_element_set_align, htmlObjectElementSetAlign,
        ghcjs_dom_html_object_element_get_align, htmlObjectElementGetAlign,
        ghcjs_dom_html_object_element_set_archive,
        htmlObjectElementSetArchive,
        ghcjs_dom_html_object_element_get_archive,
        htmlObjectElementGetArchive,
        ghcjs_dom_html_object_element_set_border,
        htmlObjectElementSetBorder,
        ghcjs_dom_html_object_element_get_border,
        htmlObjectElementGetBorder,
        ghcjs_dom_html_object_element_set_code_base,
        htmlObjectElementSetCodeBase,
        ghcjs_dom_html_object_element_get_code_base,
        htmlObjectElementGetCodeBase,
        ghcjs_dom_html_object_element_set_code_type,
        htmlObjectElementSetCodeType,
        ghcjs_dom_html_object_element_get_code_type,
        htmlObjectElementGetCodeType,
        ghcjs_dom_html_object_element_set_data, htmlObjectElementSetData,
        ghcjs_dom_html_object_element_get_data, htmlObjectElementGetData,
        ghcjs_dom_html_object_element_set_declare,
        htmlObjectElementSetDeclare,
        ghcjs_dom_html_object_element_get_declare,
        htmlObjectElementGetDeclare,
        ghcjs_dom_html_object_element_set_height,
        htmlObjectElementSetHeight,
        ghcjs_dom_html_object_element_get_height,
        htmlObjectElementGetHeight,
        ghcjs_dom_html_object_element_set_hspace,
        htmlObjectElementSetHspace,
        ghcjs_dom_html_object_element_get_hspace,
        htmlObjectElementGetHspace, ghcjs_dom_html_object_element_set_name,
        htmlObjectElementSetName, ghcjs_dom_html_object_element_get_name,
        htmlObjectElementGetName,
        ghcjs_dom_html_object_element_set_standby,
        htmlObjectElementSetStandby,
        ghcjs_dom_html_object_element_get_standby,
        htmlObjectElementGetStandby,
        ghcjs_dom_html_object_element_set_use_map,
        htmlObjectElementSetUseMap,
        ghcjs_dom_html_object_element_get_use_map,
        htmlObjectElementGetUseMap,
        ghcjs_dom_html_object_element_set_vspace,
        htmlObjectElementSetVspace,
        ghcjs_dom_html_object_element_get_vspace,
        htmlObjectElementGetVspace,
        ghcjs_dom_html_object_element_set_width, htmlObjectElementSetWidth,
        ghcjs_dom_html_object_element_get_width, htmlObjectElementGetWidth,
        ghcjs_dom_html_object_element_get_will_validate,
        htmlObjectElementGetWillValidate,
        ghcjs_dom_html_object_element_get_validity,
        htmlObjectElementGetValidity,
        ghcjs_dom_html_object_element_get_validation_message,
        htmlObjectElementGetValidationMessage,
        ghcjs_dom_html_object_element_get_content_document,
        htmlObjectElementGetContentDocument, HTMLObjectElement,
        IsHTMLObjectElement, castToHTMLObjectElement,
        gTypeHTMLObjectElement, toHTMLObjectElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_object_element_check_validity ::
        JSRef HTMLObjectElement -> IO Bool
 
htmlObjectElementCheckValidity ::
                               (IsHTMLObjectElement self) => self -> IO Bool
htmlObjectElementCheckValidity self
  = ghcjs_dom_html_object_element_check_validity
      (unHTMLObjectElement (toHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_object_element_set_custom_validity ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetCustomValidity ::
                                   (IsHTMLObjectElement self, ToJSString error) =>
                                     self -> error -> IO ()
htmlObjectElementSetCustomValidity self error
  = ghcjs_dom_html_object_element_set_custom_validity
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString error)
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_object_element_get_form ::
        JSRef HTMLObjectElement -> IO (JSRef HTMLFormElement)
 
htmlObjectElementGetForm ::
                         (IsHTMLObjectElement self) => self -> IO (Maybe HTMLFormElement)
htmlObjectElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_object_element_get_form
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"code\"] = $2;"
        ghcjs_dom_html_object_element_set_code ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetCode ::
                         (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetCode self val
  = ghcjs_dom_html_object_element_set_code
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_html_object_element_get_code ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetCode ::
                         (IsHTMLObjectElement self, FromJSString result) =>
                           self -> IO result
htmlObjectElementGetCode self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_code
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_object_element_set_align ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetAlign ::
                          (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetAlign self val
  = ghcjs_dom_html_object_element_set_align
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_object_element_get_align ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetAlign ::
                          (IsHTMLObjectElement self, FromJSString result) =>
                            self -> IO result
htmlObjectElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_align
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        ghcjs_dom_html_object_element_set_archive ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetArchive ::
                            (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetArchive self val
  = ghcjs_dom_html_object_element_set_archive
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"archive\"]"
        ghcjs_dom_html_object_element_get_archive ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetArchive ::
                            (IsHTMLObjectElement self, FromJSString result) =>
                              self -> IO result
htmlObjectElementGetArchive self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_archive
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        ghcjs_dom_html_object_element_set_border ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetBorder ::
                           (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetBorder self val
  = ghcjs_dom_html_object_element_set_border
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"border\"]"
        ghcjs_dom_html_object_element_get_border ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetBorder ::
                           (IsHTMLObjectElement self, FromJSString result) =>
                             self -> IO result
htmlObjectElementGetBorder self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_border
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        ghcjs_dom_html_object_element_set_code_base ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetCodeBase ::
                             (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetCodeBase self val
  = ghcjs_dom_html_object_element_set_code_base
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"codeBase\"]"
        ghcjs_dom_html_object_element_get_code_base ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetCodeBase ::
                             (IsHTMLObjectElement self, FromJSString result) =>
                               self -> IO result
htmlObjectElementGetCodeBase self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_code_base
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"codeType\"] = $2;"
        ghcjs_dom_html_object_element_set_code_type ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetCodeType ::
                             (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetCodeType self val
  = ghcjs_dom_html_object_element_set_code_type
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"codeType\"]"
        ghcjs_dom_html_object_element_get_code_type ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetCodeType ::
                             (IsHTMLObjectElement self, FromJSString result) =>
                               self -> IO result
htmlObjectElementGetCodeType self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_code_type
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        ghcjs_dom_html_object_element_set_data ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetData ::
                         (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetData self val
  = ghcjs_dom_html_object_element_set_data
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_html_object_element_get_data ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetData ::
                         (IsHTMLObjectElement self, FromJSString result) =>
                           self -> IO result
htmlObjectElementGetData self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_data
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"declare\"] = $2;"
        ghcjs_dom_html_object_element_set_declare ::
        JSRef HTMLObjectElement -> Bool -> IO ()
 
htmlObjectElementSetDeclare ::
                            (IsHTMLObjectElement self) => self -> Bool -> IO ()
htmlObjectElementSetDeclare self val
  = ghcjs_dom_html_object_element_set_declare
      (unHTMLObjectElement (toHTMLObjectElement self))
      val
 
foreign import javascript unsafe "($1[\"declare\"] ? 1 : 0)"
        ghcjs_dom_html_object_element_get_declare ::
        JSRef HTMLObjectElement -> IO Bool
 
htmlObjectElementGetDeclare ::
                            (IsHTMLObjectElement self) => self -> IO Bool
htmlObjectElementGetDeclare self
  = ghcjs_dom_html_object_element_get_declare
      (unHTMLObjectElement (toHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_object_element_set_height ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetHeight ::
                           (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetHeight self val
  = ghcjs_dom_html_object_element_set_height
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_object_element_get_height ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetHeight ::
                           (IsHTMLObjectElement self, FromJSString result) =>
                             self -> IO result
htmlObjectElementGetHeight self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_height
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        ghcjs_dom_html_object_element_set_hspace ::
        JSRef HTMLObjectElement -> Int -> IO ()
 
htmlObjectElementSetHspace ::
                           (IsHTMLObjectElement self) => self -> Int -> IO ()
htmlObjectElementSetHspace self val
  = ghcjs_dom_html_object_element_set_hspace
      (unHTMLObjectElement (toHTMLObjectElement self))
      val
 
foreign import javascript unsafe "$1[\"hspace\"]"
        ghcjs_dom_html_object_element_get_hspace ::
        JSRef HTMLObjectElement -> IO Int
 
htmlObjectElementGetHspace ::
                           (IsHTMLObjectElement self) => self -> IO Int
htmlObjectElementGetHspace self
  = ghcjs_dom_html_object_element_get_hspace
      (unHTMLObjectElement (toHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_object_element_set_name ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetName ::
                         (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetName self val
  = ghcjs_dom_html_object_element_set_name
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_object_element_get_name ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetName ::
                         (IsHTMLObjectElement self, FromJSString result) =>
                           self -> IO result
htmlObjectElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_name
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"standby\"] = $2;"
        ghcjs_dom_html_object_element_set_standby ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetStandby ::
                            (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetStandby self val
  = ghcjs_dom_html_object_element_set_standby
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"standby\"]"
        ghcjs_dom_html_object_element_get_standby ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetStandby ::
                            (IsHTMLObjectElement self, FromJSString result) =>
                              self -> IO result
htmlObjectElementGetStandby self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_standby
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        ghcjs_dom_html_object_element_set_use_map ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetUseMap ::
                           (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetUseMap self val
  = ghcjs_dom_html_object_element_set_use_map
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"useMap\"]"
        ghcjs_dom_html_object_element_get_use_map ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetUseMap ::
                           (IsHTMLObjectElement self, FromJSString result) =>
                             self -> IO result
htmlObjectElementGetUseMap self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_use_map
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        ghcjs_dom_html_object_element_set_vspace ::
        JSRef HTMLObjectElement -> Int -> IO ()
 
htmlObjectElementSetVspace ::
                           (IsHTMLObjectElement self) => self -> Int -> IO ()
htmlObjectElementSetVspace self val
  = ghcjs_dom_html_object_element_set_vspace
      (unHTMLObjectElement (toHTMLObjectElement self))
      val
 
foreign import javascript unsafe "$1[\"vspace\"]"
        ghcjs_dom_html_object_element_get_vspace ::
        JSRef HTMLObjectElement -> IO Int
 
htmlObjectElementGetVspace ::
                           (IsHTMLObjectElement self) => self -> IO Int
htmlObjectElementGetVspace self
  = ghcjs_dom_html_object_element_get_vspace
      (unHTMLObjectElement (toHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_object_element_set_width ::
        JSRef HTMLObjectElement -> JSString -> IO ()
 
htmlObjectElementSetWidth ::
                          (IsHTMLObjectElement self, ToJSString val) => self -> val -> IO ()
htmlObjectElementSetWidth self val
  = ghcjs_dom_html_object_element_set_width
      (unHTMLObjectElement (toHTMLObjectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_object_element_get_width ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetWidth ::
                          (IsHTMLObjectElement self, FromJSString result) =>
                            self -> IO result
htmlObjectElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_width
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_object_element_get_will_validate ::
        JSRef HTMLObjectElement -> IO Bool
 
htmlObjectElementGetWillValidate ::
                                 (IsHTMLObjectElement self) => self -> IO Bool
htmlObjectElementGetWillValidate self
  = ghcjs_dom_html_object_element_get_will_validate
      (unHTMLObjectElement (toHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_object_element_get_validity ::
        JSRef HTMLObjectElement -> IO (JSRef ValidityState)
 
htmlObjectElementGetValidity ::
                             (IsHTMLObjectElement self) => self -> IO (Maybe ValidityState)
htmlObjectElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (ghcjs_dom_html_object_element_get_validity
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_object_element_get_validation_message ::
        JSRef HTMLObjectElement -> IO JSString
 
htmlObjectElementGetValidationMessage ::
                                      (IsHTMLObjectElement self, FromJSString result) =>
                                        self -> IO result
htmlObjectElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_object_element_get_validation_message
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        ghcjs_dom_html_object_element_get_content_document ::
        JSRef HTMLObjectElement -> IO (JSRef Document)
 
htmlObjectElementGetContentDocument ::
                                    (IsHTMLObjectElement self) => self -> IO (Maybe Document)
htmlObjectElementGetContentDocument self
  = fmap Document . maybeJSNull <$>
      (ghcjs_dom_html_object_element_get_content_document
         (unHTMLObjectElement (toHTMLObjectElement self)))
#else
module GHCJS.DOM.HTMLObjectElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLObjectElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLObjectElement
#endif
