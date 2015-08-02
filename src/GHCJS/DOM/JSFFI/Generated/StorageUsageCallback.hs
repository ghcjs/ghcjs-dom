{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StorageUsageCallback
       (newStorageUsageCallback, newStorageUsageCallbackSync,
        newStorageUsageCallbackAsync, StorageUsageCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
newStorageUsageCallback ::
                        (MonadIO m) =>
                          (Double -> Double -> IO ()) -> m StorageUsageCallback
newStorageUsageCallback callback
  = liftIO
      (syncCallback2 ThrowWouldBlock
         (\ currentUsageInBytes currentQuotaInBytes ->
            fromJSRefUnchecked currentQuotaInBytes >>=
              \ currentQuotaInBytes' ->
                fromJSRefUnchecked currentUsageInBytes >>=
                  \ currentUsageInBytes' -> callback currentUsageInBytes'
                  currentQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
newStorageUsageCallbackSync ::
                            (MonadIO m) =>
                              (Double -> Double -> IO ()) -> m StorageUsageCallback
newStorageUsageCallbackSync callback
  = liftIO
      (syncCallback2 ContinueAsync
         (\ currentUsageInBytes currentQuotaInBytes ->
            fromJSRefUnchecked currentQuotaInBytes >>=
              \ currentQuotaInBytes' ->
                fromJSRefUnchecked currentUsageInBytes >>=
                  \ currentUsageInBytes' -> callback currentUsageInBytes'
                  currentQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
newStorageUsageCallbackAsync ::
                             (MonadIO m) =>
                               (Double -> Double -> IO ()) -> m StorageUsageCallback
newStorageUsageCallbackAsync callback
  = liftIO
      (asyncCallback2
         (\ currentUsageInBytes currentQuotaInBytes ->
            fromJSRefUnchecked currentQuotaInBytes >>=
              \ currentQuotaInBytes' ->
                fromJSRefUnchecked currentUsageInBytes >>=
                  \ currentUsageInBytes' -> callback currentUsageInBytes'
                  currentQuotaInBytes'))