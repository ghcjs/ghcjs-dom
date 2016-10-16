{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Crypto
       (js_getRandomValues, getRandomValues, getRandomValues_,
        getRandomValuesUnsafe, getRandomValuesUnchecked,
        js_getWebkitSubtle, getWebkitSubtle, getWebkitSubtleUnsafe,
        getWebkitSubtleUnchecked, Crypto(..), gTypeCrypto)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"getRandomValues\"]($2)"
        js_getRandomValues ::
        Crypto -> Nullable ArrayBufferView -> IO (Nullable ArrayBufferView)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValues ::
                (MonadIO m, IsArrayBufferView array) =>
                  Crypto -> Maybe array -> m (Maybe ArrayBufferView)
getRandomValues self array
  = liftIO
      (nullableToMaybe <$>
         (js_getRandomValues (self)
            (maybeToNullable (fmap toArrayBufferView array))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValues_ ::
                 (MonadIO m, IsArrayBufferView array) =>
                   Crypto -> Maybe array -> m ()
getRandomValues_ self array
  = liftIO
      (void
         (js_getRandomValues (self)
            (maybeToNullable (fmap toArrayBufferView array))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValuesUnsafe ::
                      (MonadIO m, IsArrayBufferView array, HasCallStack) =>
                        Crypto -> Maybe array -> m ArrayBufferView
getRandomValuesUnsafe self array
  = liftIO
      ((nullableToMaybe <$>
          (js_getRandomValues (self)
             (maybeToNullable (fmap toArrayBufferView array))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValuesUnchecked ::
                         (MonadIO m, IsArrayBufferView array) =>
                           Crypto -> Maybe array -> m ArrayBufferView
getRandomValuesUnchecked self array
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getRandomValues (self)
            (maybeToNullable (fmap toArrayBufferView array))))
 
foreign import javascript unsafe "$1[\"webkitSubtle\"]"
        js_getWebkitSubtle :: Crypto -> IO (Nullable SubtleCrypto)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
getWebkitSubtle :: (MonadIO m) => Crypto -> m (Maybe SubtleCrypto)
getWebkitSubtle self
  = liftIO (nullableToMaybe <$> (js_getWebkitSubtle (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
getWebkitSubtleUnsafe ::
                      (MonadIO m, HasCallStack) => Crypto -> m SubtleCrypto
getWebkitSubtleUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getWebkitSubtle (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
getWebkitSubtleUnchecked :: (MonadIO m) => Crypto -> m SubtleCrypto
getWebkitSubtleUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getWebkitSubtle (self)))