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
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums


-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
rtcSessionDescriptionCallbackNewSync ::
                                       (Maybe RTCSessionDescription -> IO Bool) ->
                                         IO RTCSessionDescriptionCallback
rtcSessionDescriptionCallbackNewSync callback
  = RTCSessionDescriptionCallback . castRef <$>
      syncCallback1 AlwaysRetain True
        (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
rtcSessionDescriptionCallbackNewSync' ::
                                        ForeignRetention ->
                                          Bool ->
                                            (Maybe RTCSessionDescription -> IO Bool) ->
                                              IO RTCSessionDescriptionCallback
rtcSessionDescriptionCallbackNewSync' retention continueAsync
  callback
  = RTCSessionDescriptionCallback . castRef <$>
      syncCallback1 retention continueAsync
        (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
rtcSessionDescriptionCallbackNewAsync ::
                                        (Maybe RTCSessionDescription -> IO Bool) ->
                                          IO RTCSessionDescriptionCallback
rtcSessionDescriptionCallbackNewAsync callback
  = RTCSessionDescriptionCallback . castRef <$>
      asyncCallback1 AlwaysRetain
        (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
rtcSessionDescriptionCallbackNewAsync' ::
                                         ForeignRetention ->
                                           (Maybe RTCSessionDescription -> IO Bool) ->
                                             IO RTCSessionDescriptionCallback
rtcSessionDescriptionCallbackNewAsync' retention callback
  = RTCSessionDescriptionCallback . castRef <$>
      asyncCallback1 retention
        (\ sdp -> fromJSRefUnchecked sdp >>= \ sdp' -> callback sdp')
#else
module GHCJS.DOM.RTCSessionDescriptionCallback (
  ) where
#endif
