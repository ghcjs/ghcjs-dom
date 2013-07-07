{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLInputElement
       (ghcjs_dom_html_input_element_step_up, htmlInputElementStepUp,
        ghcjs_dom_html_input_element_step_down, htmlInputElementStepDown,
        ghcjs_dom_html_input_element_check_validity,
        htmlInputElementCheckValidity,
        ghcjs_dom_html_input_element_set_custom_validity,
        htmlInputElementSetCustomValidity,
        ghcjs_dom_html_input_element_select, htmlInputElementSelect,
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
        ghcjs_dom_html_input_element_set_align, htmlInputElementSetAlign,
        ghcjs_dom_html_input_element_get_align, htmlInputElementGetAlign,
        ghcjs_dom_html_input_element_set_webkitdirectory,
        htmlInputElementSetWebkitdirectory,
        ghcjs_dom_html_input_element_get_webkitdirectory,
        htmlInputElementGetWebkitdirectory,
        ghcjs_dom_html_input_element_set_use_map,
        htmlInputElementSetUseMap,
        ghcjs_dom_html_input_element_get_use_map,
        htmlInputElementGetUseMap,
        ghcjs_dom_html_input_element_set_incremental,
        htmlInputElementSetIncremental,
        ghcjs_dom_html_input_element_get_incremental,
        htmlInputElementGetIncremental,
        ghcjs_dom_html_input_element_set_webkit_speech,
        htmlInputElementSetWebkitSpeech,
        ghcjs_dom_html_input_element_get_webkit_speech,
        htmlInputElementGetWebkitSpeech,
        ghcjs_dom_html_input_element_set_webkit_grammar,
        htmlInputElementSetWebkitGrammar,
        ghcjs_dom_html_input_element_get_webkit_grammar,
        htmlInputElementGetWebkitGrammar,
        htmlInputElementOnwebkitspeechchange,
        ghcjs_dom_html_input_element_set_capture,
        htmlInputElementSetCapture,
        ghcjs_dom_html_input_element_get_capture,
        htmlInputElementGetCapture)
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
foreign import javascript unsafe "$1[\"stepUp\"]($2)"
        ghcjs_dom_html_input_element_step_up ::
        JSRef HTMLInputElement -> Int -> IO ()
#else 
ghcjs_dom_html_input_element_step_up ::
                                       JSRef HTMLInputElement -> Int -> IO ()
ghcjs_dom_html_input_element_step_up = undefined
#endif
 
htmlInputElementStepUp ::
                       (IsHTMLInputElement self) => self -> Int -> IO ()
htmlInputElementStepUp self n
  = ghcjs_dom_html_input_element_step_up
      (unHTMLInputElement (toHTMLInputElement self))
      n


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"stepDown\"]($2)"
        ghcjs_dom_html_input_element_step_down ::
        JSRef HTMLInputElement -> Int -> IO ()
#else 
ghcjs_dom_html_input_element_step_down ::
                                         JSRef HTMLInputElement -> Int -> IO ()
ghcjs_dom_html_input_element_step_down = undefined
#endif
 
htmlInputElementStepDown ::
                         (IsHTMLInputElement self) => self -> Int -> IO ()
htmlInputElementStepDown self n
  = ghcjs_dom_html_input_element_step_down
      (unHTMLInputElement (toHTMLInputElement self))
      n


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_input_element_check_validity ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_check_validity ::
                                              JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_check_validity = undefined
#endif
 
htmlInputElementCheckValidity ::
                              (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementCheckValidity self
  = ghcjs_dom_html_input_element_check_validity
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_input_element_set_custom_validity ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_custom_validity ::
                                                   JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_custom_validity = undefined
#endif
 
htmlInputElementSetCustomValidity ::
                                  (IsHTMLInputElement self, ToJSString error) =>
                                    self -> error -> IO ()
htmlInputElementSetCustomValidity self error
  = ghcjs_dom_html_input_element_set_custom_validity
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString error)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"select\"]()"
        ghcjs_dom_html_input_element_select ::
        JSRef HTMLInputElement -> IO ()
#else 
ghcjs_dom_html_input_element_select ::
                                      JSRef HTMLInputElement -> IO ()
ghcjs_dom_html_input_element_select = undefined
#endif
 
htmlInputElementSelect ::
                       (IsHTMLInputElement self) => self -> IO ()
htmlInputElementSelect self
  = ghcjs_dom_html_input_element_select
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setValueForUser\"]($2)"
        ghcjs_dom_html_input_element_set_value_for_user ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_value_for_user ::
                                                  JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_value_for_user = undefined
#endif
 
htmlInputElementSetValueForUser ::
                                (IsHTMLInputElement self, ToJSString value) =>
                                  self -> value -> IO ()
htmlInputElementSetValueForUser self value
  = ghcjs_dom_html_input_element_set_value_for_user
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString value)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"accept\"] = $2;"
        ghcjs_dom_html_input_element_set_accept ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_accept ::
                                          JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_accept = undefined
#endif
 
htmlInputElementSetAccept ::
                          (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetAccept self val
  = ghcjs_dom_html_input_element_set_accept
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"accept\"]"
        ghcjs_dom_html_input_element_get_accept ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_accept ::
                                          JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_accept = undefined
#endif
 
htmlInputElementGetAccept ::
                          (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetAccept self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_accept
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        ghcjs_dom_html_input_element_set_alt ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_alt ::
                                       JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_alt = undefined
#endif
 
htmlInputElementSetAlt ::
                       (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetAlt self val
  = ghcjs_dom_html_input_element_set_alt
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"]"
        ghcjs_dom_html_input_element_get_alt ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_alt ::
                                       JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_alt = undefined
#endif
 
htmlInputElementGetAlt ::
                       (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetAlt self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_alt
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        ghcjs_dom_html_input_element_set_autocomplete ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_autocomplete ::
                                                JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_autocomplete = undefined
#endif
 
htmlInputElementSetAutocomplete ::
                                (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetAutocomplete self val
  = ghcjs_dom_html_input_element_set_autocomplete
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        ghcjs_dom_html_input_element_get_autocomplete ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_autocomplete ::
                                                JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_autocomplete = undefined
#endif
 
htmlInputElementGetAutocomplete ::
                                (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetAutocomplete self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_autocomplete
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_input_element_set_autofocus ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_autofocus ::
                                             JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_autofocus = undefined
#endif
 
htmlInputElementSetAutofocus ::
                             (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetAutofocus self val
  = ghcjs_dom_html_input_element_set_autofocus
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_autofocus ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_autofocus ::
                                             JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_autofocus = undefined
#endif
 
htmlInputElementGetAutofocus ::
                             (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetAutofocus self
  = ghcjs_dom_html_input_element_get_autofocus
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultChecked\"] = $2;"
        ghcjs_dom_html_input_element_set_default_checked ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_default_checked ::
                                                   JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_default_checked = undefined
#endif
 
htmlInputElementSetDefaultChecked ::
                                  (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetDefaultChecked self val
  = ghcjs_dom_html_input_element_set_default_checked
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"defaultChecked\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_default_checked ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_default_checked ::
                                                   JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_default_checked = undefined
#endif
 
htmlInputElementGetDefaultChecked ::
                                  (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetDefaultChecked self
  = ghcjs_dom_html_input_element_get_default_checked
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"checked\"] = $2;"
        ghcjs_dom_html_input_element_set_checked ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_checked ::
                                           JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_checked = undefined
#endif
 
htmlInputElementSetChecked ::
                           (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetChecked self val
  = ghcjs_dom_html_input_element_set_checked
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"checked\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_checked ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_checked ::
                                           JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_checked = undefined
#endif
 
htmlInputElementGetChecked ::
                           (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetChecked self
  = ghcjs_dom_html_input_element_get_checked
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dirName\"] = $2;"
        ghcjs_dom_html_input_element_set_dir_name ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_dir_name ::
                                            JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_dir_name = undefined
#endif
 
htmlInputElementSetDirName ::
                           (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetDirName self val
  = ghcjs_dom_html_input_element_set_dir_name
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dirName\"]"
        ghcjs_dom_html_input_element_get_dir_name ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_dir_name ::
                                            JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_dir_name = undefined
#endif
 
htmlInputElementGetDirName ::
                           (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetDirName self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_dir_name
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_input_element_set_disabled ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_disabled ::
                                            JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_disabled = undefined
#endif
 
htmlInputElementSetDisabled ::
                            (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetDisabled self val
  = ghcjs_dom_html_input_element_set_disabled
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_disabled ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_disabled ::
                                            JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_disabled = undefined
#endif
 
htmlInputElementGetDisabled ::
                            (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetDisabled self
  = ghcjs_dom_html_input_element_get_disabled
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_input_element_get_form ::
        JSRef HTMLInputElement -> IO (JSRef HTMLFormElement)
#else 
ghcjs_dom_html_input_element_get_form ::
                                        JSRef HTMLInputElement -> IO (JSRef HTMLFormElement)
ghcjs_dom_html_input_element_get_form = undefined
#endif
 
htmlInputElementGetForm ::
                        (IsHTMLInputElement self) => self -> IO (Maybe HTMLFormElement)
htmlInputElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_form
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"files\"] = $2;"
        ghcjs_dom_html_input_element_set_files ::
        JSRef HTMLInputElement -> JSRef FileList -> IO ()
#else 
ghcjs_dom_html_input_element_set_files ::
                                         JSRef HTMLInputElement -> JSRef FileList -> IO ()
ghcjs_dom_html_input_element_set_files = undefined
#endif
 
htmlInputElementSetFiles ::
                         (IsHTMLInputElement self, IsFileList val) =>
                           self -> Maybe val -> IO ()
htmlInputElementSetFiles self val
  = ghcjs_dom_html_input_element_set_files
      (unHTMLInputElement (toHTMLInputElement self))
      (maybe jsNull (unFileList . toFileList) val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"files\"]"
        ghcjs_dom_html_input_element_get_files ::
        JSRef HTMLInputElement -> IO (JSRef FileList)
#else 
ghcjs_dom_html_input_element_get_files ::
                                         JSRef HTMLInputElement -> IO (JSRef FileList)
ghcjs_dom_html_input_element_get_files = undefined
#endif
 
htmlInputElementGetFiles ::
                         (IsHTMLInputElement self) => self -> IO (Maybe FileList)
htmlInputElementGetFiles self
  = fmap FileList . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_files
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        ghcjs_dom_html_input_element_set_form_action ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_form_action ::
                                               JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_form_action = undefined
#endif
 
htmlInputElementSetFormAction ::
                              (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetFormAction self val
  = ghcjs_dom_html_input_element_set_form_action
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formAction\"]"
        ghcjs_dom_html_input_element_get_form_action ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_form_action ::
                                               JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_form_action = undefined
#endif
 
htmlInputElementGetFormAction ::
                              (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetFormAction self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_form_action
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        ghcjs_dom_html_input_element_set_form_enctype ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_form_enctype ::
                                                JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_form_enctype = undefined
#endif
 
htmlInputElementSetFormEnctype ::
                               (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetFormEnctype self val
  = ghcjs_dom_html_input_element_set_form_enctype
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        ghcjs_dom_html_input_element_get_form_enctype ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_form_enctype ::
                                                JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_form_enctype = undefined
#endif
 
htmlInputElementGetFormEnctype ::
                               (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetFormEnctype self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_form_enctype
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        ghcjs_dom_html_input_element_set_form_method ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_form_method ::
                                               JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_form_method = undefined
#endif
 
htmlInputElementSetFormMethod ::
                              (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetFormMethod self val
  = ghcjs_dom_html_input_element_set_form_method
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formMethod\"]"
        ghcjs_dom_html_input_element_get_form_method ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_form_method ::
                                               JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_form_method = undefined
#endif
 
htmlInputElementGetFormMethod ::
                              (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetFormMethod self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_form_method
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        ghcjs_dom_html_input_element_set_form_no_validate ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_form_no_validate ::
                                                    JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_form_no_validate = undefined
#endif
 
htmlInputElementSetFormNoValidate ::
                                  (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetFormNoValidate self val
  = ghcjs_dom_html_input_element_set_form_no_validate
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_form_no_validate ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_form_no_validate ::
                                                    JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_form_no_validate = undefined
#endif
 
htmlInputElementGetFormNoValidate ::
                                  (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetFormNoValidate self
  = ghcjs_dom_html_input_element_get_form_no_validate
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        ghcjs_dom_html_input_element_set_form_target ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_form_target ::
                                               JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_form_target = undefined
#endif
 
htmlInputElementSetFormTarget ::
                              (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetFormTarget self val
  = ghcjs_dom_html_input_element_set_form_target
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formTarget\"]"
        ghcjs_dom_html_input_element_get_form_target ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_form_target ::
                                               JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_form_target = undefined
#endif
 
htmlInputElementGetFormTarget ::
                              (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetFormTarget self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_form_target
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_input_element_set_height ::
        JSRef HTMLInputElement -> Word -> IO ()
#else 
ghcjs_dom_html_input_element_set_height ::
                                          JSRef HTMLInputElement -> Word -> IO ()
ghcjs_dom_html_input_element_set_height = undefined
#endif
 
htmlInputElementSetHeight ::
                          (IsHTMLInputElement self) => self -> Word -> IO ()
htmlInputElementSetHeight self val
  = ghcjs_dom_html_input_element_set_height
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_input_element_get_height ::
        JSRef HTMLInputElement -> IO Word
#else 
ghcjs_dom_html_input_element_get_height ::
                                          JSRef HTMLInputElement -> IO Word
ghcjs_dom_html_input_element_get_height = undefined
#endif
 
htmlInputElementGetHeight ::
                          (IsHTMLInputElement self) => self -> IO Word
htmlInputElementGetHeight self
  = ghcjs_dom_html_input_element_get_height
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"indeterminate\"] = $2;"
        ghcjs_dom_html_input_element_set_indeterminate ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_indeterminate ::
                                                 JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_indeterminate = undefined
#endif
 
htmlInputElementSetIndeterminate ::
                                 (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetIndeterminate self val
  = ghcjs_dom_html_input_element_set_indeterminate
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"indeterminate\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_indeterminate ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_indeterminate ::
                                                 JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_indeterminate = undefined
#endif
 
htmlInputElementGetIndeterminate ::
                                 (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetIndeterminate self
  = ghcjs_dom_html_input_element_get_indeterminate
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"list\"]"
        ghcjs_dom_html_input_element_get_list ::
        JSRef HTMLInputElement -> IO (JSRef HTMLElement)
#else 
ghcjs_dom_html_input_element_get_list ::
                                        JSRef HTMLInputElement -> IO (JSRef HTMLElement)
ghcjs_dom_html_input_element_get_list = undefined
#endif
 
htmlInputElementGetList ::
                        (IsHTMLInputElement self) => self -> IO (Maybe HTMLElement)
htmlInputElementGetList self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_list
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"max\"] = $2;"
        ghcjs_dom_html_input_element_set_max ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_max ::
                                       JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_max = undefined
#endif
 
htmlInputElementSetMax ::
                       (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetMax self val
  = ghcjs_dom_html_input_element_set_max
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"max\"]"
        ghcjs_dom_html_input_element_get_max ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_max ::
                                       JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_max = undefined
#endif
 
htmlInputElementGetMax ::
                       (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetMax self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_max
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"maxLength\"] = $2;"
        ghcjs_dom_html_input_element_set_max_length ::
        JSRef HTMLInputElement -> Int -> IO ()
#else 
ghcjs_dom_html_input_element_set_max_length ::
                                              JSRef HTMLInputElement -> Int -> IO ()
ghcjs_dom_html_input_element_set_max_length = undefined
#endif
 
htmlInputElementSetMaxLength ::
                             (IsHTMLInputElement self) => self -> Int -> IO ()
htmlInputElementSetMaxLength self val
  = ghcjs_dom_html_input_element_set_max_length
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"maxLength\"]"
        ghcjs_dom_html_input_element_get_max_length ::
        JSRef HTMLInputElement -> IO Int
#else 
ghcjs_dom_html_input_element_get_max_length ::
                                              JSRef HTMLInputElement -> IO Int
ghcjs_dom_html_input_element_get_max_length = undefined
#endif
 
htmlInputElementGetMaxLength ::
                             (IsHTMLInputElement self) => self -> IO Int
htmlInputElementGetMaxLength self
  = ghcjs_dom_html_input_element_get_max_length
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"min\"] = $2;"
        ghcjs_dom_html_input_element_set_min ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_min ::
                                       JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_min = undefined
#endif
 
htmlInputElementSetMin ::
                       (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetMin self val
  = ghcjs_dom_html_input_element_set_min
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"min\"]"
        ghcjs_dom_html_input_element_get_min ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_min ::
                                       JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_min = undefined
#endif
 
htmlInputElementGetMin ::
                       (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetMin self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_min
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        ghcjs_dom_html_input_element_set_multiple ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_multiple ::
                                            JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_multiple = undefined
#endif
 
htmlInputElementSetMultiple ::
                            (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetMultiple self val
  = ghcjs_dom_html_input_element_set_multiple
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"multiple\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_multiple ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_multiple ::
                                            JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_multiple = undefined
#endif
 
htmlInputElementGetMultiple ::
                            (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetMultiple self
  = ghcjs_dom_html_input_element_get_multiple
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_input_element_set_name ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_name ::
                                        JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_name = undefined
#endif
 
htmlInputElementSetName ::
                        (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetName self val
  = ghcjs_dom_html_input_element_set_name
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_input_element_get_name ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_name ::
                                        JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_name = undefined
#endif
 
htmlInputElementGetName ::
                        (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_name
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pattern\"] = $2;"
        ghcjs_dom_html_input_element_set_pattern ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_pattern ::
                                           JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_pattern = undefined
#endif
 
htmlInputElementSetPattern ::
                           (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetPattern self val
  = ghcjs_dom_html_input_element_set_pattern
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pattern\"]"
        ghcjs_dom_html_input_element_get_pattern ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_pattern ::
                                           JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_pattern = undefined
#endif
 
htmlInputElementGetPattern ::
                           (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetPattern self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_pattern
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"placeholder\"] = $2;"
        ghcjs_dom_html_input_element_set_placeholder ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_placeholder ::
                                               JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_placeholder = undefined
#endif
 
htmlInputElementSetPlaceholder ::
                               (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetPlaceholder self val
  = ghcjs_dom_html_input_element_set_placeholder
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"placeholder\"]"
        ghcjs_dom_html_input_element_get_placeholder ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_placeholder ::
                                               JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_placeholder = undefined
#endif
 
htmlInputElementGetPlaceholder ::
                               (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetPlaceholder self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_placeholder
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"readOnly\"] = $2;"
        ghcjs_dom_html_input_element_set_read_only ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_read_only ::
                                             JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_read_only = undefined
#endif
 
htmlInputElementSetReadOnly ::
                            (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetReadOnly self val
  = ghcjs_dom_html_input_element_set_read_only
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"readOnly\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_read_only ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_read_only ::
                                             JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_read_only = undefined
#endif
 
htmlInputElementGetReadOnly ::
                            (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetReadOnly self
  = ghcjs_dom_html_input_element_get_read_only
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        ghcjs_dom_html_input_element_set_required ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_required ::
                                            JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_required = undefined
#endif
 
htmlInputElementSetRequired ::
                            (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetRequired self val
  = ghcjs_dom_html_input_element_set_required
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_required ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_required ::
                                            JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_required = undefined
#endif
 
htmlInputElementGetRequired ::
                            (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetRequired self
  = ghcjs_dom_html_input_element_get_required
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_html_input_element_set_size ::
        JSRef HTMLInputElement -> Word -> IO ()
#else 
ghcjs_dom_html_input_element_set_size ::
                                        JSRef HTMLInputElement -> Word -> IO ()
ghcjs_dom_html_input_element_set_size = undefined
#endif
 
htmlInputElementSetSize ::
                        (IsHTMLInputElement self) => self -> Word -> IO ()
htmlInputElementSetSize self val
  = ghcjs_dom_html_input_element_set_size
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_html_input_element_get_size ::
        JSRef HTMLInputElement -> IO Word
#else 
ghcjs_dom_html_input_element_get_size ::
                                        JSRef HTMLInputElement -> IO Word
ghcjs_dom_html_input_element_get_size = undefined
#endif
 
htmlInputElementGetSize ::
                        (IsHTMLInputElement self) => self -> IO Word
htmlInputElementGetSize self
  = ghcjs_dom_html_input_element_get_size
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_input_element_set_src ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_src ::
                                       JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_src = undefined
#endif
 
htmlInputElementSetSrc ::
                       (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetSrc self val
  = ghcjs_dom_html_input_element_set_src
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_input_element_get_src ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_src ::
                                       JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_src = undefined
#endif
 
htmlInputElementGetSrc ::
                       (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_src
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"step\"] = $2;"
        ghcjs_dom_html_input_element_set_step ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_step ::
                                        JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_step = undefined
#endif
 
htmlInputElementSetStep ::
                        (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetStep self val
  = ghcjs_dom_html_input_element_set_step
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"step\"]"
        ghcjs_dom_html_input_element_get_step ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_step ::
                                        JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_step = undefined
#endif
 
htmlInputElementGetStep ::
                        (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetStep self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_step
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        ghcjs_dom_html_input_element_set_default_value ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_default_value ::
                                                 JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_default_value = undefined
#endif
 
htmlInputElementSetDefaultValue ::
                                (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetDefaultValue self val
  = ghcjs_dom_html_input_element_set_default_value
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        ghcjs_dom_html_input_element_get_default_value ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_default_value ::
                                                 JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_default_value = undefined
#endif
 
htmlInputElementGetDefaultValue ::
                                (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetDefaultValue self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_default_value
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_input_element_set_value ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_value ::
                                         JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_value = undefined
#endif
 
htmlInputElementSetValue ::
                         (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetValue self val
  = ghcjs_dom_html_input_element_set_value
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_input_element_get_value ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_value ::
                                         JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_value = undefined
#endif
 
htmlInputElementGetValue ::
                         (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_value
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"valueAsNumber\"] = $2;"
        ghcjs_dom_html_input_element_set_value_as_number ::
        JSRef HTMLInputElement -> Double -> IO ()
#else 
ghcjs_dom_html_input_element_set_value_as_number ::
                                                   JSRef HTMLInputElement -> Double -> IO ()
ghcjs_dom_html_input_element_set_value_as_number = undefined
#endif
 
htmlInputElementSetValueAsNumber ::
                                 (IsHTMLInputElement self) => self -> Double -> IO ()
htmlInputElementSetValueAsNumber self val
  = ghcjs_dom_html_input_element_set_value_as_number
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"valueAsNumber\"]"
        ghcjs_dom_html_input_element_get_value_as_number ::
        JSRef HTMLInputElement -> IO Double
#else 
ghcjs_dom_html_input_element_get_value_as_number ::
                                                   JSRef HTMLInputElement -> IO Double
ghcjs_dom_html_input_element_get_value_as_number = undefined
#endif
 
htmlInputElementGetValueAsNumber ::
                                 (IsHTMLInputElement self) => self -> IO Double
htmlInputElementGetValueAsNumber self
  = ghcjs_dom_html_input_element_get_value_as_number
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_input_element_set_width ::
        JSRef HTMLInputElement -> Word -> IO ()
#else 
ghcjs_dom_html_input_element_set_width ::
                                         JSRef HTMLInputElement -> Word -> IO ()
ghcjs_dom_html_input_element_set_width = undefined
#endif
 
htmlInputElementSetWidth ::
                         (IsHTMLInputElement self) => self -> Word -> IO ()
htmlInputElementSetWidth self val
  = ghcjs_dom_html_input_element_set_width
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_input_element_get_width ::
        JSRef HTMLInputElement -> IO Word
#else 
ghcjs_dom_html_input_element_get_width ::
                                         JSRef HTMLInputElement -> IO Word
ghcjs_dom_html_input_element_get_width = undefined
#endif
 
htmlInputElementGetWidth ::
                         (IsHTMLInputElement self) => self -> IO Word
htmlInputElementGetWidth self
  = ghcjs_dom_html_input_element_get_width
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_will_validate ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_will_validate ::
                                                 JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_will_validate = undefined
#endif
 
htmlInputElementGetWillValidate ::
                                (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetWillValidate self
  = ghcjs_dom_html_input_element_get_will_validate
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_input_element_get_validity ::
        JSRef HTMLInputElement -> IO (JSRef ValidityState)
#else 
ghcjs_dom_html_input_element_get_validity ::
                                            JSRef HTMLInputElement -> IO (JSRef ValidityState)
ghcjs_dom_html_input_element_get_validity = undefined
#endif
 
htmlInputElementGetValidity ::
                            (IsHTMLInputElement self) => self -> IO (Maybe ValidityState)
htmlInputElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_validity
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_input_element_get_validation_message ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_validation_message ::
                                                      JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_validation_message = undefined
#endif
 
htmlInputElementGetValidationMessage ::
                                     (IsHTMLInputElement self, FromJSString result) =>
                                       self -> IO result
htmlInputElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_validation_message
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_input_element_get_labels ::
        JSRef HTMLInputElement -> IO (JSRef NodeList)
#else 
ghcjs_dom_html_input_element_get_labels ::
                                          JSRef HTMLInputElement -> IO (JSRef NodeList)
ghcjs_dom_html_input_element_get_labels = undefined
#endif
 
htmlInputElementGetLabels ::
                          (IsHTMLInputElement self) => self -> IO (Maybe NodeList)
htmlInputElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_html_input_element_get_labels
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_input_element_set_align ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_align ::
                                         JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_align = undefined
#endif
 
htmlInputElementSetAlign ::
                         (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetAlign self val
  = ghcjs_dom_html_input_element_set_align
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_input_element_get_align ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_align ::
                                         JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_align = undefined
#endif
 
htmlInputElementGetAlign ::
                         (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_align
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitdirectory\"] = $2;"
        ghcjs_dom_html_input_element_set_webkitdirectory ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_webkitdirectory ::
                                                   JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_webkitdirectory = undefined
#endif
 
htmlInputElementSetWebkitdirectory ::
                                   (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetWebkitdirectory self val
  = ghcjs_dom_html_input_element_set_webkitdirectory
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitdirectory\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_webkitdirectory ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_webkitdirectory ::
                                                   JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_webkitdirectory = undefined
#endif
 
htmlInputElementGetWebkitdirectory ::
                                   (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetWebkitdirectory self
  = ghcjs_dom_html_input_element_get_webkitdirectory
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        ghcjs_dom_html_input_element_set_use_map ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_use_map ::
                                           JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_use_map = undefined
#endif
 
htmlInputElementSetUseMap ::
                          (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetUseMap self val
  = ghcjs_dom_html_input_element_set_use_map
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"useMap\"]"
        ghcjs_dom_html_input_element_get_use_map ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_use_map ::
                                           JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_use_map = undefined
#endif
 
htmlInputElementGetUseMap ::
                          (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetUseMap self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_use_map
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"incremental\"] = $2;"
        ghcjs_dom_html_input_element_set_incremental ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_incremental ::
                                               JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_incremental = undefined
#endif
 
htmlInputElementSetIncremental ::
                               (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetIncremental self val
  = ghcjs_dom_html_input_element_set_incremental
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"incremental\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_incremental ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_incremental ::
                                               JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_incremental = undefined
#endif
 
htmlInputElementGetIncremental ::
                               (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetIncremental self
  = ghcjs_dom_html_input_element_get_incremental
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitSpeech\"] = $2;"
        ghcjs_dom_html_input_element_set_webkit_speech ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_webkit_speech ::
                                                 JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_webkit_speech = undefined
#endif
 
htmlInputElementSetWebkitSpeech ::
                                (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetWebkitSpeech self val
  = ghcjs_dom_html_input_element_set_webkit_speech
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"webkitSpeech\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_webkit_speech ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_webkit_speech ::
                                                 JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_webkit_speech = undefined
#endif
 
htmlInputElementGetWebkitSpeech ::
                                (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetWebkitSpeech self
  = ghcjs_dom_html_input_element_get_webkit_speech
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitGrammar\"] = $2;"
        ghcjs_dom_html_input_element_set_webkit_grammar ::
        JSRef HTMLInputElement -> Bool -> IO ()
#else 
ghcjs_dom_html_input_element_set_webkit_grammar ::
                                                  JSRef HTMLInputElement -> Bool -> IO ()
ghcjs_dom_html_input_element_set_webkit_grammar = undefined
#endif
 
htmlInputElementSetWebkitGrammar ::
                                 (IsHTMLInputElement self) => self -> Bool -> IO ()
htmlInputElementSetWebkitGrammar self val
  = ghcjs_dom_html_input_element_set_webkit_grammar
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"webkitGrammar\"] ? 1 : 0)"
        ghcjs_dom_html_input_element_get_webkit_grammar ::
        JSRef HTMLInputElement -> IO Bool
#else 
ghcjs_dom_html_input_element_get_webkit_grammar ::
                                                  JSRef HTMLInputElement -> IO Bool
ghcjs_dom_html_input_element_get_webkit_grammar = undefined
#endif
 
htmlInputElementGetWebkitGrammar ::
                                 (IsHTMLInputElement self) => self -> IO Bool
htmlInputElementGetWebkitGrammar self
  = ghcjs_dom_html_input_element_get_webkit_grammar
      (unHTMLInputElement (toHTMLInputElement self))
 
htmlInputElementOnwebkitspeechchange ::
                                     (IsHTMLInputElement self) =>
                                       Signal self (EventM UIEvent self ())
htmlInputElementOnwebkitspeechchange
  = (connect "webkitspeechchange")


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"capture\"] = $2;"
        ghcjs_dom_html_input_element_set_capture ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
ghcjs_dom_html_input_element_set_capture ::
                                           JSRef HTMLInputElement -> JSString -> IO ()
ghcjs_dom_html_input_element_set_capture = undefined
#endif
 
htmlInputElementSetCapture ::
                           (IsHTMLInputElement self, ToJSString val) => self -> val -> IO ()
htmlInputElementSetCapture self val
  = ghcjs_dom_html_input_element_set_capture
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"capture\"]"
        ghcjs_dom_html_input_element_get_capture ::
        JSRef HTMLInputElement -> IO JSString
#else 
ghcjs_dom_html_input_element_get_capture ::
                                           JSRef HTMLInputElement -> IO JSString
ghcjs_dom_html_input_element_get_capture = undefined
#endif
 
htmlInputElementGetCapture ::
                           (IsHTMLInputElement self, FromJSString result) => self -> IO result
htmlInputElementGetCapture self
  = fromJSString <$>
      (ghcjs_dom_html_input_element_get_capture
         (unHTMLInputElement (toHTMLInputElement self)))