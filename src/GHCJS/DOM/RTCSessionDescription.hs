{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCSessionDescription
       (ghcjs_dom_rtc_session_description_new, rtcSessionDescriptionNew,
        ghcjs_dom_rtc_session_description_set_sdp,
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
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "new window[\"RTCSessionDescription\"]($1)"
        ghcjs_dom_rtc_session_description_new ::
        JSRef Dictionary -> IO (JSRef RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription Mozilla RTCSessionDescription documentation> 
rtcSessionDescriptionNew ::
                         (MonadIO m, IsDictionary dictionary) =>
                           Maybe dictionary -> m RTCSessionDescription
rtcSessionDescriptionNew dictionary
  = liftIO
      (ghcjs_dom_rtc_session_description_new
         (maybe jsNull (unDictionary . toDictionary) dictionary)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"sdp\"] = $2;"
        ghcjs_dom_rtc_session_description_set_sdp ::
        JSRef RTCSessionDescription -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
rtcSessionDescriptionSetSdp ::
                            (MonadIO m, IsRTCSessionDescription self, ToJSString val) =>
                              self -> val -> m ()
rtcSessionDescriptionSetSdp self val
  = liftIO
      (ghcjs_dom_rtc_session_description_set_sdp
         (unRTCSessionDescription (toRTCSessionDescription self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"sdp\"]"
        ghcjs_dom_rtc_session_description_get_sdp ::
        JSRef RTCSessionDescription -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription.sdp Mozilla RTCSessionDescription.sdp documentation> 
rtcSessionDescriptionGetSdp ::
                            (MonadIO m, IsRTCSessionDescription self, FromJSString result) =>
                              self -> m result
rtcSessionDescriptionGetSdp self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_session_description_get_sdp
            (unRTCSessionDescription (toRTCSessionDescription self))))
#else
module GHCJS.DOM.RTCSessionDescription (
  ) where
#endif
