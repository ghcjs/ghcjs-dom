{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageInfo
       (ghcjs_dom_storage_info_query_usage_and_quota,
        storageInfoQueryUsageAndQuota,
        ghcjs_dom_storage_info_request_quota, storageInfoRequestQuota,
        cTEMPORARY, cPERSISTENT, StorageInfo, IsStorageInfo,
        castToStorageInfo, gTypeStorageInfo, toStorageInfo)
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
        "$1[\"queryUsageAndQuota\"]($2, $3,\n$4)"
        ghcjs_dom_storage_info_query_usage_and_quota ::
        JSRef StorageInfo ->
          Word ->
            JSRef StorageUsageCallback -> JSRef StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo.queryUsageAndQuota Mozilla StorageInfo.queryUsageAndQuota documentation> 
storageInfoQueryUsageAndQuota ::
                              (MonadIO m, IsStorageInfo self,
                               IsStorageUsageCallback usageCallback,
                               IsStorageErrorCallback errorCallback) =>
                                self -> Word -> Maybe usageCallback -> Maybe errorCallback -> m ()
storageInfoQueryUsageAndQuota self storageType usageCallback
  errorCallback
  = liftIO
      (ghcjs_dom_storage_info_query_usage_and_quota
         (unStorageInfo (toStorageInfo self))
         storageType
         (maybe jsNull (unStorageUsageCallback . toStorageUsageCallback)
            usageCallback)
         (maybe jsNull (unStorageErrorCallback . toStorageErrorCallback)
            errorCallback))
 
foreign import javascript unsafe
        "$1[\"requestQuota\"]($2, $3, $4,\n$5)"
        ghcjs_dom_storage_info_request_quota ::
        JSRef StorageInfo ->
          Word ->
            Double ->
              JSRef StorageQuotaCallback -> JSRef StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo.requestQuota Mozilla StorageInfo.requestQuota documentation> 
storageInfoRequestQuota ::
                        (MonadIO m, IsStorageInfo self,
                         IsStorageQuotaCallback quotaCallback,
                         IsStorageErrorCallback errorCallback) =>
                          self ->
                            Word ->
                              Word64 -> Maybe quotaCallback -> Maybe errorCallback -> m ()
storageInfoRequestQuota self storageType newQuotaInBytes
  quotaCallback errorCallback
  = liftIO
      (ghcjs_dom_storage_info_request_quota
         (unStorageInfo (toStorageInfo self))
         storageType
         (fromIntegral newQuotaInBytes)
         (maybe jsNull (unStorageQuotaCallback . toStorageQuotaCallback)
            quotaCallback)
         (maybe jsNull (unStorageErrorCallback . toStorageErrorCallback)
            errorCallback))
cTEMPORARY = 0
cPERSISTENT = 1
#else
module GHCJS.DOM.StorageInfo (
  module Graphics.UI.Gtk.WebKit.DOM.StorageInfo
  ) where
import Graphics.UI.Gtk.WebKit.DOM.StorageInfo
#endif
