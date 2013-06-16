{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLTextAreaElement
       (webkit_dom_html_text_area_element_check_validity,
        htmlTextAreaElementCheckValidity,
        webkit_dom_html_text_area_element_set_custom_validity,
        htmlTextAreaElementSetCustomValidity,
        webkit_dom_html_text_area_element_select,
        htmlTextAreaElementSelect,
        webkit_dom_html_text_area_element_set_selection_range,
        htmlTextAreaElementSetSelectionRange,
        webkit_dom_html_text_area_element_set_autofocus,
        htmlTextAreaElementSetAutofocus,
        webkit_dom_html_text_area_element_get_autofocus,
        htmlTextAreaElementGetAutofocus,
        webkit_dom_html_text_area_element_set_cols,
        htmlTextAreaElementSetCols,
        webkit_dom_html_text_area_element_get_cols,
        htmlTextAreaElementGetCols,
        webkit_dom_html_text_area_element_set_dir_name,
        htmlTextAreaElementSetDirName,
        webkit_dom_html_text_area_element_get_dir_name,
        htmlTextAreaElementGetDirName,
        webkit_dom_html_text_area_element_set_disabled,
        htmlTextAreaElementSetDisabled,
        webkit_dom_html_text_area_element_get_disabled,
        htmlTextAreaElementGetDisabled,
        webkit_dom_html_text_area_element_get_form,
        htmlTextAreaElementGetForm,
        webkit_dom_html_text_area_element_set_max_length,
        htmlTextAreaElementSetMaxLength,
        webkit_dom_html_text_area_element_get_max_length,
        htmlTextAreaElementGetMaxLength,
        webkit_dom_html_text_area_element_set_name,
        htmlTextAreaElementSetName,
        webkit_dom_html_text_area_element_get_name,
        htmlTextAreaElementGetName,
        webkit_dom_html_text_area_element_set_placeholder,
        htmlTextAreaElementSetPlaceholder,
        webkit_dom_html_text_area_element_get_placeholder,
        htmlTextAreaElementGetPlaceholder,
        webkit_dom_html_text_area_element_set_read_only,
        htmlTextAreaElementSetReadOnly,
        webkit_dom_html_text_area_element_get_read_only,
        htmlTextAreaElementGetReadOnly,
        webkit_dom_html_text_area_element_set_required,
        htmlTextAreaElementSetRequired,
        webkit_dom_html_text_area_element_get_required,
        htmlTextAreaElementGetRequired,
        webkit_dom_html_text_area_element_set_rows,
        htmlTextAreaElementSetRows,
        webkit_dom_html_text_area_element_get_rows,
        htmlTextAreaElementGetRows,
        webkit_dom_html_text_area_element_set_wrap,
        htmlTextAreaElementSetWrap,
        webkit_dom_html_text_area_element_get_wrap,
        htmlTextAreaElementGetWrap,
        webkit_dom_html_text_area_element_set_default_value,
        htmlTextAreaElementSetDefaultValue,
        webkit_dom_html_text_area_element_get_default_value,
        htmlTextAreaElementGetDefaultValue,
        webkit_dom_html_text_area_element_set_value,
        htmlTextAreaElementSetValue,
        webkit_dom_html_text_area_element_get_value,
        htmlTextAreaElementGetValue,
        webkit_dom_html_text_area_element_get_text_length,
        htmlTextAreaElementGetTextLength,
        webkit_dom_html_text_area_element_get_will_validate,
        htmlTextAreaElementGetWillValidate,
        webkit_dom_html_text_area_element_get_validity,
        htmlTextAreaElementGetValidity,
        webkit_dom_html_text_area_element_get_validation_message,
        htmlTextAreaElementGetValidationMessage,
        webkit_dom_html_text_area_element_get_labels,
        htmlTextAreaElementGetLabels,
        webkit_dom_html_text_area_element_set_selection_start,
        htmlTextAreaElementSetSelectionStart,
        webkit_dom_html_text_area_element_get_selection_start,
        htmlTextAreaElementGetSelectionStart,
        webkit_dom_html_text_area_element_set_selection_end,
        htmlTextAreaElementSetSelectionEnd,
        webkit_dom_html_text_area_element_get_selection_end,
        htmlTextAreaElementGetSelectionEnd,
        webkit_dom_html_text_area_element_set_selection_direction,
        htmlTextAreaElementSetSelectionDirection,
        webkit_dom_html_text_area_element_get_selection_direction,
        htmlTextAreaElementGetSelectionDirection)
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
        webkit_dom_html_text_area_element_check_validity ::
        JSRef HTMLTextAreaElement -> IO JSBool
#else 
webkit_dom_html_text_area_element_check_validity ::
                                                   JSRef HTMLTextAreaElement -> IO JSBool
webkit_dom_html_text_area_element_check_validity = undefined
#endif
 
htmlTextAreaElementCheckValidity ::
                                 (HTMLTextAreaElementClass self) => self -> IO Bool
htmlTextAreaElementCheckValidity self
  = fromJSBool <$>
      (webkit_dom_html_text_area_element_check_validity
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        webkit_dom_html_text_area_element_set_custom_validity ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_text_area_element_set_custom_validity ::
                                                        JSRef HTMLTextAreaElement ->
                                                          JSString -> IO ()
webkit_dom_html_text_area_element_set_custom_validity = undefined
#endif
 
htmlTextAreaElementSetCustomValidity ::
                                     (HTMLTextAreaElementClass self, ToJSString error) =>
                                       self -> error -> IO ()
htmlTextAreaElementSetCustomValidity self error
  = webkit_dom_html_text_area_element_set_custom_validity
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString error)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"select\"]()"
        webkit_dom_html_text_area_element_select ::
        JSRef HTMLTextAreaElement -> IO ()
#else 
webkit_dom_html_text_area_element_select ::
                                           JSRef HTMLTextAreaElement -> IO ()
webkit_dom_html_text_area_element_select = undefined
#endif
 
htmlTextAreaElementSelect ::
                          (HTMLTextAreaElementClass self) => self -> IO ()
htmlTextAreaElementSelect self
  = webkit_dom_html_text_area_element_select
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"setSelectionRange\"]($2, $3,\n$4)"
        webkit_dom_html_text_area_element_set_selection_range ::
        JSRef HTMLTextAreaElement -> Int -> Int -> JSString -> IO ()
#else 
webkit_dom_html_text_area_element_set_selection_range ::
                                                        JSRef HTMLTextAreaElement ->
                                                          Int -> Int -> JSString -> IO ()
webkit_dom_html_text_area_element_set_selection_range = undefined
#endif
 
htmlTextAreaElementSetSelectionRange ::
                                     (HTMLTextAreaElementClass self, ToJSString direction) =>
                                       self -> Int -> Int -> direction -> IO ()
htmlTextAreaElementSetSelectionRange self start end direction
  = webkit_dom_html_text_area_element_set_selection_range
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      start
      end
      (toJSString direction)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        webkit_dom_html_text_area_element_set_autofocus ::
        JSRef HTMLTextAreaElement -> JSBool -> IO ()
#else 
webkit_dom_html_text_area_element_set_autofocus ::
                                                  JSRef HTMLTextAreaElement -> JSBool -> IO ()
webkit_dom_html_text_area_element_set_autofocus = undefined
#endif
 
htmlTextAreaElementSetAutofocus ::
                                (HTMLTextAreaElementClass self) => self -> Bool -> IO ()
htmlTextAreaElementSetAutofocus self val
  = webkit_dom_html_text_area_element_set_autofocus
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"]"
        webkit_dom_html_text_area_element_get_autofocus ::
        JSRef HTMLTextAreaElement -> IO JSBool
#else 
webkit_dom_html_text_area_element_get_autofocus ::
                                                  JSRef HTMLTextAreaElement -> IO JSBool
webkit_dom_html_text_area_element_get_autofocus = undefined
#endif
 
htmlTextAreaElementGetAutofocus ::
                                (HTMLTextAreaElementClass self) => self -> IO Bool
htmlTextAreaElementGetAutofocus self
  = fromJSBool <$>
      (webkit_dom_html_text_area_element_get_autofocus
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cols\"] = $2;"
        webkit_dom_html_text_area_element_set_cols ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
webkit_dom_html_text_area_element_set_cols ::
                                             JSRef HTMLTextAreaElement -> Int -> IO ()
webkit_dom_html_text_area_element_set_cols = undefined
#endif
 
htmlTextAreaElementSetCols ::
                           (HTMLTextAreaElementClass self) => self -> Int -> IO ()
htmlTextAreaElementSetCols self val
  = webkit_dom_html_text_area_element_set_cols
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cols\"]"
        webkit_dom_html_text_area_element_get_cols ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
webkit_dom_html_text_area_element_get_cols ::
                                             JSRef HTMLTextAreaElement -> IO Int
webkit_dom_html_text_area_element_get_cols = undefined
#endif
 
htmlTextAreaElementGetCols ::
                           (HTMLTextAreaElementClass self) => self -> IO Int
htmlTextAreaElementGetCols self
  = webkit_dom_html_text_area_element_get_cols
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dirName\"] = $2;"
        webkit_dom_html_text_area_element_set_dir_name ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_text_area_element_set_dir_name ::
                                                 JSRef HTMLTextAreaElement -> JSString -> IO ()
webkit_dom_html_text_area_element_set_dir_name = undefined
#endif
 
htmlTextAreaElementSetDirName ::
                              (HTMLTextAreaElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlTextAreaElementSetDirName self val
  = webkit_dom_html_text_area_element_set_dir_name
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dirName\"]"
        webkit_dom_html_text_area_element_get_dir_name ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
webkit_dom_html_text_area_element_get_dir_name ::
                                                 JSRef HTMLTextAreaElement -> IO JSString
webkit_dom_html_text_area_element_get_dir_name = undefined
#endif
 
htmlTextAreaElementGetDirName ::
                              (HTMLTextAreaElementClass self, FromJSString result) =>
                                self -> IO result
htmlTextAreaElementGetDirName self
  = fromJSString <$>
      (webkit_dom_html_text_area_element_get_dir_name
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_text_area_element_set_disabled ::
        JSRef HTMLTextAreaElement -> JSBool -> IO ()
#else 
webkit_dom_html_text_area_element_set_disabled ::
                                                 JSRef HTMLTextAreaElement -> JSBool -> IO ()
webkit_dom_html_text_area_element_set_disabled = undefined
#endif
 
htmlTextAreaElementSetDisabled ::
                               (HTMLTextAreaElementClass self) => self -> Bool -> IO ()
htmlTextAreaElementSetDisabled self val
  = webkit_dom_html_text_area_element_set_disabled
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"]"
        webkit_dom_html_text_area_element_get_disabled ::
        JSRef HTMLTextAreaElement -> IO JSBool
#else 
webkit_dom_html_text_area_element_get_disabled ::
                                                 JSRef HTMLTextAreaElement -> IO JSBool
webkit_dom_html_text_area_element_get_disabled = undefined
#endif
 
htmlTextAreaElementGetDisabled ::
                               (HTMLTextAreaElementClass self) => self -> IO Bool
htmlTextAreaElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_text_area_element_get_disabled
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        webkit_dom_html_text_area_element_get_form ::
        JSRef HTMLTextAreaElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_text_area_element_get_form ::
                                             JSRef HTMLTextAreaElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_text_area_element_get_form = undefined
#endif
 
htmlTextAreaElementGetForm ::
                           (HTMLTextAreaElementClass self) =>
                             self -> IO (Maybe HTMLFormElement)
htmlTextAreaElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_text_area_element_get_form
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"maxLength\"] = $2;"
        webkit_dom_html_text_area_element_set_max_length ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
webkit_dom_html_text_area_element_set_max_length ::
                                                   JSRef HTMLTextAreaElement -> Int -> IO ()
webkit_dom_html_text_area_element_set_max_length = undefined
#endif
 
htmlTextAreaElementSetMaxLength ::
                                (HTMLTextAreaElementClass self) => self -> Int -> IO ()
htmlTextAreaElementSetMaxLength self val
  = webkit_dom_html_text_area_element_set_max_length
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"maxLength\"]"
        webkit_dom_html_text_area_element_get_max_length ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
webkit_dom_html_text_area_element_get_max_length ::
                                                   JSRef HTMLTextAreaElement -> IO Int
webkit_dom_html_text_area_element_get_max_length = undefined
#endif
 
htmlTextAreaElementGetMaxLength ::
                                (HTMLTextAreaElementClass self) => self -> IO Int
htmlTextAreaElementGetMaxLength self
  = webkit_dom_html_text_area_element_get_max_length
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_text_area_element_set_name ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_text_area_element_set_name ::
                                             JSRef HTMLTextAreaElement -> JSString -> IO ()
webkit_dom_html_text_area_element_set_name = undefined
#endif
 
htmlTextAreaElementSetName ::
                           (HTMLTextAreaElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlTextAreaElementSetName self val
  = webkit_dom_html_text_area_element_set_name
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_text_area_element_get_name ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
webkit_dom_html_text_area_element_get_name ::
                                             JSRef HTMLTextAreaElement -> IO JSString
webkit_dom_html_text_area_element_get_name = undefined
#endif
 
htmlTextAreaElementGetName ::
                           (HTMLTextAreaElementClass self, FromJSString result) =>
                             self -> IO result
htmlTextAreaElementGetName self
  = fromJSString <$>
      (webkit_dom_html_text_area_element_get_name
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"placeholder\"] = $2;"
        webkit_dom_html_text_area_element_set_placeholder ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_text_area_element_set_placeholder ::
                                                    JSRef HTMLTextAreaElement -> JSString -> IO ()
webkit_dom_html_text_area_element_set_placeholder = undefined
#endif
 
htmlTextAreaElementSetPlaceholder ::
                                  (HTMLTextAreaElementClass self, ToJSString val) =>
                                    self -> val -> IO ()
htmlTextAreaElementSetPlaceholder self val
  = webkit_dom_html_text_area_element_set_placeholder
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"placeholder\"]"
        webkit_dom_html_text_area_element_get_placeholder ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
webkit_dom_html_text_area_element_get_placeholder ::
                                                    JSRef HTMLTextAreaElement -> IO JSString
webkit_dom_html_text_area_element_get_placeholder = undefined
#endif
 
htmlTextAreaElementGetPlaceholder ::
                                  (HTMLTextAreaElementClass self, FromJSString result) =>
                                    self -> IO result
htmlTextAreaElementGetPlaceholder self
  = fromJSString <$>
      (webkit_dom_html_text_area_element_get_placeholder
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"readOnly\"] = $2;"
        webkit_dom_html_text_area_element_set_read_only ::
        JSRef HTMLTextAreaElement -> JSBool -> IO ()
#else 
webkit_dom_html_text_area_element_set_read_only ::
                                                  JSRef HTMLTextAreaElement -> JSBool -> IO ()
webkit_dom_html_text_area_element_set_read_only = undefined
#endif
 
htmlTextAreaElementSetReadOnly ::
                               (HTMLTextAreaElementClass self) => self -> Bool -> IO ()
htmlTextAreaElementSetReadOnly self val
  = webkit_dom_html_text_area_element_set_read_only
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"readOnly\"]"
        webkit_dom_html_text_area_element_get_read_only ::
        JSRef HTMLTextAreaElement -> IO JSBool
#else 
webkit_dom_html_text_area_element_get_read_only ::
                                                  JSRef HTMLTextAreaElement -> IO JSBool
webkit_dom_html_text_area_element_get_read_only = undefined
#endif
 
htmlTextAreaElementGetReadOnly ::
                               (HTMLTextAreaElementClass self) => self -> IO Bool
htmlTextAreaElementGetReadOnly self
  = fromJSBool <$>
      (webkit_dom_html_text_area_element_get_read_only
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        webkit_dom_html_text_area_element_set_required ::
        JSRef HTMLTextAreaElement -> JSBool -> IO ()
#else 
webkit_dom_html_text_area_element_set_required ::
                                                 JSRef HTMLTextAreaElement -> JSBool -> IO ()
webkit_dom_html_text_area_element_set_required = undefined
#endif
 
htmlTextAreaElementSetRequired ::
                               (HTMLTextAreaElementClass self) => self -> Bool -> IO ()
htmlTextAreaElementSetRequired self val
  = webkit_dom_html_text_area_element_set_required
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"required\"]"
        webkit_dom_html_text_area_element_get_required ::
        JSRef HTMLTextAreaElement -> IO JSBool
#else 
webkit_dom_html_text_area_element_get_required ::
                                                 JSRef HTMLTextAreaElement -> IO JSBool
webkit_dom_html_text_area_element_get_required = undefined
#endif
 
htmlTextAreaElementGetRequired ::
                               (HTMLTextAreaElementClass self) => self -> IO Bool
htmlTextAreaElementGetRequired self
  = fromJSBool <$>
      (webkit_dom_html_text_area_element_get_required
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rows\"] = $2;"
        webkit_dom_html_text_area_element_set_rows ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
webkit_dom_html_text_area_element_set_rows ::
                                             JSRef HTMLTextAreaElement -> Int -> IO ()
webkit_dom_html_text_area_element_set_rows = undefined
#endif
 
htmlTextAreaElementSetRows ::
                           (HTMLTextAreaElementClass self) => self -> Int -> IO ()
htmlTextAreaElementSetRows self val
  = webkit_dom_html_text_area_element_set_rows
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rows\"]"
        webkit_dom_html_text_area_element_get_rows ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
webkit_dom_html_text_area_element_get_rows ::
                                             JSRef HTMLTextAreaElement -> IO Int
webkit_dom_html_text_area_element_get_rows = undefined
#endif
 
htmlTextAreaElementGetRows ::
                           (HTMLTextAreaElementClass self) => self -> IO Int
htmlTextAreaElementGetRows self
  = webkit_dom_html_text_area_element_get_rows
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"wrap\"] = $2;"
        webkit_dom_html_text_area_element_set_wrap ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_text_area_element_set_wrap ::
                                             JSRef HTMLTextAreaElement -> JSString -> IO ()
webkit_dom_html_text_area_element_set_wrap = undefined
#endif
 
htmlTextAreaElementSetWrap ::
                           (HTMLTextAreaElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlTextAreaElementSetWrap self val
  = webkit_dom_html_text_area_element_set_wrap
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"wrap\"]"
        webkit_dom_html_text_area_element_get_wrap ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
webkit_dom_html_text_area_element_get_wrap ::
                                             JSRef HTMLTextAreaElement -> IO JSString
webkit_dom_html_text_area_element_get_wrap = undefined
#endif
 
htmlTextAreaElementGetWrap ::
                           (HTMLTextAreaElementClass self, FromJSString result) =>
                             self -> IO result
htmlTextAreaElementGetWrap self
  = fromJSString <$>
      (webkit_dom_html_text_area_element_get_wrap
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        webkit_dom_html_text_area_element_set_default_value ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_text_area_element_set_default_value ::
                                                      JSRef HTMLTextAreaElement -> JSString -> IO ()
webkit_dom_html_text_area_element_set_default_value = undefined
#endif
 
htmlTextAreaElementSetDefaultValue ::
                                   (HTMLTextAreaElementClass self, ToJSString val) =>
                                     self -> val -> IO ()
htmlTextAreaElementSetDefaultValue self val
  = webkit_dom_html_text_area_element_set_default_value
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        webkit_dom_html_text_area_element_get_default_value ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
webkit_dom_html_text_area_element_get_default_value ::
                                                      JSRef HTMLTextAreaElement -> IO JSString
webkit_dom_html_text_area_element_get_default_value = undefined
#endif
 
htmlTextAreaElementGetDefaultValue ::
                                   (HTMLTextAreaElementClass self, FromJSString result) =>
                                     self -> IO result
htmlTextAreaElementGetDefaultValue self
  = fromJSString <$>
      (webkit_dom_html_text_area_element_get_default_value
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        webkit_dom_html_text_area_element_set_value ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_text_area_element_set_value ::
                                              JSRef HTMLTextAreaElement -> JSString -> IO ()
webkit_dom_html_text_area_element_set_value = undefined
#endif
 
htmlTextAreaElementSetValue ::
                            (HTMLTextAreaElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlTextAreaElementSetValue self val
  = webkit_dom_html_text_area_element_set_value
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        webkit_dom_html_text_area_element_get_value ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
webkit_dom_html_text_area_element_get_value ::
                                              JSRef HTMLTextAreaElement -> IO JSString
webkit_dom_html_text_area_element_get_value = undefined
#endif
 
htmlTextAreaElementGetValue ::
                            (HTMLTextAreaElementClass self, FromJSString result) =>
                              self -> IO result
htmlTextAreaElementGetValue self
  = fromJSString <$>
      (webkit_dom_html_text_area_element_get_value
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"textLength\"]"
        webkit_dom_html_text_area_element_get_text_length ::
        JSRef HTMLTextAreaElement -> IO Word
#else 
webkit_dom_html_text_area_element_get_text_length ::
                                                    JSRef HTMLTextAreaElement -> IO Word
webkit_dom_html_text_area_element_get_text_length = undefined
#endif
 
htmlTextAreaElementGetTextLength ::
                                 (HTMLTextAreaElementClass self) => self -> IO Word
htmlTextAreaElementGetTextLength self
  = webkit_dom_html_text_area_element_get_text_length
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"willValidate\"]"
        webkit_dom_html_text_area_element_get_will_validate ::
        JSRef HTMLTextAreaElement -> IO JSBool
#else 
webkit_dom_html_text_area_element_get_will_validate ::
                                                      JSRef HTMLTextAreaElement -> IO JSBool
webkit_dom_html_text_area_element_get_will_validate = undefined
#endif
 
htmlTextAreaElementGetWillValidate ::
                                   (HTMLTextAreaElementClass self) => self -> IO Bool
htmlTextAreaElementGetWillValidate self
  = fromJSBool <$>
      (webkit_dom_html_text_area_element_get_will_validate
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validity\"]"
        webkit_dom_html_text_area_element_get_validity ::
        JSRef HTMLTextAreaElement -> IO (JSRef ValidityState)
#else 
webkit_dom_html_text_area_element_get_validity ::
                                                 JSRef HTMLTextAreaElement ->
                                                   IO (JSRef ValidityState)
webkit_dom_html_text_area_element_get_validity = undefined
#endif
 
htmlTextAreaElementGetValidity ::
                               (HTMLTextAreaElementClass self) => self -> IO (Maybe ValidityState)
htmlTextAreaElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (webkit_dom_html_text_area_element_get_validity
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        webkit_dom_html_text_area_element_get_validation_message ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
webkit_dom_html_text_area_element_get_validation_message ::
                                                           JSRef HTMLTextAreaElement -> IO JSString
webkit_dom_html_text_area_element_get_validation_message
  = undefined
#endif
 
htmlTextAreaElementGetValidationMessage ::
                                        (HTMLTextAreaElementClass self, FromJSString result) =>
                                          self -> IO result
htmlTextAreaElementGetValidationMessage self
  = fromJSString <$>
      (webkit_dom_html_text_area_element_get_validation_message
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"labels\"]"
        webkit_dom_html_text_area_element_get_labels ::
        JSRef HTMLTextAreaElement -> IO (JSRef NodeList)
#else 
webkit_dom_html_text_area_element_get_labels ::
                                               JSRef HTMLTextAreaElement -> IO (JSRef NodeList)
webkit_dom_html_text_area_element_get_labels = undefined
#endif
 
htmlTextAreaElementGetLabels ::
                             (HTMLTextAreaElementClass self) => self -> IO (Maybe NodeList)
htmlTextAreaElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_html_text_area_element_get_labels
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectionStart\"] = $2;"
        webkit_dom_html_text_area_element_set_selection_start ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
webkit_dom_html_text_area_element_set_selection_start ::
                                                        JSRef HTMLTextAreaElement -> Int -> IO ()
webkit_dom_html_text_area_element_set_selection_start = undefined
#endif
 
htmlTextAreaElementSetSelectionStart ::
                                     (HTMLTextAreaElementClass self) => self -> Int -> IO ()
htmlTextAreaElementSetSelectionStart self val
  = webkit_dom_html_text_area_element_set_selection_start
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectionStart\"]"
        webkit_dom_html_text_area_element_get_selection_start ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
webkit_dom_html_text_area_element_get_selection_start ::
                                                        JSRef HTMLTextAreaElement -> IO Int
webkit_dom_html_text_area_element_get_selection_start = undefined
#endif
 
htmlTextAreaElementGetSelectionStart ::
                                     (HTMLTextAreaElementClass self) => self -> IO Int
htmlTextAreaElementGetSelectionStart self
  = webkit_dom_html_text_area_element_get_selection_start
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectionEnd\"] = $2;"
        webkit_dom_html_text_area_element_set_selection_end ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
webkit_dom_html_text_area_element_set_selection_end ::
                                                      JSRef HTMLTextAreaElement -> Int -> IO ()
webkit_dom_html_text_area_element_set_selection_end = undefined
#endif
 
htmlTextAreaElementSetSelectionEnd ::
                                   (HTMLTextAreaElementClass self) => self -> Int -> IO ()
htmlTextAreaElementSetSelectionEnd self val
  = webkit_dom_html_text_area_element_set_selection_end
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectionEnd\"]"
        webkit_dom_html_text_area_element_get_selection_end ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
webkit_dom_html_text_area_element_get_selection_end ::
                                                      JSRef HTMLTextAreaElement -> IO Int
webkit_dom_html_text_area_element_get_selection_end = undefined
#endif
 
htmlTextAreaElementGetSelectionEnd ::
                                   (HTMLTextAreaElementClass self) => self -> IO Int
htmlTextAreaElementGetSelectionEnd self
  = webkit_dom_html_text_area_element_get_selection_end
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectionDirection\"] = $2;"
        webkit_dom_html_text_area_element_set_selection_direction ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_text_area_element_set_selection_direction ::
                                                            JSRef HTMLTextAreaElement ->
                                                              JSString -> IO ()
webkit_dom_html_text_area_element_set_selection_direction
  = undefined
#endif
 
htmlTextAreaElementSetSelectionDirection ::
                                         (HTMLTextAreaElementClass self, ToJSString val) =>
                                           self -> val -> IO ()
htmlTextAreaElementSetSelectionDirection self val
  = webkit_dom_html_text_area_element_set_selection_direction
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectionDirection\"]"
        webkit_dom_html_text_area_element_get_selection_direction ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
webkit_dom_html_text_area_element_get_selection_direction ::
                                                            JSRef HTMLTextAreaElement -> IO JSString
webkit_dom_html_text_area_element_get_selection_direction
  = undefined
#endif
 
htmlTextAreaElementGetSelectionDirection ::
                                         (HTMLTextAreaElementClass self, FromJSString result) =>
                                           self -> IO result
htmlTextAreaElementGetSelectionDirection self
  = fromJSString <$>
      (webkit_dom_html_text_area_element_get_selection_direction
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))