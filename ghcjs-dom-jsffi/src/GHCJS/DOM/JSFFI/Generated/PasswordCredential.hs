{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PasswordCredential
       (js_newPasswordCredential, newPasswordCredential,
        js_newPasswordCredential', newPasswordCredential', js_setIdName,
        setIdName, js_getIdName, getIdName, js_setPasswordName,
        setPasswordName, js_getPasswordName, getPasswordName,
        js_setAdditionalData, setAdditionalData, js_getAdditionalData,
        getAdditionalData, getAdditionalDataUnsafe,
        getAdditionalDataUnchecked, PasswordCredential(..),
        gTypePasswordCredential)
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
        "new window[\"PasswordCredential\"]($1)" js_newPasswordCredential
        :: PasswordCredentialData -> IO PasswordCredential

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential Mozilla PasswordCredential documentation> 
newPasswordCredential ::
                      (MonadIO m) => PasswordCredentialData -> m PasswordCredential
newPasswordCredential data'
  = liftIO (js_newPasswordCredential data')
 
foreign import javascript unsafe
        "new window[\"PasswordCredential\"]($1)" js_newPasswordCredential'
        :: HTMLFormElement -> IO PasswordCredential

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential Mozilla PasswordCredential documentation> 
newPasswordCredential' ::
                       (MonadIO m) => HTMLFormElement -> m PasswordCredential
newPasswordCredential' form
  = liftIO (js_newPasswordCredential' form)
 
foreign import javascript unsafe "$1[\"idName\"] = $2;"
        js_setIdName :: PasswordCredential -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.idName Mozilla PasswordCredential.idName documentation> 
setIdName ::
          (MonadIO m, ToJSString val) => PasswordCredential -> val -> m ()
setIdName self val = liftIO (js_setIdName self (toJSString val))
 
foreign import javascript unsafe "$1[\"idName\"]" js_getIdName ::
        PasswordCredential -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.idName Mozilla PasswordCredential.idName documentation> 
getIdName ::
          (MonadIO m, FromJSString result) => PasswordCredential -> m result
getIdName self = liftIO (fromJSString <$> (js_getIdName self))
 
foreign import javascript unsafe "$1[\"passwordName\"] = $2;"
        js_setPasswordName :: PasswordCredential -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.passwordName Mozilla PasswordCredential.passwordName documentation> 
setPasswordName ::
                (MonadIO m, ToJSString val) => PasswordCredential -> val -> m ()
setPasswordName self val
  = liftIO (js_setPasswordName self (toJSString val))
 
foreign import javascript unsafe "$1[\"passwordName\"]"
        js_getPasswordName :: PasswordCredential -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.passwordName Mozilla PasswordCredential.passwordName documentation> 
getPasswordName ::
                (MonadIO m, FromJSString result) => PasswordCredential -> m result
getPasswordName self
  = liftIO (fromJSString <$> (js_getPasswordName self))
 
foreign import javascript unsafe "$1[\"additionalData\"] = $2;"
        js_setAdditionalData ::
        PasswordCredential -> Optional CredentialBodyType -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.additionalData Mozilla PasswordCredential.additionalData documentation> 
setAdditionalData ::
                  (MonadIO m, IsCredentialBodyType val) =>
                    PasswordCredential -> Maybe val -> m ()
setAdditionalData self val
  = liftIO
      (js_setAdditionalData self
         (maybeToOptional (fmap toCredentialBodyType val)))
 
foreign import javascript unsafe "$1[\"additionalData\"]"
        js_getAdditionalData ::
        PasswordCredential -> IO (Nullable CredentialBodyType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.additionalData Mozilla PasswordCredential.additionalData documentation> 
getAdditionalData ::
                  (MonadIO m) => PasswordCredential -> m (Maybe CredentialBodyType)
getAdditionalData self
  = liftIO (nullableToMaybe <$> (js_getAdditionalData self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.additionalData Mozilla PasswordCredential.additionalData documentation> 
getAdditionalDataUnsafe ::
                        (MonadIO m, HasCallStack) =>
                          PasswordCredential -> m CredentialBodyType
getAdditionalDataUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAdditionalData self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PasswordCredential.additionalData Mozilla PasswordCredential.additionalData documentation> 
getAdditionalDataUnchecked ::
                           (MonadIO m) => PasswordCredential -> m CredentialBodyType
getAdditionalDataUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getAdditionalData self))