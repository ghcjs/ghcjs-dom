{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCIceCandidateEvent
       (ghcjs_dom_rtc_ice_candidate_event_get_candidate,
        rtcIceCandidateEventGetCandidate, RTCIceCandidateEvent,
        IsRTCIceCandidateEvent, castToRTCIceCandidateEvent,
        gTypeRTCIceCandidateEvent, toRTCIceCandidateEvent)
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
        ghcjs_dom_rtc_ice_candidate_event_get_candidate ::
        JSRef RTCIceCandidateEvent -> IO (JSRef RTCIceCandidate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidateEvent.candidate Mozilla RTCIceCandidateEvent.candidate documentation> 
rtcIceCandidateEventGetCandidate ::
                                 (IsRTCIceCandidateEvent self) => self -> IO (Maybe RTCIceCandidate)
rtcIceCandidateEventGetCandidate self
  = (ghcjs_dom_rtc_ice_candidate_event_get_candidate
       (unRTCIceCandidateEvent (toRTCIceCandidateEvent self)))
      >>= fromJSRef
#else
module GHCJS.DOM.RTCIceCandidateEvent (
  ) where
#endif
