{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageQuota
       (ghcjs_dom_storage_quota_query_usage_and_quota,
        storageQuotaQueryUsageAndQuota,
        ghcjs_dom_storage_quota_request_quota, storageQuotaRequestQuota,
        StorageQuota, IsStorageQuota, castToStorageQuota,
        gTypeStorageQuota, toStorageQuota)
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

 
foreign import javascript unsafe
        "$1[\"queryUsageAndQuota\"]($2, $3)"
        ghcjs_dom_storage_quota_query_usage_and_quota ::
        JSRef StorageQuota ->
          JSRef StorageUsageCallback -> JSRef StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota.queryUsageAndQuota Mozilla StorageQuota.queryUsageAndQuota documentation> 
storageQuotaQueryUsageAndQuota ::
                               (MonadIO m, IsStorageQuota self,
                                IsStorageUsageCallback usageCallback,
                                IsStorageErrorCallback errorCallback) =>
                                 self -> Maybe usageCallback -> Maybe errorCallback -> m ()
storageQuotaQueryUsageAndQuota self usageCallback errorCallback
  = liftIO
      (ghcjs_dom_storage_quota_query_usage_and_quota
         (unStorageQuota (toStorageQuota self))
         (maybe jsNull (unStorageUsageCallback . toStorageUsageCallback)
            usageCallback)
         (maybe jsNull (unStorageErrorCallback . toStorageErrorCallback)
            errorCallback))
 
foreign import javascript unsafe "$1[\"requestQuota\"]($2, $3, $4)"
        ghcjs_dom_storage_quota_request_quota ::
        JSRef StorageQuota ->
          Double ->
            JSRef StorageQuotaCallback -> JSRef StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota.requestQuota Mozilla StorageQuota.requestQuota documentation> 
storageQuotaRequestQuota ::
                         (MonadIO m, IsStorageQuota self,
                          IsStorageQuotaCallback quotaCallback,
                          IsStorageErrorCallback errorCallback) =>
                           self ->
                             Word64 -> Maybe quotaCallback -> Maybe errorCallback -> m ()
storageQuotaRequestQuota self newQuotaInBytes quotaCallback
  errorCallback
  = liftIO
      (ghcjs_dom_storage_quota_request_quota
         (unStorageQuota (toStorageQuota self))
         (fromIntegral newQuotaInBytes)
         (maybe jsNull (unStorageQuotaCallback . toStorageQuotaCallback)
            quotaCallback)
         (maybe jsNull (unStorageErrorCallback . toStorageErrorCallback)
            errorCallback))
#else
module GHCJS.DOM.StorageQuota (
  ) where
#endif
