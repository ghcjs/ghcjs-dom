{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLInputElement
       (webkit_dom_html_input_element_step_up, htmlInputElementStepUp,
        webkit_dom_html_input_element_step_down, htmlInputElementStepDown,
        webkit_dom_html_input_element_check_validity,
        htmlInputElementCheckValidity,
        webkit_dom_html_input_element_set_custom_validity,
        htmlInputElementSetCustomValidity,
        webkit_dom_html_input_element_select, htmlInputElementSelect,
        webkit_dom_html_input_element_set_value_for_user,
        htmlInputElementSetValueForUser,
        webkit_dom_html_input_element_set_accept,
        htmlInputElementSetAccept,
        webkit_dom_html_input_element_get_accept,
        htmlInputElementGetAccept, webkit_dom_html_input_element_set_alt,
        htmlInputElementSetAlt, webkit_dom_html_input_element_get_alt,
        htmlInputElementGetAlt,
        webkit_dom_html_input_element_set_autocomplete,
        htmlInputElementSetAutocomplete,
        webkit_dom_html_input_element_get_autocomplete,
        htmlInputElementGetAutocomplete,
        webkit_dom_html_input_element_set_autofocus,
        htmlInputElementSetAutofocus,
        webkit_dom_html_input_element_get_autofocus,
        htmlInputElementGetAutofocus,
        webkit_dom_html_input_element_set_default_checked,
        htmlInputElementSetDefaultChecked,
        webkit_dom_html_input_element_get_default_checked,
        htmlInputElementGetDefaultChecked,
        webkit_dom_html_input_element_set_checked,
        htmlInputElementSetChecked,
        webkit_dom_html_input_element_get_checked,
        htmlInputElementGetChecked,
        webkit_dom_html_input_element_set_dir_name,
        htmlInputElementSetDirName,
        webkit_dom_html_input_element_get_dir_name,
        htmlInputElementGetDirName,
        webkit_dom_html_input_element_set_disabled,
        htmlInputElementSetDisabled,
        webkit_dom_html_input_element_get_disabled,
        htmlInputElementGetDisabled,
        webkit_dom_html_input_element_get_form, htmlInputElementGetForm,
        webkit_dom_html_input_element_set_files, htmlInputElementSetFiles,
        webkit_dom_html_input_element_get_files, htmlInputElementGetFiles,
        webkit_dom_html_input_element_set_form_action,
        htmlInputElementSetFormAction,
        webkit_dom_html_input_element_get_form_action,
        htmlInputElementGetFormAction,
        webkit_dom_html_input_element_set_form_enctype,
        htmlInputElementSetFormEnctype,
        webkit_dom_html_input_element_get_form_enctype,
        htmlInputElementGetFormEnctype,
        webkit_dom_html_input_element_set_form_method,
        htmlInputElementSetFormMethod,
        webkit_dom_html_input_element_get_form_method,
        htmlInputElementGetFormMethod,
        webkit_dom_html_input_element_set_form_no_validate,
        htmlInputElementSetFormNoValidate,
        webkit_dom_html_input_element_get_form_no_validate,
        htmlInputElementGetFormNoValidate,
        webkit_dom_html_input_element_set_form_target,
        htmlInputElementSetFormTarget,
        webkit_dom_html_input_element_get_form_target,
        htmlInputElementGetFormTarget,
        webkit_dom_html_input_element_set_height,
        htmlInputElementSetHeight,
        webkit_dom_html_input_element_get_height,
        htmlInputElementGetHeight,
        webkit_dom_html_input_element_set_indeterminate,
        htmlInputElementSetIndeterminate,
        webkit_dom_html_input_element_get_indeterminate,
        htmlInputElementGetIndeterminate,
        webkit_dom_html_input_element_get_list, htmlInputElementGetList,
        webkit_dom_html_input_element_set_max, htmlInputElementSetMax,
        webkit_dom_html_input_element_get_max, htmlInputElementGetMax,
        webkit_dom_html_input_element_set_max_length,
        htmlInputElementSetMaxLength,
        webkit_dom_html_input_element_get_max_length,
        htmlInputElementGetMaxLength,
        webkit_dom_html_input_element_set_min, htmlInputElementSetMin,
        webkit_dom_html_input_element_get_min, htmlInputElementGetMin,
        webkit_dom_html_input_element_set_multiple,
        htmlInputElementSetMultiple,
        webkit_dom_html_input_element_get_multiple,
        htmlInputElementGetMultiple,
        webkit_dom_html_input_element_set_name, htmlInputElementSetName,
        webkit_dom_html_input_element_get_name, htmlInputElementGetName,
        webkit_dom_html_input_element_set_pattern,
        htmlInputElementSetPattern,
        webkit_dom_html_input_element_get_pattern,
        htmlInputElementGetPattern,
        webkit_dom_html_input_element_set_placeholder,
        htmlInputElementSetPlaceholder,
        webkit_dom_html_input_element_get_placeholder,
        htmlInputElementGetPlaceholder,
        webkit_dom_html_input_element_set_read_only,
        htmlInputElementSetReadOnly,
        webkit_dom_html_input_element_get_read_only,
        htmlInputElementGetReadOnly,
        webkit_dom_html_input_element_set_required,
        htmlInputElementSetRequired,
        webkit_dom_html_input_element_get_required,
        htmlInputElementGetRequired,
        webkit_dom_html_input_element_set_size, htmlInputElementSetSize,
        webkit_dom_html_input_element_get_size, htmlInputElementGetSize,
        webkit_dom_html_input_element_set_src, htmlInputElementSetSrc,
        webkit_dom_html_input_element_get_src, htmlInputElementGetSrc,
        webkit_dom_html_input_element_set_step, htmlInputElementSetStep,
        webkit_dom_html_input_element_get_step, htmlInputElementGetStep,
        webkit_dom_html_input_element_set_default_value,
        htmlInputElementSetDefaultValue,
        webkit_dom_html_input_element_get_default_value,
        htmlInputElementGetDefaultValue,
        webkit_dom_html_input_element_set_value, htmlInputElementSetValue,
        webkit_dom_html_input_element_get_value, htmlInputElementGetValue,
        webkit_dom_html_input_element_set_value_as_number,
        htmlInputElementSetValueAsNumber,
        webkit_dom_html_input_element_get_value_as_number,
        htmlInputElementGetValueAsNumber,
        webkit_dom_html_input_element_set_width, htmlInputElementSetWidth,
        webkit_dom_html_input_element_get_width, htmlInputElementGetWidth,
        webkit_dom_html_input_element_get_will_validate,
        htmlInputElementGetWillValidate,
        webkit_dom_html_input_element_get_validity,
        htmlInputElementGetValidity,
        webkit_dom_html_input_element_get_validation_message,
        htmlInputElementGetValidationMessage,
        webkit_dom_html_input_element_get_labels,
        htmlInputElementGetLabels, webkit_dom_html_input_element_set_align,
        htmlInputElementSetAlign, webkit_dom_html_input_element_get_align,
        htmlInputElementGetAlign,
        webkit_dom_html_input_element_set_webkitdirectory,
        htmlInputElementSetWebkitdirectory,
        webkit_dom_html_input_element_get_webkitdirectory,
        htmlInputElementGetWebkitdirectory,
        webkit_dom_html_input_element_set_use_map,
        htmlInputElementSetUseMap,
        webkit_dom_html_input_element_get_use_map,
        htmlInputElementGetUseMap,
        webkit_dom_html_input_element_set_incremental,
        htmlInputElementSetIncremental,
        webkit_dom_html_input_element_get_incremental,
        htmlInputElementGetIncremental,
        webkit_dom_html_input_element_set_webkit_speech,
        htmlInputElementSetWebkitSpeech,
        webkit_dom_html_input_element_get_webkit_speech,
        htmlInputElementGetWebkitSpeech,
        webkit_dom_html_input_element_set_webkit_grammar,
        htmlInputElementSetWebkitGrammar,
        webkit_dom_html_input_element_get_webkit_grammar,
        htmlInputElementGetWebkitGrammar,
        htmlInputElementOnwebkitspeechchange,
        webkit_dom_html_input_element_set_capture,
        htmlInputElementSetCapture,
        webkit_dom_html_input_element_get_capture,
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
        webkit_dom_html_input_element_step_up ::
        JSRef HTMLInputElement -> Int -> IO ()
#else 
webkit_dom_html_input_element_step_up ::
                                        JSRef HTMLInputElement -> Int -> IO ()
webkit_dom_html_input_element_step_up = undefined
#endif
 
htmlInputElementStepUp ::
                       (HTMLInputElementClass self) => self -> Int -> IO ()
htmlInputElementStepUp self n
  = webkit_dom_html_input_element_step_up
      (unHTMLInputElement (toHTMLInputElement self))
      n


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"stepDown\"]($2)"
        webkit_dom_html_input_element_step_down ::
        JSRef HTMLInputElement -> Int -> IO ()
#else 
webkit_dom_html_input_element_step_down ::
                                          JSRef HTMLInputElement -> Int -> IO ()
webkit_dom_html_input_element_step_down = undefined
#endif
 
htmlInputElementStepDown ::
                         (HTMLInputElementClass self) => self -> Int -> IO ()
htmlInputElementStepDown self n
  = webkit_dom_html_input_element_step_down
      (unHTMLInputElement (toHTMLInputElement self))
      n


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        webkit_dom_html_input_element_check_validity ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_check_validity ::
                                               JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_check_validity = undefined
#endif
 
htmlInputElementCheckValidity ::
                              (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementCheckValidity self
  = fromJSBool <$>
      (webkit_dom_html_input_element_check_validity
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        webkit_dom_html_input_element_set_custom_validity ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_custom_validity ::
                                                    JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_custom_validity = undefined
#endif
 
htmlInputElementSetCustomValidity ::
                                  (HTMLInputElementClass self, ToJSString error) =>
                                    self -> error -> IO ()
htmlInputElementSetCustomValidity self error
  = webkit_dom_html_input_element_set_custom_validity
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString error)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"select\"]()"
        webkit_dom_html_input_element_select ::
        JSRef HTMLInputElement -> IO ()
#else 
webkit_dom_html_input_element_select ::
                                       JSRef HTMLInputElement -> IO ()
webkit_dom_html_input_element_select = undefined
#endif
 
htmlInputElementSelect ::
                       (HTMLInputElementClass self) => self -> IO ()
htmlInputElementSelect self
  = webkit_dom_html_input_element_select
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setValueForUser\"]($2)"
        webkit_dom_html_input_element_set_value_for_user ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_value_for_user ::
                                                   JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_value_for_user = undefined
#endif
 
htmlInputElementSetValueForUser ::
                                (HTMLInputElementClass self, ToJSString value) =>
                                  self -> value -> IO ()
htmlInputElementSetValueForUser self value
  = webkit_dom_html_input_element_set_value_for_user
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString value)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"accept\"] = $2;"
        webkit_dom_html_input_element_set_accept ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_accept ::
                                           JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_accept = undefined
#endif
 
htmlInputElementSetAccept ::
                          (HTMLInputElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlInputElementSetAccept self val
  = webkit_dom_html_input_element_set_accept
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"accept\"]"
        webkit_dom_html_input_element_get_accept ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_accept ::
                                           JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_accept = undefined
#endif
 
htmlInputElementGetAccept ::
                          (HTMLInputElementClass self, FromJSString result) =>
                            self -> IO result
htmlInputElementGetAccept self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_accept
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        webkit_dom_html_input_element_set_alt ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_alt ::
                                        JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_alt = undefined
#endif
 
htmlInputElementSetAlt ::
                       (HTMLInputElementClass self, ToJSString val) =>
                         self -> val -> IO ()
htmlInputElementSetAlt self val
  = webkit_dom_html_input_element_set_alt
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"]"
        webkit_dom_html_input_element_get_alt ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_alt ::
                                        JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_alt = undefined
#endif
 
htmlInputElementGetAlt ::
                       (HTMLInputElementClass self, FromJSString result) =>
                         self -> IO result
htmlInputElementGetAlt self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_alt
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        webkit_dom_html_input_element_set_autocomplete ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_autocomplete ::
                                                 JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_autocomplete = undefined
#endif
 
htmlInputElementSetAutocomplete ::
                                (HTMLInputElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmlInputElementSetAutocomplete self val
  = webkit_dom_html_input_element_set_autocomplete
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        webkit_dom_html_input_element_get_autocomplete ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_autocomplete ::
                                                 JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_autocomplete = undefined
#endif
 
htmlInputElementGetAutocomplete ::
                                (HTMLInputElementClass self, FromJSString result) =>
                                  self -> IO result
htmlInputElementGetAutocomplete self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_autocomplete
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        webkit_dom_html_input_element_set_autofocus ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_autofocus ::
                                              JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_autofocus = undefined
#endif
 
htmlInputElementSetAutofocus ::
                             (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetAutofocus self val
  = webkit_dom_html_input_element_set_autofocus
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_autofocus ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_autofocus ::
                                              JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_autofocus = undefined
#endif
 
htmlInputElementGetAutofocus ::
                             (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetAutofocus self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_autofocus
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultChecked\"] = $2;"
        webkit_dom_html_input_element_set_default_checked ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_default_checked ::
                                                    JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_default_checked = undefined
#endif
 
htmlInputElementSetDefaultChecked ::
                                  (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetDefaultChecked self val
  = webkit_dom_html_input_element_set_default_checked
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"defaultChecked\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_default_checked ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_default_checked ::
                                                    JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_default_checked = undefined
#endif
 
htmlInputElementGetDefaultChecked ::
                                  (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetDefaultChecked self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_default_checked
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"checked\"] = $2;"
        webkit_dom_html_input_element_set_checked ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_checked ::
                                            JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_checked = undefined
#endif
 
htmlInputElementSetChecked ::
                           (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetChecked self val
  = webkit_dom_html_input_element_set_checked
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"checked\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_checked ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_checked ::
                                            JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_checked = undefined
#endif
 
htmlInputElementGetChecked ::
                           (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetChecked self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_checked
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dirName\"] = $2;"
        webkit_dom_html_input_element_set_dir_name ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_dir_name ::
                                             JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_dir_name = undefined
#endif
 
htmlInputElementSetDirName ::
                           (HTMLInputElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlInputElementSetDirName self val
  = webkit_dom_html_input_element_set_dir_name
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dirName\"]"
        webkit_dom_html_input_element_get_dir_name ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_dir_name ::
                                             JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_dir_name = undefined
#endif
 
htmlInputElementGetDirName ::
                           (HTMLInputElementClass self, FromJSString result) =>
                             self -> IO result
htmlInputElementGetDirName self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_dir_name
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_input_element_set_disabled ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_disabled ::
                                             JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_disabled = undefined
#endif
 
htmlInputElementSetDisabled ::
                            (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetDisabled self val
  = webkit_dom_html_input_element_set_disabled
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_disabled ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_disabled ::
                                             JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_disabled = undefined
#endif
 
htmlInputElementGetDisabled ::
                            (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_disabled
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        webkit_dom_html_input_element_get_form ::
        JSRef HTMLInputElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_input_element_get_form ::
                                         JSRef HTMLInputElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_input_element_get_form = undefined
#endif
 
htmlInputElementGetForm ::
                        (HTMLInputElementClass self) => self -> IO (Maybe HTMLFormElement)
htmlInputElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_input_element_get_form
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"files\"] = $2;"
        webkit_dom_html_input_element_set_files ::
        JSRef HTMLInputElement -> JSRef FileList -> IO ()
#else 
webkit_dom_html_input_element_set_files ::
                                          JSRef HTMLInputElement -> JSRef FileList -> IO ()
webkit_dom_html_input_element_set_files = undefined
#endif
 
htmlInputElementSetFiles ::
                         (HTMLInputElementClass self, FileListClass val) =>
                           self -> Maybe val -> IO ()
htmlInputElementSetFiles self val
  = webkit_dom_html_input_element_set_files
      (unHTMLInputElement (toHTMLInputElement self))
      (maybe jsNull (unFileList . toFileList) val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"files\"]"
        webkit_dom_html_input_element_get_files ::
        JSRef HTMLInputElement -> IO (JSRef FileList)
#else 
webkit_dom_html_input_element_get_files ::
                                          JSRef HTMLInputElement -> IO (JSRef FileList)
webkit_dom_html_input_element_get_files = undefined
#endif
 
htmlInputElementGetFiles ::
                         (HTMLInputElementClass self) => self -> IO (Maybe FileList)
htmlInputElementGetFiles self
  = fmap FileList . maybeJSNull <$>
      (webkit_dom_html_input_element_get_files
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        webkit_dom_html_input_element_set_form_action ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_form_action ::
                                                JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_form_action = undefined
#endif
 
htmlInputElementSetFormAction ::
                              (HTMLInputElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlInputElementSetFormAction self val
  = webkit_dom_html_input_element_set_form_action
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formAction\"]"
        webkit_dom_html_input_element_get_form_action ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_form_action ::
                                                JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_form_action = undefined
#endif
 
htmlInputElementGetFormAction ::
                              (HTMLInputElementClass self, FromJSString result) =>
                                self -> IO result
htmlInputElementGetFormAction self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_form_action
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        webkit_dom_html_input_element_set_form_enctype ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_form_enctype ::
                                                 JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_form_enctype = undefined
#endif
 
htmlInputElementSetFormEnctype ::
                               (HTMLInputElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlInputElementSetFormEnctype self val
  = webkit_dom_html_input_element_set_form_enctype
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        webkit_dom_html_input_element_get_form_enctype ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_form_enctype ::
                                                 JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_form_enctype = undefined
#endif
 
htmlInputElementGetFormEnctype ::
                               (HTMLInputElementClass self, FromJSString result) =>
                                 self -> IO result
htmlInputElementGetFormEnctype self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_form_enctype
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        webkit_dom_html_input_element_set_form_method ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_form_method ::
                                                JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_form_method = undefined
#endif
 
htmlInputElementSetFormMethod ::
                              (HTMLInputElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlInputElementSetFormMethod self val
  = webkit_dom_html_input_element_set_form_method
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formMethod\"]"
        webkit_dom_html_input_element_get_form_method ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_form_method ::
                                                JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_form_method = undefined
#endif
 
htmlInputElementGetFormMethod ::
                              (HTMLInputElementClass self, FromJSString result) =>
                                self -> IO result
htmlInputElementGetFormMethod self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_form_method
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        webkit_dom_html_input_element_set_form_no_validate ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_form_no_validate ::
                                                     JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_form_no_validate = undefined
#endif
 
htmlInputElementSetFormNoValidate ::
                                  (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetFormNoValidate self val
  = webkit_dom_html_input_element_set_form_no_validate
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_form_no_validate ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_form_no_validate ::
                                                     JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_form_no_validate = undefined
#endif
 
htmlInputElementGetFormNoValidate ::
                                  (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetFormNoValidate self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_form_no_validate
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        webkit_dom_html_input_element_set_form_target ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_form_target ::
                                                JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_form_target = undefined
#endif
 
htmlInputElementSetFormTarget ::
                              (HTMLInputElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlInputElementSetFormTarget self val
  = webkit_dom_html_input_element_set_form_target
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"formTarget\"]"
        webkit_dom_html_input_element_get_form_target ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_form_target ::
                                                JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_form_target = undefined
#endif
 
htmlInputElementGetFormTarget ::
                              (HTMLInputElementClass self, FromJSString result) =>
                                self -> IO result
htmlInputElementGetFormTarget self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_form_target
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_input_element_set_height ::
        JSRef HTMLInputElement -> Word -> IO ()
#else 
webkit_dom_html_input_element_set_height ::
                                           JSRef HTMLInputElement -> Word -> IO ()
webkit_dom_html_input_element_set_height = undefined
#endif
 
htmlInputElementSetHeight ::
                          (HTMLInputElementClass self) => self -> Word -> IO ()
htmlInputElementSetHeight self val
  = webkit_dom_html_input_element_set_height
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_input_element_get_height ::
        JSRef HTMLInputElement -> IO Word
#else 
webkit_dom_html_input_element_get_height ::
                                           JSRef HTMLInputElement -> IO Word
webkit_dom_html_input_element_get_height = undefined
#endif
 
htmlInputElementGetHeight ::
                          (HTMLInputElementClass self) => self -> IO Word
htmlInputElementGetHeight self
  = webkit_dom_html_input_element_get_height
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"indeterminate\"] = $2;"
        webkit_dom_html_input_element_set_indeterminate ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_indeterminate ::
                                                  JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_indeterminate = undefined
#endif
 
htmlInputElementSetIndeterminate ::
                                 (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetIndeterminate self val
  = webkit_dom_html_input_element_set_indeterminate
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"indeterminate\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_indeterminate ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_indeterminate ::
                                                  JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_indeterminate = undefined
#endif
 
htmlInputElementGetIndeterminate ::
                                 (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetIndeterminate self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_indeterminate
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"list\"]"
        webkit_dom_html_input_element_get_list ::
        JSRef HTMLInputElement -> IO (JSRef HTMLElement)
#else 
webkit_dom_html_input_element_get_list ::
                                         JSRef HTMLInputElement -> IO (JSRef HTMLElement)
webkit_dom_html_input_element_get_list = undefined
#endif
 
htmlInputElementGetList ::
                        (HTMLInputElementClass self) => self -> IO (Maybe HTMLElement)
htmlInputElementGetList self
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_html_input_element_get_list
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"max\"] = $2;"
        webkit_dom_html_input_element_set_max ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_max ::
                                        JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_max = undefined
#endif
 
htmlInputElementSetMax ::
                       (HTMLInputElementClass self, ToJSString val) =>
                         self -> val -> IO ()
htmlInputElementSetMax self val
  = webkit_dom_html_input_element_set_max
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"max\"]"
        webkit_dom_html_input_element_get_max ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_max ::
                                        JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_max = undefined
#endif
 
htmlInputElementGetMax ::
                       (HTMLInputElementClass self, FromJSString result) =>
                         self -> IO result
htmlInputElementGetMax self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_max
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"maxLength\"] = $2;"
        webkit_dom_html_input_element_set_max_length ::
        JSRef HTMLInputElement -> Int -> IO ()
#else 
webkit_dom_html_input_element_set_max_length ::
                                               JSRef HTMLInputElement -> Int -> IO ()
webkit_dom_html_input_element_set_max_length = undefined
#endif
 
htmlInputElementSetMaxLength ::
                             (HTMLInputElementClass self) => self -> Int -> IO ()
htmlInputElementSetMaxLength self val
  = webkit_dom_html_input_element_set_max_length
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"maxLength\"]"
        webkit_dom_html_input_element_get_max_length ::
        JSRef HTMLInputElement -> IO Int
#else 
webkit_dom_html_input_element_get_max_length ::
                                               JSRef HTMLInputElement -> IO Int
webkit_dom_html_input_element_get_max_length = undefined
#endif
 
htmlInputElementGetMaxLength ::
                             (HTMLInputElementClass self) => self -> IO Int
htmlInputElementGetMaxLength self
  = webkit_dom_html_input_element_get_max_length
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"min\"] = $2;"
        webkit_dom_html_input_element_set_min ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_min ::
                                        JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_min = undefined
#endif
 
htmlInputElementSetMin ::
                       (HTMLInputElementClass self, ToJSString val) =>
                         self -> val -> IO ()
htmlInputElementSetMin self val
  = webkit_dom_html_input_element_set_min
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"min\"]"
        webkit_dom_html_input_element_get_min ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_min ::
                                        JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_min = undefined
#endif
 
htmlInputElementGetMin ::
                       (HTMLInputElementClass self, FromJSString result) =>
                         self -> IO result
htmlInputElementGetMin self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_min
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        webkit_dom_html_input_element_set_multiple ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_multiple ::
                                             JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_multiple = undefined
#endif
 
htmlInputElementSetMultiple ::
                            (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetMultiple self val
  = webkit_dom_html_input_element_set_multiple
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"multiple\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_multiple ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_multiple ::
                                             JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_multiple = undefined
#endif
 
htmlInputElementGetMultiple ::
                            (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetMultiple self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_multiple
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_input_element_set_name ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_name ::
                                         JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_name = undefined
#endif
 
htmlInputElementSetName ::
                        (HTMLInputElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlInputElementSetName self val
  = webkit_dom_html_input_element_set_name
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_input_element_get_name ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_name ::
                                         JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_name = undefined
#endif
 
htmlInputElementGetName ::
                        (HTMLInputElementClass self, FromJSString result) =>
                          self -> IO result
htmlInputElementGetName self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_name
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pattern\"] = $2;"
        webkit_dom_html_input_element_set_pattern ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_pattern ::
                                            JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_pattern = undefined
#endif
 
htmlInputElementSetPattern ::
                           (HTMLInputElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlInputElementSetPattern self val
  = webkit_dom_html_input_element_set_pattern
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pattern\"]"
        webkit_dom_html_input_element_get_pattern ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_pattern ::
                                            JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_pattern = undefined
#endif
 
htmlInputElementGetPattern ::
                           (HTMLInputElementClass self, FromJSString result) =>
                             self -> IO result
htmlInputElementGetPattern self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_pattern
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"placeholder\"] = $2;"
        webkit_dom_html_input_element_set_placeholder ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_placeholder ::
                                                JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_placeholder = undefined
#endif
 
htmlInputElementSetPlaceholder ::
                               (HTMLInputElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlInputElementSetPlaceholder self val
  = webkit_dom_html_input_element_set_placeholder
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"placeholder\"]"
        webkit_dom_html_input_element_get_placeholder ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_placeholder ::
                                                JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_placeholder = undefined
#endif
 
htmlInputElementGetPlaceholder ::
                               (HTMLInputElementClass self, FromJSString result) =>
                                 self -> IO result
htmlInputElementGetPlaceholder self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_placeholder
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"readOnly\"] = $2;"
        webkit_dom_html_input_element_set_read_only ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_read_only ::
                                              JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_read_only = undefined
#endif
 
htmlInputElementSetReadOnly ::
                            (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetReadOnly self val
  = webkit_dom_html_input_element_set_read_only
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"readOnly\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_read_only ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_read_only ::
                                              JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_read_only = undefined
#endif
 
htmlInputElementGetReadOnly ::
                            (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetReadOnly self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_read_only
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        webkit_dom_html_input_element_set_required ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_required ::
                                             JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_required = undefined
#endif
 
htmlInputElementSetRequired ::
                            (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetRequired self val
  = webkit_dom_html_input_element_set_required
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_required ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_required ::
                                             JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_required = undefined
#endif
 
htmlInputElementGetRequired ::
                            (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetRequired self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_required
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        webkit_dom_html_input_element_set_size ::
        JSRef HTMLInputElement -> Word -> IO ()
#else 
webkit_dom_html_input_element_set_size ::
                                         JSRef HTMLInputElement -> Word -> IO ()
webkit_dom_html_input_element_set_size = undefined
#endif
 
htmlInputElementSetSize ::
                        (HTMLInputElementClass self) => self -> Word -> IO ()
htmlInputElementSetSize self val
  = webkit_dom_html_input_element_set_size
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"]"
        webkit_dom_html_input_element_get_size ::
        JSRef HTMLInputElement -> IO Word
#else 
webkit_dom_html_input_element_get_size ::
                                         JSRef HTMLInputElement -> IO Word
webkit_dom_html_input_element_get_size = undefined
#endif
 
htmlInputElementGetSize ::
                        (HTMLInputElementClass self) => self -> IO Word
htmlInputElementGetSize self
  = webkit_dom_html_input_element_get_size
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        webkit_dom_html_input_element_set_src ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_src ::
                                        JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_src = undefined
#endif
 
htmlInputElementSetSrc ::
                       (HTMLInputElementClass self, ToJSString val) =>
                         self -> val -> IO ()
htmlInputElementSetSrc self val
  = webkit_dom_html_input_element_set_src
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        webkit_dom_html_input_element_get_src ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_src ::
                                        JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_src = undefined
#endif
 
htmlInputElementGetSrc ::
                       (HTMLInputElementClass self, FromJSString result) =>
                         self -> IO result
htmlInputElementGetSrc self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_src
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"step\"] = $2;"
        webkit_dom_html_input_element_set_step ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_step ::
                                         JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_step = undefined
#endif
 
htmlInputElementSetStep ::
                        (HTMLInputElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlInputElementSetStep self val
  = webkit_dom_html_input_element_set_step
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"step\"]"
        webkit_dom_html_input_element_get_step ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_step ::
                                         JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_step = undefined
#endif
 
htmlInputElementGetStep ::
                        (HTMLInputElementClass self, FromJSString result) =>
                          self -> IO result
htmlInputElementGetStep self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_step
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        webkit_dom_html_input_element_set_default_value ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_default_value ::
                                                  JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_default_value = undefined
#endif
 
htmlInputElementSetDefaultValue ::
                                (HTMLInputElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmlInputElementSetDefaultValue self val
  = webkit_dom_html_input_element_set_default_value
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        webkit_dom_html_input_element_get_default_value ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_default_value ::
                                                  JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_default_value = undefined
#endif
 
htmlInputElementGetDefaultValue ::
                                (HTMLInputElementClass self, FromJSString result) =>
                                  self -> IO result
htmlInputElementGetDefaultValue self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_default_value
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        webkit_dom_html_input_element_set_value ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_value ::
                                          JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_value = undefined
#endif
 
htmlInputElementSetValue ::
                         (HTMLInputElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlInputElementSetValue self val
  = webkit_dom_html_input_element_set_value
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        webkit_dom_html_input_element_get_value ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_value ::
                                          JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_value = undefined
#endif
 
htmlInputElementGetValue ::
                         (HTMLInputElementClass self, FromJSString result) =>
                           self -> IO result
htmlInputElementGetValue self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_value
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"valueAsNumber\"] = $2;"
        webkit_dom_html_input_element_set_value_as_number ::
        JSRef HTMLInputElement -> Double -> IO ()
#else 
webkit_dom_html_input_element_set_value_as_number ::
                                                    JSRef HTMLInputElement -> Double -> IO ()
webkit_dom_html_input_element_set_value_as_number = undefined
#endif
 
htmlInputElementSetValueAsNumber ::
                                 (HTMLInputElementClass self) => self -> Double -> IO ()
htmlInputElementSetValueAsNumber self val
  = webkit_dom_html_input_element_set_value_as_number
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"valueAsNumber\"]"
        webkit_dom_html_input_element_get_value_as_number ::
        JSRef HTMLInputElement -> IO Double
#else 
webkit_dom_html_input_element_get_value_as_number ::
                                                    JSRef HTMLInputElement -> IO Double
webkit_dom_html_input_element_get_value_as_number = undefined
#endif
 
htmlInputElementGetValueAsNumber ::
                                 (HTMLInputElementClass self) => self -> IO Double
htmlInputElementGetValueAsNumber self
  = webkit_dom_html_input_element_get_value_as_number
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_input_element_set_width ::
        JSRef HTMLInputElement -> Word -> IO ()
#else 
webkit_dom_html_input_element_set_width ::
                                          JSRef HTMLInputElement -> Word -> IO ()
webkit_dom_html_input_element_set_width = undefined
#endif
 
htmlInputElementSetWidth ::
                         (HTMLInputElementClass self) => self -> Word -> IO ()
htmlInputElementSetWidth self val
  = webkit_dom_html_input_element_set_width
      (unHTMLInputElement (toHTMLInputElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_input_element_get_width ::
        JSRef HTMLInputElement -> IO Word
#else 
webkit_dom_html_input_element_get_width ::
                                          JSRef HTMLInputElement -> IO Word
webkit_dom_html_input_element_get_width = undefined
#endif
 
htmlInputElementGetWidth ::
                         (HTMLInputElementClass self) => self -> IO Word
htmlInputElementGetWidth self
  = webkit_dom_html_input_element_get_width
      (unHTMLInputElement (toHTMLInputElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_will_validate ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_will_validate ::
                                                  JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_will_validate = undefined
#endif
 
htmlInputElementGetWillValidate ::
                                (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetWillValidate self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_will_validate
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validity\"]"
        webkit_dom_html_input_element_get_validity ::
        JSRef HTMLInputElement -> IO (JSRef ValidityState)
#else 
webkit_dom_html_input_element_get_validity ::
                                             JSRef HTMLInputElement -> IO (JSRef ValidityState)
webkit_dom_html_input_element_get_validity = undefined
#endif
 
htmlInputElementGetValidity ::
                            (HTMLInputElementClass self) => self -> IO (Maybe ValidityState)
htmlInputElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (webkit_dom_html_input_element_get_validity
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        webkit_dom_html_input_element_get_validation_message ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_validation_message ::
                                                       JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_validation_message = undefined
#endif
 
htmlInputElementGetValidationMessage ::
                                     (HTMLInputElementClass self, FromJSString result) =>
                                       self -> IO result
htmlInputElementGetValidationMessage self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_validation_message
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"labels\"]"
        webkit_dom_html_input_element_get_labels ::
        JSRef HTMLInputElement -> IO (JSRef NodeList)
#else 
webkit_dom_html_input_element_get_labels ::
                                           JSRef HTMLInputElement -> IO (JSRef NodeList)
webkit_dom_html_input_element_get_labels = undefined
#endif
 
htmlInputElementGetLabels ::
                          (HTMLInputElementClass self) => self -> IO (Maybe NodeList)
htmlInputElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_html_input_element_get_labels
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_input_element_set_align ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_align ::
                                          JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_align = undefined
#endif
 
htmlInputElementSetAlign ::
                         (HTMLInputElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlInputElementSetAlign self val
  = webkit_dom_html_input_element_set_align
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_input_element_get_align ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_align ::
                                          JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_align = undefined
#endif
 
htmlInputElementGetAlign ::
                         (HTMLInputElementClass self, FromJSString result) =>
                           self -> IO result
htmlInputElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_align
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitdirectory\"] = $2;"
        webkit_dom_html_input_element_set_webkitdirectory ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_webkitdirectory ::
                                                    JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_webkitdirectory = undefined
#endif
 
htmlInputElementSetWebkitdirectory ::
                                   (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetWebkitdirectory self val
  = webkit_dom_html_input_element_set_webkitdirectory
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitdirectory\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_webkitdirectory ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_webkitdirectory ::
                                                    JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_webkitdirectory = undefined
#endif
 
htmlInputElementGetWebkitdirectory ::
                                   (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetWebkitdirectory self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_webkitdirectory
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        webkit_dom_html_input_element_set_use_map ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_use_map ::
                                            JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_use_map = undefined
#endif
 
htmlInputElementSetUseMap ::
                          (HTMLInputElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlInputElementSetUseMap self val
  = webkit_dom_html_input_element_set_use_map
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"useMap\"]"
        webkit_dom_html_input_element_get_use_map ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_use_map ::
                                            JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_use_map = undefined
#endif
 
htmlInputElementGetUseMap ::
                          (HTMLInputElementClass self, FromJSString result) =>
                            self -> IO result
htmlInputElementGetUseMap self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_use_map
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"incremental\"] = $2;"
        webkit_dom_html_input_element_set_incremental ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_incremental ::
                                                JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_incremental = undefined
#endif
 
htmlInputElementSetIncremental ::
                               (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetIncremental self val
  = webkit_dom_html_input_element_set_incremental
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"incremental\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_incremental ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_incremental ::
                                                JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_incremental = undefined
#endif
 
htmlInputElementGetIncremental ::
                               (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetIncremental self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_incremental
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitSpeech\"] = $2;"
        webkit_dom_html_input_element_set_webkit_speech ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_webkit_speech ::
                                                  JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_webkit_speech = undefined
#endif
 
htmlInputElementSetWebkitSpeech ::
                                (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetWebkitSpeech self val
  = webkit_dom_html_input_element_set_webkit_speech
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"webkitSpeech\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_webkit_speech ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_webkit_speech ::
                                                  JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_webkit_speech = undefined
#endif
 
htmlInputElementGetWebkitSpeech ::
                                (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetWebkitSpeech self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_webkit_speech
         (unHTMLInputElement (toHTMLInputElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitGrammar\"] = $2;"
        webkit_dom_html_input_element_set_webkit_grammar ::
        JSRef HTMLInputElement -> JSBool -> IO ()
#else 
webkit_dom_html_input_element_set_webkit_grammar ::
                                                   JSRef HTMLInputElement -> JSBool -> IO ()
webkit_dom_html_input_element_set_webkit_grammar = undefined
#endif
 
htmlInputElementSetWebkitGrammar ::
                                 (HTMLInputElementClass self) => self -> Bool -> IO ()
htmlInputElementSetWebkitGrammar self val
  = webkit_dom_html_input_element_set_webkit_grammar
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"webkitGrammar\"] ? 1 : 0)"
        webkit_dom_html_input_element_get_webkit_grammar ::
        JSRef HTMLInputElement -> IO JSBool
#else 
webkit_dom_html_input_element_get_webkit_grammar ::
                                                   JSRef HTMLInputElement -> IO JSBool
webkit_dom_html_input_element_get_webkit_grammar = undefined
#endif
 
htmlInputElementGetWebkitGrammar ::
                                 (HTMLInputElementClass self) => self -> IO Bool
htmlInputElementGetWebkitGrammar self
  = fromJSBool <$>
      (webkit_dom_html_input_element_get_webkit_grammar
         (unHTMLInputElement (toHTMLInputElement self)))
 
htmlInputElementOnwebkitspeechchange ::
                                     (HTMLInputElementClass self) =>
                                       Signal self (EventM UIEvent self ())
htmlInputElementOnwebkitspeechchange
  = (connect "webkitspeechchange")


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"capture\"] = $2;"
        webkit_dom_html_input_element_set_capture ::
        JSRef HTMLInputElement -> JSString -> IO ()
#else 
webkit_dom_html_input_element_set_capture ::
                                            JSRef HTMLInputElement -> JSString -> IO ()
webkit_dom_html_input_element_set_capture = undefined
#endif
 
htmlInputElementSetCapture ::
                           (HTMLInputElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlInputElementSetCapture self val
  = webkit_dom_html_input_element_set_capture
      (unHTMLInputElement (toHTMLInputElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"capture\"]"
        webkit_dom_html_input_element_get_capture ::
        JSRef HTMLInputElement -> IO JSString
#else 
webkit_dom_html_input_element_get_capture ::
                                            JSRef HTMLInputElement -> IO JSString
webkit_dom_html_input_element_get_capture = undefined
#endif
 
htmlInputElementGetCapture ::
                           (HTMLInputElementClass self, FromJSString result) =>
                             self -> IO result
htmlInputElementGetCapture self
  = fromJSString <$>
      (webkit_dom_html_input_element_get_capture
         (unHTMLInputElement (toHTMLInputElement self)))