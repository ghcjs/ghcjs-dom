{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCPeerConnection
       (ghcjs_dom_rtc_peer_connection_create_offer,
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
        ghcjs_dom_rtc_peer_connection_dispatch_event,
        rtcPeerConnectionDispatchEvent,
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
        rtcPeerConnectionOnnegotiationneeded,
        rtcPeerConnectionOnicecandidate,
        rtcPeerConnectionOnsignalingstatechange,
        rtcPeerConnectionOnaddstream, rtcPeerConnectionOnremovestream,
        rtcPeerConnectionOniceconnectionstatechange,
        rtcPeerConnectionOndatachannel, RTCPeerConnection,
        IsRTCPeerConnection, castToRTCPeerConnection,
        gTypeRTCPeerConnection, toRTCPeerConnection)
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

 
foreign import javascript unsafe "$1[\"createOffer\"]($2, $3, $4)"
        ghcjs_dom_rtc_peer_connection_create_offer ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescriptionCallback ->
            JSRef RTCPeerConnectionErrorCallback -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createOffer Mozilla webkitRTCPeerConnection.createOffer documentation> 
rtcPeerConnectionCreateOffer ::
                             (IsRTCPeerConnection self,
                              IsRTCSessionDescriptionCallback successCallback,
                              IsRTCPeerConnectionErrorCallback failureCallback,
                              IsDictionary offerOptions) =>
                               self ->
                                 Maybe successCallback ->
                                   Maybe failureCallback -> Maybe offerOptions -> IO ()
rtcPeerConnectionCreateOffer self successCallback failureCallback
  offerOptions
  = ghcjs_dom_rtc_peer_connection_create_offer
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull
         (unRTCSessionDescriptionCallback . toRTCSessionDescriptionCallback)
         successCallback)
      (maybe jsNull
         (unRTCPeerConnectionErrorCallback .
            toRTCPeerConnectionErrorCallback)
         failureCallback)
      (maybe jsNull (unDictionary . toDictionary) offerOptions)
 
foreign import javascript unsafe "$1[\"createAnswer\"]($2, $3, $4)"
        ghcjs_dom_rtc_peer_connection_create_answer ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescriptionCallback ->
            JSRef RTCPeerConnectionErrorCallback -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation> 
rtcPeerConnectionCreateAnswer ::
                              (IsRTCPeerConnection self,
                               IsRTCSessionDescriptionCallback successCallback,
                               IsRTCPeerConnectionErrorCallback failureCallback,
                               IsDictionary answerOptions) =>
                                self ->
                                  Maybe successCallback ->
                                    Maybe failureCallback -> Maybe answerOptions -> IO ()
rtcPeerConnectionCreateAnswer self successCallback failureCallback
  answerOptions
  = ghcjs_dom_rtc_peer_connection_create_answer
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull
         (unRTCSessionDescriptionCallback . toRTCSessionDescriptionCallback)
         successCallback)
      (maybe jsNull
         (unRTCPeerConnectionErrorCallback .
            toRTCPeerConnectionErrorCallback)
         failureCallback)
      (maybe jsNull (unDictionary . toDictionary) answerOptions)
 
foreign import javascript unsafe
        "$1[\"setLocalDescription\"]($2,\n$3, $4)"
        ghcjs_dom_rtc_peer_connection_set_local_description ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescription ->
            JSRef VoidCallback -> JSRef RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
rtcPeerConnectionSetLocalDescription ::
                                     (IsRTCPeerConnection self, IsRTCSessionDescription description,
                                      IsVoidCallback successCallback,
                                      IsRTCPeerConnectionErrorCallback failureCallback) =>
                                       self ->
                                         Maybe description ->
                                           Maybe successCallback -> Maybe failureCallback -> IO ()
rtcPeerConnectionSetLocalDescription self description
  successCallback failureCallback
  = ghcjs_dom_rtc_peer_connection_set_local_description
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull (unRTCSessionDescription . toRTCSessionDescription)
         description)
      (maybe jsNull (unVoidCallback . toVoidCallback) successCallback)
      (maybe jsNull
         (unRTCPeerConnectionErrorCallback .
            toRTCPeerConnectionErrorCallback)
         failureCallback)
 
foreign import javascript unsafe
        "$1[\"setRemoteDescription\"]($2,\n$3, $4)"
        ghcjs_dom_rtc_peer_connection_set_remote_description ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescription ->
            JSRef VoidCallback -> JSRef RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
rtcPeerConnectionSetRemoteDescription ::
                                      (IsRTCPeerConnection self,
                                       IsRTCSessionDescription description,
                                       IsVoidCallback successCallback,
                                       IsRTCPeerConnectionErrorCallback failureCallback) =>
                                        self ->
                                          Maybe description ->
                                            Maybe successCallback -> Maybe failureCallback -> IO ()
rtcPeerConnectionSetRemoteDescription self description
  successCallback failureCallback
  = ghcjs_dom_rtc_peer_connection_set_remote_description
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull (unRTCSessionDescription . toRTCSessionDescription)
         description)
      (maybe jsNull (unVoidCallback . toVoidCallback) successCallback)
      (maybe jsNull
         (unRTCPeerConnectionErrorCallback .
            toRTCPeerConnectionErrorCallback)
         failureCallback)
 
foreign import javascript unsafe "$1[\"updateIce\"]($2)"
        ghcjs_dom_rtc_peer_connection_update_ice ::
        JSRef RTCPeerConnection -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.updateIce Mozilla webkitRTCPeerConnection.updateIce documentation> 
rtcPeerConnectionUpdateIce ::
                           (IsRTCPeerConnection self, IsDictionary configuration) =>
                             self -> Maybe configuration -> IO ()
rtcPeerConnectionUpdateIce self configuration
  = ghcjs_dom_rtc_peer_connection_update_ice
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull (unDictionary . toDictionary) configuration)
 
foreign import javascript unsafe
        "$1[\"addIceCandidate\"]($2, $3,\n$4)"
        ghcjs_dom_rtc_peer_connection_add_ice_candidate ::
        JSRef RTCPeerConnection ->
          JSRef RTCIceCandidate ->
            JSRef VoidCallback -> JSRef RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addIceCandidate Mozilla webkitRTCPeerConnection.addIceCandidate documentation> 
rtcPeerConnectionAddIceCandidate ::
                                 (IsRTCPeerConnection self, IsRTCIceCandidate candidate,
                                  IsVoidCallback successCallback,
                                  IsRTCPeerConnectionErrorCallback failureCallback) =>
                                   self ->
                                     Maybe candidate ->
                                       Maybe successCallback -> Maybe failureCallback -> IO ()
rtcPeerConnectionAddIceCandidate self candidate successCallback
  failureCallback
  = ghcjs_dom_rtc_peer_connection_add_ice_candidate
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull (unRTCIceCandidate . toRTCIceCandidate) candidate)
      (maybe jsNull (unVoidCallback . toVoidCallback) successCallback)
      (maybe jsNull
         (unRTCPeerConnectionErrorCallback .
            toRTCPeerConnectionErrorCallback)
         failureCallback)
 
foreign import javascript unsafe "$1[\"getLocalStreams\"]()"
        ghcjs_dom_rtc_peer_connection_get_local_streams ::
        JSRef RTCPeerConnection -> IO (JSRef [Maybe MediaStream])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localStreams Mozilla webkitRTCPeerConnection.localStreams documentation> 
rtcPeerConnectionGetLocalStreams ::
                                 (IsRTCPeerConnection self) => self -> IO [Maybe MediaStream]
rtcPeerConnectionGetLocalStreams self
  = (ghcjs_dom_rtc_peer_connection_get_local_streams
       (unRTCPeerConnection (toRTCPeerConnection self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"getRemoteStreams\"]()"
        ghcjs_dom_rtc_peer_connection_get_remote_streams ::
        JSRef RTCPeerConnection -> IO (JSRef [Maybe MediaStream])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteStreams Mozilla webkitRTCPeerConnection.remoteStreams documentation> 
rtcPeerConnectionGetRemoteStreams ::
                                  (IsRTCPeerConnection self) => self -> IO [Maybe MediaStream]
rtcPeerConnectionGetRemoteStreams self
  = (ghcjs_dom_rtc_peer_connection_get_remote_streams
       (unRTCPeerConnection (toRTCPeerConnection self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"getStreamById\"]($2)"
        ghcjs_dom_rtc_peer_connection_get_stream_by_id ::
        JSRef RTCPeerConnection -> JSString -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.streamById Mozilla webkitRTCPeerConnection.streamById documentation> 
rtcPeerConnectionGetStreamById ::
                               (IsRTCPeerConnection self, ToJSString streamId) =>
                                 self -> streamId -> IO (Maybe MediaStream)
rtcPeerConnectionGetStreamById self streamId
  = (ghcjs_dom_rtc_peer_connection_get_stream_by_id
       (unRTCPeerConnection (toRTCPeerConnection self))
       (toJSString streamId))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getConfiguration\"]()"
        ghcjs_dom_rtc_peer_connection_get_configuration ::
        JSRef RTCPeerConnection -> IO (JSRef RTCConfiguration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.configuration Mozilla webkitRTCPeerConnection.configuration documentation> 
rtcPeerConnectionGetConfiguration ::
                                  (IsRTCPeerConnection self) => self -> IO (Maybe RTCConfiguration)
rtcPeerConnectionGetConfiguration self
  = (ghcjs_dom_rtc_peer_connection_get_configuration
       (unRTCPeerConnection (toRTCPeerConnection self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"addStream\"]($2)"
        ghcjs_dom_rtc_peer_connection_add_stream ::
        JSRef RTCPeerConnection -> JSRef MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addStream Mozilla webkitRTCPeerConnection.addStream documentation> 
rtcPeerConnectionAddStream ::
                           (IsRTCPeerConnection self, IsMediaStream stream) =>
                             self -> Maybe stream -> IO ()
rtcPeerConnectionAddStream self stream
  = ghcjs_dom_rtc_peer_connection_add_stream
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull (unMediaStream . toMediaStream) stream)
 
foreign import javascript unsafe "$1[\"removeStream\"]($2)"
        ghcjs_dom_rtc_peer_connection_remove_stream ::
        JSRef RTCPeerConnection -> JSRef MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeStream Mozilla webkitRTCPeerConnection.removeStream documentation> 
rtcPeerConnectionRemoveStream ::
                              (IsRTCPeerConnection self, IsMediaStream stream) =>
                                self -> Maybe stream -> IO ()
rtcPeerConnectionRemoveStream self stream
  = ghcjs_dom_rtc_peer_connection_remove_stream
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull (unMediaStream . toMediaStream) stream)
 
foreign import javascript unsafe "$1[\"getStats\"]($2, $3, $4)"
        ghcjs_dom_rtc_peer_connection_get_stats ::
        JSRef RTCPeerConnection ->
          JSRef RTCStatsCallback ->
            JSRef RTCPeerConnectionErrorCallback ->
              JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.stats Mozilla webkitRTCPeerConnection.stats documentation> 
rtcPeerConnectionGetStats ::
                          (IsRTCPeerConnection self, IsRTCStatsCallback successCallback,
                           IsRTCPeerConnectionErrorCallback failureCallback,
                           IsMediaStreamTrack selector) =>
                            self ->
                              Maybe successCallback ->
                                Maybe failureCallback -> Maybe selector -> IO ()
rtcPeerConnectionGetStats self successCallback failureCallback
  selector
  = ghcjs_dom_rtc_peer_connection_get_stats
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull (unRTCStatsCallback . toRTCStatsCallback)
         successCallback)
      (maybe jsNull
         (unRTCPeerConnectionErrorCallback .
            toRTCPeerConnectionErrorCallback)
         failureCallback)
      (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) selector)
 
foreign import javascript unsafe
        "$1[\"createDataChannel\"]($2, $3)"
        ghcjs_dom_rtc_peer_connection_create_data_channel ::
        JSRef RTCPeerConnection ->
          JSString -> JSRef Dictionary -> IO (JSRef RTCDataChannel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
rtcPeerConnectionCreateDataChannel ::
                                   (IsRTCPeerConnection self, ToJSString label,
                                    IsDictionary options) =>
                                     self -> label -> Maybe options -> IO (Maybe RTCDataChannel)
rtcPeerConnectionCreateDataChannel self label options
  = (ghcjs_dom_rtc_peer_connection_create_data_channel
       (unRTCPeerConnection (toRTCPeerConnection self))
       (toJSString label)
       (maybe jsNull (unDictionary . toDictionary) options))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createDTMFSender\"]($2)"
        ghcjs_dom_rtc_peer_connection_create_dtmf_sender ::
        JSRef RTCPeerConnection ->
          JSRef MediaStreamTrack -> IO (JSRef RTCDTMFSender)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDTMFSender Mozilla webkitRTCPeerConnection.createDTMFSender documentation> 
rtcPeerConnectionCreateDTMFSender ::
                                  (IsRTCPeerConnection self, IsMediaStreamTrack track) =>
                                    self -> Maybe track -> IO (Maybe RTCDTMFSender)
rtcPeerConnectionCreateDTMFSender self track
  = (ghcjs_dom_rtc_peer_connection_create_dtmf_sender
       (unRTCPeerConnection (toRTCPeerConnection self))
       (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) track))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_rtc_peer_connection_close ::
        JSRef RTCPeerConnection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.close Mozilla webkitRTCPeerConnection.close documentation> 
rtcPeerConnectionClose ::
                       (IsRTCPeerConnection self) => self -> IO ()
rtcPeerConnectionClose self
  = ghcjs_dom_rtc_peer_connection_close
      (unRTCPeerConnection (toRTCPeerConnection self))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_rtc_peer_connection_dispatch_event ::
        JSRef RTCPeerConnection -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.dispatchEvent Mozilla webkitRTCPeerConnection.dispatchEvent documentation> 
rtcPeerConnectionDispatchEvent ::
                               (IsRTCPeerConnection self, IsEvent event) =>
                                 self -> Maybe event -> IO Bool
rtcPeerConnectionDispatchEvent self event
  = ghcjs_dom_rtc_peer_connection_dispatch_event
      (unRTCPeerConnection (toRTCPeerConnection self))
      (maybe jsNull (unEvent . toEvent) event)
 
foreign import javascript unsafe "$1[\"localDescription\"]"
        ghcjs_dom_rtc_peer_connection_get_local_description ::
        JSRef RTCPeerConnection -> IO (JSRef RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
rtcPeerConnectionGetLocalDescription ::
                                     (IsRTCPeerConnection self) =>
                                       self -> IO (Maybe RTCSessionDescription)
rtcPeerConnectionGetLocalDescription self
  = (ghcjs_dom_rtc_peer_connection_get_local_description
       (unRTCPeerConnection (toRTCPeerConnection self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"remoteDescription\"]"
        ghcjs_dom_rtc_peer_connection_get_remote_description ::
        JSRef RTCPeerConnection -> IO (JSRef RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
rtcPeerConnectionGetRemoteDescription ::
                                      (IsRTCPeerConnection self) =>
                                        self -> IO (Maybe RTCSessionDescription)
rtcPeerConnectionGetRemoteDescription self
  = (ghcjs_dom_rtc_peer_connection_get_remote_description
       (unRTCPeerConnection (toRTCPeerConnection self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"signalingState\"]"
        ghcjs_dom_rtc_peer_connection_get_signaling_state ::
        JSRef RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.signalingState Mozilla webkitRTCPeerConnection.signalingState documentation> 
rtcPeerConnectionGetSignalingState ::
                                   (IsRTCPeerConnection self, FromJSString result) =>
                                     self -> IO result
rtcPeerConnectionGetSignalingState self
  = fromJSString <$>
      (ghcjs_dom_rtc_peer_connection_get_signaling_state
         (unRTCPeerConnection (toRTCPeerConnection self)))
 
foreign import javascript unsafe "$1[\"iceGatheringState\"]"
        ghcjs_dom_rtc_peer_connection_get_ice_gathering_state ::
        JSRef RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceGatheringState Mozilla webkitRTCPeerConnection.iceGatheringState documentation> 
rtcPeerConnectionGetIceGatheringState ::
                                      (IsRTCPeerConnection self, FromJSString result) =>
                                        self -> IO result
rtcPeerConnectionGetIceGatheringState self
  = fromJSString <$>
      (ghcjs_dom_rtc_peer_connection_get_ice_gathering_state
         (unRTCPeerConnection (toRTCPeerConnection self)))
 
foreign import javascript unsafe "$1[\"iceConnectionState\"]"
        ghcjs_dom_rtc_peer_connection_get_ice_connection_state ::
        JSRef RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceConnectionState Mozilla webkitRTCPeerConnection.iceConnectionState documentation> 
rtcPeerConnectionGetIceConnectionState ::
                                       (IsRTCPeerConnection self, FromJSString result) =>
                                         self -> IO result
rtcPeerConnectionGetIceConnectionState self
  = fromJSString <$>
      (ghcjs_dom_rtc_peer_connection_get_ice_connection_state
         (unRTCPeerConnection (toRTCPeerConnection self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onnegotiationneeded Mozilla webkitRTCPeerConnection.onnegotiationneeded documentation> 
rtcPeerConnectionOnnegotiationneeded ::
                                     (IsRTCPeerConnection self) =>
                                       Signal self (EventM UIEvent self ())
rtcPeerConnectionOnnegotiationneeded
  = (connect "negotiationneeded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onicecandidate Mozilla webkitRTCPeerConnection.onicecandidate documentation> 
rtcPeerConnectionOnicecandidate ::
                                (IsRTCPeerConnection self) => Signal self (EventM UIEvent self ())
rtcPeerConnectionOnicecandidate = (connect "icecandidate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onsignalingstatechange Mozilla webkitRTCPeerConnection.onsignalingstatechange documentation> 
rtcPeerConnectionOnsignalingstatechange ::
                                        (IsRTCPeerConnection self) =>
                                          Signal self (EventM UIEvent self ())
rtcPeerConnectionOnsignalingstatechange
  = (connect "signalingstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onaddstream Mozilla webkitRTCPeerConnection.onaddstream documentation> 
rtcPeerConnectionOnaddstream ::
                             (IsRTCPeerConnection self) => Signal self (EventM UIEvent self ())
rtcPeerConnectionOnaddstream = (connect "addstream")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onremovestream Mozilla webkitRTCPeerConnection.onremovestream documentation> 
rtcPeerConnectionOnremovestream ::
                                (IsRTCPeerConnection self) => Signal self (EventM UIEvent self ())
rtcPeerConnectionOnremovestream = (connect "removestream")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.oniceconnectionstatechange Mozilla webkitRTCPeerConnection.oniceconnectionstatechange documentation> 
rtcPeerConnectionOniceconnectionstatechange ::
                                            (IsRTCPeerConnection self) =>
                                              Signal self (EventM UIEvent self ())
rtcPeerConnectionOniceconnectionstatechange
  = (connect "iceconnectionstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.ondatachannel Mozilla webkitRTCPeerConnection.ondatachannel documentation> 
rtcPeerConnectionOndatachannel ::
                               (IsRTCPeerConnection self) => Signal self (EventM UIEvent self ())
rtcPeerConnectionOndatachannel = (connect "datachannel")
#else
module GHCJS.DOM.RTCPeerConnection (
  ) where
#endif
