{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StorageQuota
       (js_queryUsageAndQuota, queryUsageAndQuota, js_requestQuota,
        requestQuota, StorageQuota, castToStorageQuota, gTypeStorageQuota)
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
        "$1[\"queryUsageAndQuota\"]($2, $3)" js_queryUsageAndQuota ::
        StorageQuota ->
          Nullable StorageUsageCallback ->
            Nullable StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota.queryUsageAndQuota Mozilla StorageQuota.queryUsageAndQuota documentation> 
queryUsageAndQuota ::
                   (MonadIO m) =>
                     StorageQuota ->
                       Maybe StorageUsageCallback -> Maybe StorageErrorCallback -> m ()
queryUsageAndQuota self usageCallback errorCallback
  = liftIO
      (js_queryUsageAndQuota (self) (maybeToNullable usageCallback)
         (maybeToNullable errorCallback))
 
foreign import javascript unsafe "$1[\"requestQuota\"]($2, $3, $4)"
        js_requestQuota ::
        StorageQuota ->
          Double ->
            Nullable StorageQuotaCallback ->
              Nullable StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota.requestQuota Mozilla StorageQuota.requestQuota documentation> 
requestQuota ::
             (MonadIO m) =>
               StorageQuota ->
                 Word64 ->
                   Maybe StorageQuotaCallback -> Maybe StorageErrorCallback -> m ()
requestQuota self newQuotaInBytes quotaCallback errorCallback
  = liftIO
      (js_requestQuota (self) (fromIntegral newQuotaInBytes)
         (maybeToNullable quotaCallback)
         (maybeToNullable errorCallback))