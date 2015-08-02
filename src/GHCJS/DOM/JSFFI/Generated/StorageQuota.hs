{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StorageQuota
       (js_queryUsageAndQuota, queryUsageAndQuota, js_requestQuota,
        requestQuota, StorageQuota, castToStorageQuota, gTypeStorageQuota)
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
 
foreign import javascript unsafe
        "$1[\"queryUsageAndQuota\"]($2, $3)" js_queryUsageAndQuota ::
        JSRef StorageQuota ->
          JSRef StorageUsageCallback -> JSRef StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota.queryUsageAndQuota Mozilla StorageQuota.queryUsageAndQuota documentation> 
queryUsageAndQuota ::
                   (MonadIO m) =>
                     StorageQuota ->
                       Maybe StorageUsageCallback -> Maybe StorageErrorCallback -> m ()
queryUsageAndQuota self usageCallback errorCallback
  = liftIO
      (js_queryUsageAndQuota (unStorageQuota self)
         (maybe jsNull pToJSRef usageCallback)
         (maybe jsNull pToJSRef errorCallback))
 
foreign import javascript unsafe "$1[\"requestQuota\"]($2, $3, $4)"
        js_requestQuota ::
        JSRef StorageQuota ->
          Double ->
            JSRef StorageQuotaCallback -> JSRef StorageErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuota.requestQuota Mozilla StorageQuota.requestQuota documentation> 
requestQuota ::
             (MonadIO m) =>
               StorageQuota ->
                 Word64 ->
                   Maybe StorageQuotaCallback -> Maybe StorageErrorCallback -> m ()
requestQuota self newQuotaInBytes quotaCallback errorCallback
  = liftIO
      (js_requestQuota (unStorageQuota self)
         (fromIntegral newQuotaInBytes)
         (maybe jsNull pToJSRef quotaCallback)
         (maybe jsNull pToJSRef errorCallback))