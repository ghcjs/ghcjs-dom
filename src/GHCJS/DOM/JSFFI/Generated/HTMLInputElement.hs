{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLInputElement
       (js_stepUp, stepUp, js_stepDown, stepDown, js_checkValidity,
        checkValidity, js_setCustomValidity, setCustomValidity, js_select,
        select, js_setRangeText, setRangeText, js_setRangeText4,
        setRangeText4, js_setSelectionRange, setSelectionRange,
        js_setAccept, setAccept, js_getAccept, getAccept, js_setAlt,
        setAlt, js_getAlt, getAlt, js_setAutocomplete, setAutocomplete,
        js_getAutocomplete, getAutocomplete, js_setAutofocus, setAutofocus,
        js_getAutofocus, getAutofocus, js_setDefaultChecked,
        setDefaultChecked, js_getDefaultChecked, getDefaultChecked,
        js_setChecked, setChecked, js_getChecked, getChecked,
        js_setDirName, setDirName, js_getDirName, getDirName,
        js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_getForm, getForm, js_setFiles, setFiles, js_getFiles, getFiles,
        js_setFormAction, setFormAction, js_getFormAction, getFormAction,
        js_setFormEnctype, setFormEnctype, js_getFormEnctype,
        getFormEnctype, js_setFormMethod, setFormMethod, js_getFormMethod,
        getFormMethod, js_setFormNoValidate, setFormNoValidate,
        js_getFormNoValidate, getFormNoValidate, js_setFormTarget,
        setFormTarget, js_getFormTarget, getFormTarget, js_setHeight,
        setHeight, js_getHeight, getHeight, js_setIndeterminate,
        setIndeterminate, js_getIndeterminate, getIndeterminate,
        js_getList, getList, js_setMax, setMax, js_getMax, getMax,
        js_setMaxLength, setMaxLength, js_getMaxLength, getMaxLength,
        js_setMin, setMin, js_getMin, getMin, js_setMultiple, setMultiple,
        js_getMultiple, getMultiple, js_setName, setName, js_getName,
        getName, js_setPattern, setPattern, js_getPattern, getPattern,
        js_setPlaceholder, setPlaceholder, js_getPlaceholder,
        getPlaceholder, js_setReadOnly, setReadOnly, js_getReadOnly,
        getReadOnly, js_setRequired, setRequired, js_getRequired,
        getRequired, js_setSize, setSize, js_getSize, getSize, js_setSrc,
        setSrc, js_getSrc, getSrc, js_setStep, setStep, js_getStep,
        getStep, js_setType, setType, js_getType, getType,
        js_setDefaultValue, setDefaultValue, js_getDefaultValue,
        getDefaultValue, js_setValue, setValue, js_getValue, getValue,
        js_setValueAsDate, setValueAsDate, js_getValueAsDate,
        getValueAsDate, js_setValueAsNumber, setValueAsNumber,
        js_getValueAsNumber, getValueAsNumber, js_setWidth, setWidth,
        js_getWidth, getWidth, js_getWillValidate, getWillValidate,
        js_getValidity, getValidity, js_getValidationMessage,
        getValidationMessage, js_getLabels, getLabels,
        js_setSelectionStart, setSelectionStart, js_getSelectionStart,
        getSelectionStart, js_setSelectionEnd, setSelectionEnd,
        js_getSelectionEnd, getSelectionEnd, js_setSelectionDirection,
        setSelectionDirection, js_getSelectionDirection,
        getSelectionDirection, js_setAlign, setAlign, js_getAlign,
        getAlign, js_setUseMap, setUseMap, js_getUseMap, getUseMap,
        js_setIncremental, setIncremental, js_getIncremental,
        getIncremental, js_setAutocorrect, setAutocorrect,
        js_getAutocorrect, getAutocorrect, js_setAutocapitalize,
        setAutocapitalize, js_getAutocapitalize, getAutocapitalize,
        js_setCapture, setCapture, js_getCapture, getCapture,
        HTMLInputElement, castToHTMLInputElement, gTypeHTMLInputElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"stepUp\"]($2)" js_stepUp ::
        JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.stepUp Mozilla HTMLInputElement.stepUp documentation> 
stepUp :: (MonadIO m) => HTMLInputElement -> Int -> m ()
stepUp self n = liftIO (js_stepUp (unHTMLInputElement self) n)
 
foreign import javascript unsafe "$1[\"stepDown\"]($2)" js_stepDown
        :: JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.stepDown Mozilla HTMLInputElement.stepDown documentation> 
stepDown :: (MonadIO m) => HTMLInputElement -> Int -> m ()
stepDown self n = liftIO (js_stepDown (unHTMLInputElement self) n)
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checkValidity Mozilla HTMLInputElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLInputElement -> m Bool
checkValidity self
  = liftIO (js_checkValidity (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        JSRef HTMLInputElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.setCustomValidity Mozilla HTMLInputElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLInputElement -> Maybe error -> m ()
setCustomValidity self error
  = liftIO
      (js_setCustomValidity (unHTMLInputElement self)
         (toMaybeJSString error))
 
foreign import javascript unsafe "$1[\"select\"]()" js_select ::
        JSRef HTMLInputElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.select Mozilla HTMLInputElement.select documentation> 
select :: (MonadIO m) => HTMLInputElement -> m ()
select self = liftIO (js_select (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"setRangeText\"]($2)"
        js_setRangeText :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.setRangeText Mozilla HTMLInputElement.setRangeText documentation> 
setRangeText ::
             (MonadIO m, ToJSString replacement) =>
               HTMLInputElement -> replacement -> m ()
setRangeText self replacement
  = liftIO
      (js_setRangeText (unHTMLInputElement self)
         (toJSString replacement))
 
foreign import javascript unsafe
        "$1[\"setRangeText\"]($2, $3, $4,\n$5)" js_setRangeText4 ::
        JSRef HTMLInputElement ->
          JSString -> Word -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.setRangeText Mozilla HTMLInputElement.setRangeText documentation> 
setRangeText4 ::
              (MonadIO m, ToJSString replacement, ToJSString selectionMode) =>
                HTMLInputElement ->
                  replacement -> Word -> Word -> selectionMode -> m ()
setRangeText4 self replacement start end selectionMode
  = liftIO
      (js_setRangeText4 (unHTMLInputElement self)
         (toJSString replacement)
         start
         end
         (toJSString selectionMode))
 
foreign import javascript unsafe
        "$1[\"setSelectionRange\"]($2, $3,\n$4)" js_setSelectionRange ::
        JSRef HTMLInputElement -> Int -> Int -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.setSelectionRange Mozilla HTMLInputElement.setSelectionRange documentation> 
setSelectionRange ::
                  (MonadIO m, ToJSString direction) =>
                    HTMLInputElement -> Int -> Int -> direction -> m ()
setSelectionRange self start end direction
  = liftIO
      (js_setSelectionRange (unHTMLInputElement self) start end
         (toJSString direction))
 
foreign import javascript unsafe "$1[\"accept\"] = $2;"
        js_setAccept :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.accept Mozilla HTMLInputElement.accept documentation> 
setAccept ::
          (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setAccept self val
  = liftIO (js_setAccept (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"accept\"]" js_getAccept ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.accept Mozilla HTMLInputElement.accept documentation> 
getAccept ::
          (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getAccept self
  = liftIO
      (fromJSString <$> (js_getAccept (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"alt\"] = $2;" js_setAlt ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.alt Mozilla HTMLInputElement.alt documentation> 
setAlt ::
       (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setAlt self val
  = liftIO (js_setAlt (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]" js_getAlt ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.alt Mozilla HTMLInputElement.alt documentation> 
getAlt ::
       (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getAlt self
  = liftIO (fromJSString <$> (js_getAlt (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        js_setAutocomplete :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocomplete Mozilla HTMLInputElement.autocomplete documentation> 
setAutocomplete ::
                (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setAutocomplete self val
  = liftIO
      (js_setAutocomplete (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        js_getAutocomplete :: JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocomplete Mozilla HTMLInputElement.autocomplete documentation> 
getAutocomplete ::
                (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getAutocomplete self
  = liftIO
      (fromJSString <$> (js_getAutocomplete (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        js_setAutofocus :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autofocus Mozilla HTMLInputElement.autofocus documentation> 
setAutofocus :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setAutofocus self val
  = liftIO (js_setAutofocus (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        js_getAutofocus :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autofocus Mozilla HTMLInputElement.autofocus documentation> 
getAutofocus :: (MonadIO m) => HTMLInputElement -> m Bool
getAutofocus self
  = liftIO (js_getAutofocus (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"defaultChecked\"] = $2;"
        js_setDefaultChecked :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultChecked Mozilla HTMLInputElement.defaultChecked documentation> 
setDefaultChecked ::
                  (MonadIO m) => HTMLInputElement -> Bool -> m ()
setDefaultChecked self val
  = liftIO (js_setDefaultChecked (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"defaultChecked\"] ? 1 : 0)"
        js_getDefaultChecked :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultChecked Mozilla HTMLInputElement.defaultChecked documentation> 
getDefaultChecked :: (MonadIO m) => HTMLInputElement -> m Bool
getDefaultChecked self
  = liftIO (js_getDefaultChecked (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"checked\"] = $2;"
        js_setChecked :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checked Mozilla HTMLInputElement.checked documentation> 
setChecked :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setChecked self val
  = liftIO (js_setChecked (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"checked\"] ? 1 : 0)"
        js_getChecked :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.checked Mozilla HTMLInputElement.checked documentation> 
getChecked :: (MonadIO m) => HTMLInputElement -> m Bool
getChecked self = liftIO (js_getChecked (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"dirName\"] = $2;"
        js_setDirName :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.dirName Mozilla HTMLInputElement.dirName documentation> 
setDirName ::
           (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setDirName self val
  = liftIO (js_setDirName (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"dirName\"]" js_getDirName ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.dirName Mozilla HTMLInputElement.dirName documentation> 
getDirName ::
           (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getDirName self
  = liftIO
      (fromJSString <$> (js_getDirName (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.disabled Mozilla HTMLInputElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.disabled Mozilla HTMLInputElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLInputElement -> m Bool
getDisabled self
  = liftIO (js_getDisabled (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLInputElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.form Mozilla HTMLInputElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLInputElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLInputElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"files\"] = $2;" js_setFiles
        :: JSRef HTMLInputElement -> JSRef FileList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.files Mozilla HTMLInputElement.files documentation> 
setFiles ::
         (MonadIO m) => HTMLInputElement -> Maybe FileList -> m ()
setFiles self val
  = liftIO
      (js_setFiles (unHTMLInputElement self) (maybe jsNull pToJSRef val))
 
foreign import javascript unsafe "$1[\"files\"]" js_getFiles ::
        JSRef HTMLInputElement -> IO (JSRef FileList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.files Mozilla HTMLInputElement.files documentation> 
getFiles :: (MonadIO m) => HTMLInputElement -> m (Maybe FileList)
getFiles self
  = liftIO ((js_getFiles (unHTMLInputElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        js_setFormAction :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formAction Mozilla HTMLInputElement.formAction documentation> 
setFormAction ::
              (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setFormAction self val
  = liftIO
      (js_setFormAction (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"formAction\"]"
        js_getFormAction :: JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formAction Mozilla HTMLInputElement.formAction documentation> 
getFormAction ::
              (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getFormAction self
  = liftIO
      (fromJSString <$> (js_getFormAction (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        js_setFormEnctype ::
        JSRef HTMLInputElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formEnctype Mozilla HTMLInputElement.formEnctype documentation> 
setFormEnctype ::
               (MonadIO m, ToJSString val) =>
                 HTMLInputElement -> Maybe val -> m ()
setFormEnctype self val
  = liftIO
      (js_setFormEnctype (unHTMLInputElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        js_getFormEnctype ::
        JSRef HTMLInputElement -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formEnctype Mozilla HTMLInputElement.formEnctype documentation> 
getFormEnctype ::
               (MonadIO m, FromJSString result) =>
                 HTMLInputElement -> m (Maybe result)
getFormEnctype self
  = liftIO
      (fromMaybeJSString <$>
         (js_getFormEnctype (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        js_setFormMethod ::
        JSRef HTMLInputElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formMethod Mozilla HTMLInputElement.formMethod documentation> 
setFormMethod ::
              (MonadIO m, ToJSString val) =>
                HTMLInputElement -> Maybe val -> m ()
setFormMethod self val
  = liftIO
      (js_setFormMethod (unHTMLInputElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"formMethod\"]"
        js_getFormMethod ::
        JSRef HTMLInputElement -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formMethod Mozilla HTMLInputElement.formMethod documentation> 
getFormMethod ::
              (MonadIO m, FromJSString result) =>
                HTMLInputElement -> m (Maybe result)
getFormMethod self
  = liftIO
      (fromMaybeJSString <$>
         (js_getFormMethod (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        js_setFormNoValidate :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formNoValidate Mozilla HTMLInputElement.formNoValidate documentation> 
setFormNoValidate ::
                  (MonadIO m) => HTMLInputElement -> Bool -> m ()
setFormNoValidate self val
  = liftIO (js_setFormNoValidate (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        js_getFormNoValidate :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formNoValidate Mozilla HTMLInputElement.formNoValidate documentation> 
getFormNoValidate :: (MonadIO m) => HTMLInputElement -> m Bool
getFormNoValidate self
  = liftIO (js_getFormNoValidate (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        js_setFormTarget :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formTarget Mozilla HTMLInputElement.formTarget documentation> 
setFormTarget ::
              (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setFormTarget self val
  = liftIO
      (js_setFormTarget (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"formTarget\"]"
        js_getFormTarget :: JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.formTarget Mozilla HTMLInputElement.formTarget documentation> 
getFormTarget ::
              (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getFormTarget self
  = liftIO
      (fromJSString <$> (js_getFormTarget (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLInputElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.height Mozilla HTMLInputElement.height documentation> 
setHeight :: (MonadIO m) => HTMLInputElement -> Word -> m ()
setHeight self val
  = liftIO (js_setHeight (unHTMLInputElement self) val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLInputElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.height Mozilla HTMLInputElement.height documentation> 
getHeight :: (MonadIO m) => HTMLInputElement -> m Word
getHeight self = liftIO (js_getHeight (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"indeterminate\"] = $2;"
        js_setIndeterminate :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.indeterminate Mozilla HTMLInputElement.indeterminate documentation> 
setIndeterminate :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setIndeterminate self val
  = liftIO (js_setIndeterminate (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"indeterminate\"] ? 1 : 0)"
        js_getIndeterminate :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.indeterminate Mozilla HTMLInputElement.indeterminate documentation> 
getIndeterminate :: (MonadIO m) => HTMLInputElement -> m Bool
getIndeterminate self
  = liftIO (js_getIndeterminate (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"list\"]" js_getList ::
        JSRef HTMLInputElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.list Mozilla HTMLInputElement.list documentation> 
getList :: (MonadIO m) => HTMLInputElement -> m (Maybe HTMLElement)
getList self
  = liftIO ((js_getList (unHTMLInputElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"max\"] = $2;" js_setMax ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.max Mozilla HTMLInputElement.max documentation> 
setMax ::
       (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setMax self val
  = liftIO (js_setMax (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.max Mozilla HTMLInputElement.max documentation> 
getMax ::
       (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getMax self
  = liftIO (fromJSString <$> (js_getMax (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"maxLength\"] = $2;"
        js_setMaxLength :: JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.maxLength Mozilla HTMLInputElement.maxLength documentation> 
setMaxLength :: (MonadIO m) => HTMLInputElement -> Int -> m ()
setMaxLength self val
  = liftIO (js_setMaxLength (unHTMLInputElement self) val)
 
foreign import javascript unsafe "$1[\"maxLength\"]"
        js_getMaxLength :: JSRef HTMLInputElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.maxLength Mozilla HTMLInputElement.maxLength documentation> 
getMaxLength :: (MonadIO m) => HTMLInputElement -> m Int
getMaxLength self
  = liftIO (js_getMaxLength (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"min\"] = $2;" js_setMin ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.min Mozilla HTMLInputElement.min documentation> 
setMin ::
       (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setMin self val
  = liftIO (js_setMin (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"min\"]" js_getMin ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.min Mozilla HTMLInputElement.min documentation> 
getMin ::
       (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getMin self
  = liftIO (fromJSString <$> (js_getMin (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        js_setMultiple :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.multiple Mozilla HTMLInputElement.multiple documentation> 
setMultiple :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setMultiple self val
  = liftIO (js_setMultiple (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"multiple\"] ? 1 : 0)"
        js_getMultiple :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.multiple Mozilla HTMLInputElement.multiple documentation> 
getMultiple :: (MonadIO m) => HTMLInputElement -> m Bool
getMultiple self
  = liftIO (js_getMultiple (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.name Mozilla HTMLInputElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.name Mozilla HTMLInputElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"pattern\"] = $2;"
        js_setPattern :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.pattern Mozilla HTMLInputElement.pattern documentation> 
setPattern ::
           (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setPattern self val
  = liftIO (js_setPattern (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"pattern\"]" js_getPattern ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.pattern Mozilla HTMLInputElement.pattern documentation> 
getPattern ::
           (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getPattern self
  = liftIO
      (fromJSString <$> (js_getPattern (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"placeholder\"] = $2;"
        js_setPlaceholder :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.placeholder Mozilla HTMLInputElement.placeholder documentation> 
setPlaceholder ::
               (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setPlaceholder self val
  = liftIO
      (js_setPlaceholder (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"placeholder\"]"
        js_getPlaceholder :: JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.placeholder Mozilla HTMLInputElement.placeholder documentation> 
getPlaceholder ::
               (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getPlaceholder self
  = liftIO
      (fromJSString <$> (js_getPlaceholder (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"readOnly\"] = $2;"
        js_setReadOnly :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.readOnly Mozilla HTMLInputElement.readOnly documentation> 
setReadOnly :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setReadOnly self val
  = liftIO (js_setReadOnly (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"readOnly\"] ? 1 : 0)"
        js_getReadOnly :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.readOnly Mozilla HTMLInputElement.readOnly documentation> 
getReadOnly :: (MonadIO m) => HTMLInputElement -> m Bool
getReadOnly self
  = liftIO (js_getReadOnly (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        js_setRequired :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.required Mozilla HTMLInputElement.required documentation> 
setRequired :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setRequired self val
  = liftIO (js_setRequired (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        js_getRequired :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.required Mozilla HTMLInputElement.required documentation> 
getRequired :: (MonadIO m) => HTMLInputElement -> m Bool
getRequired self
  = liftIO (js_getRequired (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;" js_setSize ::
        JSRef HTMLInputElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.size Mozilla HTMLInputElement.size documentation> 
setSize :: (MonadIO m) => HTMLInputElement -> Word -> m ()
setSize self val
  = liftIO (js_setSize (unHTMLInputElement self) val)
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        JSRef HTMLInputElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.size Mozilla HTMLInputElement.size documentation> 
getSize :: (MonadIO m) => HTMLInputElement -> m Word
getSize self = liftIO (js_getSize (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.src Mozilla HTMLInputElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setSrc self val
  = liftIO (js_setSrc (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.src Mozilla HTMLInputElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getSrc self
  = liftIO (fromJSString <$> (js_getSrc (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"step\"] = $2;" js_setStep ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.step Mozilla HTMLInputElement.step documentation> 
setStep ::
        (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setStep self val
  = liftIO (js_setStep (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"step\"]" js_getStep ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.step Mozilla HTMLInputElement.step documentation> 
getStep ::
        (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getStep self
  = liftIO (fromJSString <$> (js_getStep (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.type Mozilla HTMLInputElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setType self val
  = liftIO (js_setType (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.type Mozilla HTMLInputElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getType self
  = liftIO (fromJSString <$> (js_getType (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        js_setDefaultValue ::
        JSRef HTMLInputElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultValue Mozilla HTMLInputElement.defaultValue documentation> 
setDefaultValue ::
                (MonadIO m, ToJSString val) =>
                  HTMLInputElement -> Maybe val -> m ()
setDefaultValue self val
  = liftIO
      (js_setDefaultValue (unHTMLInputElement self)
         (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        js_getDefaultValue ::
        JSRef HTMLInputElement -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.defaultValue Mozilla HTMLInputElement.defaultValue documentation> 
getDefaultValue ::
                (MonadIO m, FromJSString result) =>
                  HTMLInputElement -> m (Maybe result)
getDefaultValue self
  = liftIO
      (fromMaybeJSString <$>
         (js_getDefaultValue (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef HTMLInputElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.value Mozilla HTMLInputElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) =>
           HTMLInputElement -> Maybe val -> m ()
setValue self val
  = liftIO
      (js_setValue (unHTMLInputElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef HTMLInputElement -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.value Mozilla HTMLInputElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) =>
           HTMLInputElement -> m (Maybe result)
getValue self
  = liftIO
      (fromMaybeJSString <$> (js_getValue (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"valueAsDate\"] = $2;"
        js_setValueAsDate :: JSRef HTMLInputElement -> JSRef Date -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsDate Mozilla HTMLInputElement.valueAsDate documentation> 
setValueAsDate ::
               (MonadIO m, IsDate val) => HTMLInputElement -> Maybe val -> m ()
setValueAsDate self val
  = liftIO
      (js_setValueAsDate (unHTMLInputElement self)
         (maybe jsNull (unDate . toDate) val))
 
foreign import javascript unsafe "$1[\"valueAsDate\"]"
        js_getValueAsDate :: JSRef HTMLInputElement -> IO (JSRef Date)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsDate Mozilla HTMLInputElement.valueAsDate documentation> 
getValueAsDate :: (MonadIO m) => HTMLInputElement -> m (Maybe Date)
getValueAsDate self
  = liftIO
      ((js_getValueAsDate (unHTMLInputElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"valueAsNumber\"] = $2;"
        js_setValueAsNumber :: JSRef HTMLInputElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsNumber Mozilla HTMLInputElement.valueAsNumber documentation> 
setValueAsNumber ::
                 (MonadIO m) => HTMLInputElement -> Double -> m ()
setValueAsNumber self val
  = liftIO (js_setValueAsNumber (unHTMLInputElement self) val)
 
foreign import javascript unsafe "$1[\"valueAsNumber\"]"
        js_getValueAsNumber :: JSRef HTMLInputElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.valueAsNumber Mozilla HTMLInputElement.valueAsNumber documentation> 
getValueAsNumber :: (MonadIO m) => HTMLInputElement -> m Double
getValueAsNumber self
  = liftIO (js_getValueAsNumber (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLInputElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.width Mozilla HTMLInputElement.width documentation> 
setWidth :: (MonadIO m) => HTMLInputElement -> Word -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLInputElement self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLInputElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.width Mozilla HTMLInputElement.width documentation> 
getWidth :: (MonadIO m) => HTMLInputElement -> m Word
getWidth self = liftIO (js_getWidth (unHTMLInputElement self))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.willValidate Mozilla HTMLInputElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLInputElement -> m Bool
getWillValidate self
  = liftIO (js_getWillValidate (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: JSRef HTMLInputElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.validity Mozilla HTMLInputElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLInputElement -> m (Maybe ValidityState)
getValidity self
  = liftIO ((js_getValidity (unHTMLInputElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.validationMessage Mozilla HTMLInputElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getValidationMessage self
  = liftIO
      (fromJSString <$>
         (js_getValidationMessage (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        JSRef HTMLInputElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.labels Mozilla HTMLInputElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLInputElement -> m (Maybe NodeList)
getLabels self
  = liftIO ((js_getLabels (unHTMLInputElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"selectionStart\"] = $2;"
        js_setSelectionStart :: JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionStart Mozilla HTMLInputElement.selectionStart documentation> 
setSelectionStart :: (MonadIO m) => HTMLInputElement -> Int -> m ()
setSelectionStart self val
  = liftIO (js_setSelectionStart (unHTMLInputElement self) val)
 
foreign import javascript unsafe "$1[\"selectionStart\"]"
        js_getSelectionStart :: JSRef HTMLInputElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionStart Mozilla HTMLInputElement.selectionStart documentation> 
getSelectionStart :: (MonadIO m) => HTMLInputElement -> m Int
getSelectionStart self
  = liftIO (js_getSelectionStart (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"selectionEnd\"] = $2;"
        js_setSelectionEnd :: JSRef HTMLInputElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionEnd Mozilla HTMLInputElement.selectionEnd documentation> 
setSelectionEnd :: (MonadIO m) => HTMLInputElement -> Int -> m ()
setSelectionEnd self val
  = liftIO (js_setSelectionEnd (unHTMLInputElement self) val)
 
foreign import javascript unsafe "$1[\"selectionEnd\"]"
        js_getSelectionEnd :: JSRef HTMLInputElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionEnd Mozilla HTMLInputElement.selectionEnd documentation> 
getSelectionEnd :: (MonadIO m) => HTMLInputElement -> m Int
getSelectionEnd self
  = liftIO (js_getSelectionEnd (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"selectionDirection\"] = $2;"
        js_setSelectionDirection ::
        JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionDirection Mozilla HTMLInputElement.selectionDirection documentation> 
setSelectionDirection ::
                      (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setSelectionDirection self val
  = liftIO
      (js_setSelectionDirection (unHTMLInputElement self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"selectionDirection\"]"
        js_getSelectionDirection :: JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.selectionDirection Mozilla HTMLInputElement.selectionDirection documentation> 
getSelectionDirection ::
                      (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getSelectionDirection self
  = liftIO
      (fromJSString <$>
         (js_getSelectionDirection (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.align Mozilla HTMLInputElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.align Mozilla HTMLInputElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getAlign self
  = liftIO (fromJSString <$> (js_getAlign (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        js_setUseMap :: JSRef HTMLInputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.useMap Mozilla HTMLInputElement.useMap documentation> 
setUseMap ::
          (MonadIO m, ToJSString val) => HTMLInputElement -> val -> m ()
setUseMap self val
  = liftIO (js_setUseMap (unHTMLInputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"useMap\"]" js_getUseMap ::
        JSRef HTMLInputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.useMap Mozilla HTMLInputElement.useMap documentation> 
getUseMap ::
          (MonadIO m, FromJSString result) => HTMLInputElement -> m result
getUseMap self
  = liftIO
      (fromJSString <$> (js_getUseMap (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"incremental\"] = $2;"
        js_setIncremental :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.incremental Mozilla HTMLInputElement.incremental documentation> 
setIncremental :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setIncremental self val
  = liftIO (js_setIncremental (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"incremental\"] ? 1 : 0)"
        js_getIncremental :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.incremental Mozilla HTMLInputElement.incremental documentation> 
getIncremental :: (MonadIO m) => HTMLInputElement -> m Bool
getIncremental self
  = liftIO (js_getIncremental (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        js_setAutocorrect :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocorrect Mozilla HTMLInputElement.autocorrect documentation> 
setAutocorrect :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setAutocorrect self val
  = liftIO (js_setAutocorrect (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        js_getAutocorrect :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocorrect Mozilla HTMLInputElement.autocorrect documentation> 
getAutocorrect :: (MonadIO m) => HTMLInputElement -> m Bool
getAutocorrect self
  = liftIO (js_getAutocorrect (unHTMLInputElement self))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        js_setAutocapitalize ::
        JSRef HTMLInputElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocapitalize Mozilla HTMLInputElement.autocapitalize documentation> 
setAutocapitalize ::
                  (MonadIO m, ToJSString val) =>
                    HTMLInputElement -> Maybe val -> m ()
setAutocapitalize self val
  = liftIO
      (js_setAutocapitalize (unHTMLInputElement self)
         (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        js_getAutocapitalize ::
        JSRef HTMLInputElement -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.autocapitalize Mozilla HTMLInputElement.autocapitalize documentation> 
getAutocapitalize ::
                  (MonadIO m, FromJSString result) =>
                    HTMLInputElement -> m (Maybe result)
getAutocapitalize self
  = liftIO
      (fromMaybeJSString <$>
         (js_getAutocapitalize (unHTMLInputElement self)))
 
foreign import javascript unsafe "$1[\"capture\"] = $2;"
        js_setCapture :: JSRef HTMLInputElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.capture Mozilla HTMLInputElement.capture documentation> 
setCapture :: (MonadIO m) => HTMLInputElement -> Bool -> m ()
setCapture self val
  = liftIO (js_setCapture (unHTMLInputElement self) val)
 
foreign import javascript unsafe "($1[\"capture\"] ? 1 : 0)"
        js_getCapture :: JSRef HTMLInputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement.capture Mozilla HTMLInputElement.capture documentation> 
getCapture :: (MonadIO m) => HTMLInputElement -> m Bool
getCapture self = liftIO (js_getCapture (unHTMLInputElement self))