{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StorageUsageCallback
       (newStorageUsageCallback, newStorageUsageCallbackSync,
        newStorageUsageCallbackAsync, StorageUsageCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
newStorageUsageCallback ::
                        (MonadIO m) =>
                          (Double -> Double -> IO ()) -> m StorageUsageCallback
newStorageUsageCallback callback
  = liftIO
      (StorageUsageCallback <$>
         syncCallback2 ThrowWouldBlock
           (\ currentUsageInBytes currentQuotaInBytes ->
              fromJSValUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSValUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
newStorageUsageCallbackSync ::
                            (MonadIO m) =>
                              (Double -> Double -> IO ()) -> m StorageUsageCallback
newStorageUsageCallbackSync callback
  = liftIO
      (StorageUsageCallback <$>
         syncCallback2 ContinueAsync
           (\ currentUsageInBytes currentQuotaInBytes ->
              fromJSValUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSValUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
newStorageUsageCallbackAsync ::
                             (MonadIO m) =>
                               (Double -> Double -> IO ()) -> m StorageUsageCallback
newStorageUsageCallbackAsync callback
  = liftIO
      (StorageUsageCallback <$>
         asyncCallback2
           (\ currentUsageInBytes currentQuotaInBytes ->
              fromJSValUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSValUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))