{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CryptoKeyPair
       (js_getPublicKey, getPublicKey, getPublicKeyUnsafe,
        getPublicKeyUnchecked, js_getPrivateKey, getPrivateKey,
        getPrivateKeyUnsafe, getPrivateKeyUnchecked, CryptoKeyPair(..),
        gTypeCryptoKeyPair)
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
 
foreign import javascript unsafe "$1[\"publicKey\"]"
        js_getPublicKey :: CryptoKeyPair -> IO (Nullable CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.publicKey Mozilla CryptoKeyPair.publicKey documentation> 
getPublicKey :: (MonadIO m) => CryptoKeyPair -> m (Maybe CryptoKey)
getPublicKey self
  = liftIO (nullableToMaybe <$> (js_getPublicKey (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.publicKey Mozilla CryptoKeyPair.publicKey documentation> 
getPublicKeyUnsafe ::
                   (MonadIO m, HasCallStack) => CryptoKeyPair -> m CryptoKey
getPublicKeyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPublicKey (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.publicKey Mozilla CryptoKeyPair.publicKey documentation> 
getPublicKeyUnchecked ::
                      (MonadIO m) => CryptoKeyPair -> m CryptoKey
getPublicKeyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPublicKey (self)))
 
foreign import javascript unsafe "$1[\"privateKey\"]"
        js_getPrivateKey :: CryptoKeyPair -> IO (Nullable CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.privateKey Mozilla CryptoKeyPair.privateKey documentation> 
getPrivateKey ::
              (MonadIO m) => CryptoKeyPair -> m (Maybe CryptoKey)
getPrivateKey self
  = liftIO (nullableToMaybe <$> (js_getPrivateKey (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.privateKey Mozilla CryptoKeyPair.privateKey documentation> 
getPrivateKeyUnsafe ::
                    (MonadIO m, HasCallStack) => CryptoKeyPair -> m CryptoKey
getPrivateKeyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPrivateKey (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.privateKey Mozilla CryptoKeyPair.privateKey documentation> 
getPrivateKeyUnchecked ::
                       (MonadIO m) => CryptoKeyPair -> m CryptoKey
getPrivateKeyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPrivateKey (self)))