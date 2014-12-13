{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTextAreaElement
       (ghcjs_dom_html_text_area_element_check_validity,
        htmlTextAreaElementCheckValidity,
        ghcjs_dom_html_text_area_element_set_custom_validity,
        htmlTextAreaElementSetCustomValidity,
        ghcjs_dom_html_text_area_element_select, htmlTextAreaElementSelect,
        ghcjs_dom_html_text_area_element_set_range_text,
        htmlTextAreaElementSetRangeText,
        ghcjs_dom_html_text_area_element_set_range_text4,
        htmlTextAreaElementSetRangeText4,
        ghcjs_dom_html_text_area_element_set_selection_range,
        htmlTextAreaElementSetSelectionRange,
        ghcjs_dom_html_text_area_element_set_autofocus,
        htmlTextAreaElementSetAutofocus,
        ghcjs_dom_html_text_area_element_get_autofocus,
        htmlTextAreaElementGetAutofocus,
        ghcjs_dom_html_text_area_element_set_cols,
        htmlTextAreaElementSetCols,
        ghcjs_dom_html_text_area_element_get_cols,
        htmlTextAreaElementGetCols,
        ghcjs_dom_html_text_area_element_set_dir_name,
        htmlTextAreaElementSetDirName,
        ghcjs_dom_html_text_area_element_get_dir_name,
        htmlTextAreaElementGetDirName,
        ghcjs_dom_html_text_area_element_set_disabled,
        htmlTextAreaElementSetDisabled,
        ghcjs_dom_html_text_area_element_get_disabled,
        htmlTextAreaElementGetDisabled,
        ghcjs_dom_html_text_area_element_get_form,
        htmlTextAreaElementGetForm,
        ghcjs_dom_html_text_area_element_set_max_length,
        htmlTextAreaElementSetMaxLength,
        ghcjs_dom_html_text_area_element_get_max_length,
        htmlTextAreaElementGetMaxLength,
        ghcjs_dom_html_text_area_element_set_name,
        htmlTextAreaElementSetName,
        ghcjs_dom_html_text_area_element_get_name,
        htmlTextAreaElementGetName,
        ghcjs_dom_html_text_area_element_set_placeholder,
        htmlTextAreaElementSetPlaceholder,
        ghcjs_dom_html_text_area_element_get_placeholder,
        htmlTextAreaElementGetPlaceholder,
        ghcjs_dom_html_text_area_element_set_read_only,
        htmlTextAreaElementSetReadOnly,
        ghcjs_dom_html_text_area_element_get_read_only,
        htmlTextAreaElementGetReadOnly,
        ghcjs_dom_html_text_area_element_set_required,
        htmlTextAreaElementSetRequired,
        ghcjs_dom_html_text_area_element_get_required,
        htmlTextAreaElementGetRequired,
        ghcjs_dom_html_text_area_element_set_rows,
        htmlTextAreaElementSetRows,
        ghcjs_dom_html_text_area_element_get_rows,
        htmlTextAreaElementGetRows,
        ghcjs_dom_html_text_area_element_set_wrap,
        htmlTextAreaElementSetWrap,
        ghcjs_dom_html_text_area_element_get_wrap,
        htmlTextAreaElementGetWrap,
        ghcjs_dom_html_text_area_element_set_default_value,
        htmlTextAreaElementSetDefaultValue,
        ghcjs_dom_html_text_area_element_get_default_value,
        htmlTextAreaElementGetDefaultValue,
        ghcjs_dom_html_text_area_element_set_value,
        htmlTextAreaElementSetValue,
        ghcjs_dom_html_text_area_element_get_value,
        htmlTextAreaElementGetValue,
        ghcjs_dom_html_text_area_element_get_text_length,
        htmlTextAreaElementGetTextLength,
        ghcjs_dom_html_text_area_element_get_will_validate,
        htmlTextAreaElementGetWillValidate,
        ghcjs_dom_html_text_area_element_get_validity,
        htmlTextAreaElementGetValidity,
        ghcjs_dom_html_text_area_element_get_validation_message,
        htmlTextAreaElementGetValidationMessage,
        ghcjs_dom_html_text_area_element_get_labels,
        htmlTextAreaElementGetLabels,
        ghcjs_dom_html_text_area_element_set_selection_start,
        htmlTextAreaElementSetSelectionStart,
        ghcjs_dom_html_text_area_element_get_selection_start,
        htmlTextAreaElementGetSelectionStart,
        ghcjs_dom_html_text_area_element_set_selection_end,
        htmlTextAreaElementSetSelectionEnd,
        ghcjs_dom_html_text_area_element_get_selection_end,
        htmlTextAreaElementGetSelectionEnd,
        ghcjs_dom_html_text_area_element_set_selection_direction,
        htmlTextAreaElementSetSelectionDirection,
        ghcjs_dom_html_text_area_element_get_selection_direction,
        htmlTextAreaElementGetSelectionDirection,
        ghcjs_dom_html_text_area_element_set_autocorrect,
        htmlTextAreaElementSetAutocorrect,
        ghcjs_dom_html_text_area_element_get_autocorrect,
        htmlTextAreaElementGetAutocorrect,
        ghcjs_dom_html_text_area_element_set_autocapitalize,
        htmlTextAreaElementSetAutocapitalize,
        ghcjs_dom_html_text_area_element_get_autocapitalize,
        htmlTextAreaElementGetAutocapitalize, HTMLTextAreaElement,
        IsHTMLTextAreaElement, castToHTMLTextAreaElement,
        gTypeHTMLTextAreaElement, toHTMLTextAreaElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_text_area_element_check_validity ::
        JSRef HTMLTextAreaElement -> IO Bool
#else 
ghcjs_dom_html_text_area_element_check_validity ::
                                                  JSRef HTMLTextAreaElement -> IO Bool
ghcjs_dom_html_text_area_element_check_validity = undefined
#endif
 
htmlTextAreaElementCheckValidity ::
                                 (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementCheckValidity self
  = ghcjs_dom_html_text_area_element_check_validity
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_text_area_element_set_custom_validity ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_custom_validity ::
                                                       JSRef HTMLTextAreaElement ->
                                                         JSString -> IO ()
ghcjs_dom_html_text_area_element_set_custom_validity = undefined
#endif
 
htmlTextAreaElementSetCustomValidity ::
                                     (IsHTMLTextAreaElement self, ToJSString error) =>
                                       self -> error -> IO ()
htmlTextAreaElementSetCustomValidity self error
  = ghcjs_dom_html_text_area_element_set_custom_validity
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString error)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"select\"]()"
        ghcjs_dom_html_text_area_element_select ::
        JSRef HTMLTextAreaElement -> IO ()
#else 
ghcjs_dom_html_text_area_element_select ::
                                          JSRef HTMLTextAreaElement -> IO ()
ghcjs_dom_html_text_area_element_select = undefined
#endif
 
htmlTextAreaElementSelect ::
                          (IsHTMLTextAreaElement self) => self -> IO ()
htmlTextAreaElementSelect self
  = ghcjs_dom_html_text_area_element_select
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setRangeText\"]($2)"
        ghcjs_dom_html_text_area_element_set_range_text ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_range_text ::
                                                  JSRef HTMLTextAreaElement -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_range_text = undefined
#endif
 
htmlTextAreaElementSetRangeText ::
                                (IsHTMLTextAreaElement self, ToJSString replacement) =>
                                  self -> replacement -> IO ()
htmlTextAreaElementSetRangeText self replacement
  = ghcjs_dom_html_text_area_element_set_range_text
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString replacement)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"setRangeText\"]($2, $3, $4,\n$5)"
        ghcjs_dom_html_text_area_element_set_range_text4 ::
        JSRef HTMLTextAreaElement ->
          JSString -> Word -> Word -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_range_text4 ::
                                                   JSRef HTMLTextAreaElement ->
                                                     JSString -> Word -> Word -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_range_text4 = undefined
#endif
 
htmlTextAreaElementSetRangeText4 ::
                                 (IsHTMLTextAreaElement self, ToJSString replacement,
                                  ToJSString selectionMode) =>
                                   self -> replacement -> Word -> Word -> selectionMode -> IO ()
htmlTextAreaElementSetRangeText4 self replacement start end
  selectionMode
  = ghcjs_dom_html_text_area_element_set_range_text4
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString replacement)
      start
      end
      (toJSString selectionMode)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"setSelectionRange\"]($2, $3,\n$4)"
        ghcjs_dom_html_text_area_element_set_selection_range ::
        JSRef HTMLTextAreaElement -> Int -> Int -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_selection_range ::
                                                       JSRef HTMLTextAreaElement ->
                                                         Int -> Int -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_selection_range = undefined
#endif
 
htmlTextAreaElementSetSelectionRange ::
                                     (IsHTMLTextAreaElement self, ToJSString direction) =>
                                       self -> Int -> Int -> direction -> IO ()
htmlTextAreaElementSetSelectionRange self start end direction
  = ghcjs_dom_html_text_area_element_set_selection_range
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      start
      end
      (toJSString direction)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_text_area_element_set_autofocus ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_autofocus ::
                                                 JSRef HTMLTextAreaElement -> Bool -> IO ()
ghcjs_dom_html_text_area_element_set_autofocus = undefined
#endif
 
htmlTextAreaElementSetAutofocus ::
                                (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetAutofocus self val
  = ghcjs_dom_html_text_area_element_set_autofocus
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_autofocus ::
        JSRef HTMLTextAreaElement -> IO Bool
#else 
ghcjs_dom_html_text_area_element_get_autofocus ::
                                                 JSRef HTMLTextAreaElement -> IO Bool
ghcjs_dom_html_text_area_element_get_autofocus = undefined
#endif
 
htmlTextAreaElementGetAutofocus ::
                                (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetAutofocus self
  = ghcjs_dom_html_text_area_element_get_autofocus
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"cols\"] = $2;"
        ghcjs_dom_html_text_area_element_set_cols ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_cols ::
                                            JSRef HTMLTextAreaElement -> Int -> IO ()
ghcjs_dom_html_text_area_element_set_cols = undefined
#endif
 
htmlTextAreaElementSetCols ::
                           (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetCols self val
  = ghcjs_dom_html_text_area_element_set_cols
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"cols\"]"
        ghcjs_dom_html_text_area_element_get_cols ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
ghcjs_dom_html_text_area_element_get_cols ::
                                            JSRef HTMLTextAreaElement -> IO Int
ghcjs_dom_html_text_area_element_get_cols = undefined
#endif
 
htmlTextAreaElementGetCols ::
                           (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetCols self
  = ghcjs_dom_html_text_area_element_get_cols
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"dirName\"] = $2;"
        ghcjs_dom_html_text_area_element_set_dir_name ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_dir_name ::
                                                JSRef HTMLTextAreaElement -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_dir_name = undefined
#endif
 
htmlTextAreaElementSetDirName ::
                              (IsHTMLTextAreaElement self, ToJSString val) =>
                                self -> val -> IO ()
htmlTextAreaElementSetDirName self val
  = ghcjs_dom_html_text_area_element_set_dir_name
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"dirName\"]"
        ghcjs_dom_html_text_area_element_get_dir_name ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
ghcjs_dom_html_text_area_element_get_dir_name ::
                                                JSRef HTMLTextAreaElement -> IO JSString
ghcjs_dom_html_text_area_element_get_dir_name = undefined
#endif
 
htmlTextAreaElementGetDirName ::
                              (IsHTMLTextAreaElement self, FromJSString result) =>
                                self -> IO result
htmlTextAreaElementGetDirName self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_dir_name
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_text_area_element_set_disabled ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_disabled ::
                                                JSRef HTMLTextAreaElement -> Bool -> IO ()
ghcjs_dom_html_text_area_element_set_disabled = undefined
#endif
 
htmlTextAreaElementSetDisabled ::
                               (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetDisabled self val
  = ghcjs_dom_html_text_area_element_set_disabled
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_disabled ::
        JSRef HTMLTextAreaElement -> IO Bool
#else 
ghcjs_dom_html_text_area_element_get_disabled ::
                                                JSRef HTMLTextAreaElement -> IO Bool
ghcjs_dom_html_text_area_element_get_disabled = undefined
#endif
 
htmlTextAreaElementGetDisabled ::
                               (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetDisabled self
  = ghcjs_dom_html_text_area_element_get_disabled
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_text_area_element_get_form ::
        JSRef HTMLTextAreaElement -> IO (JSRef HTMLFormElement)
#else 
ghcjs_dom_html_text_area_element_get_form ::
                                            JSRef HTMLTextAreaElement -> IO (JSRef HTMLFormElement)
ghcjs_dom_html_text_area_element_get_form = undefined
#endif
 
htmlTextAreaElementGetForm ::
                           (IsHTMLTextAreaElement self) => self -> IO (Maybe HTMLFormElement)
htmlTextAreaElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_text_area_element_get_form
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"maxLength\"] = $2;"
        ghcjs_dom_html_text_area_element_set_max_length ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_max_length ::
                                                  JSRef HTMLTextAreaElement -> Int -> IO ()
ghcjs_dom_html_text_area_element_set_max_length = undefined
#endif
 
htmlTextAreaElementSetMaxLength ::
                                (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetMaxLength self val
  = ghcjs_dom_html_text_area_element_set_max_length
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"maxLength\"]"
        ghcjs_dom_html_text_area_element_get_max_length ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
ghcjs_dom_html_text_area_element_get_max_length ::
                                                  JSRef HTMLTextAreaElement -> IO Int
ghcjs_dom_html_text_area_element_get_max_length = undefined
#endif
 
htmlTextAreaElementGetMaxLength ::
                                (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetMaxLength self
  = ghcjs_dom_html_text_area_element_get_max_length
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_text_area_element_set_name ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_name ::
                                            JSRef HTMLTextAreaElement -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_name = undefined
#endif
 
htmlTextAreaElementSetName ::
                           (IsHTMLTextAreaElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlTextAreaElementSetName self val
  = ghcjs_dom_html_text_area_element_set_name
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_text_area_element_get_name ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
ghcjs_dom_html_text_area_element_get_name ::
                                            JSRef HTMLTextAreaElement -> IO JSString
ghcjs_dom_html_text_area_element_get_name = undefined
#endif
 
htmlTextAreaElementGetName ::
                           (IsHTMLTextAreaElement self, FromJSString result) =>
                             self -> IO result
htmlTextAreaElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_name
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"placeholder\"] = $2;"
        ghcjs_dom_html_text_area_element_set_placeholder ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_placeholder ::
                                                   JSRef HTMLTextAreaElement -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_placeholder = undefined
#endif
 
htmlTextAreaElementSetPlaceholder ::
                                  (IsHTMLTextAreaElement self, ToJSString val) =>
                                    self -> val -> IO ()
htmlTextAreaElementSetPlaceholder self val
  = ghcjs_dom_html_text_area_element_set_placeholder
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"placeholder\"]"
        ghcjs_dom_html_text_area_element_get_placeholder ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
ghcjs_dom_html_text_area_element_get_placeholder ::
                                                   JSRef HTMLTextAreaElement -> IO JSString
ghcjs_dom_html_text_area_element_get_placeholder = undefined
#endif
 
htmlTextAreaElementGetPlaceholder ::
                                  (IsHTMLTextAreaElement self, FromJSString result) =>
                                    self -> IO result
htmlTextAreaElementGetPlaceholder self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_placeholder
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"readOnly\"] = $2;"
        ghcjs_dom_html_text_area_element_set_read_only ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_read_only ::
                                                 JSRef HTMLTextAreaElement -> Bool -> IO ()
ghcjs_dom_html_text_area_element_set_read_only = undefined
#endif
 
htmlTextAreaElementSetReadOnly ::
                               (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetReadOnly self val
  = ghcjs_dom_html_text_area_element_set_read_only
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"readOnly\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_read_only ::
        JSRef HTMLTextAreaElement -> IO Bool
#else 
ghcjs_dom_html_text_area_element_get_read_only ::
                                                 JSRef HTMLTextAreaElement -> IO Bool
ghcjs_dom_html_text_area_element_get_read_only = undefined
#endif
 
htmlTextAreaElementGetReadOnly ::
                               (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetReadOnly self
  = ghcjs_dom_html_text_area_element_get_read_only
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        ghcjs_dom_html_text_area_element_set_required ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_required ::
                                                JSRef HTMLTextAreaElement -> Bool -> IO ()
ghcjs_dom_html_text_area_element_set_required = undefined
#endif
 
htmlTextAreaElementSetRequired ::
                               (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetRequired self val
  = ghcjs_dom_html_text_area_element_set_required
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_required ::
        JSRef HTMLTextAreaElement -> IO Bool
#else 
ghcjs_dom_html_text_area_element_get_required ::
                                                JSRef HTMLTextAreaElement -> IO Bool
ghcjs_dom_html_text_area_element_get_required = undefined
#endif
 
htmlTextAreaElementGetRequired ::
                               (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetRequired self
  = ghcjs_dom_html_text_area_element_get_required
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"rows\"] = $2;"
        ghcjs_dom_html_text_area_element_set_rows ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_rows ::
                                            JSRef HTMLTextAreaElement -> Int -> IO ()
ghcjs_dom_html_text_area_element_set_rows = undefined
#endif
 
htmlTextAreaElementSetRows ::
                           (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetRows self val
  = ghcjs_dom_html_text_area_element_set_rows
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_html_text_area_element_get_rows ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
ghcjs_dom_html_text_area_element_get_rows ::
                                            JSRef HTMLTextAreaElement -> IO Int
ghcjs_dom_html_text_area_element_get_rows = undefined
#endif
 
htmlTextAreaElementGetRows ::
                           (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetRows self
  = ghcjs_dom_html_text_area_element_get_rows
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"wrap\"] = $2;"
        ghcjs_dom_html_text_area_element_set_wrap ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_wrap ::
                                            JSRef HTMLTextAreaElement -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_wrap = undefined
#endif
 
htmlTextAreaElementSetWrap ::
                           (IsHTMLTextAreaElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlTextAreaElementSetWrap self val
  = ghcjs_dom_html_text_area_element_set_wrap
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"wrap\"]"
        ghcjs_dom_html_text_area_element_get_wrap ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
ghcjs_dom_html_text_area_element_get_wrap ::
                                            JSRef HTMLTextAreaElement -> IO JSString
ghcjs_dom_html_text_area_element_get_wrap = undefined
#endif
 
htmlTextAreaElementGetWrap ::
                           (IsHTMLTextAreaElement self, FromJSString result) =>
                             self -> IO result
htmlTextAreaElementGetWrap self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_wrap
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        ghcjs_dom_html_text_area_element_set_default_value ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_default_value ::
                                                     JSRef HTMLTextAreaElement -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_default_value = undefined
#endif
 
htmlTextAreaElementSetDefaultValue ::
                                   (IsHTMLTextAreaElement self, ToJSString val) =>
                                     self -> val -> IO ()
htmlTextAreaElementSetDefaultValue self val
  = ghcjs_dom_html_text_area_element_set_default_value
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        ghcjs_dom_html_text_area_element_get_default_value ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
ghcjs_dom_html_text_area_element_get_default_value ::
                                                     JSRef HTMLTextAreaElement -> IO JSString
ghcjs_dom_html_text_area_element_get_default_value = undefined
#endif
 
htmlTextAreaElementGetDefaultValue ::
                                   (IsHTMLTextAreaElement self, FromJSString result) =>
                                     self -> IO result
htmlTextAreaElementGetDefaultValue self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_default_value
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_text_area_element_set_value ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_value ::
                                             JSRef HTMLTextAreaElement -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_value = undefined
#endif
 
htmlTextAreaElementSetValue ::
                            (IsHTMLTextAreaElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlTextAreaElementSetValue self val
  = ghcjs_dom_html_text_area_element_set_value
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_text_area_element_get_value ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
ghcjs_dom_html_text_area_element_get_value ::
                                             JSRef HTMLTextAreaElement -> IO JSString
ghcjs_dom_html_text_area_element_get_value = undefined
#endif
 
htmlTextAreaElementGetValue ::
                            (IsHTMLTextAreaElement self, FromJSString result) =>
                              self -> IO result
htmlTextAreaElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_value
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"textLength\"]"
        ghcjs_dom_html_text_area_element_get_text_length ::
        JSRef HTMLTextAreaElement -> IO Word
#else 
ghcjs_dom_html_text_area_element_get_text_length ::
                                                   JSRef HTMLTextAreaElement -> IO Word
ghcjs_dom_html_text_area_element_get_text_length = undefined
#endif
 
htmlTextAreaElementGetTextLength ::
                                 (IsHTMLTextAreaElement self) => self -> IO Word
htmlTextAreaElementGetTextLength self
  = ghcjs_dom_html_text_area_element_get_text_length
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_will_validate ::
        JSRef HTMLTextAreaElement -> IO Bool
#else 
ghcjs_dom_html_text_area_element_get_will_validate ::
                                                     JSRef HTMLTextAreaElement -> IO Bool
ghcjs_dom_html_text_area_element_get_will_validate = undefined
#endif
 
htmlTextAreaElementGetWillValidate ::
                                   (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetWillValidate self
  = ghcjs_dom_html_text_area_element_get_will_validate
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_text_area_element_get_validity ::
        JSRef HTMLTextAreaElement -> IO (JSRef ValidityState)
#else 
ghcjs_dom_html_text_area_element_get_validity ::
                                                JSRef HTMLTextAreaElement ->
                                                  IO (JSRef ValidityState)
ghcjs_dom_html_text_area_element_get_validity = undefined
#endif
 
htmlTextAreaElementGetValidity ::
                               (IsHTMLTextAreaElement self) => self -> IO (Maybe ValidityState)
htmlTextAreaElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (ghcjs_dom_html_text_area_element_get_validity
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_text_area_element_get_validation_message ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
ghcjs_dom_html_text_area_element_get_validation_message ::
                                                          JSRef HTMLTextAreaElement -> IO JSString
ghcjs_dom_html_text_area_element_get_validation_message = undefined
#endif
 
htmlTextAreaElementGetValidationMessage ::
                                        (IsHTMLTextAreaElement self, FromJSString result) =>
                                          self -> IO result
htmlTextAreaElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_validation_message
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_text_area_element_get_labels ::
        JSRef HTMLTextAreaElement -> IO (JSRef NodeList)
#else 
ghcjs_dom_html_text_area_element_get_labels ::
                                              JSRef HTMLTextAreaElement -> IO (JSRef NodeList)
ghcjs_dom_html_text_area_element_get_labels = undefined
#endif
 
htmlTextAreaElementGetLabels ::
                             (IsHTMLTextAreaElement self) => self -> IO (Maybe NodeList)
htmlTextAreaElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_html_text_area_element_get_labels
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"selectionStart\"] = $2;"
        ghcjs_dom_html_text_area_element_set_selection_start ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_selection_start ::
                                                       JSRef HTMLTextAreaElement -> Int -> IO ()
ghcjs_dom_html_text_area_element_set_selection_start = undefined
#endif
 
htmlTextAreaElementSetSelectionStart ::
                                     (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetSelectionStart self val
  = ghcjs_dom_html_text_area_element_set_selection_start
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"selectionStart\"]"
        ghcjs_dom_html_text_area_element_get_selection_start ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
ghcjs_dom_html_text_area_element_get_selection_start ::
                                                       JSRef HTMLTextAreaElement -> IO Int
ghcjs_dom_html_text_area_element_get_selection_start = undefined
#endif
 
htmlTextAreaElementGetSelectionStart ::
                                     (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetSelectionStart self
  = ghcjs_dom_html_text_area_element_get_selection_start
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"selectionEnd\"] = $2;"
        ghcjs_dom_html_text_area_element_set_selection_end ::
        JSRef HTMLTextAreaElement -> Int -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_selection_end ::
                                                     JSRef HTMLTextAreaElement -> Int -> IO ()
ghcjs_dom_html_text_area_element_set_selection_end = undefined
#endif
 
htmlTextAreaElementSetSelectionEnd ::
                                   (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetSelectionEnd self val
  = ghcjs_dom_html_text_area_element_set_selection_end
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"selectionEnd\"]"
        ghcjs_dom_html_text_area_element_get_selection_end ::
        JSRef HTMLTextAreaElement -> IO Int
#else 
ghcjs_dom_html_text_area_element_get_selection_end ::
                                                     JSRef HTMLTextAreaElement -> IO Int
ghcjs_dom_html_text_area_element_get_selection_end = undefined
#endif
 
htmlTextAreaElementGetSelectionEnd ::
                                   (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetSelectionEnd self
  = ghcjs_dom_html_text_area_element_get_selection_end
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"selectionDirection\"] = $2;"
        ghcjs_dom_html_text_area_element_set_selection_direction ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_selection_direction ::
                                                           JSRef HTMLTextAreaElement ->
                                                             JSString -> IO ()
ghcjs_dom_html_text_area_element_set_selection_direction
  = undefined
#endif
 
htmlTextAreaElementSetSelectionDirection ::
                                         (IsHTMLTextAreaElement self, ToJSString val) =>
                                           self -> val -> IO ()
htmlTextAreaElementSetSelectionDirection self val
  = ghcjs_dom_html_text_area_element_set_selection_direction
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"selectionDirection\"]"
        ghcjs_dom_html_text_area_element_get_selection_direction ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
ghcjs_dom_html_text_area_element_get_selection_direction ::
                                                           JSRef HTMLTextAreaElement -> IO JSString
ghcjs_dom_html_text_area_element_get_selection_direction
  = undefined
#endif
 
htmlTextAreaElementGetSelectionDirection ::
                                         (IsHTMLTextAreaElement self, FromJSString result) =>
                                           self -> IO result
htmlTextAreaElementGetSelectionDirection self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_selection_direction
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        ghcjs_dom_html_text_area_element_set_autocorrect ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_autocorrect ::
                                                   JSRef HTMLTextAreaElement -> Bool -> IO ()
ghcjs_dom_html_text_area_element_set_autocorrect = undefined
#endif
 
htmlTextAreaElementSetAutocorrect ::
                                  (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetAutocorrect self val
  = ghcjs_dom_html_text_area_element_set_autocorrect
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_autocorrect ::
        JSRef HTMLTextAreaElement -> IO Bool
#else 
ghcjs_dom_html_text_area_element_get_autocorrect ::
                                                   JSRef HTMLTextAreaElement -> IO Bool
ghcjs_dom_html_text_area_element_get_autocorrect = undefined
#endif
 
htmlTextAreaElementGetAutocorrect ::
                                  (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetAutocorrect self
  = ghcjs_dom_html_text_area_element_get_autocorrect
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        ghcjs_dom_html_text_area_element_set_autocapitalize ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_text_area_element_set_autocapitalize ::
                                                      JSRef HTMLTextAreaElement -> JSString -> IO ()
ghcjs_dom_html_text_area_element_set_autocapitalize = undefined
#endif
 
htmlTextAreaElementSetAutocapitalize ::
                                     (IsHTMLTextAreaElement self, ToJSString val) =>
                                       self -> val -> IO ()
htmlTextAreaElementSetAutocapitalize self val
  = ghcjs_dom_html_text_area_element_set_autocapitalize
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        ghcjs_dom_html_text_area_element_get_autocapitalize ::
        JSRef HTMLTextAreaElement -> IO JSString
#else 
ghcjs_dom_html_text_area_element_get_autocapitalize ::
                                                      JSRef HTMLTextAreaElement -> IO JSString
ghcjs_dom_html_text_area_element_get_autocapitalize = undefined
#endif
 
htmlTextAreaElementGetAutocapitalize ::
                                     (IsHTMLTextAreaElement self, FromJSString result) =>
                                       self -> IO result
htmlTextAreaElementGetAutocapitalize self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_autocapitalize
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
#else
module GHCJS.DOM.HTMLTextAreaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTextAreaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTextAreaElement
#endif
