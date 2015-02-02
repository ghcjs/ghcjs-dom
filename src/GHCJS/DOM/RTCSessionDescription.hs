{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCSessionDescription
       (ghcjs_dom_rtc_session_description_set_sdp,
        rtcSessionDescriptionSetSdp,
        ghcjs_dom_rtc_session_description_get_sdp,
        rtcSessionDescriptionGetSdp, RTCSessionDescription,
        IsRTCSessionDescription, castToRTCSessionDescription,
        gTypeRTCSessionDescription, toRTCSessionDescription)
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

 
foreign import javascript unsafe "$1[\"sdp\"] = $2;"
        ghcjs_dom_rtc_session_description_set_sdp ::
        JSRef RTCSessionDescription -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
rtcSessionDescriptionSetSdp ::
                            (IsRTCSessionDescription self, ToJSString val) =>
                              self -> val -> IO ()
rtcSessionDescriptionSetSdp self val
  = ghcjs_dom_rtc_session_description_set_sdp
      (unRTCSessionDescription (toRTCSessionDescription self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"sdp\"]"
        ghcjs_dom_rtc_session_description_get_sdp ::
        JSRef RTCSessionDescription -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
rtcSessionDescriptionGetSdp ::
                            (IsRTCSessionDescription self, FromJSString result) =>
                              self -> IO result
rtcSessionDescriptionGetSdp self
  = fromJSString <$>
      (ghcjs_dom_rtc_session_description_get_sdp
         (unRTCSessionDescription (toRTCSessionDescription self)))
#else
module GHCJS.DOM.RTCSessionDescription (
  ) where
#endif
