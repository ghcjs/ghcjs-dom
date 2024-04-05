{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.StorageInfo
       (js_queryUsageAndQuota, queryUsageAndQuota, js_requestQuota,
        requestQuota, pattern TEMPORARY, pattern PERSISTENT,
        StorageInfo(..), gTypeStorageInfo)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "$1[\"queryUsageAndQuota\"]($2, $3,\n$4)" js_queryUsageAndQuota ::
        StorageInfo ->
          Word ->
            Optional StorageUsageCallback ->
              Optional StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageInfo.queryUsageAndQuota Mozilla StorageInfo.queryUsageAndQuota documentation> 
queryUsageAndQuota ::
                   (MonadIO m) =>
                     StorageInfo ->
                       Word ->
                         Maybe StorageUsageCallback -> Maybe StorageErrorCallback -> m ()
queryUsageAndQuota self storageType usageCallback errorCallback
  = liftIO
      (js_queryUsageAndQuota self storageType
         (maybeToOptional usageCallback)
         (maybeToOptional errorCallback))
 
foreign import javascript unsafe
        "$1[\"requestQuota\"]($2, $3, $4,\n$5)" js_requestQuota ::
        StorageInfo ->
          Word ->
            Double ->
              Optional StorageQuotaCallback ->
                Optional StorageErrorCallback -> IO ()

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
      (js_requestQuota self storageType (fromIntegral newQuotaInBytes)
         (maybeToOptional quotaCallback)
         (maybeToOptional errorCallback))
pattern TEMPORARY = 0
pattern PERSISTENT = 1