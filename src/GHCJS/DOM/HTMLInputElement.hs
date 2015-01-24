{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLInputElement
       (ghcjs_dom_html_input_element_step_up, htmlInputElementStepUp,
        ghcjs_dom_html_input_element_step_down, htmlInputElementStepDown,
        ghcjs_dom_html_input_element_check_validity,
        htmlInputElementCheckValidity,
        ghcjs_dom_html_input_element_set_custom_validity,
        htmlInputElementSetCustomValidity,
        ghcjs_dom_html_input_element_select, htmlInputElementSelect,
        ghcjs_dom_html_input_element_set_range_text,
        htmlInputElementSetRangeText,
        ghcjs_dom_html_input_element_set_range_text4,
        htmlInputElementSetRangeText4,
        ghcjs_dom_html_input_element_set_selection_range,
        htmlInputElementSetSelectionRange,
        ghcjs_dom_html_input_element_set_value_for_user,
        htmlInputElementSetValueForUser,
        ghcjs_dom_html_input_element_set_accept, htmlInputElementSetAccept,
        ghcjs_dom_html_input_element_get_accept, htmlInputElementGetAccept,
        ghcjs_dom_html_input_element_set_alt, htmlInputElementSetAlt,
        ghcjs_dom_html_input_element_get_alt, htmlInputElementGetAlt,
        ghcjs_dom_html_input_element_set_autocomplete,
        htmlInputElementSetAutocomplete,
        ghcjs_dom_html_input_element_get_autocomplete,
        htmlInputElementGetAutocomplete,
        ghcjs_dom_html_input_element_set_autofocus,
        htmlInputElementSetAutofocus,
        ghcjs_dom_html_input_element_get_autofocus,
        htmlInputElementGetAutofocus,
        ghcjs_dom_html_input_element_set_default_checked,
        htmlInputElementSetDefaultChecked,
        ghcjs_dom_html_input_element_get_default_checked,
        htmlInputElementGetDefaultChecked,
        ghcjs_dom_html_input_element_set_checked,
        htmlInputElementSetChecked,
        ghcjs_dom_html_input_element_get_checked,
        htmlInputElementGetChecked,
        ghcjs_dom_html_input_element_set_dir_name,
        htmlInputElementSetDirName,
        ghcjs_dom_html_input_element_get_dir_name,
        htmlInputElementGetDirName,
        ghcjs_dom_html_input_element_set_disabled,
        htmlInputElementSetDisabled,
        ghcjs_dom_html_input_element_get_disabled,
        htmlInputElementGetDisabled, ghcjs_dom_html_input_element_get_form,
        htmlInputElementGetForm, ghcjs_dom_html_input_element_set_files,
        htmlInputElementSetFiles, ghcjs_dom_html_input_element_get_files,
        htmlInputElementGetFiles,
        ghcjs_dom_html_input_element_set_form_action,
        htmlInputElementSetFormAction,
        ghcjs_dom_html_input_element_get_form_action,
        htmlInputElementGetFormAction,
        ghcjs_dom_html_input_element_set_form_enctype,
        htmlInputElementSetFormEnctype,
        ghcjs_dom_html_input_element_get_form_enctype,
        htmlInputElementGetFormEnctype,
        ghcjs_dom_html_input_element_set_form_method,
        htmlInputElementSetFormMethod,
        ghcjs_dom_html_input_element_get_form_method,
        htmlInputElementGetFormMethod,
        ghcjs_dom_html_input_element_set_form_no_validate,
        htmlInputElementSetFormNoValidate,
        ghcjs_dom_html_input_element_get_form_no_validate,
        htmlInputElementGetFormNoValidate,
        ghcjs_dom_html_input_element_set_form_target,
        htmlInputElementSetFormTarget,
        ghcjs_dom_html_input_element_get_form_target,
        htmlInputElementGetFormTarget,
        ghcjs_dom_html_input_element_set_height, htmlInputElementSetHeight,
        ghcjs_dom_html_input_element_get_height, htmlInputElementGetHeight,
        ghcjs_dom_html_input_element_set_indeterminate,
        htmlInputElementSetIndeterminate,
        ghcjs_dom_html_input_element_get_indeterminate,
        htmlInputElementGetIndeterminate,
        ghcjs_dom_html_input_element_get_list, htmlInputElementGetList,
        ghcjs_dom_html_input_element_set_max, htmlInputElementSetMax,
        ghcjs_dom_html_input_element_get_max, htmlInputElementGetMax,
        ghcjs_dom_html_input_element_set_max_length,
        htmlInputElementSetMaxLength,
        ghcjs_dom_html_input_element_get_max_length,
        htmlInputElementGetMaxLength, ghcjs_dom_html_input_element_set_min,
        htmlInputElementSetMin, ghcjs_dom_html_input_element_get_min,
        htmlInputElementGetMin, ghcjs_dom_html_input_element_set_multiple,
        htmlInputElementSetMultiple,
        ghcjs_dom_html_input_element_get_multiple,
        htmlInputElementGetMultiple, ghcjs_dom_html_input_element_set_name,
        htmlInputElementSetName, ghcjs_dom_html_input_element_get_name,
        htmlInputElementGetName, ghcjs_dom_html_input_element_set_pattern,
        htmlInputElementSetPattern,
        ghcjs_dom_html_input_element_get_pattern,
        htmlInputElementGetPattern,
        ghcjs_dom_html_input_element_set_placeholder,
        htmlInputElementSetPlaceholder,
        ghcjs_dom_html_input_element_get_placeholder,
        htmlInputElementGetPlaceholder,
        ghcjs_dom_html_input_element_set_read_only,
        htmlInputElementSetReadOnly,
        ghcjs_dom_html_input_element_get_read_only,
        htmlInputElementGetReadOnly,
        ghcjs_dom_html_input_element_set_required,
        htmlInputElementSetRequired,
        ghcjs_dom_html_input_element_get_required,
        htmlInputElementGetRequired, ghcjs_dom_html_input_element_set_size,
        htmlInputElementSetSize, ghcjs_dom_html_input_element_get_size,
        htmlInputElementGetSize, ghcjs_dom_html_input_element_set_src,
        htmlInputElementSetSrc, ghcjs_dom_html_input_element_get_src,
        htmlInputElementGetSrc, ghcjs_dom_html_input_element_set_step,
        htmlInputElementSetStep, ghcjs_dom_html_input_element_get_step,
        htmlInputElementGetStep,
        ghcjs_dom_html_input_element_set_default_value,
        htmlInputElementSetDefaultValue,
        ghcjs_dom_html_input_element_get_default_value,
        htmlInputElementGetDefaultValue,
        ghcjs_dom_html_input_element_set_value, htmlInputElementSetValue,
        ghcjs_dom_html_input_element_get_value, htmlInputElementGetValue,
        ghcjs_dom_html_input_element_set_value_as_number,
        htmlInputElementSetValueAsNumber,
        ghcjs_dom_html_input_element_get_value_as_number,
        htmlInputElementGetValueAsNumber,
        ghcjs_dom_html_input_element_set_width, htmlInputElementSetWidth,
        ghcjs_dom_html_input_element_get_width, htmlInputElementGetWidth,
        ghcjs_dom_html_input_element_get_will_validate,
        htmlInputElementGetWillValidate,
        ghcjs_dom_html_input_element_get_validity,
        htmlInputElementGetValidity,
        ghcjs_dom_html_input_element_get_validation_message,
        htmlInputElementGetValidationMessage,
        ghcjs_dom_html_input_element_get_labels, htmlInputElementGetLabels,
        ghcjs_dom_html_input_element_set_selection_start,
        htmlInputElementSetSelectionStart,
        ghcjs_dom_html_input_element_get_selection_start,
        htmlInputElementGetSelectionStart,
        ghcjs_dom_html_input_element_set_selection_end,
        htmlInputElementSetSelectionEnd,
        ghcjs_dom_html_input_element_get_selection_end,
        htmlInputElementGetSelectionEnd,
        ghcjs_dom_html_input_element_set_selection_direction,
        htmlInputElementSetSelectionDirection,
        ghcjs_dom_html_input_element_get_selection_direction,
        htmlInputElementGetSelectionDirection,
        ghcjs_dom_html_input_element_set_align, htmlInputElementSetAlign,
        ghcjs_dom_html_input_element_get_align, htmlInputElementGetAlign,
        ghcjs_dom_html_input_element_set_use_map,
        htmlInputElementSetUseMap,
        ghcjs_dom_html_input_element_get_use_map,
        htmlInputElementGetUseMap,
        ghcjs_dom_html_input_element_set_incremental,
        htmlInputElementSetIncremental,
        ghcjs_dom_html_input_element_get_incremental,
        htmlInputElementGetIncremental,
        ghcjs_dom_html_input_element_set_autocorrect,
        htmlInputElementSetAutocorrect,
        ghcjs_dom_html_input_element_get_autocorrect,
        htmlInputElementGetAutocorrect,
        ghcjs_dom_html_input_element_set_autocapitalize,
        htmlInputElementSetAutocapitalize,
        ghcjs_dom_html_input_element_get_autocapitalize,
        htmlInputElementGetAutocapitalize,
        ghcjs_dom_html_input_element_set_capture,
        htmlInputElementSetCapture,
        ghcjs_dom_html_input_element_get_capture,
        htmlInputElementGetCapture, HTMLInputElement, IsHTMLInputElement,
        castToHTMLInputElement, gTypeHTMLInputElement, toHTMLInputElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"stepUp\"]($2)"
        ghcjs_dom_html_input_element_step_up ::
        JSRef HTMLInputElement -> Int -> IO ()
 
htmlInputElementStepUp ::
                       (IsHTMLInputElement self) => self -> Int -> IO ()
htmlInputElementStepUp self n
  = ghcjs_dom_html_input_element_step_up
      (unHTMLInputElement (toHTMLInputElement self))
      n
 
foreign import javascript unsafe "$1[\"stepDown\"]($2)"
        ghcjs_dom_html_input_element_step_down ::
        JSRef HTMLInputElement -> Int -> IO ()
 
htmlInputElementStepDown ::
                         (IsHTMLInputElement self) => self -> Int -> IO ()
htmlInputElementStepDown self n
  = ghcjs_dom_html_input_element_step_down
      (unHTMLInputElement (toHTMLInputElement self))
      n
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_input_element_check_validity ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementCheckValidity ::
                              (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementCheckValidity self
  = ghcjs_dom_html_input_element_check_validity
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_input_element_set_custom_validity ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetCustomValidity ::
                                  (IsHTMLInputElement self, ToJSString error) =>
                                    self -> error -> IO ()
htmlInputElementSetCustomValidity self error
  = ghcjs_dom_html_input_element_set_custom_validity
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString error)
 
foreign import javascript unsafe "$1[\"select\"]()"
        ghcjs_dom_html_input_element_select ::
        JSRef HTMLInputElement -> IO ()
 
htmlInputElementSelect ::
                       (IsHTMLInputElement self) => self -> IO ()
htmlInputElementSelect self
  = ghcjs_dom_html_input_element_select
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"setRangeText\"]($2)"
        ghcjs_dom_html_input_element_set_range_text ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetRangeText ::
                             (IsHTMLInputElement self, ToJSString replacement) =>
                               self -> replacement -> IO ()
htmlInputElementSetRangeText self replacement
  = ghcjs_dom_html_input_element_set_range_text
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString replacement)
 
foreign import javascript unsafe
        "$1[\"setRangeText\"]($2, $3, $4,\n$5)"
        ghcjs_dom_html_input_element_set_range_text4 ::
        JSRef HTMLInputElement ->
          JSString -> Word -> Word -> JSString -> IO ()
 
htmlInputElementSetRangeText4 ::
                              (IsHTMLInputElement self, ToJSString replacement,
                               ToJSString selectionMode) =>
                                self -> replacement -> Word -> Word -> selectionMode -> IO ()
htmlInputElementSetRangeText4 self replacement start end
  selectionMode
  = ghcjs_dom_html_input_element_set_range_text4
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString replacement)
      start
      end
      (toJSString selectionMode)
 
foreign import javascript unsafe
        "$1[\"setSelectionRange\"]($2, $3,\n$4)"
        ghcjs_dom_html_input_element_set_selection_range ::
        JSRef HTMLInputElement -> Int -> Int -> JSString -> IO ()
 
htmlInputElementSetSelectionRange ::
                                  (IsHTMLInputElement self, ToJSString direction) =>
                                    self -> Int -> Int -> direction -> IO ()
htmlInputElementSetSelectionRange self start end direction
  = ghcjs_dom_html_input_element_set_selection_range
      (unHTMLInputElement (toHTMLInputElement self))
      start
      end
      (toJSString direction)
 
foreign import javascript unsafe "$1[\"setValueForUser\"]($2)"
        ghcjs_dom_html_input_element_set_value_for_user ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetValueForUser ::
                                (IsHTMLInputElement self, ToJSString value) =>
                                  self -> value -> IO ()
htmlInputElementSetValueForUser self value
  = ghcjs_dom_html_input_element_set_value_for_user
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString value)
 
foreign import javascript unsafe "$1[\"accept\"] = $2;"
        ghcjs_dom_html_input_element_set_accept ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetAccept ::
                          (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetAccept self val
  = ghcjs_dom_html_input_element_set_accept
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"accept\"]"
        ghcjs_dom_html_input_element_get_accept ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetAccept ::
                          (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetAccept self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_accept
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        ghcjs_dom_html_input_element_set_alt ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetAlt ::
                       (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetAlt self val
  = ghcjs_dom_html_input_element_set_alt
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"alt\"]"
        ghcjs_dom_html_input_element_get_alt ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetAlt ::
                       (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetAlt self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_alt
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        ghcjs_dom_html_input_element_set_autocomplete ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetAutocomplete ::
                                (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetAutocomplete self val
  = ghcjs_dom_html_input_element_set_autocomplete
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        ghcjs_dom_html_input_element_get_autocomplete ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetAutocomplete ::
                                (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetAutocomplete self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_autocomplete
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_input_element_set_autofocus ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetAutofocus ::
                             (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetAutofocus self val
  = ghcjs_dom_html_input_element_set_autofocus
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_autofocus ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetAutofocus ::
                             (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetAutofocus self
  = ghcjs_dom_html_input_element_get_autofocus
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"defaultChecked\"] = $2;"
        ghcjs_dom_html_input_element_set_default_checked ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetDefaultChecked ::
                                  (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetDefaultChecked self val
  = ghcjs_dom_html_input_element_set_default_checked
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"defaultChecked\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_default_checked ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetDefaultChecked ::
                                  (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetDefaultChecked self
  = ghcjs_dom_html_input_element_get_default_checked
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"checked\"] = $2;"
        ghcjs_dom_html_input_element_set_checked ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetChecked ::
                           (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetChecked self val
  = ghcjs_dom_html_input_element_set_checked
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"checked\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_checked ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetChecked ::
                           (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetChecked self
  = ghcjs_dom_html_input_element_get_checked
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"dirName\"] = $2;"
        ghcjs_dom_html_input_element_set_dir_name ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetDirName ::
                           (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetDirName self val
  = ghcjs_dom_html_input_element_set_dir_name
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"dirName\"]"
        ghcjs_dom_html_input_element_get_dir_name ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetDirName ::
                           (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetDirName self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_dir_name
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_input_element_set_disabled ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetDisabled ::
                            (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetDisabled self val
  = ghcjs_dom_html_input_element_set_disabled
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_disabled ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetDisabled ::
                            (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetDisabled self
  = ghcjs_dom_html_input_element_get_disabled
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_input_element_get_form ::
        JSRef HTMLInputElement -> IO (JSRef HTMLFormElement)
 
htmlInputElementGetForm ::
                        (IsHTMLInputElement self) => self -> IO (Maybe HTMLFormElement)
htmlInputElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_form
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"files\"] = $2;"
        ghcjs_dom_html_input_element_set_files ::
        JSRef HTMLInputElement -> JSRef FileList -> IO ()
 
htmlInputElementSetFiles ::
                         (IsHTMLInputElement self, IsFileList val) =>
                           self -> Maybe val -> IO ()
htmlInputElementSetFiles self val
  = ghcjs_dom_html_input_element_set_files
      (unHTMLInputElement (toHTMLInputElement self))
      (maybe jsNull (unFileList . toFileList) val)
 
foreign import javascript unsafe "$1[\"files\"]"
        ghcjs_dom_html_input_element_get_files ::
        JSRef HTMLInputElement -> IO (JSRef FileList)
 
htmlInputElementGetFiles ::
                         (IsHTMLInputElement self) => self -> IO (Maybe FileList)
htmlInputElementGetFiles self
  = fmap FileList . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_files
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        ghcjs_dom_html_input_element_set_form_action ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetFormAction ::
                              (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetFormAction self val
  = ghcjs_dom_html_input_element_set_form_action
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"formAction\"]"
        ghcjs_dom_html_input_element_get_form_action ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetFormAction ::
                              (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetFormAction self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_form_action
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        ghcjs_dom_html_input_element_set_form_enctype ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetFormEnctype ::
                               (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetFormEnctype self val
  = ghcjs_dom_html_input_element_set_form_enctype
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        ghcjs_dom_html_input_element_get_form_enctype ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetFormEnctype ::
                               (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetFormEnctype self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_form_enctype
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        ghcjs_dom_html_input_element_set_form_method ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetFormMethod ::
                              (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetFormMethod self val
  = ghcjs_dom_html_input_element_set_form_method
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"formMethod\"]"
        ghcjs_dom_html_input_element_get_form_method ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetFormMethod ::
                              (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetFormMethod self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_form_method
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        ghcjs_dom_html_input_element_set_form_no_validate ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetFormNoValidate ::
                                  (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetFormNoValidate self val
  = ghcjs_dom_html_input_element_set_form_no_validate
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_form_no_validate ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetFormNoValidate ::
                                  (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetFormNoValidate self
  = ghcjs_dom_html_input_element_get_form_no_validate
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        ghcjs_dom_html_input_element_set_form_target ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetFormTarget ::
                              (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetFormTarget self val
  = ghcjs_dom_html_input_element_set_form_target
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"formTarget\"]"
        ghcjs_dom_html_input_element_get_form_target ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetFormTarget ::
                              (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetFormTarget self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_form_target
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_input_element_set_height ::
        JSRef HTMLInputElement -> Word -> IO ()
 
htmlInputElementSetHeight ::
                          (IsHTMLInputElement self) => self -> Word -> IO ()
htmlInputElementSetHeight self val
  = ghcjs_dom_html_input_element_set_height
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_input_element_get_height ::
        JSRef HTMLInputElement -> IO Word
 
htmlInputElementGetHeight ::
                          (IsHTMLInputElement self) => self -> IO Word
htmlInputElementGetHeight self
  = ghcjs_dom_html_input_element_get_height
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"indeterminate\"] = $2;"
        ghcjs_dom_html_input_element_set_indeterminate ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetIndeterminate ::
                                 (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetIndeterminate self val
  = ghcjs_dom_html_input_element_set_indeterminate
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"indeterminate\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_indeterminate ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetIndeterminate ::
                                 (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetIndeterminate self
  = ghcjs_dom_html_input_element_get_indeterminate
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"list\"]"
        ghcjs_dom_html_input_element_get_list ::
        JSRef HTMLInputElement -> IO (JSRef HTMLElement)
 
htmlInputElementGetList ::
                        (IsHTMLInputElement self) => self -> IO (Maybe HTMLElement)
htmlInputElementGetList self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_list
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"max\"] = $2;"
        ghcjs_dom_html_input_element_set_max ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetMax ::
                       (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetMax self val
  = ghcjs_dom_html_input_element_set_max
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"max\"]"
        ghcjs_dom_html_input_element_get_max ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetMax ::
                       (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetMax self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_max
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"maxLength\"] = $2;"
        ghcjs_dom_html_input_element_set_max_length ::
        JSRef HTMLInputElement -> Int -> IO ()
 
htmlInputElementSetMaxLength ::
                             (IsHTMLInputElement self) => self -> Int -> IO ()
htmlInputElementSetMaxLength self val
  = ghcjs_dom_html_input_element_set_max_length
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "$1[\"maxLength\"]"
        ghcjs_dom_html_input_element_get_max_length ::
        JSRef HTMLInputElement -> IO Int
 
htmlInputElementGetMaxLength ::
                             (IsHTMLInputElement self) => self -> IO Int
htmlInputElementGetMaxLength self
  = ghcjs_dom_html_input_element_get_max_length
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"min\"] = $2;"
        ghcjs_dom_html_input_element_set_min ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetMin ::
                       (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetMin self val
  = ghcjs_dom_html_input_element_set_min
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"min\"]"
        ghcjs_dom_html_input_element_get_min ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetMin ::
                       (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetMin self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_min
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        ghcjs_dom_html_input_element_set_multiple ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetMultiple ::
                            (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetMultiple self val
  = ghcjs_dom_html_input_element_set_multiple
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"multiple\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_multiple ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetMultiple ::
                            (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetMultiple self
  = ghcjs_dom_html_input_element_get_multiple
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_input_element_set_name ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetName ::
                        (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetName self val
  = ghcjs_dom_html_input_element_set_name
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_input_element_get_name ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetName ::
                        (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_name
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"pattern\"] = $2;"
        ghcjs_dom_html_input_element_set_pattern ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetPattern ::
                           (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetPattern self val
  = ghcjs_dom_html_input_element_set_pattern
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"pattern\"]"
        ghcjs_dom_html_input_element_get_pattern ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetPattern ::
                           (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetPattern self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_pattern
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"placeholder\"] = $2;"
        ghcjs_dom_html_input_element_set_placeholder ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetPlaceholder ::
                               (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetPlaceholder self val
  = ghcjs_dom_html_input_element_set_placeholder
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"placeholder\"]"
        ghcjs_dom_html_input_element_get_placeholder ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetPlaceholder ::
                               (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetPlaceholder self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_placeholder
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"readOnly\"] = $2;"
        ghcjs_dom_html_input_element_set_read_only ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetReadOnly ::
                            (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetReadOnly self val
  = ghcjs_dom_html_input_element_set_read_only
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"readOnly\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_read_only ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetReadOnly ::
                            (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetReadOnly self
  = ghcjs_dom_html_input_element_get_read_only
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        ghcjs_dom_html_input_element_set_required ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetRequired ::
                            (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetRequired self val
  = ghcjs_dom_html_input_element_set_required
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_required ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetRequired ::
                            (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetRequired self
  = ghcjs_dom_html_input_element_get_required
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_html_input_element_set_size ::
        JSRef HTMLInputElement -> Word -> IO ()
 
htmlInputElementSetSize ::
                        (IsHTMLInputElement self) => self -> Word -> IO ()
htmlInputElementSetSize self val
  = ghcjs_dom_html_input_element_set_size
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_html_input_element_get_size ::
        JSRef HTMLInputElement -> IO Word
 
htmlInputElementGetSize ::
                        (IsHTMLInputElement self) => self -> IO Word
htmlInputElementGetSize self
  = ghcjs_dom_html_input_element_get_size
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_input_element_set_src ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetSrc ::
                       (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetSrc self val
  = ghcjs_dom_html_input_element_set_src
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_input_element_get_src ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetSrc ::
                       (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_src
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"step\"] = $2;"
        ghcjs_dom_html_input_element_set_step ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetStep ::
                        (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetStep self val
  = ghcjs_dom_html_input_element_set_step
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"step\"]"
        ghcjs_dom_html_input_element_get_step ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetStep ::
                        (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetStep self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_step
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        ghcjs_dom_html_input_element_set_default_value ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetDefaultValue ::
                                (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetDefaultValue self val
  = ghcjs_dom_html_input_element_set_default_value
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        ghcjs_dom_html_input_element_get_default_value ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetDefaultValue ::
                                (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetDefaultValue self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_default_value
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_input_element_set_value ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetValue ::
                         (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetValue self val
  = ghcjs_dom_html_input_element_set_value
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_input_element_get_value ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetValue ::
                         (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_value
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"valueAsNumber\"] = $2;"
        ghcjs_dom_html_input_element_set_value_as_number ::
        JSRef HTMLInputElement -> Double -> IO ()
 
htmlInputElementSetValueAsNumber ::
                                 (IsHTMLInputElement self) => self -> Double -> IO ()
htmlInputElementSetValueAsNumber self val
  = ghcjs_dom_html_input_element_set_value_as_number
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "$1[\"valueAsNumber\"]"
        ghcjs_dom_html_input_element_get_value_as_number ::
        JSRef HTMLInputElement -> IO Double
 
htmlInputElementGetValueAsNumber ::
                                 (IsHTMLInputElement self) => self -> IO Double
htmlInputElementGetValueAsNumber self
  = ghcjs_dom_html_input_element_get_value_as_number
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_input_element_set_width ::
        JSRef HTMLInputElement -> Word -> IO ()
 
htmlInputElementSetWidth ::
                         (IsHTMLInputElement self) => self -> Word -> IO ()
htmlInputElementSetWidth self val
  = ghcjs_dom_html_input_element_set_width
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_input_element_get_width ::
        JSRef HTMLInputElement -> IO Word
 
htmlInputElementGetWidth ::
                         (IsHTMLInputElement self) => self -> IO Word
htmlInputElementGetWidth self
  = ghcjs_dom_html_input_element_get_width
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_will_validate ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetWillValidate ::
                                (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetWillValidate self
  = ghcjs_dom_html_input_element_get_will_validate
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_input_element_get_validity ::
        JSRef HTMLInputElement -> IO (JSRef ValidityState)
 
htmlInputElementGetValidity ::
                            (IsHTMLInputElement self) => self -> IO (Maybe ValidityState)
htmlInputElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_validity
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_input_element_get_validation_message ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetValidationMessage ::
                                     (IsHTMLInputElement self, FromJSString result) =>
                                       self -> IO result
htmlInputElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_validation_message
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_input_element_get_labels ::
        JSRef HTMLInputElement -> IO (JSRef NodeList)
 
htmlInputElementGetLabels ::
                          (IsHTMLInputElement self) => self -> IO (Maybe NodeList)
htmlInputElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_labels
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"selectionStart\"] = $2;"
        ghcjs_dom_html_input_element_set_selection_start ::
        JSRef HTMLInputElement -> Int -> IO ()
 
htmlInputElementSetSelectionStart ::
                                  (IsHTMLInputElement self) => self -> Int -> IO ()
htmlInputElementSetSelectionStart self val
  = ghcjs_dom_html_input_element_set_selection_start
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "$1[\"selectionStart\"]"
        ghcjs_dom_html_input_element_get_selection_start ::
        JSRef HTMLInputElement -> IO Int
 
htmlInputElementGetSelectionStart ::
                                  (IsHTMLInputElement self) => self -> IO Int
htmlInputElementGetSelectionStart self
  = ghcjs_dom_html_input_element_get_selection_start
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"selectionEnd\"] = $2;"
        ghcjs_dom_html_input_element_set_selection_end ::
        JSRef HTMLInputElement -> Int -> IO ()
 
htmlInputElementSetSelectionEnd ::
                                (IsHTMLInputElement self) => self -> Int -> IO ()
htmlInputElementSetSelectionEnd self val
  = ghcjs_dom_html_input_element_set_selection_end
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "$1[\"selectionEnd\"]"
        ghcjs_dom_html_input_element_get_selection_end ::
        JSRef HTMLInputElement -> IO Int
 
htmlInputElementGetSelectionEnd ::
                                (IsHTMLInputElement self) => self -> IO Int
htmlInputElementGetSelectionEnd self
  = ghcjs_dom_html_input_element_get_selection_end
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"selectionDirection\"] = $2;"
        ghcjs_dom_html_input_element_set_selection_direction ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetSelectionDirection ::
                                      (IsHTMLInputElement self, ToJSString val) =>
                                        self -> val -> IO ()
htmlInputElementSetSelectionDirection self val
  = ghcjs_dom_html_input_element_set_selection_direction
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"selectionDirection\"]"
        ghcjs_dom_html_input_element_get_selection_direction ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetSelectionDirection ::
                                      (IsHTMLInputElement self, FromJSString result) =>
                                        self -> IO result
htmlInputElementGetSelectionDirection self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_selection_direction
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_input_element_set_align ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetAlign ::
                         (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetAlign self val
  = ghcjs_dom_html_input_element_set_align
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_input_element_get_align ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetAlign ::
                         (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_align
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        ghcjs_dom_html_input_element_set_use_map ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetUseMap ::
                          (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetUseMap self val
  = ghcjs_dom_html_input_element_set_use_map
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"useMap\"]"
        ghcjs_dom_html_input_element_get_use_map ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetUseMap ::
                          (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetUseMap self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_use_map
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"incremental\"] = $2;"
        ghcjs_dom_html_input_element_set_incremental ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetIncremental ::
                               (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetIncremental self val
  = ghcjs_dom_html_input_element_set_incremental
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"incremental\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_incremental ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetIncremental ::
                               (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetIncremental self
  = ghcjs_dom_html_input_element_get_incremental
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        ghcjs_dom_html_input_element_set_autocorrect ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetAutocorrect ::
                               (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetAutocorrect self val
  = ghcjs_dom_html_input_element_set_autocorrect
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_autocorrect ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetAutocorrect ::
                               (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetAutocorrect self
  = ghcjs_dom_html_input_element_get_autocorrect
      (unHTMLInputElement (toHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        ghcjs_dom_html_input_element_set_autocapitalize ::
        JSRef HTMLInputElement -> JSString -> IO ()
 
htmlInputElementSetAutocapitalize ::
                                  (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetAutocapitalize self val
  = ghcjs_dom_html_input_element_set_autocapitalize
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        ghcjs_dom_html_input_element_get_autocapitalize ::
        JSRef HTMLInputElement -> IO JSString
 
htmlInputElementGetAutocapitalize ::
                                  (IsHTMLInputElement self, FromJSString result) =>
                                    self -> IO result
htmlInputElementGetAutocapitalize self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_autocapitalize
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"capture\"] = $2;"
        ghcjs_dom_html_input_element_set_capture ::
        JSRef HTMLInputElement -> Bool -> IO ()
 
htmlInputElementSetCapture ::
                           (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetCapture self val
  = ghcjs_dom_html_input_element_set_capture
      (unHTMLInputElement (toHTMLInputElement self))
      val
 
foreign import javascript unsafe "($1[\"capture\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_capture ::
        JSRef HTMLInputElement -> IO Bool
 
htmlInputElementGetCapture ::
                           (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetCapture self
  = ghcjs_dom_html_input_element_get_capture
      (unHTMLInputElement (toHTMLInputElement self))
#else
module GHCJS.DOM.HTMLInputElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLInputElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLInputElement
#endif
