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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_text_area_element_check_validity ::
        JSRef HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.checkValidity Mozilla HTMLTextAreaElement.checkValidity documentation> 
htmlTextAreaElementCheckValidity ::
                                 (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementCheckValidity self
  = ghcjs_dom_html_text_area_element_check_validity
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_text_area_element_set_custom_validity ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.customValidity Mozilla HTMLTextAreaElement.customValidity documentation> 
htmlTextAreaElementSetCustomValidity ::
                                     (IsHTMLTextAreaElement self, ToJSString error) =>
                                       self -> error -> IO ()
htmlTextAreaElementSetCustomValidity self error
  = ghcjs_dom_html_text_area_element_set_custom_validity
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString error)
 
foreign import javascript unsafe "$1[\"select\"]()"
        ghcjs_dom_html_text_area_element_select ::
        JSRef HTMLTextAreaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.select Mozilla HTMLTextAreaElement.select documentation> 
htmlTextAreaElementSelect ::
                          (IsHTMLTextAreaElement self) => self -> IO ()
htmlTextAreaElementSelect self
  = ghcjs_dom_html_text_area_element_select
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"setRangeText\"]($2)"
        ghcjs_dom_html_text_area_element_set_range_text ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.rangeText Mozilla HTMLTextAreaElement.rangeText documentation> 
htmlTextAreaElementSetRangeText ::
                                (IsHTMLTextAreaElement self, ToJSString replacement) =>
                                  self -> replacement -> IO ()
htmlTextAreaElementSetRangeText self replacement
  = ghcjs_dom_html_text_area_element_set_range_text
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString replacement)
 
foreign import javascript unsafe
        "$1[\"setRangeText\"]($2, $3, $4,\n$5)"
        ghcjs_dom_html_text_area_element_set_range_text4 ::
        JSRef HTMLTextAreaElement ->
          JSString -> Word -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.rangeText4 Mozilla HTMLTextAreaElement.rangeText4 documentation> 
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
 
foreign import javascript unsafe
        "$1[\"setSelectionRange\"]($2, $3,\n$4)"
        ghcjs_dom_html_text_area_element_set_selection_range ::
        JSRef HTMLTextAreaElement -> Int -> Int -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionRange Mozilla HTMLTextAreaElement.selectionRange documentation> 
htmlTextAreaElementSetSelectionRange ::
                                     (IsHTMLTextAreaElement self, ToJSString direction) =>
                                       self -> Int -> Int -> direction -> IO ()
htmlTextAreaElementSetSelectionRange self start end direction
  = ghcjs_dom_html_text_area_element_set_selection_range
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      start
      end
      (toJSString direction)
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_text_area_element_set_autofocus ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autofocus Mozilla HTMLTextAreaElement.autofocus documentation> 
htmlTextAreaElementSetAutofocus ::
                                (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetAutofocus self val
  = ghcjs_dom_html_text_area_element_set_autofocus
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_autofocus ::
        JSRef HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autofocus Mozilla HTMLTextAreaElement.autofocus documentation> 
htmlTextAreaElementGetAutofocus ::
                                (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetAutofocus self
  = ghcjs_dom_html_text_area_element_get_autofocus
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"cols\"] = $2;"
        ghcjs_dom_html_text_area_element_set_cols ::
        JSRef HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.cols Mozilla HTMLTextAreaElement.cols documentation> 
htmlTextAreaElementSetCols ::
                           (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetCols self val
  = ghcjs_dom_html_text_area_element_set_cols
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "$1[\"cols\"]"
        ghcjs_dom_html_text_area_element_get_cols ::
        JSRef HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.cols Mozilla HTMLTextAreaElement.cols documentation> 
htmlTextAreaElementGetCols ::
                           (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetCols self
  = ghcjs_dom_html_text_area_element_get_cols
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"dirName\"] = $2;"
        ghcjs_dom_html_text_area_element_set_dir_name ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.dirName Mozilla HTMLTextAreaElement.dirName documentation> 
htmlTextAreaElementSetDirName ::
                              (IsHTMLTextAreaElement self, ToJSString val) =>
                                self -> val -> IO ()
htmlTextAreaElementSetDirName self val
  = ghcjs_dom_html_text_area_element_set_dir_name
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"dirName\"]"
        ghcjs_dom_html_text_area_element_get_dir_name ::
        JSRef HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.dirName Mozilla HTMLTextAreaElement.dirName documentation> 
htmlTextAreaElementGetDirName ::
                              (IsHTMLTextAreaElement self, FromJSString result) =>
                                self -> IO result
htmlTextAreaElementGetDirName self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_dir_name
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_text_area_element_set_disabled ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.disabled Mozilla HTMLTextAreaElement.disabled documentation> 
htmlTextAreaElementSetDisabled ::
                               (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetDisabled self val
  = ghcjs_dom_html_text_area_element_set_disabled
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_disabled ::
        JSRef HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.disabled Mozilla HTMLTextAreaElement.disabled documentation> 
htmlTextAreaElementGetDisabled ::
                               (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetDisabled self
  = ghcjs_dom_html_text_area_element_get_disabled
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_text_area_element_get_form ::
        JSRef HTMLTextAreaElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.form Mozilla HTMLTextAreaElement.form documentation> 
htmlTextAreaElementGetForm ::
                           (IsHTMLTextAreaElement self) => self -> IO (Maybe HTMLFormElement)
htmlTextAreaElementGetForm self
  = (ghcjs_dom_html_text_area_element_get_form
       (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"maxLength\"] = $2;"
        ghcjs_dom_html_text_area_element_set_max_length ::
        JSRef HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.maxLength Mozilla HTMLTextAreaElement.maxLength documentation> 
htmlTextAreaElementSetMaxLength ::
                                (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetMaxLength self val
  = ghcjs_dom_html_text_area_element_set_max_length
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "$1[\"maxLength\"]"
        ghcjs_dom_html_text_area_element_get_max_length ::
        JSRef HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.maxLength Mozilla HTMLTextAreaElement.maxLength documentation> 
htmlTextAreaElementGetMaxLength ::
                                (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetMaxLength self
  = ghcjs_dom_html_text_area_element_get_max_length
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_text_area_element_set_name ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.name Mozilla HTMLTextAreaElement.name documentation> 
htmlTextAreaElementSetName ::
                           (IsHTMLTextAreaElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlTextAreaElementSetName self val
  = ghcjs_dom_html_text_area_element_set_name
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_text_area_element_get_name ::
        JSRef HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.name Mozilla HTMLTextAreaElement.name documentation> 
htmlTextAreaElementGetName ::
                           (IsHTMLTextAreaElement self, FromJSString result) =>
                             self -> IO result
htmlTextAreaElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_name
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
 
foreign import javascript unsafe "$1[\"placeholder\"] = $2;"
        ghcjs_dom_html_text_area_element_set_placeholder ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.placeholder Mozilla HTMLTextAreaElement.placeholder documentation> 
htmlTextAreaElementSetPlaceholder ::
                                  (IsHTMLTextAreaElement self, ToJSString val) =>
                                    self -> val -> IO ()
htmlTextAreaElementSetPlaceholder self val
  = ghcjs_dom_html_text_area_element_set_placeholder
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"placeholder\"]"
        ghcjs_dom_html_text_area_element_get_placeholder ::
        JSRef HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.placeholder Mozilla HTMLTextAreaElement.placeholder documentation> 
htmlTextAreaElementGetPlaceholder ::
                                  (IsHTMLTextAreaElement self, FromJSString result) =>
                                    self -> IO result
htmlTextAreaElementGetPlaceholder self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_placeholder
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
 
foreign import javascript unsafe "$1[\"readOnly\"] = $2;"
        ghcjs_dom_html_text_area_element_set_read_only ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.readOnly Mozilla HTMLTextAreaElement.readOnly documentation> 
htmlTextAreaElementSetReadOnly ::
                               (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetReadOnly self val
  = ghcjs_dom_html_text_area_element_set_read_only
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "($1[\"readOnly\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_read_only ::
        JSRef HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.readOnly Mozilla HTMLTextAreaElement.readOnly documentation> 
htmlTextAreaElementGetReadOnly ::
                               (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetReadOnly self
  = ghcjs_dom_html_text_area_element_get_read_only
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        ghcjs_dom_html_text_area_element_set_required ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.required Mozilla HTMLTextAreaElement.required documentation> 
htmlTextAreaElementSetRequired ::
                               (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetRequired self val
  = ghcjs_dom_html_text_area_element_set_required
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_required ::
        JSRef HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.required Mozilla HTMLTextAreaElement.required documentation> 
htmlTextAreaElementGetRequired ::
                               (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetRequired self
  = ghcjs_dom_html_text_area_element_get_required
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"rows\"] = $2;"
        ghcjs_dom_html_text_area_element_set_rows ::
        JSRef HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.rows Mozilla HTMLTextAreaElement.rows documentation> 
htmlTextAreaElementSetRows ::
                           (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetRows self val
  = ghcjs_dom_html_text_area_element_set_rows
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_html_text_area_element_get_rows ::
        JSRef HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.rows Mozilla HTMLTextAreaElement.rows documentation> 
htmlTextAreaElementGetRows ::
                           (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetRows self
  = ghcjs_dom_html_text_area_element_get_rows
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"wrap\"] = $2;"
        ghcjs_dom_html_text_area_element_set_wrap ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.wrap Mozilla HTMLTextAreaElement.wrap documentation> 
htmlTextAreaElementSetWrap ::
                           (IsHTMLTextAreaElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlTextAreaElementSetWrap self val
  = ghcjs_dom_html_text_area_element_set_wrap
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"wrap\"]"
        ghcjs_dom_html_text_area_element_get_wrap ::
        JSRef HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.wrap Mozilla HTMLTextAreaElement.wrap documentation> 
htmlTextAreaElementGetWrap ::
                           (IsHTMLTextAreaElement self, FromJSString result) =>
                             self -> IO result
htmlTextAreaElementGetWrap self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_wrap
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        ghcjs_dom_html_text_area_element_set_default_value ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.defaultValue Mozilla HTMLTextAreaElement.defaultValue documentation> 
htmlTextAreaElementSetDefaultValue ::
                                   (IsHTMLTextAreaElement self, ToJSString val) =>
                                     self -> val -> IO ()
htmlTextAreaElementSetDefaultValue self val
  = ghcjs_dom_html_text_area_element_set_default_value
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        ghcjs_dom_html_text_area_element_get_default_value ::
        JSRef HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.defaultValue Mozilla HTMLTextAreaElement.defaultValue documentation> 
htmlTextAreaElementGetDefaultValue ::
                                   (IsHTMLTextAreaElement self, FromJSString result) =>
                                     self -> IO result
htmlTextAreaElementGetDefaultValue self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_default_value
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_text_area_element_set_value ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.value Mozilla HTMLTextAreaElement.value documentation> 
htmlTextAreaElementSetValue ::
                            (IsHTMLTextAreaElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlTextAreaElementSetValue self val
  = ghcjs_dom_html_text_area_element_set_value
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_text_area_element_get_value ::
        JSRef HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.value Mozilla HTMLTextAreaElement.value documentation> 
htmlTextAreaElementGetValue ::
                            (IsHTMLTextAreaElement self, FromJSString result) =>
                              self -> IO result
htmlTextAreaElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_value
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
 
foreign import javascript unsafe "$1[\"textLength\"]"
        ghcjs_dom_html_text_area_element_get_text_length ::
        JSRef HTMLTextAreaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.textLength Mozilla HTMLTextAreaElement.textLength documentation> 
htmlTextAreaElementGetTextLength ::
                                 (IsHTMLTextAreaElement self) => self -> IO Word
htmlTextAreaElementGetTextLength self
  = ghcjs_dom_html_text_area_element_get_text_length
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_will_validate ::
        JSRef HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.willValidate Mozilla HTMLTextAreaElement.willValidate documentation> 
htmlTextAreaElementGetWillValidate ::
                                   (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetWillValidate self
  = ghcjs_dom_html_text_area_element_get_will_validate
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_text_area_element_get_validity ::
        JSRef HTMLTextAreaElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.validity Mozilla HTMLTextAreaElement.validity documentation> 
htmlTextAreaElementGetValidity ::
                               (IsHTMLTextAreaElement self) => self -> IO (Maybe ValidityState)
htmlTextAreaElementGetValidity self
  = (ghcjs_dom_html_text_area_element_get_validity
       (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_text_area_element_get_validation_message ::
        JSRef HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.validationMessage Mozilla HTMLTextAreaElement.validationMessage documentation> 
htmlTextAreaElementGetValidationMessage ::
                                        (IsHTMLTextAreaElement self, FromJSString result) =>
                                          self -> IO result
htmlTextAreaElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_validation_message
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_text_area_element_get_labels ::
        JSRef HTMLTextAreaElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.labels Mozilla HTMLTextAreaElement.labels documentation> 
htmlTextAreaElementGetLabels ::
                             (IsHTMLTextAreaElement self) => self -> IO (Maybe NodeList)
htmlTextAreaElementGetLabels self
  = (ghcjs_dom_html_text_area_element_get_labels
       (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"selectionStart\"] = $2;"
        ghcjs_dom_html_text_area_element_set_selection_start ::
        JSRef HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionStart Mozilla HTMLTextAreaElement.selectionStart documentation> 
htmlTextAreaElementSetSelectionStart ::
                                     (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetSelectionStart self val
  = ghcjs_dom_html_text_area_element_set_selection_start
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "$1[\"selectionStart\"]"
        ghcjs_dom_html_text_area_element_get_selection_start ::
        JSRef HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionStart Mozilla HTMLTextAreaElement.selectionStart documentation> 
htmlTextAreaElementGetSelectionStart ::
                                     (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetSelectionStart self
  = ghcjs_dom_html_text_area_element_get_selection_start
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"selectionEnd\"] = $2;"
        ghcjs_dom_html_text_area_element_set_selection_end ::
        JSRef HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionEnd Mozilla HTMLTextAreaElement.selectionEnd documentation> 
htmlTextAreaElementSetSelectionEnd ::
                                   (IsHTMLTextAreaElement self) => self -> Int -> IO ()
htmlTextAreaElementSetSelectionEnd self val
  = ghcjs_dom_html_text_area_element_set_selection_end
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "$1[\"selectionEnd\"]"
        ghcjs_dom_html_text_area_element_get_selection_end ::
        JSRef HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionEnd Mozilla HTMLTextAreaElement.selectionEnd documentation> 
htmlTextAreaElementGetSelectionEnd ::
                                   (IsHTMLTextAreaElement self) => self -> IO Int
htmlTextAreaElementGetSelectionEnd self
  = ghcjs_dom_html_text_area_element_get_selection_end
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"selectionDirection\"] = $2;"
        ghcjs_dom_html_text_area_element_set_selection_direction ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionDirection Mozilla HTMLTextAreaElement.selectionDirection documentation> 
htmlTextAreaElementSetSelectionDirection ::
                                         (IsHTMLTextAreaElement self, ToJSString val) =>
                                           self -> val -> IO ()
htmlTextAreaElementSetSelectionDirection self val
  = ghcjs_dom_html_text_area_element_set_selection_direction
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"selectionDirection\"]"
        ghcjs_dom_html_text_area_element_get_selection_direction ::
        JSRef HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionDirection Mozilla HTMLTextAreaElement.selectionDirection documentation> 
htmlTextAreaElementGetSelectionDirection ::
                                         (IsHTMLTextAreaElement self, FromJSString result) =>
                                           self -> IO result
htmlTextAreaElementGetSelectionDirection self
  = fromJSString <$>
      (ghcjs_dom_html_text_area_element_get_selection_direction
         (unHTMLTextAreaElement (toHTMLTextAreaElement self)))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        ghcjs_dom_html_text_area_element_set_autocorrect ::
        JSRef HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autocorrect Mozilla HTMLTextAreaElement.autocorrect documentation> 
htmlTextAreaElementSetAutocorrect ::
                                  (IsHTMLTextAreaElement self) => self -> Bool -> IO ()
htmlTextAreaElementSetAutocorrect self val
  = ghcjs_dom_html_text_area_element_set_autocorrect
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      val
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        ghcjs_dom_html_text_area_element_get_autocorrect ::
        JSRef HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autocorrect Mozilla HTMLTextAreaElement.autocorrect documentation> 
htmlTextAreaElementGetAutocorrect ::
                                  (IsHTMLTextAreaElement self) => self -> IO Bool
htmlTextAreaElementGetAutocorrect self
  = ghcjs_dom_html_text_area_element_get_autocorrect
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        ghcjs_dom_html_text_area_element_set_autocapitalize ::
        JSRef HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autocapitalize Mozilla HTMLTextAreaElement.autocapitalize documentation> 
htmlTextAreaElementSetAutocapitalize ::
                                     (IsHTMLTextAreaElement self, ToJSString val) =>
                                       self -> val -> IO ()
htmlTextAreaElementSetAutocapitalize self val
  = ghcjs_dom_html_text_area_element_set_autocapitalize
      (unHTMLTextAreaElement (toHTMLTextAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        ghcjs_dom_html_text_area_element_get_autocapitalize ::
        JSRef HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autocapitalize Mozilla HTMLTextAreaElement.autocapitalize documentation> 
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
