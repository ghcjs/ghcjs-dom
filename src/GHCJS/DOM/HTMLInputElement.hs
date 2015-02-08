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
        ghcjs_dom_html_input_element_set_value_as_date,
        htmlInputElementSetValueAsDate,
        ghcjs_dom_html_input_element_get_value_as_date,
        htmlInputElementGetValueAsDate,
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

 
foreign import javascript unsafe "$1[\"stepUp\"]($2)"
        ghcjs_dom_html_input_element_step_up ::
        JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.stepUp Mozilla HTMLInputElement.stepUp documentation> 
htmlInputElementStepUp ::
                       (MonadIO m, IsHTMLInputElement self) => self -> Int -> m ()
htmlInputElementStepUp self n
  = liftIO
      (ghcjs_dom_html_input_element_step_up
         (unHTMLInputElement (toHTMLInputElement self))
         n)
 
foreign import javascript unsafe "$1[\"stepDown\"]($2)"
        ghcjs_dom_html_input_element_step_down ::
        JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.stepDown Mozilla HTMLInputElement.stepDown documentation> 
htmlInputElementStepDown ::
                         (MonadIO m, IsHTMLInputElement self) => self -> Int -> m ()
htmlInputElementStepDown self n
  = liftIO
      (ghcjs_dom_html_input_element_step_down
         (unHTMLInputElement (toHTMLInputElement self))
         n)
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_input_element_check_validity ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checkValidity Mozilla HTMLInputElement.checkValidity documentation> 
htmlInputElementCheckValidity ::
                              (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementCheckValidity self
  = liftIO
      (ghcjs_dom_html_input_element_check_validity
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_input_element_set_custom_validity ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.customValidity Mozilla HTMLInputElement.customValidity documentation> 
htmlInputElementSetCustomValidity ::
                                  (MonadIO m, IsHTMLInputElement self, ToJSString error) =>
                                    self -> error -> m ()
htmlInputElementSetCustomValidity self error
  = liftIO
      (ghcjs_dom_html_input_element_set_custom_validity
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString error))
 
foreign import javascript unsafe "$1[\"select\"]()"
        ghcjs_dom_html_input_element_select ::
        JSRef HTMLInputElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.select Mozilla HTMLInputElement.select documentation> 
htmlInputElementSelect ::
                       (MonadIO m, IsHTMLInputElement self) => self -> m ()
htmlInputElementSelect self
  = liftIO
      (ghcjs_dom_html_input_element_select
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"setRangeText\"]($2)"
        ghcjs_dom_html_input_element_set_range_text ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.rangeText Mozilla HTMLInputElement.rangeText documentation> 
htmlInputElementSetRangeText ::
                             (MonadIO m, IsHTMLInputElement self, ToJSString replacement) =>
                               self -> replacement -> m ()
htmlInputElementSetRangeText self replacement
  = liftIO
      (ghcjs_dom_html_input_element_set_range_text
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString replacement))
 
foreign import javascript unsafe
        "$1[\"setRangeText\"]($2, $3, $4,\n$5)"
        ghcjs_dom_html_input_element_set_range_text4 ::
        JSRef HTMLInputElement ->
          JSString -> Word -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.rangeText4 Mozilla HTMLInputElement.rangeText4 documentation> 
htmlInputElementSetRangeText4 ::
                              (MonadIO m, IsHTMLInputElement self, ToJSString replacement,
                               ToJSString selectionMode) =>
                                self -> replacement -> Word -> Word -> selectionMode -> m ()
htmlInputElementSetRangeText4 self replacement start end
  selectionMode
  = liftIO
      (ghcjs_dom_html_input_element_set_range_text4
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString replacement)
         start
         end
         (toJSString selectionMode))
 
foreign import javascript unsafe
        "$1[\"setSelectionRange\"]($2, $3,\n$4)"
        ghcjs_dom_html_input_element_set_selection_range ::
        JSRef HTMLInputElement -> Int -> Int -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionRange Mozilla HTMLInputElement.selectionRange documentation> 
htmlInputElementSetSelectionRange ::
                                  (MonadIO m, IsHTMLInputElement self, ToJSString direction) =>
                                    self -> Int -> Int -> direction -> m ()
htmlInputElementSetSelectionRange self start end direction
  = liftIO
      (ghcjs_dom_html_input_element_set_selection_range
         (unHTMLInputElement (toHTMLInputElement self))
         start
         end
         (toJSString direction))
 
foreign import javascript unsafe "$1[\"setValueForUser\"]($2)"
        ghcjs_dom_html_input_element_set_value_for_user ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueForUser Mozilla HTMLInputElement.valueForUser documentation> 
htmlInputElementSetValueForUser ::
                                (MonadIO m, IsHTMLInputElement self, ToJSString value) =>
                                  self -> value -> m ()
htmlInputElementSetValueForUser self value
  = liftIO
      (ghcjs_dom_html_input_element_set_value_for_user
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString value))
 
foreign import javascript unsafe "$1[\"accept\"] = $2;"
        ghcjs_dom_html_input_element_set_accept ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.accept Mozilla HTMLInputElement.accept documentation> 
htmlInputElementSetAccept ::
                          (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                            self -> val -> m ()
htmlInputElementSetAccept self val
  = liftIO
      (ghcjs_dom_html_input_element_set_accept
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"accept\"]"
        ghcjs_dom_html_input_element_get_accept ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.accept Mozilla HTMLInputElement.accept documentation> 
htmlInputElementGetAccept ::
                          (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                            self -> m result
htmlInputElementGetAccept self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_accept
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        ghcjs_dom_html_input_element_set_alt ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.alt Mozilla HTMLInputElement.alt documentation> 
htmlInputElementSetAlt ::
                       (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                         self -> val -> m ()
htmlInputElementSetAlt self val
  = liftIO
      (ghcjs_dom_html_input_element_set_alt
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]"
        ghcjs_dom_html_input_element_get_alt ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.alt Mozilla HTMLInputElement.alt documentation> 
htmlInputElementGetAlt ::
                       (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                         self -> m result
htmlInputElementGetAlt self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_alt
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        ghcjs_dom_html_input_element_set_autocomplete ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocomplete Mozilla HTMLInputElement.autocomplete documentation> 
htmlInputElementSetAutocomplete ::
                                (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                                  self -> val -> m ()
htmlInputElementSetAutocomplete self val
  = liftIO
      (ghcjs_dom_html_input_element_set_autocomplete
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        ghcjs_dom_html_input_element_get_autocomplete ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocomplete Mozilla HTMLInputElement.autocomplete documentation> 
htmlInputElementGetAutocomplete ::
                                (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                  self -> m result
htmlInputElementGetAutocomplete self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_autocomplete
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_input_element_set_autofocus ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autofocus Mozilla HTMLInputElement.autofocus documentation> 
htmlInputElementSetAutofocus ::
                             (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetAutofocus self val
  = liftIO
      (ghcjs_dom_html_input_element_set_autofocus
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_autofocus ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autofocus Mozilla HTMLInputElement.autofocus documentation> 
htmlInputElementGetAutofocus ::
                             (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetAutofocus self
  = liftIO
      (ghcjs_dom_html_input_element_get_autofocus
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"defaultChecked\"] = $2;"
        ghcjs_dom_html_input_element_set_default_checked ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultChecked Mozilla HTMLInputElement.defaultChecked documentation> 
htmlInputElementSetDefaultChecked ::
                                  (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetDefaultChecked self val
  = liftIO
      (ghcjs_dom_html_input_element_set_default_checked
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"defaultChecked\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_default_checked ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultChecked Mozilla HTMLInputElement.defaultChecked documentation> 
htmlInputElementGetDefaultChecked ::
                                  (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetDefaultChecked self
  = liftIO
      (ghcjs_dom_html_input_element_get_default_checked
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"checked\"] = $2;"
        ghcjs_dom_html_input_element_set_checked ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checked Mozilla HTMLInputElement.checked documentation> 
htmlInputElementSetChecked ::
                           (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetChecked self val
  = liftIO
      (ghcjs_dom_html_input_element_set_checked
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"checked\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_checked ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checked Mozilla HTMLInputElement.checked documentation> 
htmlInputElementGetChecked ::
                           (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetChecked self
  = liftIO
      (ghcjs_dom_html_input_element_get_checked
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"dirName\"] = $2;"
        ghcjs_dom_html_input_element_set_dir_name ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.dirName Mozilla HTMLInputElement.dirName documentation> 
htmlInputElementSetDirName ::
                           (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                             self -> val -> m ()
htmlInputElementSetDirName self val
  = liftIO
      (ghcjs_dom_html_input_element_set_dir_name
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"dirName\"]"
        ghcjs_dom_html_input_element_get_dir_name ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.dirName Mozilla HTMLInputElement.dirName documentation> 
htmlInputElementGetDirName ::
                           (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                             self -> m result
htmlInputElementGetDirName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_dir_name
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_input_element_set_disabled ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.disabled Mozilla HTMLInputElement.disabled documentation> 
htmlInputElementSetDisabled ::
                            (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetDisabled self val
  = liftIO
      (ghcjs_dom_html_input_element_set_disabled
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_disabled ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.disabled Mozilla HTMLInputElement.disabled documentation> 
htmlInputElementGetDisabled ::
                            (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetDisabled self
  = liftIO
      (ghcjs_dom_html_input_element_get_disabled
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_input_element_get_form ::
        JSRef HTMLInputElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.form Mozilla HTMLInputElement.form documentation> 
htmlInputElementGetForm ::
                        (MonadIO m, IsHTMLInputElement self) =>
                          self -> m (Maybe HTMLFormElement)
htmlInputElementGetForm self
  = liftIO
      ((ghcjs_dom_html_input_element_get_form
          (unHTMLInputElement (toHTMLInputElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"files\"] = $2;"
        ghcjs_dom_html_input_element_set_files ::
        JSRef HTMLInputElement -> JSRef FileList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.files Mozilla HTMLInputElement.files documentation> 
htmlInputElementSetFiles ::
                         (MonadIO m, IsHTMLInputElement self, IsFileList val) =>
                           self -> Maybe val -> m ()
htmlInputElementSetFiles self val
  = liftIO
      (ghcjs_dom_html_input_element_set_files
         (unHTMLInputElement (toHTMLInputElement self))
         (maybe jsNull (unFileList . toFileList) val))
 
foreign import javascript unsafe "$1[\"files\"]"
        ghcjs_dom_html_input_element_get_files ::
        JSRef HTMLInputElement -> IO (JSRef FileList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.files Mozilla HTMLInputElement.files documentation> 
htmlInputElementGetFiles ::
                         (MonadIO m, IsHTMLInputElement self) => self -> m (Maybe FileList)
htmlInputElementGetFiles self
  = liftIO
      ((ghcjs_dom_html_input_element_get_files
          (unHTMLInputElement (toHTMLInputElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        ghcjs_dom_html_input_element_set_form_action ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formAction Mozilla HTMLInputElement.formAction documentation> 
htmlInputElementSetFormAction ::
                              (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                                self -> val -> m ()
htmlInputElementSetFormAction self val
  = liftIO
      (ghcjs_dom_html_input_element_set_form_action
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"formAction\"]"
        ghcjs_dom_html_input_element_get_form_action ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formAction Mozilla HTMLInputElement.formAction documentation> 
htmlInputElementGetFormAction ::
                              (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                self -> m result
htmlInputElementGetFormAction self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_form_action
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        ghcjs_dom_html_input_element_set_form_enctype ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formEnctype Mozilla HTMLInputElement.formEnctype documentation> 
htmlInputElementSetFormEnctype ::
                               (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                                 self -> val -> m ()
htmlInputElementSetFormEnctype self val
  = liftIO
      (ghcjs_dom_html_input_element_set_form_enctype
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        ghcjs_dom_html_input_element_get_form_enctype ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formEnctype Mozilla HTMLInputElement.formEnctype documentation> 
htmlInputElementGetFormEnctype ::
                               (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                 self -> m result
htmlInputElementGetFormEnctype self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_form_enctype
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        ghcjs_dom_html_input_element_set_form_method ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formMethod Mozilla HTMLInputElement.formMethod documentation> 
htmlInputElementSetFormMethod ::
                              (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                                self -> val -> m ()
htmlInputElementSetFormMethod self val
  = liftIO
      (ghcjs_dom_html_input_element_set_form_method
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"formMethod\"]"
        ghcjs_dom_html_input_element_get_form_method ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formMethod Mozilla HTMLInputElement.formMethod documentation> 
htmlInputElementGetFormMethod ::
                              (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                self -> m result
htmlInputElementGetFormMethod self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_form_method
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        ghcjs_dom_html_input_element_set_form_no_validate ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formNoValidate Mozilla HTMLInputElement.formNoValidate documentation> 
htmlInputElementSetFormNoValidate ::
                                  (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetFormNoValidate self val
  = liftIO
      (ghcjs_dom_html_input_element_set_form_no_validate
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_form_no_validate ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formNoValidate Mozilla HTMLInputElement.formNoValidate documentation> 
htmlInputElementGetFormNoValidate ::
                                  (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetFormNoValidate self
  = liftIO
      (ghcjs_dom_html_input_element_get_form_no_validate
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        ghcjs_dom_html_input_element_set_form_target ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formTarget Mozilla HTMLInputElement.formTarget documentation> 
htmlInputElementSetFormTarget ::
                              (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                                self -> val -> m ()
htmlInputElementSetFormTarget self val
  = liftIO
      (ghcjs_dom_html_input_element_set_form_target
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"formTarget\"]"
        ghcjs_dom_html_input_element_get_form_target ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formTarget Mozilla HTMLInputElement.formTarget documentation> 
htmlInputElementGetFormTarget ::
                              (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                self -> m result
htmlInputElementGetFormTarget self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_form_target
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_input_element_set_height ::
        JSRef HTMLInputElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.height Mozilla HTMLInputElement.height documentation> 
htmlInputElementSetHeight ::
                          (MonadIO m, IsHTMLInputElement self) => self -> Word -> m ()
htmlInputElementSetHeight self val
  = liftIO
      (ghcjs_dom_html_input_element_set_height
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_input_element_get_height ::
        JSRef HTMLInputElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.height Mozilla HTMLInputElement.height documentation> 
htmlInputElementGetHeight ::
                          (MonadIO m, IsHTMLInputElement self) => self -> m Word
htmlInputElementGetHeight self
  = liftIO
      (ghcjs_dom_html_input_element_get_height
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"indeterminate\"] = $2;"
        ghcjs_dom_html_input_element_set_indeterminate ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.indeterminate Mozilla HTMLInputElement.indeterminate documentation> 
htmlInputElementSetIndeterminate ::
                                 (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetIndeterminate self val
  = liftIO
      (ghcjs_dom_html_input_element_set_indeterminate
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"indeterminate\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_indeterminate ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.indeterminate Mozilla HTMLInputElement.indeterminate documentation> 
htmlInputElementGetIndeterminate ::
                                 (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetIndeterminate self
  = liftIO
      (ghcjs_dom_html_input_element_get_indeterminate
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"list\"]"
        ghcjs_dom_html_input_element_get_list ::
        JSRef HTMLInputElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.list Mozilla HTMLInputElement.list documentation> 
htmlInputElementGetList ::
                        (MonadIO m, IsHTMLInputElement self) =>
                          self -> m (Maybe HTMLElement)
htmlInputElementGetList self
  = liftIO
      ((ghcjs_dom_html_input_element_get_list
          (unHTMLInputElement (toHTMLInputElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"max\"] = $2;"
        ghcjs_dom_html_input_element_set_max ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.max Mozilla HTMLInputElement.max documentation> 
htmlInputElementSetMax ::
                       (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                         self -> val -> m ()
htmlInputElementSetMax self val
  = liftIO
      (ghcjs_dom_html_input_element_set_max
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"max\"]"
        ghcjs_dom_html_input_element_get_max ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.max Mozilla HTMLInputElement.max documentation> 
htmlInputElementGetMax ::
                       (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                         self -> m result
htmlInputElementGetMax self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_max
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"maxLength\"] = $2;"
        ghcjs_dom_html_input_element_set_max_length ::
        JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.maxLength Mozilla HTMLInputElement.maxLength documentation> 
htmlInputElementSetMaxLength ::
                             (MonadIO m, IsHTMLInputElement self) => self -> Int -> m ()
htmlInputElementSetMaxLength self val
  = liftIO
      (ghcjs_dom_html_input_element_set_max_length
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "$1[\"maxLength\"]"
        ghcjs_dom_html_input_element_get_max_length ::
        JSRef HTMLInputElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.maxLength Mozilla HTMLInputElement.maxLength documentation> 
htmlInputElementGetMaxLength ::
                             (MonadIO m, IsHTMLInputElement self) => self -> m Int
htmlInputElementGetMaxLength self
  = liftIO
      (ghcjs_dom_html_input_element_get_max_length
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"min\"] = $2;"
        ghcjs_dom_html_input_element_set_min ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.min Mozilla HTMLInputElement.min documentation> 
htmlInputElementSetMin ::
                       (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                         self -> val -> m ()
htmlInputElementSetMin self val
  = liftIO
      (ghcjs_dom_html_input_element_set_min
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"min\"]"
        ghcjs_dom_html_input_element_get_min ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.min Mozilla HTMLInputElement.min documentation> 
htmlInputElementGetMin ::
                       (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                         self -> m result
htmlInputElementGetMin self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_min
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        ghcjs_dom_html_input_element_set_multiple ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.multiple Mozilla HTMLInputElement.multiple documentation> 
htmlInputElementSetMultiple ::
                            (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetMultiple self val
  = liftIO
      (ghcjs_dom_html_input_element_set_multiple
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"multiple\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_multiple ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.multiple Mozilla HTMLInputElement.multiple documentation> 
htmlInputElementGetMultiple ::
                            (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetMultiple self
  = liftIO
      (ghcjs_dom_html_input_element_get_multiple
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_input_element_set_name ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.name Mozilla HTMLInputElement.name documentation> 
htmlInputElementSetName ::
                        (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                          self -> val -> m ()
htmlInputElementSetName self val
  = liftIO
      (ghcjs_dom_html_input_element_set_name
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_input_element_get_name ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.name Mozilla HTMLInputElement.name documentation> 
htmlInputElementGetName ::
                        (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                          self -> m result
htmlInputElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_name
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"pattern\"] = $2;"
        ghcjs_dom_html_input_element_set_pattern ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.pattern Mozilla HTMLInputElement.pattern documentation> 
htmlInputElementSetPattern ::
                           (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                             self -> val -> m ()
htmlInputElementSetPattern self val
  = liftIO
      (ghcjs_dom_html_input_element_set_pattern
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"pattern\"]"
        ghcjs_dom_html_input_element_get_pattern ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.pattern Mozilla HTMLInputElement.pattern documentation> 
htmlInputElementGetPattern ::
                           (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                             self -> m result
htmlInputElementGetPattern self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_pattern
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"placeholder\"] = $2;"
        ghcjs_dom_html_input_element_set_placeholder ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.placeholder Mozilla HTMLInputElement.placeholder documentation> 
htmlInputElementSetPlaceholder ::
                               (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                                 self -> val -> m ()
htmlInputElementSetPlaceholder self val
  = liftIO
      (ghcjs_dom_html_input_element_set_placeholder
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"placeholder\"]"
        ghcjs_dom_html_input_element_get_placeholder ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.placeholder Mozilla HTMLInputElement.placeholder documentation> 
htmlInputElementGetPlaceholder ::
                               (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                 self -> m result
htmlInputElementGetPlaceholder self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_placeholder
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"readOnly\"] = $2;"
        ghcjs_dom_html_input_element_set_read_only ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.readOnly Mozilla HTMLInputElement.readOnly documentation> 
htmlInputElementSetReadOnly ::
                            (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetReadOnly self val
  = liftIO
      (ghcjs_dom_html_input_element_set_read_only
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"readOnly\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_read_only ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.readOnly Mozilla HTMLInputElement.readOnly documentation> 
htmlInputElementGetReadOnly ::
                            (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetReadOnly self
  = liftIO
      (ghcjs_dom_html_input_element_get_read_only
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        ghcjs_dom_html_input_element_set_required ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.required Mozilla HTMLInputElement.required documentation> 
htmlInputElementSetRequired ::
                            (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetRequired self val
  = liftIO
      (ghcjs_dom_html_input_element_set_required
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_required ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.required Mozilla HTMLInputElement.required documentation> 
htmlInputElementGetRequired ::
                            (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetRequired self
  = liftIO
      (ghcjs_dom_html_input_element_get_required
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_html_input_element_set_size ::
        JSRef HTMLInputElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.size Mozilla HTMLInputElement.size documentation> 
htmlInputElementSetSize ::
                        (MonadIO m, IsHTMLInputElement self) => self -> Word -> m ()
htmlInputElementSetSize self val
  = liftIO
      (ghcjs_dom_html_input_element_set_size
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_html_input_element_get_size ::
        JSRef HTMLInputElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.size Mozilla HTMLInputElement.size documentation> 
htmlInputElementGetSize ::
                        (MonadIO m, IsHTMLInputElement self) => self -> m Word
htmlInputElementGetSize self
  = liftIO
      (ghcjs_dom_html_input_element_get_size
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_input_element_set_src ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.src Mozilla HTMLInputElement.src documentation> 
htmlInputElementSetSrc ::
                       (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                         self -> val -> m ()
htmlInputElementSetSrc self val
  = liftIO
      (ghcjs_dom_html_input_element_set_src
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_input_element_get_src ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.src Mozilla HTMLInputElement.src documentation> 
htmlInputElementGetSrc ::
                       (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                         self -> m result
htmlInputElementGetSrc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_src
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"step\"] = $2;"
        ghcjs_dom_html_input_element_set_step ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.step Mozilla HTMLInputElement.step documentation> 
htmlInputElementSetStep ::
                        (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                          self -> val -> m ()
htmlInputElementSetStep self val
  = liftIO
      (ghcjs_dom_html_input_element_set_step
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"step\"]"
        ghcjs_dom_html_input_element_get_step ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.step Mozilla HTMLInputElement.step documentation> 
htmlInputElementGetStep ::
                        (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                          self -> m result
htmlInputElementGetStep self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_step
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        ghcjs_dom_html_input_element_set_default_value ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultValue Mozilla HTMLInputElement.defaultValue documentation> 
htmlInputElementSetDefaultValue ::
                                (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                                  self -> val -> m ()
htmlInputElementSetDefaultValue self val
  = liftIO
      (ghcjs_dom_html_input_element_set_default_value
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        ghcjs_dom_html_input_element_get_default_value ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultValue Mozilla HTMLInputElement.defaultValue documentation> 
htmlInputElementGetDefaultValue ::
                                (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                  self -> m result
htmlInputElementGetDefaultValue self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_default_value
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_input_element_set_value ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.value Mozilla HTMLInputElement.value documentation> 
htmlInputElementSetValue ::
                         (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                           self -> val -> m ()
htmlInputElementSetValue self val
  = liftIO
      (ghcjs_dom_html_input_element_set_value
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_input_element_get_value ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.value Mozilla HTMLInputElement.value documentation> 
htmlInputElementGetValue ::
                         (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                           self -> m result
htmlInputElementGetValue self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_value
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"valueAsDate\"] = $2;"
        ghcjs_dom_html_input_element_set_value_as_date ::
        JSRef HTMLInputElement -> JSRef Date -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsDate Mozilla HTMLInputElement.valueAsDate documentation> 
htmlInputElementSetValueAsDate ::
                               (MonadIO m, IsHTMLInputElement self, IsDate val) =>
                                 self -> Maybe val -> m ()
htmlInputElementSetValueAsDate self val
  = liftIO
      (ghcjs_dom_html_input_element_set_value_as_date
         (unHTMLInputElement (toHTMLInputElement self))
         (maybe jsNull (unDate . toDate) val))
 
foreign import javascript unsafe "$1[\"valueAsDate\"]"
        ghcjs_dom_html_input_element_get_value_as_date ::
        JSRef HTMLInputElement -> IO (JSRef Date)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsDate Mozilla HTMLInputElement.valueAsDate documentation> 
htmlInputElementGetValueAsDate ::
                               (MonadIO m, IsHTMLInputElement self) => self -> m (Maybe Date)
htmlInputElementGetValueAsDate self
  = liftIO
      ((ghcjs_dom_html_input_element_get_value_as_date
          (unHTMLInputElement (toHTMLInputElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"valueAsNumber\"] = $2;"
        ghcjs_dom_html_input_element_set_value_as_number ::
        JSRef HTMLInputElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsNumber Mozilla HTMLInputElement.valueAsNumber documentation> 
htmlInputElementSetValueAsNumber ::
                                 (MonadIO m, IsHTMLInputElement self) => self -> Double -> m ()
htmlInputElementSetValueAsNumber self val
  = liftIO
      (ghcjs_dom_html_input_element_set_value_as_number
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "$1[\"valueAsNumber\"]"
        ghcjs_dom_html_input_element_get_value_as_number ::
        JSRef HTMLInputElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsNumber Mozilla HTMLInputElement.valueAsNumber documentation> 
htmlInputElementGetValueAsNumber ::
                                 (MonadIO m, IsHTMLInputElement self) => self -> m Double
htmlInputElementGetValueAsNumber self
  = liftIO
      (ghcjs_dom_html_input_element_get_value_as_number
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_input_element_set_width ::
        JSRef HTMLInputElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.width Mozilla HTMLInputElement.width documentation> 
htmlInputElementSetWidth ::
                         (MonadIO m, IsHTMLInputElement self) => self -> Word -> m ()
htmlInputElementSetWidth self val
  = liftIO
      (ghcjs_dom_html_input_element_set_width
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_input_element_get_width ::
        JSRef HTMLInputElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.width Mozilla HTMLInputElement.width documentation> 
htmlInputElementGetWidth ::
                         (MonadIO m, IsHTMLInputElement self) => self -> m Word
htmlInputElementGetWidth self
  = liftIO
      (ghcjs_dom_html_input_element_get_width
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_will_validate ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.willValidate Mozilla HTMLInputElement.willValidate documentation> 
htmlInputElementGetWillValidate ::
                                (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetWillValidate self
  = liftIO
      (ghcjs_dom_html_input_element_get_will_validate
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_input_element_get_validity ::
        JSRef HTMLInputElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.validity Mozilla HTMLInputElement.validity documentation> 
htmlInputElementGetValidity ::
                            (MonadIO m, IsHTMLInputElement self) =>
                              self -> m (Maybe ValidityState)
htmlInputElementGetValidity self
  = liftIO
      ((ghcjs_dom_html_input_element_get_validity
          (unHTMLInputElement (toHTMLInputElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_input_element_get_validation_message ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.validationMessage Mozilla HTMLInputElement.validationMessage documentation> 
htmlInputElementGetValidationMessage ::
                                     (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                       self -> m result
htmlInputElementGetValidationMessage self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_validation_message
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_input_element_get_labels ::
        JSRef HTMLInputElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.labels Mozilla HTMLInputElement.labels documentation> 
htmlInputElementGetLabels ::
                          (MonadIO m, IsHTMLInputElement self) => self -> m (Maybe NodeList)
htmlInputElementGetLabels self
  = liftIO
      ((ghcjs_dom_html_input_element_get_labels
          (unHTMLInputElement (toHTMLInputElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"selectionStart\"] = $2;"
        ghcjs_dom_html_input_element_set_selection_start ::
        JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionStart Mozilla HTMLInputElement.selectionStart documentation> 
htmlInputElementSetSelectionStart ::
                                  (MonadIO m, IsHTMLInputElement self) => self -> Int -> m ()
htmlInputElementSetSelectionStart self val
  = liftIO
      (ghcjs_dom_html_input_element_set_selection_start
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "$1[\"selectionStart\"]"
        ghcjs_dom_html_input_element_get_selection_start ::
        JSRef HTMLInputElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionStart Mozilla HTMLInputElement.selectionStart documentation> 
htmlInputElementGetSelectionStart ::
                                  (MonadIO m, IsHTMLInputElement self) => self -> m Int
htmlInputElementGetSelectionStart self
  = liftIO
      (ghcjs_dom_html_input_element_get_selection_start
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"selectionEnd\"] = $2;"
        ghcjs_dom_html_input_element_set_selection_end ::
        JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionEnd Mozilla HTMLInputElement.selectionEnd documentation> 
htmlInputElementSetSelectionEnd ::
                                (MonadIO m, IsHTMLInputElement self) => self -> Int -> m ()
htmlInputElementSetSelectionEnd self val
  = liftIO
      (ghcjs_dom_html_input_element_set_selection_end
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "$1[\"selectionEnd\"]"
        ghcjs_dom_html_input_element_get_selection_end ::
        JSRef HTMLInputElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionEnd Mozilla HTMLInputElement.selectionEnd documentation> 
htmlInputElementGetSelectionEnd ::
                                (MonadIO m, IsHTMLInputElement self) => self -> m Int
htmlInputElementGetSelectionEnd self
  = liftIO
      (ghcjs_dom_html_input_element_get_selection_end
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"selectionDirection\"] = $2;"
        ghcjs_dom_html_input_element_set_selection_direction ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionDirection Mozilla HTMLInputElement.selectionDirection documentation> 
htmlInputElementSetSelectionDirection ::
                                      (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                                        self -> val -> m ()
htmlInputElementSetSelectionDirection self val
  = liftIO
      (ghcjs_dom_html_input_element_set_selection_direction
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"selectionDirection\"]"
        ghcjs_dom_html_input_element_get_selection_direction ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionDirection Mozilla HTMLInputElement.selectionDirection documentation> 
htmlInputElementGetSelectionDirection ::
                                      (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                        self -> m result
htmlInputElementGetSelectionDirection self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_selection_direction
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_input_element_set_align ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.align Mozilla HTMLInputElement.align documentation> 
htmlInputElementSetAlign ::
                         (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                           self -> val -> m ()
htmlInputElementSetAlign self val
  = liftIO
      (ghcjs_dom_html_input_element_set_align
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_input_element_get_align ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.align Mozilla HTMLInputElement.align documentation> 
htmlInputElementGetAlign ::
                         (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                           self -> m result
htmlInputElementGetAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_align
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        ghcjs_dom_html_input_element_set_use_map ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.useMap Mozilla HTMLInputElement.useMap documentation> 
htmlInputElementSetUseMap ::
                          (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                            self -> val -> m ()
htmlInputElementSetUseMap self val
  = liftIO
      (ghcjs_dom_html_input_element_set_use_map
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"useMap\"]"
        ghcjs_dom_html_input_element_get_use_map ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.useMap Mozilla HTMLInputElement.useMap documentation> 
htmlInputElementGetUseMap ::
                          (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                            self -> m result
htmlInputElementGetUseMap self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_use_map
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"incremental\"] = $2;"
        ghcjs_dom_html_input_element_set_incremental ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.incremental Mozilla HTMLInputElement.incremental documentation> 
htmlInputElementSetIncremental ::
                               (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetIncremental self val
  = liftIO
      (ghcjs_dom_html_input_element_set_incremental
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"incremental\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_incremental ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.incremental Mozilla HTMLInputElement.incremental documentation> 
htmlInputElementGetIncremental ::
                               (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetIncremental self
  = liftIO
      (ghcjs_dom_html_input_element_get_incremental
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        ghcjs_dom_html_input_element_set_autocorrect ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocorrect Mozilla HTMLInputElement.autocorrect documentation> 
htmlInputElementSetAutocorrect ::
                               (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetAutocorrect self val
  = liftIO
      (ghcjs_dom_html_input_element_set_autocorrect
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_autocorrect ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocorrect Mozilla HTMLInputElement.autocorrect documentation> 
htmlInputElementGetAutocorrect ::
                               (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetAutocorrect self
  = liftIO
      (ghcjs_dom_html_input_element_get_autocorrect
         (unHTMLInputElement (toHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        ghcjs_dom_html_input_element_set_autocapitalize ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocapitalize Mozilla HTMLInputElement.autocapitalize documentation> 
htmlInputElementSetAutocapitalize ::
                                  (MonadIO m, IsHTMLInputElement self, ToJSString val) =>
                                    self -> val -> m ()
htmlInputElementSetAutocapitalize self val
  = liftIO
      (ghcjs_dom_html_input_element_set_autocapitalize
         (unHTMLInputElement (toHTMLInputElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        ghcjs_dom_html_input_element_get_autocapitalize ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocapitalize Mozilla HTMLInputElement.autocapitalize documentation> 
htmlInputElementGetAutocapitalize ::
                                  (MonadIO m, IsHTMLInputElement self, FromJSString result) =>
                                    self -> m result
htmlInputElementGetAutocapitalize self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_input_element_get_autocapitalize
            (unHTMLInputElement (toHTMLInputElement self))))
 
foreign import javascript unsafe "$1[\"capture\"] = $2;"
        ghcjs_dom_html_input_element_set_capture ::
        JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.capture Mozilla HTMLInputElement.capture documentation> 
htmlInputElementSetCapture ::
                           (MonadIO m, IsHTMLInputElement self) => self -> Bool -> m ()
htmlInputElementSetCapture self val
  = liftIO
      (ghcjs_dom_html_input_element_set_capture
         (unHTMLInputElement (toHTMLInputElement self))
         val)
 
foreign import javascript unsafe "($1[\"capture\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_capture ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.capture Mozilla HTMLInputElement.capture documentation> 
htmlInputElementGetCapture ::
                           (MonadIO m, IsHTMLInputElement self) => self -> m Bool
htmlInputElementGetCapture self
  = liftIO
      (ghcjs_dom_html_input_element_get_capture
         (unHTMLInputElement (toHTMLInputElement self)))
#else
module GHCJS.DOM.HTMLInputElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLInputElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLInputElement
#endif
