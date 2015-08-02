{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCSessionDescriptionCallback
       (newRTCSessionDescriptionCallback,
        newRTCSessionDescriptionCallbackSync,
        newRTCSessionDescriptionCallbackAsync,
        RTCSessionDescriptionCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallback ::
                                 (MonadIO m) =>
                                   (Maybe RTCSessionDescription -> IO ()) ->
                                     m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallback callback
  = liftIO
      (syncCallback1 ThrowWouldBlock
         (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackSync ::
                                     (MonadIO m) =>
                                       (Maybe RTCSessionDescription -> IO ()) ->
                                         m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackSync callback
  = liftIO
      (syncCallback1 ContinueAsync
         (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackAsync ::
                                      (MonadIO m) =>
                                        (Maybe RTCSessionDescription -> IO ()) ->
                                          m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackAsync callback
  = liftIO
      (asyncCallback1
         (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))