{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StorageInfo
       (js_queryUsageAndQuota, queryUsageAndQuota, js_requestQuota,
        requestQuota, pattern TEMPORARY, pattern PERSISTENT, StorageInfo,
        castToStorageInfo, gTypeStorageInfo)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe
        "$1[\"queryUsageAndQuota\"]($2, $3,\n$4)" js_queryUsageAndQuota ::
        JSRef StorageInfo ->
          Word ->
            JSRef StorageUsageCallback -> JSRef StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo.queryUsageAndQuota Mozilla StorageInfo.queryUsageAndQuota documentation> 
queryUsageAndQuota ::
                   (MonadIO m) =>
                     StorageInfo ->
                       Word ->
                         Maybe StorageUsageCallback -> Maybe StorageErrorCallback -> m ()
queryUsageAndQuota self storageType usageCallback errorCallback
  = liftIO
      (js_queryUsageAndQuota (unStorageInfo self) storageType
         (maybe jsNull pToJSRef usageCallback)
         (maybe jsNull pToJSRef errorCallback))
 
foreign import javascript unsafe
        "$1[\"requestQuota\"]($2, $3, $4,\n$5)" js_requestQuota ::
        JSRef StorageInfo ->
          Word ->
            Double ->
              JSRef StorageQuotaCallback -> JSRef StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo.requestQuota Mozilla StorageInfo.requestQuota documentation> 
requestQuota ::
             (MonadIO m) =>
               StorageInfo ->
                 Word ->
                   Word64 ->
                     Maybe StorageQuotaCallback -> Maybe StorageErrorCallback -> m ()
requestQuota self storageType newQuotaInBytes quotaCallback
  errorCallback
  = liftIO
      (js_requestQuota (unStorageInfo self) storageType
         (fromIntegral newQuotaInBytes)
         (maybe jsNull pToJSRef quotaCallback)
         (maybe jsNull pToJSRef errorCallback))
pattern TEMPORARY = 0
pattern PERSISTENT = 1