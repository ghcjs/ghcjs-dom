{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCIceCandidate
       (ghcjs_dom_rtc_ice_candidate_get_candidate,
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
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"candidate\"]"
        ghcjs_dom_rtc_ice_candidate_get_candidate ::
        JSRef RTCIceCandidate -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.candidate Mozilla RTCIceCandidate.candidate documentation> 
rtcIceCandidateGetCandidate ::
                            (IsRTCIceCandidate self, FromJSString result) => self -> IO result
rtcIceCandidateGetCandidate self
  = fromJSString <$>
      (ghcjs_dom_rtc_ice_candidate_get_candidate
         (unRTCIceCandidate (toRTCIceCandidate self)))
 
foreign import javascript unsafe "$1[\"sdpMid\"]"
        ghcjs_dom_rtc_ice_candidate_get_sdp_mid ::
        JSRef RTCIceCandidate -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
rtcIceCandidateGetSdpMid ::
                         (IsRTCIceCandidate self, FromJSString result) => self -> IO result
rtcIceCandidateGetSdpMid self
  = fromJSString <$>
      (ghcjs_dom_rtc_ice_candidate_get_sdp_mid
         (unRTCIceCandidate (toRTCIceCandidate self)))
 
foreign import javascript unsafe "$1[\"sdpMLineIndex\"]"
        ghcjs_dom_rtc_ice_candidate_get_sdp_m_line_index ::
        JSRef RTCIceCandidate -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
rtcIceCandidateGetSdpMLineIndex ::
                                (IsRTCIceCandidate self) => self -> IO Word
rtcIceCandidateGetSdpMLineIndex self
  = ghcjs_dom_rtc_ice_candidate_get_sdp_m_line_index
      (unRTCIceCandidate (toRTCIceCandidate self))
#else
module GHCJS.DOM.RTCIceCandidate (
  ) where
#endif
