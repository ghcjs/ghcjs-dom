{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCPeerConnection
       (ghcjs_dom_rtc_peer_connection_new, rtcPeerConnectionNew,
        ghcjs_dom_rtc_peer_connection_create_offer,
        rtcPeerConnectionCreateOffer,
        ghcjs_dom_rtc_peer_connection_create_answer,
        rtcPeerConnectionCreateAnswer,
        ghcjs_dom_rtc_peer_connection_set_local_description,
        rtcPeerConnectionSetLocalDescription,
        ghcjs_dom_rtc_peer_connection_set_remote_description,
        rtcPeerConnectionSetRemoteDescription,
        ghcjs_dom_rtc_peer_connection_update_ice,
        rtcPeerConnectionUpdateIce,
        ghcjs_dom_rtc_peer_connection_add_ice_candidate,
        rtcPeerConnectionAddIceCandidate,
        ghcjs_dom_rtc_peer_connection_get_local_streams,
        rtcPeerConnectionGetLocalStreams,
        ghcjs_dom_rtc_peer_connection_get_remote_streams,
        rtcPeerConnectionGetRemoteStreams,
        ghcjs_dom_rtc_peer_connection_get_stream_by_id,
        rtcPeerConnectionGetStreamById,
        ghcjs_dom_rtc_peer_connection_get_configuration,
        rtcPeerConnectionGetConfiguration,
        ghcjs_dom_rtc_peer_connection_add_stream,
        rtcPeerConnectionAddStream,
        ghcjs_dom_rtc_peer_connection_remove_stream,
        rtcPeerConnectionRemoveStream,
        ghcjs_dom_rtc_peer_connection_get_stats, rtcPeerConnectionGetStats,
        ghcjs_dom_rtc_peer_connection_create_data_channel,
        rtcPeerConnectionCreateDataChannel,
        ghcjs_dom_rtc_peer_connection_create_dtmf_sender,
        rtcPeerConnectionCreateDTMFSender,
        ghcjs_dom_rtc_peer_connection_close, rtcPeerConnectionClose,
        ghcjs_dom_rtc_peer_connection_get_local_description,
        rtcPeerConnectionGetLocalDescription,
        ghcjs_dom_rtc_peer_connection_get_remote_description,
        rtcPeerConnectionGetRemoteDescription,
        ghcjs_dom_rtc_peer_connection_get_signaling_state,
        rtcPeerConnectionGetSignalingState,
        ghcjs_dom_rtc_peer_connection_get_ice_gathering_state,
        rtcPeerConnectionGetIceGatheringState,
        ghcjs_dom_rtc_peer_connection_get_ice_connection_state,
        rtcPeerConnectionGetIceConnectionState,
        rtcPeerConnectionNegotiationNeeded, rtcPeerConnectionIceCandidate,
        rtcPeerConnectionSignalingStateChange,
        rtcPeerConnectionAddStreamEvent,
        rtcPeerConnectionRemoveStreamEvent,
        rtcPeerConnectionIceConnectionStateChange,
        rtcPeerConnectionDataChannel, RTCPeerConnection,
        IsRTCPeerConnection, castToRTCPeerConnection,
        gTypeRTCPeerConnection, toRTCPeerConnection)
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
        "new window[\"webkitRTCPeerConnection\"]($1)"
        ghcjs_dom_rtc_peer_connection_new ::
        JSRef Dictionary -> IO (JSRef RTCPeerConnection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection Mozilla webkitRTCPeerConnection documentation> 
rtcPeerConnectionNew ::
                     (MonadIO m, IsDictionary rtcConfiguration) =>
                       Maybe rtcConfiguration -> m RTCPeerConnection
rtcPeerConnectionNew rtcConfiguration
  = liftIO
      (ghcjs_dom_rtc_peer_connection_new
         (maybe jsNull (unDictionary . toDictionary) rtcConfiguration)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"createOffer\"]($2, $3, $4)"
        ghcjs_dom_rtc_peer_connection_create_offer ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescriptionCallback ->
            JSRef RTCPeerConnectionErrorCallback -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createOffer Mozilla webkitRTCPeerConnection.createOffer documentation> 
rtcPeerConnectionCreateOffer ::
                             (MonadIO m, IsRTCPeerConnection self,
                              IsRTCSessionDescriptionCallback successCallback,
                              IsRTCPeerConnectionErrorCallback failureCallback,
                              IsDictionary offerOptions) =>
                               self ->
                                 Maybe successCallback ->
                                   Maybe failureCallback -> Maybe offerOptions -> m ()
rtcPeerConnectionCreateOffer self successCallback failureCallback
  offerOptions
  = liftIO
      (ghcjs_dom_rtc_peer_connection_create_offer
         (unRTCPeerConnection (toRTCPeerConnection self))
         (maybe jsNull
            (unRTCSessionDescriptionCallback . toRTCSessionDescriptionCallback)
            successCallback)
         (maybe jsNull
            (unRTCPeerConnectionErrorCallback .
               toRTCPeerConnectionErrorCallback)
            failureCallback)
         (maybe jsNull (unDictionary . toDictionary) offerOptions))
 
foreign import javascript unsafe "$1[\"createAnswer\"]($2, $3, $4)"
        ghcjs_dom_rtc_peer_connection_create_answer ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescriptionCallback ->
            JSRef RTCPeerConnectionErrorCallback -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation> 
rtcPeerConnectionCreateAnswer ::
                              (MonadIO m, IsRTCPeerConnection self,
                               IsRTCSessionDescriptionCallback successCallback,
                               IsRTCPeerConnectionErrorCallback failureCallback,
                               IsDictionary answerOptions) =>
                                self ->
                                  Maybe successCallback ->
                                    Maybe failureCallback -> Maybe answerOptions -> m ()
rtcPeerConnectionCreateAnswer self successCallback failureCallback
  answerOptions
  = liftIO
      (ghcjs_dom_rtc_peer_connection_create_answer
         (unRTCPeerConnection (toRTCPeerConnection self))
         (maybe jsNull
            (unRTCSessionDescriptionCallback . toRTCSessionDescriptionCallback)
            successCallback)
         (maybe jsNull
            (unRTCPeerConnectionErrorCallback .
               toRTCPeerConnectionErrorCallback)
            failureCallback)
         (maybe jsNull (unDictionary . toDictionary) answerOptions))
 
foreign import javascript unsafe
        "$1[\"setLocalDescription\"]($2,\n$3, $4)"
        ghcjs_dom_rtc_peer_connection_set_local_description ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescription ->
            JSRef VoidCallback -> JSRef RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
rtcPeerConnectionSetLocalDescription ::
                                     (MonadIO m, IsRTCPeerConnection self,
                                      IsRTCSessionDescription description,
                                      IsVoidCallback successCallback,
                                      IsRTCPeerConnectionErrorCallback failureCallback) =>
                                       self ->
                                         Maybe description ->
                                           Maybe successCallback -> Maybe failureCallback -> m ()
rtcPeerConnectionSetLocalDescription self description
  successCallback failureCallback
  = liftIO
      (ghcjs_dom_rtc_peer_connection_set_local_description
         (unRTCPeerConnection (toRTCPeerConnection self))
         (maybe jsNull (unRTCSessionDescription . toRTCSessionDescription)
            description)
         (maybe jsNull (unVoidCallback . toVoidCallback) successCallback)
         (maybe jsNull
            (unRTCPeerConnectionErrorCallback .
               toRTCPeerConnectionErrorCallback)
            failureCallback))
 
foreign import javascript unsafe
        "$1[\"setRemoteDescription\"]($2,\n$3, $4)"
        ghcjs_dom_rtc_peer_connection_set_remote_description ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescription ->
            JSRef VoidCallback -> JSRef RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
rtcPeerConnectionSetRemoteDescription ::
                                      (MonadIO m, IsRTCPeerConnection self,
                                       IsRTCSessionDescription description,
                                       IsVoidCallback successCallback,
                                       IsRTCPeerConnectionErrorCallback failureCallback) =>
                                        self ->
                                          Maybe description ->
                                            Maybe successCallback -> Maybe failureCallback -> m ()
rtcPeerConnectionSetRemoteDescription self description
  successCallback failureCallback
  = liftIO
      (ghcjs_dom_rtc_peer_connection_set_remote_description
         (unRTCPeerConnection (toRTCPeerConnection self))
         (maybe jsNull (unRTCSessionDescription . toRTCSessionDescription)
            description)
         (maybe jsNull (unVoidCallback . toVoidCallback) successCallback)
         (maybe jsNull
            (unRTCPeerConnectionErrorCallback .
               toRTCPeerConnectionErrorCallback)
            failureCallback))
 
foreign import javascript unsafe "$1[\"updateIce\"]($2)"
        ghcjs_dom_rtc_peer_connection_update_ice ::
        JSRef RTCPeerConnection -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.updateIce Mozilla webkitRTCPeerConnection.updateIce documentation> 
rtcPeerConnectionUpdateIce ::
                           (MonadIO m, IsRTCPeerConnection self,
                            IsDictionary configuration) =>
                             self -> Maybe configuration -> m ()
rtcPeerConnectionUpdateIce self configuration
  = liftIO
      (ghcjs_dom_rtc_peer_connection_update_ice
         (unRTCPeerConnection (toRTCPeerConnection self))
         (maybe jsNull (unDictionary . toDictionary) configuration))
 
foreign import javascript unsafe
        "$1[\"addIceCandidate\"]($2, $3,\n$4)"
        ghcjs_dom_rtc_peer_connection_add_ice_candidate ::
        JSRef RTCPeerConnection ->
          JSRef RTCIceCandidate ->
            JSRef VoidCallback -> JSRef RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addIceCandidate Mozilla webkitRTCPeerConnection.addIceCandidate documentation> 
rtcPeerConnectionAddIceCandidate ::
                                 (MonadIO m, IsRTCPeerConnection self, IsRTCIceCandidate candidate,
                                  IsVoidCallback successCallback,
                                  IsRTCPeerConnectionErrorCallback failureCallback) =>
                                   self ->
                                     Maybe candidate ->
                                       Maybe successCallback -> Maybe failureCallback -> m ()
rtcPeerConnectionAddIceCandidate self candidate successCallback
  failureCallback
  = liftIO
      (ghcjs_dom_rtc_peer_connection_add_ice_candidate
         (unRTCPeerConnection (toRTCPeerConnection self))
         (maybe jsNull (unRTCIceCandidate . toRTCIceCandidate) candidate)
         (maybe jsNull (unVoidCallback . toVoidCallback) successCallback)
         (maybe jsNull
            (unRTCPeerConnectionErrorCallback .
               toRTCPeerConnectionErrorCallback)
            failureCallback))
 
foreign import javascript unsafe "$1[\"getLocalStreams\"]()"
        ghcjs_dom_rtc_peer_connection_get_local_streams ::
        JSRef RTCPeerConnection -> IO (JSRef [Maybe MediaStream])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localStreams Mozilla webkitRTCPeerConnection.localStreams documentation> 
rtcPeerConnectionGetLocalStreams ::
                                 (MonadIO m, IsRTCPeerConnection self) =>
                                   self -> m [Maybe MediaStream]
rtcPeerConnectionGetLocalStreams self
  = liftIO
      ((ghcjs_dom_rtc_peer_connection_get_local_streams
          (unRTCPeerConnection (toRTCPeerConnection self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getRemoteStreams\"]()"
        ghcjs_dom_rtc_peer_connection_get_remote_streams ::
        JSRef RTCPeerConnection -> IO (JSRef [Maybe MediaStream])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteStreams Mozilla webkitRTCPeerConnection.remoteStreams documentation> 
rtcPeerConnectionGetRemoteStreams ::
                                  (MonadIO m, IsRTCPeerConnection self) =>
                                    self -> m [Maybe MediaStream]
rtcPeerConnectionGetRemoteStreams self
  = liftIO
      ((ghcjs_dom_rtc_peer_connection_get_remote_streams
          (unRTCPeerConnection (toRTCPeerConnection self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getStreamById\"]($2)"
        ghcjs_dom_rtc_peer_connection_get_stream_by_id ::
        JSRef RTCPeerConnection -> JSString -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.streamById Mozilla webkitRTCPeerConnection.streamById documentation> 
rtcPeerConnectionGetStreamById ::
                               (MonadIO m, IsRTCPeerConnection self, ToJSString streamId) =>
                                 self -> streamId -> m (Maybe MediaStream)
rtcPeerConnectionGetStreamById self streamId
  = liftIO
      ((ghcjs_dom_rtc_peer_connection_get_stream_by_id
          (unRTCPeerConnection (toRTCPeerConnection self))
          (toJSString streamId))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getConfiguration\"]()"
        ghcjs_dom_rtc_peer_connection_get_configuration ::
        JSRef RTCPeerConnection -> IO (JSRef RTCConfiguration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.configuration Mozilla webkitRTCPeerConnection.configuration documentation> 
rtcPeerConnectionGetConfiguration ::
                                  (MonadIO m, IsRTCPeerConnection self) =>
                                    self -> m (Maybe RTCConfiguration)
rtcPeerConnectionGetConfiguration self
  = liftIO
      ((ghcjs_dom_rtc_peer_connection_get_configuration
          (unRTCPeerConnection (toRTCPeerConnection self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"addStream\"]($2)"
        ghcjs_dom_rtc_peer_connection_add_stream ::
        JSRef RTCPeerConnection -> JSRef MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addStream Mozilla webkitRTCPeerConnection.addStream documentation> 
rtcPeerConnectionAddStream ::
                           (MonadIO m, IsRTCPeerConnection self, IsMediaStream stream) =>
                             self -> Maybe stream -> m ()
rtcPeerConnectionAddStream self stream
  = liftIO
      (ghcjs_dom_rtc_peer_connection_add_stream
         (unRTCPeerConnection (toRTCPeerConnection self))
         (maybe jsNull (unMediaStream . toMediaStream) stream))
 
foreign import javascript unsafe "$1[\"removeStream\"]($2)"
        ghcjs_dom_rtc_peer_connection_remove_stream ::
        JSRef RTCPeerConnection -> JSRef MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeStream Mozilla webkitRTCPeerConnection.removeStream documentation> 
rtcPeerConnectionRemoveStream ::
                              (MonadIO m, IsRTCPeerConnection self, IsMediaStream stream) =>
                                self -> Maybe stream -> m ()
rtcPeerConnectionRemoveStream self stream
  = liftIO
      (ghcjs_dom_rtc_peer_connection_remove_stream
         (unRTCPeerConnection (toRTCPeerConnection self))
         (maybe jsNull (unMediaStream . toMediaStream) stream))
 
foreign import javascript unsafe "$1[\"getStats\"]($2, $3, $4)"
        ghcjs_dom_rtc_peer_connection_get_stats ::
        JSRef RTCPeerConnection ->
          JSRef RTCStatsCallback ->
            JSRef RTCPeerConnectionErrorCallback ->
              JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.stats Mozilla webkitRTCPeerConnection.stats documentation> 
rtcPeerConnectionGetStats ::
                          (MonadIO m, IsRTCPeerConnection self,
                           IsRTCStatsCallback successCallback,
                           IsRTCPeerConnectionErrorCallback failureCallback,
                           IsMediaStreamTrack selector) =>
                            self ->
                              Maybe successCallback ->
                                Maybe failureCallback -> Maybe selector -> m ()
rtcPeerConnectionGetStats self successCallback failureCallback
  selector
  = liftIO
      (ghcjs_dom_rtc_peer_connection_get_stats
         (unRTCPeerConnection (toRTCPeerConnection self))
         (maybe jsNull (unRTCStatsCallback . toRTCStatsCallback)
            successCallback)
         (maybe jsNull
            (unRTCPeerConnectionErrorCallback .
               toRTCPeerConnectionErrorCallback)
            failureCallback)
         (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) selector))
 
foreign import javascript unsafe
        "$1[\"createDataChannel\"]($2, $3)"
        ghcjs_dom_rtc_peer_connection_create_data_channel ::
        JSRef RTCPeerConnection ->
          JSString -> JSRef Dictionary -> IO (JSRef RTCDataChannel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
rtcPeerConnectionCreateDataChannel ::
                                   (MonadIO m, IsRTCPeerConnection self, ToJSString label,
                                    IsDictionary options) =>
                                     self -> label -> Maybe options -> m (Maybe RTCDataChannel)
rtcPeerConnectionCreateDataChannel self label options
  = liftIO
      ((ghcjs_dom_rtc_peer_connection_create_data_channel
          (unRTCPeerConnection (toRTCPeerConnection self))
          (toJSString label)
          (maybe jsNull (unDictionary . toDictionary) options))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createDTMFSender\"]($2)"
        ghcjs_dom_rtc_peer_connection_create_dtmf_sender ::
        JSRef RTCPeerConnection ->
          JSRef MediaStreamTrack -> IO (JSRef RTCDTMFSender)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDTMFSender Mozilla webkitRTCPeerConnection.createDTMFSender documentation> 
rtcPeerConnectionCreateDTMFSender ::
                                  (MonadIO m, IsRTCPeerConnection self, IsMediaStreamTrack track) =>
                                    self -> Maybe track -> m (Maybe RTCDTMFSender)
rtcPeerConnectionCreateDTMFSender self track
  = liftIO
      ((ghcjs_dom_rtc_peer_connection_create_dtmf_sender
          (unRTCPeerConnection (toRTCPeerConnection self))
          (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) track))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_rtc_peer_connection_close ::
        JSRef RTCPeerConnection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.close Mozilla webkitRTCPeerConnection.close documentation> 
rtcPeerConnectionClose ::
                       (MonadIO m, IsRTCPeerConnection self) => self -> m ()
rtcPeerConnectionClose self
  = liftIO
      (ghcjs_dom_rtc_peer_connection_close
         (unRTCPeerConnection (toRTCPeerConnection self)))
 
foreign import javascript unsafe "$1[\"localDescription\"]"
        ghcjs_dom_rtc_peer_connection_get_local_description ::
        JSRef RTCPeerConnection -> IO (JSRef RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
rtcPeerConnectionGetLocalDescription ::
                                     (MonadIO m, IsRTCPeerConnection self) =>
                                       self -> m (Maybe RTCSessionDescription)
rtcPeerConnectionGetLocalDescription self
  = liftIO
      ((ghcjs_dom_rtc_peer_connection_get_local_description
          (unRTCPeerConnection (toRTCPeerConnection self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"remoteDescription\"]"
        ghcjs_dom_rtc_peer_connection_get_remote_description ::
        JSRef RTCPeerConnection -> IO (JSRef RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
rtcPeerConnectionGetRemoteDescription ::
                                      (MonadIO m, IsRTCPeerConnection self) =>
                                        self -> m (Maybe RTCSessionDescription)
rtcPeerConnectionGetRemoteDescription self
  = liftIO
      ((ghcjs_dom_rtc_peer_connection_get_remote_description
          (unRTCPeerConnection (toRTCPeerConnection self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"signalingState\"]"
        ghcjs_dom_rtc_peer_connection_get_signaling_state ::
        JSRef RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.signalingState Mozilla webkitRTCPeerConnection.signalingState documentation> 
rtcPeerConnectionGetSignalingState ::
                                   (MonadIO m, IsRTCPeerConnection self, FromJSString result) =>
                                     self -> m result
rtcPeerConnectionGetSignalingState self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_peer_connection_get_signaling_state
            (unRTCPeerConnection (toRTCPeerConnection self))))
 
foreign import javascript unsafe "$1[\"iceGatheringState\"]"
        ghcjs_dom_rtc_peer_connection_get_ice_gathering_state ::
        JSRef RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceGatheringState Mozilla webkitRTCPeerConnection.iceGatheringState documentation> 
rtcPeerConnectionGetIceGatheringState ::
                                      (MonadIO m, IsRTCPeerConnection self, FromJSString result) =>
                                        self -> m result
rtcPeerConnectionGetIceGatheringState self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_peer_connection_get_ice_gathering_state
            (unRTCPeerConnection (toRTCPeerConnection self))))
 
foreign import javascript unsafe "$1[\"iceConnectionState\"]"
        ghcjs_dom_rtc_peer_connection_get_ice_connection_state ::
        JSRef RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceConnectionState Mozilla webkitRTCPeerConnection.iceConnectionState documentation> 
rtcPeerConnectionGetIceConnectionState ::
                                       (MonadIO m, IsRTCPeerConnection self, FromJSString result) =>
                                         self -> m result
rtcPeerConnectionGetIceConnectionState self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_peer_connection_get_ice_connection_state
            (unRTCPeerConnection (toRTCPeerConnection self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.negotiationNeeded Mozilla webkitRTCPeerConnection.negotiationNeeded documentation> 
rtcPeerConnectionNegotiationNeeded ::
                                   (IsRTCPeerConnection self, IsEventTarget self) =>
                                     EventName self Event
rtcPeerConnectionNegotiationNeeded
  = unsafeEventName (toJSString "negotiationneeded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceCandidate Mozilla webkitRTCPeerConnection.iceCandidate documentation> 
rtcPeerConnectionIceCandidate ::
                              (IsRTCPeerConnection self, IsEventTarget self) =>
                                EventName self RTCIceCandidateEvent
rtcPeerConnectionIceCandidate
  = unsafeEventName (toJSString "icecandidate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.signalingStateChange Mozilla webkitRTCPeerConnection.signalingStateChange documentation> 
rtcPeerConnectionSignalingStateChange ::
                                      (IsRTCPeerConnection self, IsEventTarget self) =>
                                        EventName self Event
rtcPeerConnectionSignalingStateChange
  = unsafeEventName (toJSString "signalingstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addStreamEvent Mozilla webkitRTCPeerConnection.addStreamEvent documentation> 
rtcPeerConnectionAddStreamEvent ::
                                (IsRTCPeerConnection self, IsEventTarget self) =>
                                  EventName self Event
rtcPeerConnectionAddStreamEvent
  = unsafeEventName (toJSString "addstream")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeStreamEvent Mozilla webkitRTCPeerConnection.removeStreamEvent documentation> 
rtcPeerConnectionRemoveStreamEvent ::
                                   (IsRTCPeerConnection self, IsEventTarget self) =>
                                     EventName self Event
rtcPeerConnectionRemoveStreamEvent
  = unsafeEventName (toJSString "removestream")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceConnectionStateChange Mozilla webkitRTCPeerConnection.iceConnectionStateChange documentation> 
rtcPeerConnectionIceConnectionStateChange ::
                                          (IsRTCPeerConnection self, IsEventTarget self) =>
                                            EventName self Event
rtcPeerConnectionIceConnectionStateChange
  = unsafeEventName (toJSString "iceconnectionstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.dataChannel Mozilla webkitRTCPeerConnection.dataChannel documentation> 
rtcPeerConnectionDataChannel ::
                             (IsRTCPeerConnection self, IsEventTarget self) =>
                               EventName self Event
rtcPeerConnectionDataChannel
  = unsafeEventName (toJSString "datachannel")
#else
module GHCJS.DOM.RTCPeerConnection (
  ) where
#endif
