{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCDataChannelEvent
       (ghcjs_dom_rtc_data_channel_event_get_channel,
        rtcDataChannelEventGetChannel, RTCDataChannelEvent,
        IsRTCDataChannelEvent, castToRTCDataChannelEvent,
        gTypeRTCDataChannelEvent, toRTCDataChannelEvent)
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

 
foreign import javascript unsafe "$1[\"channel\"]"
        ghcjs_dom_rtc_data_channel_event_get_channel ::
        JSRef RTCDataChannelEvent -> IO (JSRef RTCDataChannel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent.channel Mozilla RTCDataChannelEvent.channel documentation> 
rtcDataChannelEventGetChannel ::
                              (IsRTCDataChannelEvent self) => self -> IO (Maybe RTCDataChannel)
rtcDataChannelEventGetChannel self
  = (ghcjs_dom_rtc_data_channel_event_get_channel
       (unRTCDataChannelEvent (toRTCDataChannelEvent self)))
      >>= fromJSRef
#else
module GHCJS.DOM.RTCDataChannelEvent (
  ) where
#endif
