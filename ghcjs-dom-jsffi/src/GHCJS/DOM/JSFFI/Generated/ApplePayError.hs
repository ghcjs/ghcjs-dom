{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ApplePayError
       (js_newApplePayError, newApplePayError, js_setCode, setCode,
        js_getCode, getCode, js_setContactField, setContactField,
        js_getContactField, getContactField, getContactFieldUnsafe,
        getContactFieldUnchecked, js_setMessage, setMessage, js_getMessage,
        getMessage, ApplePayError(..), gTypeApplePayError)
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
        "new window[\"ApplePayError\"]($1,\n$2, $3)" js_newApplePayError ::
        JSVal ->
          Optional ApplePayErrorContactField ->
            Optional JSString -> IO ApplePayError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError Mozilla ApplePayError documentation> 
newApplePayError ::
                 (MonadIO m, ToJSString message) =>
                   ApplePayErrorCode ->
                     Maybe ApplePayErrorContactField -> Maybe message -> m ApplePayError
newApplePayError errorCode contactField message
  = liftIO
      (js_newApplePayError (pToJSVal errorCode)
         (maybeToOptional contactField)
         (toOptionalJSString message))
 
foreign import javascript unsafe "$1[\"code\"] = $2;" js_setCode ::
        ApplePayError -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.code Mozilla ApplePayError.code documentation> 
setCode ::
        (MonadIO m) => ApplePayError -> ApplePayErrorCode -> m ()
setCode self val = liftIO (js_setCode self (pToJSVal val))
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        ApplePayError -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.code Mozilla ApplePayError.code documentation> 
getCode :: (MonadIO m) => ApplePayError -> m ApplePayErrorCode
getCode self = liftIO ((js_getCode self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"contactField\"] = $2;"
        js_setContactField ::
        ApplePayError -> Optional ApplePayErrorContactField -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.contactField Mozilla ApplePayError.contactField documentation> 
setContactField ::
                (MonadIO m) =>
                  ApplePayError -> Maybe ApplePayErrorContactField -> m ()
setContactField self val
  = liftIO (js_setContactField self (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"contactField\"]"
        js_getContactField ::
        ApplePayError -> IO (Nullable ApplePayErrorContactField)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.contactField Mozilla ApplePayError.contactField documentation> 
getContactField ::
                (MonadIO m) => ApplePayError -> m (Maybe ApplePayErrorContactField)
getContactField self
  = liftIO (nullableToMaybe <$> (js_getContactField self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.contactField Mozilla ApplePayError.contactField documentation> 
getContactFieldUnsafe ::
                      (MonadIO m, HasCallStack) =>
                        ApplePayError -> m ApplePayErrorContactField
getContactFieldUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getContactField self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.contactField Mozilla ApplePayError.contactField documentation> 
getContactFieldUnchecked ::
                         (MonadIO m) => ApplePayError -> m ApplePayErrorContactField
getContactFieldUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getContactField self))
 
foreign import javascript unsafe "$1[\"message\"] = $2;"
        js_setMessage :: ApplePayError -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.message Mozilla ApplePayError.message documentation> 
setMessage ::
           (MonadIO m, ToJSString val) => ApplePayError -> val -> m ()
setMessage self val = liftIO (js_setMessage self (toJSString val))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        ApplePayError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ApplePayError.message Mozilla ApplePayError.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => ApplePayError -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage self))