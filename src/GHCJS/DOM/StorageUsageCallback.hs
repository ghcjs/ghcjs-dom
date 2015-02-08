{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageUsageCallback
       (storageUsageCallbackNewSync, storageUsageCallbackNewAsync,
        StorageUsageCallback, IsStorageUsageCallback,
        castToStorageUsageCallback, gTypeStorageUsageCallback,
        toStorageUsageCallback)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
storageUsageCallbackNewSync ::
                            (MonadIO m) =>
                              (Double -> Double -> IO Bool) -> m StorageUsageCallback
storageUsageCallbackNewSync callback
  = liftIO
      (StorageUsageCallback . castRef <$>
         syncCallback2 AlwaysRetain True
           (\ currentUsageInBytes currentQuotaInBytes ->
              fromJSRefUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSRefUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
storageUsageCallbackNewSync' ::
                             (MonadIO m) =>
                               ForeignRetention ->
                                 Bool -> (Double -> Double -> IO Bool) -> m StorageUsageCallback
storageUsageCallbackNewSync' retention continueAsync callback
  = liftIO
      (StorageUsageCallback . castRef <$>
         syncCallback2 retention continueAsync
           (\ currentUsageInBytes currentQuotaInBytes ->
              fromJSRefUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSRefUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
storageUsageCallbackNewAsync ::
                             (MonadIO m) =>
                               (Double -> Double -> IO Bool) -> m StorageUsageCallback
storageUsageCallbackNewAsync callback
  = liftIO
      (StorageUsageCallback . castRef <$>
         asyncCallback2 AlwaysRetain
           (\ currentUsageInBytes currentQuotaInBytes ->
              fromJSRefUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSRefUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
storageUsageCallbackNewAsync' ::
                              (MonadIO m) =>
                                ForeignRetention ->
                                  (Double -> Double -> IO Bool) -> m StorageUsageCallback
storageUsageCallbackNewAsync' retention callback
  = liftIO
      (StorageUsageCallback . castRef <$>
         asyncCallback2 retention
           (\ currentUsageInBytes currentQuotaInBytes ->
              fromJSRefUnchecked currentQuotaInBytes >>=
                \ currentQuotaInBytes' ->
                  fromJSRefUnchecked currentUsageInBytes >>=
                    \ currentUsageInBytes' -> callback currentUsageInBytes'
                    currentQuotaInBytes'))
#else
module GHCJS.DOM.StorageUsageCallback (
  ) where
#endif
