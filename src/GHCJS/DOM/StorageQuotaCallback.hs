{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageQuotaCallback
       (newStorageQuotaCallbackSync, newStorageQuotaCallbackSync',
        newStorageQuotaCallbackAsync, newStorageQuotaCallbackAsync',
        StorageQuotaCallback, castToStorageQuotaCallback,
        gTypeStorageQuotaCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackSync ::
                            (MonadIO m) => (Double -> IO Bool) -> m StorageQuotaCallback
newStorageQuotaCallbackSync callback
  = liftIO
      (StorageQuotaCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ grantedQuotaInBytes ->
              fromJSRefUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackSync' ::
                             (MonadIO m) =>
                               ForeignRetention ->
                                 Bool -> (Double -> IO Bool) -> m StorageQuotaCallback
newStorageQuotaCallbackSync' retention continueAsync callback
  = liftIO
      (StorageQuotaCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ grantedQuotaInBytes ->
              fromJSRefUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackAsync ::
                             (MonadIO m) => (Double -> IO Bool) -> m StorageQuotaCallback
newStorageQuotaCallbackAsync callback
  = liftIO
      (StorageQuotaCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ grantedQuotaInBytes ->
              fromJSRefUnchecked grantedQuotaInBytes >>=
                \ grantedQuotaInBytes' -> callback grantedQuotaInBytes'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageQuotaCallback Mozilla StorageQuotaCallback documentation> 
newStorageQuotaCallbackAsync' ::
                              (MonadIO m) =>
                                ForeignRetention -> (Double -> IO Bool) -> m StorageQuotaCallback
newStorageQuotaCallbackAsync' retention callback
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
