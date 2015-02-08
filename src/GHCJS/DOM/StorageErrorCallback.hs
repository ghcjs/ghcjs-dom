{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageErrorCallback
       (storageErrorCallbackNewSync, storageErrorCallbackNewAsync,
        StorageErrorCallback, IsStorageErrorCallback,
        castToStorageErrorCallback, gTypeStorageErrorCallback,
        toStorageErrorCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
storageErrorCallbackNewSync ::
                            (MonadIO m) =>
                              (Maybe DOMCoreException -> IO Bool) -> m StorageErrorCallback
storageErrorCallbackNewSync callback
  = liftIO
      (StorageErrorCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
storageErrorCallbackNewSync' ::
                             (MonadIO m) =>
                               ForeignRetention ->
                                 Bool ->
                                   (Maybe DOMCoreException -> IO Bool) -> m StorageErrorCallback
storageErrorCallbackNewSync' retention continueAsync callback
  = liftIO
      (StorageErrorCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
storageErrorCallbackNewAsync ::
                             (MonadIO m) =>
                               (Maybe DOMCoreException -> IO Bool) -> m StorageErrorCallback
storageErrorCallbackNewAsync callback
  = liftIO
      (StorageErrorCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
storageErrorCallbackNewAsync' ::
                              (MonadIO m) =>
                                ForeignRetention ->
                                  (Maybe DOMCoreException -> IO Bool) -> m StorageErrorCallback
storageErrorCallbackNewAsync' retention callback
  = liftIO
      (StorageErrorCallback . castRef <$>
         asyncCallback1 retention
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))
#else
module GHCJS.DOM.StorageErrorCallback (
  ) where
#endif
