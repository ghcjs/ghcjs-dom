{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCDataChannel
       (ghcjs_dom_rtc_data_channel_send, rtcDataChannelSend,
        ghcjs_dom_rtc_data_channel_sendView, rtcDataChannelSendView,
        ghcjs_dom_rtc_data_channel_sendBlob, rtcDataChannelSendBlob,
        ghcjs_dom_rtc_data_channel_sendString, rtcDataChannelSendString,
        ghcjs_dom_rtc_data_channel_close, rtcDataChannelClose,
        ghcjs_dom_rtc_data_channel_get_label, rtcDataChannelGetLabel,
        ghcjs_dom_rtc_data_channel_get_ordered, rtcDataChannelGetOrdered,
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
        rtcDataChannelGetBinaryType, rtcDataChannelOpen,
        rtcDataChannelError, rtcDataChannelCloseEvent,
        rtcDataChannelMessage, RTCDataChannel, IsRTCDataChannel,
        castToRTCDataChannel, gTypeRTCDataChannel, toRTCDataChannel)
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

 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_rtc_data_channel_send ::
        JSRef RTCDataChannel -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
rtcDataChannelSend ::
                   (MonadIO m, IsRTCDataChannel self, IsArrayBuffer data') =>
                     self -> Maybe data' -> m ()
rtcDataChannelSend self data'
  = liftIO
      (ghcjs_dom_rtc_data_channel_send
         (unRTCDataChannel (toRTCDataChannel self))
         (maybe jsNull (unArrayBuffer . toArrayBuffer) data'))
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_rtc_data_channel_sendView ::
        JSRef RTCDataChannel -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.sendView Mozilla RTCDataChannel.sendView documentation> 
rtcDataChannelSendView ::
                       (MonadIO m, IsRTCDataChannel self, IsArrayBufferView data') =>
                         self -> Maybe data' -> m ()
rtcDataChannelSendView self data'
  = liftIO
      (ghcjs_dom_rtc_data_channel_sendView
         (unRTCDataChannel (toRTCDataChannel self))
         (maybe jsNull (unArrayBufferView . toArrayBufferView) data'))
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_rtc_data_channel_sendBlob ::
        JSRef RTCDataChannel -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.sendBlob Mozilla RTCDataChannel.sendBlob documentation> 
rtcDataChannelSendBlob ::
                       (MonadIO m, IsRTCDataChannel self, IsBlob data') =>
                         self -> Maybe data' -> m ()
rtcDataChannelSendBlob self data'
  = liftIO
      (ghcjs_dom_rtc_data_channel_sendBlob
         (unRTCDataChannel (toRTCDataChannel self))
         (maybe jsNull (unBlob . toBlob) data'))
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_rtc_data_channel_sendString ::
        JSRef RTCDataChannel -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.sendString Mozilla RTCDataChannel.sendString documentation> 
rtcDataChannelSendString ::
                         (MonadIO m, IsRTCDataChannel self, ToJSString data') =>
                           self -> data' -> m ()
rtcDataChannelSendString self data'
  = liftIO
      (ghcjs_dom_rtc_data_channel_sendString
         (unRTCDataChannel (toRTCDataChannel self))
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_rtc_data_channel_close :: JSRef RTCDataChannel -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.close Mozilla RTCDataChannel.close documentation> 
rtcDataChannelClose ::
                    (MonadIO m, IsRTCDataChannel self) => self -> m ()
rtcDataChannelClose self
  = liftIO
      (ghcjs_dom_rtc_data_channel_close
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_rtc_data_channel_get_label ::
        JSRef RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.label Mozilla RTCDataChannel.label documentation> 
rtcDataChannelGetLabel ::
                       (MonadIO m, IsRTCDataChannel self, FromJSString result) =>
                         self -> m result
rtcDataChannelGetLabel self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_data_channel_get_label
            (unRTCDataChannel (toRTCDataChannel self))))
 
foreign import javascript unsafe "($1[\"ordered\"] ? 1 : 0)"
        ghcjs_dom_rtc_data_channel_get_ordered ::
        JSRef RTCDataChannel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.ordered Mozilla RTCDataChannel.ordered documentation> 
rtcDataChannelGetOrdered ::
                         (MonadIO m, IsRTCDataChannel self) => self -> m Bool
rtcDataChannelGetOrdered self
  = liftIO
      (ghcjs_dom_rtc_data_channel_get_ordered
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "$1[\"maxRetransmitTime\"]"
        ghcjs_dom_rtc_data_channel_get_max_retransmit_time ::
        JSRef RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmitTime Mozilla RTCDataChannel.maxRetransmitTime documentation> 
rtcDataChannelGetMaxRetransmitTime ::
                                   (MonadIO m, IsRTCDataChannel self) => self -> m Word
rtcDataChannelGetMaxRetransmitTime self
  = liftIO
      (ghcjs_dom_rtc_data_channel_get_max_retransmit_time
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "$1[\"maxRetransmits\"]"
        ghcjs_dom_rtc_data_channel_get_max_retransmits ::
        JSRef RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
rtcDataChannelGetMaxRetransmits ::
                                (MonadIO m, IsRTCDataChannel self) => self -> m Word
rtcDataChannelGetMaxRetransmits self
  = liftIO
      (ghcjs_dom_rtc_data_channel_get_max_retransmits
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_rtc_data_channel_get_protocol ::
        JSRef RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.protocol Mozilla RTCDataChannel.protocol documentation> 
rtcDataChannelGetProtocol ::
                          (MonadIO m, IsRTCDataChannel self, FromJSString result) =>
                            self -> m result
rtcDataChannelGetProtocol self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_data_channel_get_protocol
            (unRTCDataChannel (toRTCDataChannel self))))
 
foreign import javascript unsafe "($1[\"negotiated\"] ? 1 : 0)"
        ghcjs_dom_rtc_data_channel_get_negotiated ::
        JSRef RTCDataChannel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.negotiated Mozilla RTCDataChannel.negotiated documentation> 
rtcDataChannelGetNegotiated ::
                            (MonadIO m, IsRTCDataChannel self) => self -> m Bool
rtcDataChannelGetNegotiated self
  = liftIO
      (ghcjs_dom_rtc_data_channel_get_negotiated
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_rtc_data_channel_get_id ::
        JSRef RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.id Mozilla RTCDataChannel.id documentation> 
rtcDataChannelGetId ::
                    (MonadIO m, IsRTCDataChannel self) => self -> m Word
rtcDataChannelGetId self
  = liftIO
      (ghcjs_dom_rtc_data_channel_get_id
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_rtc_data_channel_get_ready_state ::
        JSRef RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.readyState Mozilla RTCDataChannel.readyState documentation> 
rtcDataChannelGetReadyState ::
                            (MonadIO m, IsRTCDataChannel self, FromJSString result) =>
                              self -> m result
rtcDataChannelGetReadyState self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_data_channel_get_ready_state
            (unRTCDataChannel (toRTCDataChannel self))))
 
foreign import javascript unsafe "$1[\"bufferedAmount\"]"
        ghcjs_dom_rtc_data_channel_get_buffered_amount ::
        JSRef RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmount Mozilla RTCDataChannel.bufferedAmount documentation> 
rtcDataChannelGetBufferedAmount ::
                                (MonadIO m, IsRTCDataChannel self) => self -> m Word
rtcDataChannelGetBufferedAmount self
  = liftIO
      (ghcjs_dom_rtc_data_channel_get_buffered_amount
         (unRTCDataChannel (toRTCDataChannel self)))
 
foreign import javascript unsafe "$1[\"binaryType\"] = $2;"
        ghcjs_dom_rtc_data_channel_set_binary_type ::
        JSRef RTCDataChannel -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
rtcDataChannelSetBinaryType ::
                            (MonadIO m, IsRTCDataChannel self, ToJSString val) =>
                              self -> val -> m ()
rtcDataChannelSetBinaryType self val
  = liftIO
      (ghcjs_dom_rtc_data_channel_set_binary_type
         (unRTCDataChannel (toRTCDataChannel self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"binaryType\"]"
        ghcjs_dom_rtc_data_channel_get_binary_type ::
        JSRef RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
rtcDataChannelGetBinaryType ::
                            (MonadIO m, IsRTCDataChannel self, FromJSString result) =>
                              self -> m result
rtcDataChannelGetBinaryType self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_data_channel_get_binary_type
            (unRTCDataChannel (toRTCDataChannel self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.open Mozilla RTCDataChannel.open documentation> 
rtcDataChannelOpen ::
                   (IsRTCDataChannel self, IsEventTarget self) => EventName self Event
rtcDataChannelOpen = unsafeEventName (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.error Mozilla RTCDataChannel.error documentation> 
rtcDataChannelError ::
                    (IsRTCDataChannel self, IsEventTarget self) =>
                      EventName self UIEvent
rtcDataChannelError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.closeEvent Mozilla RTCDataChannel.closeEvent documentation> 
rtcDataChannelCloseEvent ::
                         (IsRTCDataChannel self, IsEventTarget self) => EventName self Event
rtcDataChannelCloseEvent = unsafeEventName (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.message Mozilla RTCDataChannel.message documentation> 
rtcDataChannelMessage ::
                      (IsRTCDataChannel self, IsEventTarget self) =>
                        EventName self MessageEvent
rtcDataChannelMessage = unsafeEventName (toJSString "message")
#else
module GHCJS.DOM.RTCDataChannel (
  ) where
#endif
