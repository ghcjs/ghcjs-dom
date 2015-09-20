{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCPeerConnectionErrorCallback
       (newRTCPeerConnectionErrorCallback,
        newRTCPeerConnectionErrorCallbackSync,
        newRTCPeerConnectionErrorCallbackAsync,
        RTCPeerConnectionErrorCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
newRTCPeerConnectionErrorCallback ::
                                  (MonadIO m) =>
                                    (Maybe DOMError -> IO ()) -> m RTCPeerConnectionErrorCallback
newRTCPeerConnectionErrorCallback callback
  = liftIO
      (RTCPeerConnectionErrorCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
newRTCPeerConnectionErrorCallbackSync ::
                                      (MonadIO m) =>
                                        (Maybe DOMError -> IO ()) ->
                                          m RTCPeerConnectionErrorCallback
newRTCPeerConnectionErrorCallbackSync callback
  = liftIO
      (RTCPeerConnectionErrorCallback <$>
         syncCallback1 ContinueAsync
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionErrorCallback Mozilla RTCPeerConnectionErrorCallback documentation> 
newRTCPeerConnectionErrorCallbackAsync ::
                                       (MonadIO m) =>
                                         (Maybe DOMError -> IO ()) ->
                                           m RTCPeerConnectionErrorCallback
newRTCPeerConnectionErrorCallbackAsync callback
  = liftIO
      (RTCPeerConnectionErrorCallback <$>
         asyncCallback1
           (\ error ->
              fromJSRefUnchecked error >>= \ error' -> callback error'))