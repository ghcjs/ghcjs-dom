{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLKeygenElement
       (js_checkValidity, checkValidity, js_setCustomValidity,
        setCustomValidity, js_setAutofocus, setAutofocus, js_getAutofocus,
        getAutofocus, js_setChallenge, setChallenge, js_getChallenge,
        getChallenge, js_setDisabled, setDisabled, js_getDisabled,
        getDisabled, js_getForm, getForm, js_setKeytype, setKeytype,
        js_getKeytype, getKeytype, js_setName, setName, js_getName,
        getName, js_getType, getType, js_getWillValidate, getWillValidate,
        js_getValidity, getValidity, js_getValidationMessage,
        getValidationMessage, js_getLabels, getLabels, HTMLKeygenElement,
        castToHTMLKeygenElement, gTypeHTMLKeygenElement)
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
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        JSRef HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.checkValidity Mozilla HTMLKeygenElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLKeygenElement -> m Bool
checkValidity self
  = liftIO (js_checkValidity (unHTMLKeygenElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        JSRef HTMLKeygenElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.setCustomValidity Mozilla HTMLKeygenElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLKeygenElement -> Maybe error -> m ()
setCustomValidity self error
  = liftIO
      (js_setCustomValidity (unHTMLKeygenElement self)
         (toMaybeJSString error))
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        js_setAutofocus :: JSRef HTMLKeygenElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.autofocus Mozilla HTMLKeygenElement.autofocus documentation> 
setAutofocus :: (MonadIO m) => HTMLKeygenElement -> Bool -> m ()
setAutofocus self val
  = liftIO (js_setAutofocus (unHTMLKeygenElement self) val)
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        js_getAutofocus :: JSRef HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.autofocus Mozilla HTMLKeygenElement.autofocus documentation> 
getAutofocus :: (MonadIO m) => HTMLKeygenElement -> m Bool
getAutofocus self
  = liftIO (js_getAutofocus (unHTMLKeygenElement self))
 
foreign import javascript unsafe "$1[\"challenge\"] = $2;"
        js_setChallenge :: JSRef HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.challenge Mozilla HTMLKeygenElement.challenge documentation> 
setChallenge ::
             (MonadIO m, ToJSString val) => HTMLKeygenElement -> val -> m ()
setChallenge self val
  = liftIO
      (js_setChallenge (unHTMLKeygenElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"challenge\"]"
        js_getChallenge :: JSRef HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.challenge Mozilla HTMLKeygenElement.challenge documentation> 
getChallenge ::
             (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getChallenge self
  = liftIO
      (fromJSString <$> (js_getChallenge (unHTMLKeygenElement self)))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: JSRef HTMLKeygenElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.disabled Mozilla HTMLKeygenElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLKeygenElement -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unHTMLKeygenElement self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.disabled Mozilla HTMLKeygenElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLKeygenElement -> m Bool
getDisabled self
  = liftIO (js_getDisabled (unHTMLKeygenElement self))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLKeygenElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.form Mozilla HTMLKeygenElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLKeygenElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLKeygenElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"keytype\"] = $2;"
        js_setKeytype :: JSRef HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.keytype Mozilla HTMLKeygenElement.keytype documentation> 
setKeytype ::
           (MonadIO m, ToJSString val) => HTMLKeygenElement -> val -> m ()
setKeytype self val
  = liftIO
      (js_setKeytype (unHTMLKeygenElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"keytype\"]" js_getKeytype ::
        JSRef HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.keytype Mozilla HTMLKeygenElement.keytype documentation> 
getKeytype ::
           (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getKeytype self
  = liftIO
      (fromJSString <$> (js_getKeytype (unHTMLKeygenElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLKeygenElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.name Mozilla HTMLKeygenElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLKeygenElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLKeygenElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.name Mozilla HTMLKeygenElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLKeygenElement self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        JSRef HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.type Mozilla HTMLKeygenElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getType self
  = liftIO (fromJSString <$> (js_getType (unHTMLKeygenElement self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: JSRef HTMLKeygenElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.willValidate Mozilla HTMLKeygenElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLKeygenElement -> m Bool
getWillValidate self
  = liftIO (js_getWillValidate (unHTMLKeygenElement self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: JSRef HTMLKeygenElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.validity Mozilla HTMLKeygenElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLKeygenElement -> m (Maybe ValidityState)
getValidity self
  = liftIO
      ((js_getValidity (unHTMLKeygenElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: JSRef HTMLKeygenElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.validationMessage Mozilla HTMLKeygenElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLKeygenElement -> m result
getValidationMessage self
  = liftIO
      (fromJSString <$>
         (js_getValidationMessage (unHTMLKeygenElement self)))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        JSRef HTMLKeygenElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLKeygenElement.labels Mozilla HTMLKeygenElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLKeygenElement -> m (Maybe NodeList)
getLabels self
  = liftIO ((js_getLabels (unHTMLKeygenElement self)) >>= fromJSRef)