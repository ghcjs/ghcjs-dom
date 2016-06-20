{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTextAreaElement
       (js_checkValidity, checkValidity, js_setCustomValidity,
        setCustomValidity, js_select, select, js_setRangeText,
        setRangeText, js_setRangeText4, setRangeText4,
        js_setSelectionRange, setSelectionRange, js_setAutofocus,
        setAutofocus, js_getAutofocus, getAutofocus, js_setCols, setCols,
        js_getCols, getCols, js_setDirName, setDirName, js_getDirName,
        getDirName, js_setDisabled, setDisabled, js_getDisabled,
        getDisabled, js_getForm, getForm, js_setMaxLength, setMaxLength,
        js_getMaxLength, getMaxLength, js_setName, setName, js_getName,
        getName, js_setPlaceholder, setPlaceholder, js_getPlaceholder,
        getPlaceholder, js_setReadOnly, setReadOnly, js_getReadOnly,
        getReadOnly, js_setRequired, setRequired, js_getRequired,
        getRequired, js_setRows, setRows, js_getRows, getRows, js_setWrap,
        setWrap, js_getWrap, getWrap, js_getType, getType,
        js_setDefaultValue, setDefaultValue, js_getDefaultValue,
        getDefaultValue, js_setValue, setValue, js_getValue, getValue,
        js_getTextLength, getTextLength, js_getWillValidate,
        getWillValidate, js_getValidity, getValidity,
        js_getValidationMessage, getValidationMessage, js_getLabels,
        getLabels, js_setSelectionStart, setSelectionStart,
        js_getSelectionStart, getSelectionStart, js_setSelectionEnd,
        setSelectionEnd, js_getSelectionEnd, getSelectionEnd,
        js_setSelectionDirection, setSelectionDirection,
        js_getSelectionDirection, getSelectionDirection, js_setAutocorrect,
        setAutocorrect, js_getAutocorrect, getAutocorrect,
        js_setAutocapitalize, setAutocapitalize, js_getAutocapitalize,
        getAutocapitalize, HTMLTextAreaElement, castToHTMLTextAreaElement,
        gTypeHTMLTextAreaElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.checkValidity Mozilla HTMLTextAreaElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLTextAreaElement -> m Bool
checkValidity self = liftIO (js_checkValidity (self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        HTMLTextAreaElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.setCustomValidity Mozilla HTMLTextAreaElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLTextAreaElement -> Maybe error -> m ()
setCustomValidity self error
  = liftIO (js_setCustomValidity (self) (toMaybeJSString error))
 
foreign import javascript unsafe "$1[\"select\"]()" js_select ::
        HTMLTextAreaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.select Mozilla HTMLTextAreaElement.select documentation> 
select :: (MonadIO m) => HTMLTextAreaElement -> m ()
select self = liftIO (js_select (self))
 
foreign import javascript unsafe "$1[\"setRangeText\"]($2)"
        js_setRangeText :: HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.setRangeText Mozilla HTMLTextAreaElement.setRangeText documentation> 
setRangeText ::
             (MonadIO m, ToJSString replacement) =>
               HTMLTextAreaElement -> replacement -> m ()
setRangeText self replacement
  = liftIO (js_setRangeText (self) (toJSString replacement))
 
foreign import javascript unsafe
        "$1[\"setRangeText\"]($2, $3, $4,\n$5)" js_setRangeText4 ::
        HTMLTextAreaElement ->
          JSString -> Word -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.setRangeText Mozilla HTMLTextAreaElement.setRangeText documentation> 
setRangeText4 ::
              (MonadIO m, ToJSString replacement, ToJSString selectionMode) =>
                HTMLTextAreaElement ->
                  replacement -> Word -> Word -> selectionMode -> m ()
setRangeText4 self replacement start end selectionMode
  = liftIO
      (js_setRangeText4 (self) (toJSString replacement) start end
         (toJSString selectionMode))
 
foreign import javascript unsafe
        "$1[\"setSelectionRange\"]($2, $3,\n$4)" js_setSelectionRange ::
        HTMLTextAreaElement -> Int -> Int -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.setSelectionRange Mozilla HTMLTextAreaElement.setSelectionRange documentation> 
setSelectionRange ::
                  (MonadIO m, ToJSString direction) =>
                    HTMLTextAreaElement -> Int -> Int -> direction -> m ()
setSelectionRange self start end direction
  = liftIO
      (js_setSelectionRange (self) start end (toJSString direction))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        js_setAutofocus :: HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autofocus Mozilla HTMLTextAreaElement.autofocus documentation> 
setAutofocus :: (MonadIO m) => HTMLTextAreaElement -> Bool -> m ()
setAutofocus self val = liftIO (js_setAutofocus (self) val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        js_getAutofocus :: HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autofocus Mozilla HTMLTextAreaElement.autofocus documentation> 
getAutofocus :: (MonadIO m) => HTMLTextAreaElement -> m Bool
getAutofocus self = liftIO (js_getAutofocus (self))
 
foreign import javascript unsafe "$1[\"cols\"] = $2;" js_setCols ::
        HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.cols Mozilla HTMLTextAreaElement.cols documentation> 
setCols :: (MonadIO m) => HTMLTextAreaElement -> Int -> m ()
setCols self val = liftIO (js_setCols (self) val)
 
foreign import javascript unsafe "$1[\"cols\"]" js_getCols ::
        HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.cols Mozilla HTMLTextAreaElement.cols documentation> 
getCols :: (MonadIO m) => HTMLTextAreaElement -> m Int
getCols self = liftIO (js_getCols (self))
 
foreign import javascript unsafe "$1[\"dirName\"] = $2;"
        js_setDirName :: HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.dirName Mozilla HTMLTextAreaElement.dirName documentation> 
setDirName ::
           (MonadIO m, ToJSString val) => HTMLTextAreaElement -> val -> m ()
setDirName self val
  = liftIO (js_setDirName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"dirName\"]" js_getDirName ::
        HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.dirName Mozilla HTMLTextAreaElement.dirName documentation> 
getDirName ::
           (MonadIO m, FromJSString result) => HTMLTextAreaElement -> m result
getDirName self = liftIO (fromJSString <$> (js_getDirName (self)))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.disabled Mozilla HTMLTextAreaElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLTextAreaElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled (self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.disabled Mozilla HTMLTextAreaElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLTextAreaElement -> m Bool
getDisabled self = liftIO (js_getDisabled (self))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLTextAreaElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.form Mozilla HTMLTextAreaElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLTextAreaElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm (self)))
 
foreign import javascript unsafe "$1[\"maxLength\"] = $2;"
        js_setMaxLength :: HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.maxLength Mozilla HTMLTextAreaElement.maxLength documentation> 
setMaxLength :: (MonadIO m) => HTMLTextAreaElement -> Int -> m ()
setMaxLength self val = liftIO (js_setMaxLength (self) val)
 
foreign import javascript unsafe "$1[\"maxLength\"]"
        js_getMaxLength :: HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.maxLength Mozilla HTMLTextAreaElement.maxLength documentation> 
getMaxLength :: (MonadIO m) => HTMLTextAreaElement -> m Int
getMaxLength self = liftIO (js_getMaxLength (self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.name Mozilla HTMLTextAreaElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLTextAreaElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.name Mozilla HTMLTextAreaElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLTextAreaElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"placeholder\"] = $2;"
        js_setPlaceholder :: HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.placeholder Mozilla HTMLTextAreaElement.placeholder documentation> 
setPlaceholder ::
               (MonadIO m, ToJSString val) => HTMLTextAreaElement -> val -> m ()
setPlaceholder self val
  = liftIO (js_setPlaceholder (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"placeholder\"]"
        js_getPlaceholder :: HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.placeholder Mozilla HTMLTextAreaElement.placeholder documentation> 
getPlaceholder ::
               (MonadIO m, FromJSString result) => HTMLTextAreaElement -> m result
getPlaceholder self
  = liftIO (fromJSString <$> (js_getPlaceholder (self)))
 
foreign import javascript unsafe "$1[\"readOnly\"] = $2;"
        js_setReadOnly :: HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.readOnly Mozilla HTMLTextAreaElement.readOnly documentation> 
setReadOnly :: (MonadIO m) => HTMLTextAreaElement -> Bool -> m ()
setReadOnly self val = liftIO (js_setReadOnly (self) val)
 
foreign import javascript unsafe "($1[\"readOnly\"] ? 1 : 0)"
        js_getReadOnly :: HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.readOnly Mozilla HTMLTextAreaElement.readOnly documentation> 
getReadOnly :: (MonadIO m) => HTMLTextAreaElement -> m Bool
getReadOnly self = liftIO (js_getReadOnly (self))
 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        js_setRequired :: HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.required Mozilla HTMLTextAreaElement.required documentation> 
setRequired :: (MonadIO m) => HTMLTextAreaElement -> Bool -> m ()
setRequired self val = liftIO (js_setRequired (self) val)
 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        js_getRequired :: HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.required Mozilla HTMLTextAreaElement.required documentation> 
getRequired :: (MonadIO m) => HTMLTextAreaElement -> m Bool
getRequired self = liftIO (js_getRequired (self))
 
foreign import javascript unsafe "$1[\"rows\"] = $2;" js_setRows ::
        HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.rows Mozilla HTMLTextAreaElement.rows documentation> 
setRows :: (MonadIO m) => HTMLTextAreaElement -> Int -> m ()
setRows self val = liftIO (js_setRows (self) val)
 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.rows Mozilla HTMLTextAreaElement.rows documentation> 
getRows :: (MonadIO m) => HTMLTextAreaElement -> m Int
getRows self = liftIO (js_getRows (self))
 
foreign import javascript unsafe "$1[\"wrap\"] = $2;" js_setWrap ::
        HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.wrap Mozilla HTMLTextAreaElement.wrap documentation> 
setWrap ::
        (MonadIO m, ToJSString val) => HTMLTextAreaElement -> val -> m ()
setWrap self val = liftIO (js_setWrap (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"wrap\"]" js_getWrap ::
        HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.wrap Mozilla HTMLTextAreaElement.wrap documentation> 
getWrap ::
        (MonadIO m, FromJSString result) => HTMLTextAreaElement -> m result
getWrap self = liftIO (fromJSString <$> (js_getWrap (self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.type Mozilla HTMLTextAreaElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLTextAreaElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        js_setDefaultValue ::
        HTMLTextAreaElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.defaultValue Mozilla HTMLTextAreaElement.defaultValue documentation> 
setDefaultValue ::
                (MonadIO m, ToJSString val) =>
                  HTMLTextAreaElement -> Maybe val -> m ()
setDefaultValue self val
  = liftIO (js_setDefaultValue (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        js_getDefaultValue :: HTMLTextAreaElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.defaultValue Mozilla HTMLTextAreaElement.defaultValue documentation> 
getDefaultValue ::
                (MonadIO m, FromJSString result) =>
                  HTMLTextAreaElement -> m (Maybe result)
getDefaultValue self
  = liftIO (fromMaybeJSString <$> (js_getDefaultValue (self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLTextAreaElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.value Mozilla HTMLTextAreaElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) =>
           HTMLTextAreaElement -> Maybe val -> m ()
setValue self val
  = liftIO (js_setValue (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLTextAreaElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.value Mozilla HTMLTextAreaElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) =>
           HTMLTextAreaElement -> m (Maybe result)
getValue self = liftIO (fromMaybeJSString <$> (js_getValue (self)))
 
foreign import javascript unsafe "$1[\"textLength\"]"
        js_getTextLength :: HTMLTextAreaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.textLength Mozilla HTMLTextAreaElement.textLength documentation> 
getTextLength :: (MonadIO m) => HTMLTextAreaElement -> m Word
getTextLength self = liftIO (js_getTextLength (self))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.willValidate Mozilla HTMLTextAreaElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLTextAreaElement -> m Bool
getWillValidate self = liftIO (js_getWillValidate (self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: HTMLTextAreaElement -> IO (Nullable ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.validity Mozilla HTMLTextAreaElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLTextAreaElement -> m (Maybe ValidityState)
getValidity self
  = liftIO (nullableToMaybe <$> (js_getValidity (self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.validationMessage Mozilla HTMLTextAreaElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLTextAreaElement -> m result
getValidationMessage self
  = liftIO (fromJSString <$> (js_getValidationMessage (self)))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        HTMLTextAreaElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.labels Mozilla HTMLTextAreaElement.labels documentation> 
getLabels ::
          (MonadIO m) => HTMLTextAreaElement -> m (Maybe NodeList)
getLabels self = liftIO (nullableToMaybe <$> (js_getLabels (self)))
 
foreign import javascript unsafe "$1[\"selectionStart\"] = $2;"
        js_setSelectionStart :: HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionStart Mozilla HTMLTextAreaElement.selectionStart documentation> 
setSelectionStart ::
                  (MonadIO m) => HTMLTextAreaElement -> Int -> m ()
setSelectionStart self val
  = liftIO (js_setSelectionStart (self) val)
 
foreign import javascript unsafe "$1[\"selectionStart\"]"
        js_getSelectionStart :: HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionStart Mozilla HTMLTextAreaElement.selectionStart documentation> 
getSelectionStart :: (MonadIO m) => HTMLTextAreaElement -> m Int
getSelectionStart self = liftIO (js_getSelectionStart (self))
 
foreign import javascript unsafe "$1[\"selectionEnd\"] = $2;"
        js_setSelectionEnd :: HTMLTextAreaElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionEnd Mozilla HTMLTextAreaElement.selectionEnd documentation> 
setSelectionEnd ::
                (MonadIO m) => HTMLTextAreaElement -> Int -> m ()
setSelectionEnd self val = liftIO (js_setSelectionEnd (self) val)
 
foreign import javascript unsafe "$1[\"selectionEnd\"]"
        js_getSelectionEnd :: HTMLTextAreaElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionEnd Mozilla HTMLTextAreaElement.selectionEnd documentation> 
getSelectionEnd :: (MonadIO m) => HTMLTextAreaElement -> m Int
getSelectionEnd self = liftIO (js_getSelectionEnd (self))
 
foreign import javascript unsafe "$1[\"selectionDirection\"] = $2;"
        js_setSelectionDirection ::
        HTMLTextAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionDirection Mozilla HTMLTextAreaElement.selectionDirection documentation> 
setSelectionDirection ::
                      (MonadIO m, ToJSString val) => HTMLTextAreaElement -> val -> m ()
setSelectionDirection self val
  = liftIO (js_setSelectionDirection (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"selectionDirection\"]"
        js_getSelectionDirection :: HTMLTextAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.selectionDirection Mozilla HTMLTextAreaElement.selectionDirection documentation> 
getSelectionDirection ::
                      (MonadIO m, FromJSString result) => HTMLTextAreaElement -> m result
getSelectionDirection self
  = liftIO (fromJSString <$> (js_getSelectionDirection (self)))
 
foreign import javascript unsafe "$1[\"autocorrect\"] = $2;"
        js_setAutocorrect :: HTMLTextAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autocorrect Mozilla HTMLTextAreaElement.autocorrect documentation> 
setAutocorrect ::
               (MonadIO m) => HTMLTextAreaElement -> Bool -> m ()
setAutocorrect self val = liftIO (js_setAutocorrect (self) val)
 
foreign import javascript unsafe "($1[\"autocorrect\"] ? 1 : 0)"
        js_getAutocorrect :: HTMLTextAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autocorrect Mozilla HTMLTextAreaElement.autocorrect documentation> 
getAutocorrect :: (MonadIO m) => HTMLTextAreaElement -> m Bool
getAutocorrect self = liftIO (js_getAutocorrect (self))
 
foreign import javascript unsafe "$1[\"autocapitalize\"] = $2;"
        js_setAutocapitalize ::
        HTMLTextAreaElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autocapitalize Mozilla HTMLTextAreaElement.autocapitalize documentation> 
setAutocapitalize ::
                  (MonadIO m, ToJSString val) =>
                    HTMLTextAreaElement -> Maybe val -> m ()
setAutocapitalize self val
  = liftIO (js_setAutocapitalize (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"autocapitalize\"]"
        js_getAutocapitalize ::
        HTMLTextAreaElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement.autocapitalize Mozilla HTMLTextAreaElement.autocapitalize documentation> 
getAutocapitalize ::
                  (MonadIO m, FromJSString result) =>
                    HTMLTextAreaElement -> m (Maybe result)
getAutocapitalize self
  = liftIO (fromMaybeJSString <$> (js_getAutocapitalize (self)))