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
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
storageErrorCallbackNewSync ::
                              (Maybe DOMCoreException -> IO Bool) -> IO StorageErrorCallback
storageErrorCallbackNewSync callback
  = StorageErrorCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
storageErrorCallbackNewSync' ::
                               ForeignRetention ->
                                 Bool ->
                                   (Maybe DOMCoreException -> IO Bool) -> IO StorageErrorCallback
storageErrorCallbackNewSync' retention continueAsync callback
  = StorageErrorCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
storageErrorCallbackNewAsync ::
                               (Maybe DOMCoreException -> IO Bool) -> IO StorageErrorCallback
storageErrorCallbackNewAsync callback
  = StorageErrorCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageErrorCallback Mozilla StorageErrorCallback documentation> 
storageErrorCallbackNewAsync' ::
                                ForeignRetention ->
                                  (Maybe DOMCoreException -> IO Bool) -> IO StorageErrorCallback
storageErrorCallbackNewAsync' retention callback
  = StorageErrorCallback . castRef <$>
      asyncCallback1 retention
        (\ error ->
           fromJSRefUnchecked error >>= \ error' -> callback error')
#else
module GHCJS.DOM.StorageErrorCallback (
  ) where
#endif
