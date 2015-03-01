{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageErrorCallback
       (newStorageErrorCallbackSync, newStorageErrorCallbackSync',
        newStorageErrorCallbackAsync, newStorageErrorCallbackAsync',
        StorageErrorCallback, castToStorageErrorCallback,
        gTypeStorageErrorCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallbackSync ::
                            (MonadIO m) =>
                              (Maybe DOMCoreException -> IO Bool) -> m StorageErrorCallback
newStorageErrorCallbackSync callback
  = liftIO
      (StorageErrorCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallbackSync' ::
                             (MonadIO m) =>
                               ForeignRetention ->
                                 Bool ->
                                   (Maybe DOMCoreException -> IO Bool) -> m StorageErrorCallback
newStorageErrorCallbackSync' retention continueAsync callback
  = liftIO
      (StorageErrorCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallbackAsync ::
                             (MonadIO m) =>
                               (Maybe DOMCoreException -> IO Bool) -> m StorageErrorCallback
newStorageErrorCallbackAsync callback
  = liftIO
      (StorageErrorCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallbackAsync' ::
                              (MonadIO m) =>
                                ForeignRetention ->
                                  (Maybe DOMCoreException -> IO Bool) -> m StorageErrorCallback
newStorageErrorCallbackAsync' retention callback
  = liftIO
      (StorageErrorCallback . castRef <$>
         asyncCallback1 retention
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))
#else
module GHCJS.DOM.StorageErrorCallback (
  ) where
#endif
