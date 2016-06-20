{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLButtonElement
       (js_checkValidity, checkValidity, js_setCustomValidity,
        setCustomValidity, js_setAutofocus, setAutofocus, js_getAutofocus,
        getAutofocus, js_setDisabled, setDisabled, js_getDisabled,
        getDisabled, js_getForm, getForm, js_setFormAction, setFormAction,
        js_getFormAction, getFormAction, js_setFormEnctype, setFormEnctype,
        js_getFormEnctype, getFormEnctype, js_setFormMethod, setFormMethod,
        js_getFormMethod, getFormMethod, js_setFormNoValidate,
        setFormNoValidate, js_getFormNoValidate, getFormNoValidate,
        js_setFormTarget, setFormTarget, js_getFormTarget, getFormTarget,
        js_setName, setName, js_getName, getName, js_setType, setType,
        js_getType, getType, js_setValue, setValue, js_getValue, getValue,
        js_getWillValidate, getWillValidate, js_getValidity, getValidity,
        js_getValidationMessage, getValidationMessage, js_getLabels,
        getLabels, HTMLButtonElement, castToHTMLButtonElement,
        gTypeHTMLButtonElement)
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
        HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.checkValidity Mozilla HTMLButtonElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLButtonElement -> m Bool
checkValidity self = liftIO (js_checkValidity (self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        HTMLButtonElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.setCustomValidity Mozilla HTMLButtonElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLButtonElement -> Maybe error -> m ()
setCustomValidity self error
  = liftIO (js_setCustomValidity (self) (toMaybeJSString error))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        js_setAutofocus :: HTMLButtonElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.autofocus Mozilla HTMLButtonElement.autofocus documentation> 
setAutofocus :: (MonadIO m) => HTMLButtonElement -> Bool -> m ()
setAutofocus self val = liftIO (js_setAutofocus (self) val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        js_getAutofocus :: HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.autofocus Mozilla HTMLButtonElement.autofocus documentation> 
getAutofocus :: (MonadIO m) => HTMLButtonElement -> m Bool
getAutofocus self = liftIO (js_getAutofocus (self))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: HTMLButtonElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.disabled Mozilla HTMLButtonElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLButtonElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled (self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.disabled Mozilla HTMLButtonElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLButtonElement -> m Bool
getDisabled self = liftIO (js_getDisabled (self))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLButtonElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.form Mozilla HTMLButtonElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLButtonElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm (self)))
 
foreign import javascript unsafe "$1[\"formAction\"] = $2;"
        js_setFormAction :: HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formAction Mozilla HTMLButtonElement.formAction documentation> 
setFormAction ::
              (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setFormAction self val
  = liftIO (js_setFormAction (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"formAction\"]"
        js_getFormAction :: HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formAction Mozilla HTMLButtonElement.formAction documentation> 
getFormAction ::
              (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getFormAction self
  = liftIO (fromJSString <$> (js_getFormAction (self)))
 
foreign import javascript unsafe "$1[\"formEnctype\"] = $2;"
        js_setFormEnctype ::
        HTMLButtonElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
setFormEnctype ::
               (MonadIO m, ToJSString val) =>
                 HTMLButtonElement -> Maybe val -> m ()
setFormEnctype self val
  = liftIO (js_setFormEnctype (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"formEnctype\"]"
        js_getFormEnctype :: HTMLButtonElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formEnctype Mozilla HTMLButtonElement.formEnctype documentation> 
getFormEnctype ::
               (MonadIO m, FromJSString result) =>
                 HTMLButtonElement -> m (Maybe result)
getFormEnctype self
  = liftIO (fromMaybeJSString <$> (js_getFormEnctype (self)))
 
foreign import javascript unsafe "$1[\"formMethod\"] = $2;"
        js_setFormMethod :: HTMLButtonElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
setFormMethod ::
              (MonadIO m, ToJSString val) =>
                HTMLButtonElement -> Maybe val -> m ()
setFormMethod self val
  = liftIO (js_setFormMethod (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"formMethod\"]"
        js_getFormMethod :: HTMLButtonElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formMethod Mozilla HTMLButtonElement.formMethod documentation> 
getFormMethod ::
              (MonadIO m, FromJSString result) =>
                HTMLButtonElement -> m (Maybe result)
getFormMethod self
  = liftIO (fromMaybeJSString <$> (js_getFormMethod (self)))
 
foreign import javascript unsafe "$1[\"formNoValidate\"] = $2;"
        js_setFormNoValidate :: HTMLButtonElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formNoValidate Mozilla HTMLButtonElement.formNoValidate documentation> 
setFormNoValidate ::
                  (MonadIO m) => HTMLButtonElement -> Bool -> m ()
setFormNoValidate self val
  = liftIO (js_setFormNoValidate (self) val)
 
foreign import javascript unsafe "($1[\"formNoValidate\"] ? 1 : 0)"
        js_getFormNoValidate :: HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formNoValidate Mozilla HTMLButtonElement.formNoValidate documentation> 
getFormNoValidate :: (MonadIO m) => HTMLButtonElement -> m Bool
getFormNoValidate self = liftIO (js_getFormNoValidate (self))
 
foreign import javascript unsafe "$1[\"formTarget\"] = $2;"
        js_setFormTarget :: HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formTarget Mozilla HTMLButtonElement.formTarget documentation> 
setFormTarget ::
              (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setFormTarget self val
  = liftIO (js_setFormTarget (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"formTarget\"]"
        js_getFormTarget :: HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.formTarget Mozilla HTMLButtonElement.formTarget documentation> 
getFormTarget ::
              (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getFormTarget self
  = liftIO (fromJSString <$> (js_getFormTarget (self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.name Mozilla HTMLButtonElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.name Mozilla HTMLButtonElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLButtonElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.type Mozilla HTMLButtonElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) =>
          HTMLButtonElement -> Maybe val -> m ()
setType self val = liftIO (js_setType (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLButtonElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.type Mozilla HTMLButtonElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) =>
          HTMLButtonElement -> m (Maybe result)
getType self = liftIO (fromMaybeJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLButtonElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.value Mozilla HTMLButtonElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => HTMLButtonElement -> val -> m ()
setValue self val = liftIO (js_setValue (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.value Mozilla HTMLButtonElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getValue self = liftIO (fromJSString <$> (js_getValue (self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: HTMLButtonElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.willValidate Mozilla HTMLButtonElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLButtonElement -> m Bool
getWillValidate self = liftIO (js_getWillValidate (self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: HTMLButtonElement -> IO (Nullable ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validity Mozilla HTMLButtonElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLButtonElement -> m (Maybe ValidityState)
getValidity self
  = liftIO (nullableToMaybe <$> (js_getValidity (self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: HTMLButtonElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.validationMessage Mozilla HTMLButtonElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLButtonElement -> m result
getValidationMessage self
  = liftIO (fromJSString <$> (js_getValidationMessage (self)))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        HTMLButtonElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement.labels Mozilla HTMLButtonElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLButtonElement -> m (Maybe NodeList)
getLabels self = liftIO (nullableToMaybe <$> (js_getLabels (self)))