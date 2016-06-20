{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StorageQuotaCallback
       (newStorageQuotaCallback, newStorageQuotaCallbackSync,
        newStorageQuotaCallbackAsync, StorageQuotaCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallback ::
                        (MonadIO m) => (Double -> IO ()) -> m StorageQuotaCallback
newStorageQuotaCallback callback
  = liftIO
      (StorageQuotaCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ grantedQuotaInBytes ->
              fromJSValUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackSync ::
                            (MonadIO m) => (Double -> IO ()) -> m StorageQuotaCallback
newStorageQuotaCallbackSync callback
  = liftIO
      (StorageQuotaCallback <$>
         syncCallback1 ContinueAsync
           (\ grantedQuotaInBytes ->
              fromJSValUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackAsync ::
                             (MonadIO m) => (Double -> IO ()) -> m StorageQuotaCallback
newStorageQuotaCallbackAsync callback
  = liftIO
      (StorageQuotaCallback <$>
         asyncCallback1
           (\ grantedQuotaInBytes ->
              fromJSValUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))