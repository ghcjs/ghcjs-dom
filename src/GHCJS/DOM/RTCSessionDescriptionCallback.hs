{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCSessionDescriptionCallback
       (rtcSessionDescriptionCallbackNewSync,
        rtcSessionDescriptionCallbackNewAsync,
        RTCSessionDescriptionCallback, IsRTCSessionDescriptionCallback,
        castToRTCSessionDescriptionCallback,
        gTypeRTCSessionDescriptionCallback,
        toRTCSessionDescriptionCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
rtcSessionDescriptionCallbackNewSync ::
                                     (MonadIO m) =>
                                       (Maybe RTCSessionDescription -> IO Bool) ->
                                         m RTCSessionDescriptionCallback
rtcSessionDescriptionCallbackNewSync callback
  = liftIO
      (RTCSessionDescriptionCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
rtcSessionDescriptionCallbackNewSync' ::
                                      (MonadIO m) =>
                                        ForeignRetention ->
                                          Bool ->
                                            (Maybe RTCSessionDescription -> IO Bool) ->
                                              m RTCSessionDescriptionCallback
rtcSessionDescriptionCallbackNewSync' retention continueAsync
  callback
  = liftIO
      (RTCSessionDescriptionCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
rtcSessionDescriptionCallbackNewAsync ::
                                      (MonadIO m) =>
                                        (Maybe RTCSessionDescription -> IO Bool) ->
                                          m RTCSessionDescriptionCallback
rtcSessionDescriptionCallbackNewAsync callback
  = liftIO
      (RTCSessionDescriptionCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
rtcSessionDescriptionCallbackNewAsync' ::
                                       (MonadIO m) =>
                                         ForeignRetention ->
                                           (Maybe RTCSessionDescription -> IO Bool) ->
                                             m RTCSessionDescriptionCallback
rtcSessionDescriptionCallbackNewAsync' retention callback
  = liftIO
      (RTCSessionDescriptionCallback . castRef <$>
         asyncCallback1 retention
           (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp'))
#else
module GHCJS.DOM.RTCSessionDescriptionCallback (
  ) where
#endif
