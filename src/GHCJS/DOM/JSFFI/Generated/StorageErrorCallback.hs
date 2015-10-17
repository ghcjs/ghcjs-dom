{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StorageErrorCallback
       (newStorageErrorCallback, newStorageErrorCallbackSync,
        newStorageErrorCallbackAsync, StorageErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallback ::
                        (MonadIO m) =>
                          (Maybe DOMException -> IO ()) -> m StorageErrorCallback
newStorageErrorCallback callback
  = liftIO
      (StorageErrorCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ error ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallbackSync ::
                            (MonadIO m) =>
                              (Maybe DOMException -> IO ()) -> m StorageErrorCallback
newStorageErrorCallbackSync callback
  = liftIO
      (StorageErrorCallback <$>
         syncCallback1 ContinueAsync
           (\ error ->
              fromJSValUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
newStorageErrorCallbackAsync ::
                             (MonadIO m) =>
                               (Maybe DOMException -> IO ()) -> m StorageErrorCallback
newStorageErrorCallbackAsync callback
  = liftIO
      (StorageErrorCallback <$>
         asyncCallback1
           (\ error ->
              fromJSValUnchecked error >>= \ error' -> callback error'))