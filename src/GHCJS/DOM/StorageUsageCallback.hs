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
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
storageUsageCallbackNewSync ::
                              (Double -> Double -> IO Bool) -> IO StorageUsageCallback
storageUsageCallbackNewSync callback
  = StorageUsageCallback . castRef <$>
      syncCallback2 AlwaysRetain True
        (\ currentUsageInBytes currentQuotaInBytes ->
           fromJSRefUnchecked currentQuotaInBytes >>=
             \ currentQuotaInBytes' ->
               fromJSRefUnchecked currentUsageInBytes >>=
                 \ currentUsageInBytes' -> callback currentUsageInBytes'
                 currentQuotaInBytes')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
storageUsageCallbackNewSync' ::
                               ForeignRetention ->
                                 Bool -> (Double -> Double -> IO Bool) -> IO StorageUsageCallback
storageUsageCallbackNewSync' retention continueAsync callback
  = StorageUsageCallback . castRef <$>
      syncCallback2 retention continueAsync
        (\ currentUsageInBytes currentQuotaInBytes ->
           fromJSRefUnchecked currentQuotaInBytes >>=
             \ currentQuotaInBytes' ->
               fromJSRefUnchecked currentUsageInBytes >>=
                 \ currentUsageInBytes' -> callback currentUsageInBytes'
                 currentQuotaInBytes')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
storageUsageCallbackNewAsync ::
                               (Double -> Double -> IO Bool) -> IO StorageUsageCallback
storageUsageCallbackNewAsync callback
  = StorageUsageCallback . castRef <$>
      asyncCallback2 AlwaysRetain
        (\ currentUsageInBytes currentQuotaInBytes ->
           fromJSRefUnchecked currentQuotaInBytes >>=
             \ currentQuotaInBytes' ->
               fromJSRefUnchecked currentUsageInBytes >>=
                 \ currentUsageInBytes' -> callback currentUsageInBytes'
                 currentQuotaInBytes')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageUsageCallback Mozilla StorageUsageCallback documentation> 
storageUsageCallbackNewAsync' ::
                                ForeignRetention ->
                                  (Double -> Double -> IO Bool) -> IO StorageUsageCallback
storageUsageCallbackNewAsync' retention callback
  = StorageUsageCallback . castRef <$>
      asyncCallback2 retention
        (\ currentUsageInBytes currentQuotaInBytes ->
           fromJSRefUnchecked currentQuotaInBytes >>=
             \ currentQuotaInBytes' ->
               fromJSRefUnchecked currentUsageInBytes >>=
                 \ currentUsageInBytes' -> callback currentUsageInBytes'
                 currentQuotaInBytes')
#else
module GHCJS.DOM.StorageUsageCallback (
  ) where
#endif
