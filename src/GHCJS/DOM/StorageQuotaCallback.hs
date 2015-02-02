{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageQuotaCallback
       (storageQuotaCallbackNewSync, storageQuotaCallbackNewAsync,
        StorageQuotaCallback, IsStorageQuotaCallback,
        castToStorageQuotaCallback, gTypeStorageQuotaCallback,
        toStorageQuotaCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
storageQuotaCallbackNewSync ::
                              (Double -> IO Bool) -> IO StorageQuotaCallback
storageQuotaCallbackNewSync callback
  = StorageQuotaCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ grantedQuotaInBytes ->
           fromJSRefUnchecked grantedQuotaInBytes >>=
             \ grantedQuotaInBytes' -> callback grantedQuotaInBytes')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
storageQuotaCallbackNewSync' ::
                               ForeignRetention ->
                                 Bool -> (Double -> IO Bool) -> IO StorageQuotaCallback
storageQuotaCallbackNewSync' retention continueAsync callback
  = StorageQuotaCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ grantedQuotaInBytes ->
           fromJSRefUnchecked grantedQuotaInBytes >>=
             \ grantedQuotaInBytes' -> callback grantedQuotaInBytes')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
storageQuotaCallbackNewAsync ::
                               (Double -> IO Bool) -> IO StorageQuotaCallback
storageQuotaCallbackNewAsync callback
  = StorageQuotaCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ grantedQuotaInBytes ->
           fromJSRefUnchecked grantedQuotaInBytes >>=
             \ grantedQuotaInBytes' -> callback grantedQuotaInBytes')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
storageQuotaCallbackNewAsync' ::
                                ForeignRetention -> (Double -> IO Bool) -> IO StorageQuotaCallback
storageQuotaCallbackNewAsync' retention callback
  = StorageQuotaCallback . castRef <$>
      asyncCallback1 retention
        (\ grantedQuotaInBytes ->
           fromJSRefUnchecked grantedQuotaInBytes >>=
             \ grantedQuotaInBytes' -> callback grantedQuotaInBytes')
#else
module GHCJS.DOM.StorageQuotaCallback (
  ) where
#endif
