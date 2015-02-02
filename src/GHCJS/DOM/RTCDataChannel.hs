{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCDataChannel
       (ghcjs_dom_rtc_data_channel_send, rtcDataChannelSend,
        ghcjs_dom_rtc_data_channel_sendView, rtcDataChannelSendView,
        ghcjs_dom_rtc_data_channel_sendBlob, rtcDataChannelSendBlob,
        ghcjs_dom_rtc_data_channel_sendString, rtcDataChannelSendString,
        ghcjs_dom_rtc_data_channel_close, rtcDataChannelClose,
        ghcjs_dom_rtc_data_channel_dispatch_event,
        rtcDataChannelDispatchEvent, ghcjs_dom_rtc_data_channel_get_label,
        rtcDataChannelGetLabel, ghcjs_dom_rtc_data_channel_get_ordered,
        rtcDataChannelGetOrdered,
        ghcjs_dom_rtc_data_channel_get_max_retransmit_time,
        rtcDataChannelGetMaxRetransmitTime,
        ghcjs_dom_rtc_data_channel_get_max_retransmits,
        rtcDataChannelGetMaxRetransmits,
        ghcjs_dom_rtc_data_channel_get_protocol, rtcDataChannelGetProtocol,
        ghcjs_dom_rtc_data_channel_get_negotiated,
        rtcDataChannelGetNegotiated, ghcjs_dom_rtc_data_channel_get_id,
        rtcDataChannelGetId, ghcjs_dom_rtc_data_channel_get_ready_state,
        rtcDataChannelGetReadyState,
        ghcjs_dom_rtc_data_channel_get_buffered_amount,
        rtcDataChannelGetBufferedAmount,
        ghcjs_dom_rtc_data_channel_set_binary_type,
        rtcDataChannelSetBinaryType,
        ghcjs_dom_rtc_data_channel_get_binary_type,
        rtcDataChannelGetBinaryType, rtcDataChannelOnopen,
        rtcDataChannelOnerror, rtcDataChannelOnclose,
        rtcDataChannelOnmessage, RTCDataChannel, IsRTCDataChannel,
        castToRTCDataChannel, gTypeRTCDataChannel, toRTCDataChannel)
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

 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_rtc_data_channel_send ::
        JSRef RTCDataChannel -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
rtcDataChannelSend ::
                   (IsRTCDataChannel self, IsArrayBuffer data') =>
                     self -> Maybe data' -> IO ()
rtcDataChannelSend self data'
  = ghcjs_dom_rtc_data_channel_send
      (unRTCDataChannel (toRTCDataChannel self))
      (maybe jsNull (unArrayBuffer . toArrayBuffer) data')
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_rtc_data_channel_sendView ::
        JSRef RTCDataChannel -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.sendView Mozilla RTCDataChannel.sendView documentation> 
rtcDataChannelSendView ::
                       (IsRTCDataChannel self, IsArrayBufferView data') =>
                         self -> Maybe data' -> IO ()
rtcDataChannelSendView self data'
  = ghcjs_dom_rtc_data_channel_sendView
      (unRTCDataChannel (toRTCDataChannel self))
      (maybe jsNull (unArrayBufferView . toArrayBufferView) data')
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_rtc_data_channel_sendBlob ::
        JSRef RTCDataChannel -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.sendBlob Mozilla RTCDataChannel.sendBlob documentation> 
rtcDataChannelSendBlob ::
                       (IsRTCDataChannel self, IsBlob data') =>
                         self -> Maybe data' -> IO ()
rtcDataChannelSendBlob self data'
  = ghcjs_dom_rtc_data_channel_sendBlob
      (unRTCDataChannel (toRTCDataChannel self))
      (maybe jsNull (unBlob . toBlob) data')
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_rtc_data_channel_sendString ::
        JSRef RTCDataChannel -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.sendString Mozilla RTCDataChannel.sendString documentation> 
rtcDataChannelSendString ::
                         (IsRTCDataChannel self, ToJSString data') => self -> data' -> IO ()
rtcDataChannelSendString self data'
  = ghcjs_dom_rtc_data_channel_sendString
      (unRTCDataChannel (toRTCDataChannel self))
      (toJSString data')
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_rtc_data_channel_close :: JSRef RTCDataChannel -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.close Mozilla RTCDataChannel.close documentation> 
rtcDataChannelClose :: (IsRTCDataChannel self) => self -> IO ()
rtcDataChannelClose self
  = ghcjs_dom_rtc_data_channel_close
      (unRTCDataChannel (toRTCDataChannel self))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_rtc_data_channel_dispatch_event ::
        JSRef RTCDataChannel -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.dispatchEvent Mozilla RTCDataChannel.dispatchEvent documentation> 
rtcDataChannelDispatchEvent ::
                            (IsRTCDataChannel self, IsEvent event) =>
                              self -> Maybe event -> IO Bool
rtcDataChannelDispatchEvent self event
  = ghcjs_dom_rtc_data_channel_dispatch_event
      (unRTCDataChannel (toRTCDataChannel self))
      (maybe jsNull (unEvent . toEvent) event)
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_rtc_data_channel_get_label ::
        JSRef RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.label Mozilla RTCDataChannel.label documentation> 
rtcDataChannelGetLabel ::
                       (IsRTCDataChannel self, FromJSString result) => self -> IO result
rtcDataChannelGetLabel self
  = fromJSString <$>
      (ghcjs_dom_rtc_data_channel_get_label
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "($1[\"ordered\"] ? 1 : 0)"
        ghcjs_dom_rtc_data_channel_get_ordered ::
        JSRef RTCDataChannel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.ordered Mozilla RTCDataChannel.ordered documentation> 
rtcDataChannelGetOrdered ::
                         (IsRTCDataChannel self) => self -> IO Bool
rtcDataChannelGetOrdered self
  = ghcjs_dom_rtc_data_channel_get_ordered
      (unRTCDataChannel (toRTCDataChannel self))
 
foreign import javascript unsafe "$1[\"maxRetransmitTime\"]"
        ghcjs_dom_rtc_data_channel_get_max_retransmit_time ::
        JSRef RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmitTime Mozilla RTCDataChannel.maxRetransmitTime documentation> 
rtcDataChannelGetMaxRetransmitTime ::
                                   (IsRTCDataChannel self) => self -> IO Word
rtcDataChannelGetMaxRetransmitTime self
  = ghcjs_dom_rtc_data_channel_get_max_retransmit_time
      (unRTCDataChannel (toRTCDataChannel self))
 
foreign import javascript unsafe "$1[\"maxRetransmits\"]"
        ghcjs_dom_rtc_data_channel_get_max_retransmits ::
        JSRef RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
rtcDataChannelGetMaxRetransmits ::
                                (IsRTCDataChannel self) => self -> IO Word
rtcDataChannelGetMaxRetransmits self
  = ghcjs_dom_rtc_data_channel_get_max_retransmits
      (unRTCDataChannel (toRTCDataChannel self))
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_rtc_data_channel_get_protocol ::
        JSRef RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.protocol Mozilla RTCDataChannel.protocol documentation> 
rtcDataChannelGetProtocol ::
                          (IsRTCDataChannel self, FromJSString result) => self -> IO result
rtcDataChannelGetProtocol self
  = fromJSString <$>
      (ghcjs_dom_rtc_data_channel_get_protocol
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "($1[\"negotiated\"] ? 1 : 0)"
        ghcjs_dom_rtc_data_channel_get_negotiated ::
        JSRef RTCDataChannel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.negotiated Mozilla RTCDataChannel.negotiated documentation> 
rtcDataChannelGetNegotiated ::
                            (IsRTCDataChannel self) => self -> IO Bool
rtcDataChannelGetNegotiated self
  = ghcjs_dom_rtc_data_channel_get_negotiated
      (unRTCDataChannel (toRTCDataChannel self))
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_rtc_data_channel_get_id ::
        JSRef RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.id Mozilla RTCDataChannel.id documentation> 
rtcDataChannelGetId :: (IsRTCDataChannel self) => self -> IO Word
rtcDataChannelGetId self
  = ghcjs_dom_rtc_data_channel_get_id
      (unRTCDataChannel (toRTCDataChannel self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_rtc_data_channel_get_ready_state ::
        JSRef RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.readyState Mozilla RTCDataChannel.readyState documentation> 
rtcDataChannelGetReadyState ::
                            (IsRTCDataChannel self, FromJSString result) => self -> IO result
rtcDataChannelGetReadyState self
  = fromJSString <$>
      (ghcjs_dom_rtc_data_channel_get_ready_state
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "$1[\"bufferedAmount\"]"
        ghcjs_dom_rtc_data_channel_get_buffered_amount ::
        JSRef RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmount Mozilla RTCDataChannel.bufferedAmount documentation> 
rtcDataChannelGetBufferedAmount ::
                                (IsRTCDataChannel self) => self -> IO Word
rtcDataChannelGetBufferedAmount self
  = ghcjs_dom_rtc_data_channel_get_buffered_amount
      (unRTCDataChannel (toRTCDataChannel self))
 
foreign import javascript unsafe "$1[\"binaryType\"] = $2;"
        ghcjs_dom_rtc_data_channel_set_binary_type ::
        JSRef RTCDataChannel -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
rtcDataChannelSetBinaryType ::
                            (IsRTCDataChannel self, ToJSString val) => self -> val -> IO ()
rtcDataChannelSetBinaryType self val
  = ghcjs_dom_rtc_data_channel_set_binary_type
      (unRTCDataChannel (toRTCDataChannel self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"binaryType\"]"
        ghcjs_dom_rtc_data_channel_get_binary_type ::
        JSRef RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
rtcDataChannelGetBinaryType ::
                            (IsRTCDataChannel self, FromJSString result) => self -> IO result
rtcDataChannelGetBinaryType self
  = fromJSString <$>
      (ghcjs_dom_rtc_data_channel_get_binary_type
         (unRTCDataChannel (toRTCDataChannel self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onopen Mozilla RTCDataChannel.onopen documentation> 
rtcDataChannelOnopen ::
                     (IsRTCDataChannel self) => Signal self (EventM UIEvent self ())
rtcDataChannelOnopen = (connect "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onerror Mozilla RTCDataChannel.onerror documentation> 
rtcDataChannelOnerror ::
                      (IsRTCDataChannel self) => Signal self (EventM UIEvent self ())
rtcDataChannelOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onclose Mozilla RTCDataChannel.onclose documentation> 
rtcDataChannelOnclose ::
                      (IsRTCDataChannel self) => Signal self (EventM UIEvent self ())
rtcDataChannelOnclose = (connect "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onmessage Mozilla RTCDataChannel.onmessage documentation> 
rtcDataChannelOnmessage ::
                        (IsRTCDataChannel self) => Signal self (EventM UIEvent self ())
rtcDataChannelOnmessage = (connect "message")
#else
module GHCJS.DOM.RTCDataChannel (
  ) where
#endif
