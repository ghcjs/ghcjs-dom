{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLKeygenElement
       (js_checkValidity, checkValidity, checkValidity_,
        js_reportValidity, reportValidity, reportValidity_,
        js_setCustomValidity, setCustomValidity, js_setAutofocus,
        setAutofocus, js_getAutofocus, getAutofocus, js_setChallenge,
        setChallenge, js_getChallenge, getChallenge, js_setDisabled,
        setDisabled, js_getDisabled, getDisabled, js_getForm, getForm,
        js_setKeytype, setKeytype, js_getKeytype, getKeytype, js_setName,
        setName, js_getName, getName, js_getType, getType,
        js_getWillValidate, getWillValidate, js_getValidity, getValidity,
        js_getValidationMessage, getValidationMessage, js_getLabels,
        getLabels, HTMLKeygenElement(..), gTypeHTMLKeygenElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.checkValidity Mozilla HTMLKeygenElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLKeygenElement -> m Bool
checkValidity self = liftIO (js_checkValidity self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.checkValidity Mozilla HTMLKeygenElement.checkValidity documentation> 
checkValidity_ :: (MonadIO m) => HTMLKeygenElement -> m ()
checkValidity_ self = liftIO (void (js_checkValidity self))
 
foreign import javascript unsafe
        "($1[\"reportValidity\"]() ? 1 : 0)" js_reportValidity ::
        HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.reportValidity Mozilla HTMLKeygenElement.reportValidity documentation> 
reportValidity :: (MonadIO m) => HTMLKeygenElement -> m Bool
reportValidity self = liftIO (js_reportValidity self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.reportValidity Mozilla HTMLKeygenElement.reportValidity documentation> 
reportValidity_ :: (MonadIO m) => HTMLKeygenElement -> m ()
reportValidity_ self = liftIO (void (js_reportValidity self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity :: HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.setCustomValidity Mozilla HTMLKeygenElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) => HTMLKeygenElement -> error -> m ()
setCustomValidity self error
  = liftIO (js_setCustomValidity self (toJSString error))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        js_setAutofocus :: HTMLKeygenElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.autofocus Mozilla HTMLKeygenElement.autofocus documentation> 
setAutofocus :: (MonadIO m) => HTMLKeygenElement -> Bool -> m ()
setAutofocus self val = liftIO (js_setAutofocus self val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        js_getAutofocus :: HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.autofocus Mozilla HTMLKeygenElement.autofocus documentation> 
getAutofocus :: (MonadIO m) => HTMLKeygenElement -> m Bool
getAutofocus self = liftIO (js_getAutofocus self)
 
foreign import javascript unsafe "$1[\"challenge\"] = $2;"
        js_setChallenge :: HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.challenge Mozilla HTMLKeygenElement.challenge documentation> 
setChallenge ::
             (MonadIO m, ToJSString val) => HTMLKeygenElement -> val -> m ()
setChallenge self val
  = liftIO (js_setChallenge self (toJSString val))
 
foreign import javascript unsafe "$1[\"challenge\"]"
        js_getChallenge :: HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.challenge Mozilla HTMLKeygenElement.challenge documentation> 
getChallenge ::
             (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getChallenge self
  = liftIO (fromJSString <$> (js_getChallenge self))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: HTMLKeygenElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.disabled Mozilla HTMLKeygenElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLKeygenElement -> Bool -> m ()
setDisabled self val = liftIO (js_setDisabled self val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.disabled Mozilla HTMLKeygenElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLKeygenElement -> m Bool
getDisabled self = liftIO (js_getDisabled self)
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLKeygenElement -> IO HTMLFormElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.form Mozilla HTMLKeygenElement.form documentation> 
getForm :: (MonadIO m) => HTMLKeygenElement -> m HTMLFormElement
getForm self = liftIO (js_getForm self)
 
foreign import javascript unsafe "$1[\"keytype\"] = $2;"
        js_setKeytype :: HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.keytype Mozilla HTMLKeygenElement.keytype documentation> 
setKeytype ::
           (MonadIO m, ToJSString val) => HTMLKeygenElement -> val -> m ()
setKeytype self val = liftIO (js_setKeytype self (toJSString val))
 
foreign import javascript unsafe "$1[\"keytype\"]" js_getKeytype ::
        HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.keytype Mozilla HTMLKeygenElement.keytype documentation> 
getKeytype ::
           (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getKeytype self = liftIO (fromJSString <$> (js_getKeytype self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.name Mozilla HTMLKeygenElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLKeygenElement -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.name Mozilla HTMLKeygenElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.type Mozilla HTMLKeygenElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.willValidate Mozilla HTMLKeygenElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLKeygenElement -> m Bool
getWillValidate self = liftIO (js_getWillValidate self)
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: HTMLKeygenElement -> IO ValidityState

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.validity Mozilla HTMLKeygenElement.validity documentation> 
getValidity :: (MonadIO m) => HTMLKeygenElement -> m ValidityState
getValidity self = liftIO (js_getValidity self)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.validationMessage Mozilla HTMLKeygenElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getValidationMessage self
  = liftIO (fromJSString <$> (js_getValidationMessage self))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        HTMLKeygenElement -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.labels Mozilla HTMLKeygenElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLKeygenElement -> m NodeList
getLabels self = liftIO (js_getLabels self)