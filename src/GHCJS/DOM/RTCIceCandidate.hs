{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCIceCandidate
       (ghcjs_dom_rtc_ice_candidate_new, rtcIceCandidateNew,
        ghcjs_dom_rtc_ice_candidate_get_candidate,
        rtcIceCandidateGetCandidate,
        ghcjs_dom_rtc_ice_candidate_get_sdp_mid, rtcIceCandidateGetSdpMid,
        ghcjs_dom_rtc_ice_candidate_get_sdp_m_line_index,
        rtcIceCandidateGetSdpMLineIndex, RTCIceCandidate,
        IsRTCIceCandidate, castToRTCIceCandidate, gTypeRTCIceCandidate,
        toRTCIceCandidate)
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

 
foreign import javascript unsafe
        "new window[\"RTCIceCandidate\"]($1)"
        ghcjs_dom_rtc_ice_candidate_new ::
        JSRef Dictionary -> IO (JSRef RTCIceCandidate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate Mozilla RTCIceCandidate documentation> 
rtcIceCandidateNew ::
                   (MonadIO m, IsDictionary dictionary) =>
                     Maybe dictionary -> m RTCIceCandidate
rtcIceCandidateNew dictionary
  = liftIO
      (ghcjs_dom_rtc_ice_candidate_new
         (maybe jsNull (unDictionary . toDictionary) dictionary)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"candidate\"]"
        ghcjs_dom_rtc_ice_candidate_get_candidate ::
        JSRef RTCIceCandidate -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.candidate Mozilla RTCIceCandidate.candidate documentation> 
rtcIceCandidateGetCandidate ::
                            (MonadIO m, IsRTCIceCandidate self, FromJSString result) =>
                              self -> m result
rtcIceCandidateGetCandidate self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_ice_candidate_get_candidate
            (unRTCIceCandidate (toRTCIceCandidate self))))
 
foreign import javascript unsafe "$1[\"sdpMid\"]"
        ghcjs_dom_rtc_ice_candidate_get_sdp_mid ::
        JSRef RTCIceCandidate -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
rtcIceCandidateGetSdpMid ::
                         (MonadIO m, IsRTCIceCandidate self, FromJSString result) =>
                           self -> m result
rtcIceCandidateGetSdpMid self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_ice_candidate_get_sdp_mid
            (unRTCIceCandidate (toRTCIceCandidate self))))
 
foreign import javascript unsafe "$1[\"sdpMLineIndex\"]"
        ghcjs_dom_rtc_ice_candidate_get_sdp_m_line_index ::
        JSRef RTCIceCandidate -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
rtcIceCandidateGetSdpMLineIndex ::
                                (MonadIO m, IsRTCIceCandidate self) => self -> m Word
rtcIceCandidateGetSdpMLineIndex self
  = liftIO
      (ghcjs_dom_rtc_ice_candidate_get_sdp_m_line_index
         (unRTCIceCandidate (toRTCIceCandidate self)))
#else
module GHCJS.DOM.RTCIceCandidate (
  ) where
#endif
