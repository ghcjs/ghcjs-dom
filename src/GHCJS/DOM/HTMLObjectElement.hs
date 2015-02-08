{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLObjectElement
       (ghcjs_dom_html_object_element_check_validity,
        htmlObjectElementCheckValidity,
        ghcjs_dom_html_object_element_set_custom_validity,
        htmlObjectElementSetCustomValidity,
        ghcjs_dom_html_object_element_get_svg_document,
        htmlObjectElementGetSVGDocument,
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
        ghcjs_dom_html_object_element_check_validity ::
        JSRef HTMLObjectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.checkValidity Mozilla HTMLObjectElement.checkValidity documentation> 
htmlObjectElementCheckValidity ::
                               (MonadIO m, IsHTMLObjectElement self) => self -> m Bool
htmlObjectElementCheckValidity self
  = liftIO
      (ghcjs_dom_html_object_element_check_validity
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_object_element_set_custom_validity ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.customValidity Mozilla HTMLObjectElement.customValidity documentation> 
htmlObjectElementSetCustomValidity ::
                                   (MonadIO m, IsHTMLObjectElement self, ToJSString error) =>
                                     self -> error -> m ()
htmlObjectElementSetCustomValidity self error
  = liftIO
      (ghcjs_dom_html_object_element_set_custom_validity
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString error))
 
foreign import javascript unsafe "$1[\"getSVGDocument\"]()"
        ghcjs_dom_html_object_element_get_svg_document ::
        JSRef HTMLObjectElement -> IO (JSRef SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.svgDocument Mozilla HTMLObjectElement.svgDocument documentation> 
htmlObjectElementGetSVGDocument ::
                                (MonadIO m, IsHTMLObjectElement self) =>
                                  self -> m (Maybe SVGDocument)
htmlObjectElementGetSVGDocument self
  = liftIO
      ((ghcjs_dom_html_object_element_get_svg_document
          (unHTMLObjectElement (toHTMLObjectElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_object_element_get_form ::
        JSRef HTMLObjectElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.form Mozilla HTMLObjectElement.form documentation> 
htmlObjectElementGetForm ::
                         (MonadIO m, IsHTMLObjectElement self) =>
                           self -> m (Maybe HTMLFormElement)
htmlObjectElementGetForm self
  = liftIO
      ((ghcjs_dom_html_object_element_get_form
          (unHTMLObjectElement (toHTMLObjectElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"code\"] = $2;"
        ghcjs_dom_html_object_element_set_code ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.code Mozilla HTMLObjectElement.code documentation> 
htmlObjectElementSetCode ::
                         (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                           self -> val -> m ()
htmlObjectElementSetCode self val
  = liftIO
      (ghcjs_dom_html_object_element_set_code
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_html_object_element_get_code ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.code Mozilla HTMLObjectElement.code documentation> 
htmlObjectElementGetCode ::
                         (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                           self -> m result
htmlObjectElementGetCode self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_code
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_object_element_set_align ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.align Mozilla HTMLObjectElement.align documentation> 
htmlObjectElementSetAlign ::
                          (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                            self -> val -> m ()
htmlObjectElementSetAlign self val
  = liftIO
      (ghcjs_dom_html_object_element_set_align
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_object_element_get_align ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.align Mozilla HTMLObjectElement.align documentation> 
htmlObjectElementGetAlign ::
                          (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                            self -> m result
htmlObjectElementGetAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_align
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        ghcjs_dom_html_object_element_set_archive ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.archive Mozilla HTMLObjectElement.archive documentation> 
htmlObjectElementSetArchive ::
                            (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                              self -> val -> m ()
htmlObjectElementSetArchive self val
  = liftIO
      (ghcjs_dom_html_object_element_set_archive
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"archive\"]"
        ghcjs_dom_html_object_element_get_archive ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.archive Mozilla HTMLObjectElement.archive documentation> 
htmlObjectElementGetArchive ::
                            (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                              self -> m result
htmlObjectElementGetArchive self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_archive
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        ghcjs_dom_html_object_element_set_border ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.border Mozilla HTMLObjectElement.border documentation> 
htmlObjectElementSetBorder ::
                           (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                             self -> val -> m ()
htmlObjectElementSetBorder self val
  = liftIO
      (ghcjs_dom_html_object_element_set_border
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"border\"]"
        ghcjs_dom_html_object_element_get_border ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.border Mozilla HTMLObjectElement.border documentation> 
htmlObjectElementGetBorder ::
                           (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                             self -> m result
htmlObjectElementGetBorder self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_border
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        ghcjs_dom_html_object_element_set_code_base ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeBase Mozilla HTMLObjectElement.codeBase documentation> 
htmlObjectElementSetCodeBase ::
                             (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                               self -> val -> m ()
htmlObjectElementSetCodeBase self val
  = liftIO
      (ghcjs_dom_html_object_element_set_code_base
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"codeBase\"]"
        ghcjs_dom_html_object_element_get_code_base ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeBase Mozilla HTMLObjectElement.codeBase documentation> 
htmlObjectElementGetCodeBase ::
                             (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                               self -> m result
htmlObjectElementGetCodeBase self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_code_base
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"codeType\"] = $2;"
        ghcjs_dom_html_object_element_set_code_type ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeType Mozilla HTMLObjectElement.codeType documentation> 
htmlObjectElementSetCodeType ::
                             (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                               self -> val -> m ()
htmlObjectElementSetCodeType self val
  = liftIO
      (ghcjs_dom_html_object_element_set_code_type
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"codeType\"]"
        ghcjs_dom_html_object_element_get_code_type ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeType Mozilla HTMLObjectElement.codeType documentation> 
htmlObjectElementGetCodeType ::
                             (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                               self -> m result
htmlObjectElementGetCodeType self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_code_type
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"data\"] = $2;"
        ghcjs_dom_html_object_element_set_data ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.data Mozilla HTMLObjectElement.data documentation> 
htmlObjectElementSetData ::
                         (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                           self -> val -> m ()
htmlObjectElementSetData self val
  = liftIO
      (ghcjs_dom_html_object_element_set_data
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_html_object_element_get_data ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.data Mozilla HTMLObjectElement.data documentation> 
htmlObjectElementGetData ::
                         (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                           self -> m result
htmlObjectElementGetData self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_data
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"declare\"] = $2;"
        ghcjs_dom_html_object_element_set_declare ::
        JSRef HTMLObjectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.declare Mozilla HTMLObjectElement.declare documentation> 
htmlObjectElementSetDeclare ::
                            (MonadIO m, IsHTMLObjectElement self) => self -> Bool -> m ()
htmlObjectElementSetDeclare self val
  = liftIO
      (ghcjs_dom_html_object_element_set_declare
         (unHTMLObjectElement (toHTMLObjectElement self))
         val)
 
foreign import javascript unsafe "($1[\"declare\"] ? 1 : 0)"
        ghcjs_dom_html_object_element_get_declare ::
        JSRef HTMLObjectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.declare Mozilla HTMLObjectElement.declare documentation> 
htmlObjectElementGetDeclare ::
                            (MonadIO m, IsHTMLObjectElement self) => self -> m Bool
htmlObjectElementGetDeclare self
  = liftIO
      (ghcjs_dom_html_object_element_get_declare
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_object_element_set_height ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.height Mozilla HTMLObjectElement.height documentation> 
htmlObjectElementSetHeight ::
                           (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                             self -> val -> m ()
htmlObjectElementSetHeight self val
  = liftIO
      (ghcjs_dom_html_object_element_set_height
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_object_element_get_height ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.height Mozilla HTMLObjectElement.height documentation> 
htmlObjectElementGetHeight ::
                           (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                             self -> m result
htmlObjectElementGetHeight self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_height
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        ghcjs_dom_html_object_element_set_hspace ::
        JSRef HTMLObjectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.hspace Mozilla HTMLObjectElement.hspace documentation> 
htmlObjectElementSetHspace ::
                           (MonadIO m, IsHTMLObjectElement self) => self -> Int -> m ()
htmlObjectElementSetHspace self val
  = liftIO
      (ghcjs_dom_html_object_element_set_hspace
         (unHTMLObjectElement (toHTMLObjectElement self))
         val)
 
foreign import javascript unsafe "$1[\"hspace\"]"
        ghcjs_dom_html_object_element_get_hspace ::
        JSRef HTMLObjectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.hspace Mozilla HTMLObjectElement.hspace documentation> 
htmlObjectElementGetHspace ::
                           (MonadIO m, IsHTMLObjectElement self) => self -> m Int
htmlObjectElementGetHspace self
  = liftIO
      (ghcjs_dom_html_object_element_get_hspace
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_object_element_set_name ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.name Mozilla HTMLObjectElement.name documentation> 
htmlObjectElementSetName ::
                         (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                           self -> val -> m ()
htmlObjectElementSetName self val
  = liftIO
      (ghcjs_dom_html_object_element_set_name
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_object_element_get_name ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.name Mozilla HTMLObjectElement.name documentation> 
htmlObjectElementGetName ::
                         (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                           self -> m result
htmlObjectElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_name
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"standby\"] = $2;"
        ghcjs_dom_html_object_element_set_standby ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.standby Mozilla HTMLObjectElement.standby documentation> 
htmlObjectElementSetStandby ::
                            (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                              self -> val -> m ()
htmlObjectElementSetStandby self val
  = liftIO
      (ghcjs_dom_html_object_element_set_standby
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"standby\"]"
        ghcjs_dom_html_object_element_get_standby ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.standby Mozilla HTMLObjectElement.standby documentation> 
htmlObjectElementGetStandby ::
                            (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                              self -> m result
htmlObjectElementGetStandby self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_standby
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        ghcjs_dom_html_object_element_set_use_map ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.useMap Mozilla HTMLObjectElement.useMap documentation> 
htmlObjectElementSetUseMap ::
                           (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                             self -> val -> m ()
htmlObjectElementSetUseMap self val
  = liftIO
      (ghcjs_dom_html_object_element_set_use_map
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"useMap\"]"
        ghcjs_dom_html_object_element_get_use_map ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.useMap Mozilla HTMLObjectElement.useMap documentation> 
htmlObjectElementGetUseMap ::
                           (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                             self -> m result
htmlObjectElementGetUseMap self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_use_map
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        ghcjs_dom_html_object_element_set_vspace ::
        JSRef HTMLObjectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.vspace Mozilla HTMLObjectElement.vspace documentation> 
htmlObjectElementSetVspace ::
                           (MonadIO m, IsHTMLObjectElement self) => self -> Int -> m ()
htmlObjectElementSetVspace self val
  = liftIO
      (ghcjs_dom_html_object_element_set_vspace
         (unHTMLObjectElement (toHTMLObjectElement self))
         val)
 
foreign import javascript unsafe "$1[\"vspace\"]"
        ghcjs_dom_html_object_element_get_vspace ::
        JSRef HTMLObjectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.vspace Mozilla HTMLObjectElement.vspace documentation> 
htmlObjectElementGetVspace ::
                           (MonadIO m, IsHTMLObjectElement self) => self -> m Int
htmlObjectElementGetVspace self
  = liftIO
      (ghcjs_dom_html_object_element_get_vspace
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_object_element_set_width ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.width Mozilla HTMLObjectElement.width documentation> 
htmlObjectElementSetWidth ::
                          (MonadIO m, IsHTMLObjectElement self, ToJSString val) =>
                            self -> val -> m ()
htmlObjectElementSetWidth self val
  = liftIO
      (ghcjs_dom_html_object_element_set_width
         (unHTMLObjectElement (toHTMLObjectElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_object_element_get_width ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.width Mozilla HTMLObjectElement.width documentation> 
htmlObjectElementGetWidth ::
                          (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                            self -> m result
htmlObjectElementGetWidth self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_width
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_object_element_get_will_validate ::
        JSRef HTMLObjectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.willValidate Mozilla HTMLObjectElement.willValidate documentation> 
htmlObjectElementGetWillValidate ::
                                 (MonadIO m, IsHTMLObjectElement self) => self -> m Bool
htmlObjectElementGetWillValidate self
  = liftIO
      (ghcjs_dom_html_object_element_get_will_validate
         (unHTMLObjectElement (toHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_object_element_get_validity ::
        JSRef HTMLObjectElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.validity Mozilla HTMLObjectElement.validity documentation> 
htmlObjectElementGetValidity ::
                             (MonadIO m, IsHTMLObjectElement self) =>
                               self -> m (Maybe ValidityState)
htmlObjectElementGetValidity self
  = liftIO
      ((ghcjs_dom_html_object_element_get_validity
          (unHTMLObjectElement (toHTMLObjectElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_object_element_get_validation_message ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.validationMessage Mozilla HTMLObjectElement.validationMessage documentation> 
htmlObjectElementGetValidationMessage ::
                                      (MonadIO m, IsHTMLObjectElement self, FromJSString result) =>
                                        self -> m result
htmlObjectElementGetValidationMessage self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_object_element_get_validation_message
            (unHTMLObjectElement (toHTMLObjectElement self))))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        ghcjs_dom_html_object_element_get_content_document ::
        JSRef HTMLObjectElement -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.contentDocument Mozilla HTMLObjectElement.contentDocument documentation> 
htmlObjectElementGetContentDocument ::
                                    (MonadIO m, IsHTMLObjectElement self) =>
                                      self -> m (Maybe Document)
htmlObjectElementGetContentDocument self
  = liftIO
      ((ghcjs_dom_html_object_element_get_content_document
          (unHTMLObjectElement (toHTMLObjectElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLObjectElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLObjectElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLObjectElement
#endif
