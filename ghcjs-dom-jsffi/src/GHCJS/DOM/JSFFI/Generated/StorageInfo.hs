{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StorageInfo
       (js_queryUsageAndQuota, queryUsageAndQuota, js_requestQuota,
        requestQuota, pattern TEMPORARY, pattern PERSISTENT, StorageInfo,
        castToStorageInfo, gTypeStorageInfo)
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
 
foreign import javascript unsafe
        "$1[\"queryUsageAndQuota\"]($2, $3,\n$4)" js_queryUsageAndQuota ::
        StorageInfo ->
          Word ->
            Nullable StorageUsageCallback ->
              Nullable StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo.queryUsageAndQuota Mozilla StorageInfo.queryUsageAndQuota documentation> 
queryUsageAndQuota ::
                   (MonadIO m) =>
                     StorageInfo ->
                       Word ->
                         Maybe StorageUsageCallback -> Maybe StorageErrorCallback -> m ()
queryUsageAndQuota self storageType usageCallback errorCallback
  = liftIO
      (js_queryUsageAndQuota (self) storageType
         (maybeToNullable usageCallback)
         (maybeToNullable errorCallback))
 
foreign import javascript unsafe
        "$1[\"requestQuota\"]($2, $3, $4,\n$5)" js_requestQuota ::
        StorageInfo ->
          Word ->
            Double ->
              Nullable StorageQuotaCallback ->
                Nullable StorageErrorCallback -> IO ()

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
      (js_requestQuota (self) storageType (fromIntegral newQuotaInBytes)
         (maybeToNullable quotaCallback)
         (maybeToNullable errorCallback))
pattern TEMPORARY = 0
pattern PERSISTENT = 1