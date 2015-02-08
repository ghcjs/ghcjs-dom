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
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
storageQuotaCallbackNewSync ::
                            (MonadIO m) => (Double -> IO Bool) -> m StorageQuotaCallback
storageQuotaCallbackNewSync callback
  = liftIO
      (StorageQuotaCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ grantedQuotaInBytes ->
              fromJSRefUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
storageQuotaCallbackNewSync' ::
                             (MonadIO m) =>
                               ForeignRetention ->
                                 Bool -> (Double -> IO Bool) -> m StorageQuotaCallback
storageQuotaCallbackNewSync' retention continueAsync callback
  = liftIO
      (StorageQuotaCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ grantedQuotaInBytes ->
              fromJSRefUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
storageQuotaCallbackNewAsync ::
                             (MonadIO m) => (Double -> IO Bool) -> m StorageQuotaCallback
storageQuotaCallbackNewAsync callback
  = liftIO
      (StorageQuotaCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ grantedQuotaInBytes ->
              fromJSRefUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
storageQuotaCallbackNewAsync' ::
                              (MonadIO m) =>
                                ForeignRetention -> (Double -> IO Bool) -> m StorageQuotaCallback
storageQuotaCallbackNewAsync' retention callback
  = liftIO
      (StorageQuotaCallback . castRef <$>
         asyncCallback1 retention
           (\ grantedQuotaInBytes ->
              fromJSRefUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))
#else
module GHCJS.DOM.StorageQuotaCallback (
  ) where
#endif
