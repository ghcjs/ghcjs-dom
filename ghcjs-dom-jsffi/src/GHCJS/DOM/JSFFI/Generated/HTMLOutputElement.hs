{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLOutputElement
       (js_checkValidity, checkValidity, js_setCustomValidity,
        setCustomValidity, js_getHtmlFor, getHtmlFor, js_getForm, getForm,
        js_setName, setName, js_getName, getName, js_getType, getType,
        js_setDefaultValue, setDefaultValue, js_getDefaultValue,
        getDefaultValue, js_setValue, setValue, js_getValue, getValue,
        js_getWillValidate, getWillValidate, js_getValidity, getValidity,
        js_getValidationMessage, getValidationMessage, js_getLabels,
        getLabels, HTMLOutputElement, castToHTMLOutputElement,
        gTypeHTMLOutputElement)
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
        HTMLOutputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.checkValidity Mozilla HTMLOutputElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLOutputElement -> m Bool
checkValidity self = liftIO (js_checkValidity (self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        HTMLOutputElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.setCustomValidity Mozilla HTMLOutputElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLOutputElement -> Maybe error -> m ()
setCustomValidity self error
  = liftIO (js_setCustomValidity (self) (toMaybeJSString error))
 
foreign import javascript unsafe "$1[\"htmlFor\"]" js_getHtmlFor ::
        HTMLOutputElement -> IO (Nullable DOMSettableTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.htmlFor Mozilla HTMLOutputElement.htmlFor documentation> 
getHtmlFor ::
           (MonadIO m) => HTMLOutputElement -> m (Maybe DOMSettableTokenList)
getHtmlFor self
  = liftIO (nullableToMaybe <$> (js_getHtmlFor (self)))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLOutputElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.form Mozilla HTMLOutputElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLOutputElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm (self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLOutputElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.type Mozilla HTMLOutputElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        js_setDefaultValue ::
        HTMLOutputElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
setDefaultValue ::
                (MonadIO m, ToJSString val) =>
                  HTMLOutputElement -> Maybe val -> m ()
setDefaultValue self val
  = liftIO (js_setDefaultValue (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        js_getDefaultValue :: HTMLOutputElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
getDefaultValue ::
                (MonadIO m, FromJSString result) =>
                  HTMLOutputElement -> m (Maybe result)
getDefaultValue self
  = liftIO (fromMaybeJSString <$> (js_getDefaultValue (self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLOutputElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) =>
           HTMLOutputElement -> Maybe val -> m ()
setValue self val
  = liftIO (js_setValue (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLOutputElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) =>
           HTMLOutputElement -> m (Maybe result)
getValue self = liftIO (fromMaybeJSString <$> (js_getValue (self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: HTMLOutputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.willValidate Mozilla HTMLOutputElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLOutputElement -> m Bool
getWillValidate self = liftIO (js_getWillValidate (self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: HTMLOutputElement -> IO (Nullable ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validity Mozilla HTMLOutputElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLOutputElement -> m (Maybe ValidityState)
getValidity self
  = liftIO (nullableToMaybe <$> (js_getValidity (self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validationMessage Mozilla HTMLOutputElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getValidationMessage self
  = liftIO (fromJSString <$> (js_getValidationMessage (self)))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        HTMLOutputElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.labels Mozilla HTMLOutputElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLOutputElement -> m (Maybe NodeList)
getLabels self = liftIO (nullableToMaybe <$> (js_getLabels (self)))