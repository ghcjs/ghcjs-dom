{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCPeerConnection
       (js_newRTCPeerConnection, newRTCPeerConnection, js_createOffer,
        createOffer, js_createAnswer, createAnswer, js_setLocalDescription,
        setLocalDescription, js_setRemoteDescription, setRemoteDescription,
        js_updateIce, updateIce, js_addIceCandidate, addIceCandidate,
        js_getLocalStreams, getLocalStreams, js_getRemoteStreams,
        getRemoteStreams, js_getStreamById, getStreamById,
        js_getConfiguration, getConfiguration, js_addStream, addStream,
        js_removeStream, removeStream, js_getStats, getStats,
        js_createDataChannel, createDataChannel, js_createDTMFSender,
        createDTMFSender, js_close, close, js_getLocalDescription,
        getLocalDescription, js_getRemoteDescription, getRemoteDescription,
        js_getSignalingState, getSignalingState, js_getIceGatheringState,
        getIceGatheringState, js_getIceConnectionState,
        getIceConnectionState, negotiationNeeded, iceCandidate,
        signalingStateChange, addStreamEvent, removeStreamEvent,
        iceConnectionStateChange, dataChannel, RTCPeerConnection,
        castToRTCPeerConnection, gTypeRTCPeerConnection)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "new window[\"webkitRTCPeerConnection\"]($1)"
        js_newRTCPeerConnection ::
        JSRef Dictionary -> IO (JSRef RTCPeerConnection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection Mozilla webkitRTCPeerConnection documentation> 
newRTCPeerConnection ::
                     (MonadIO m, IsDictionary rtcConfiguration) =>
                       Maybe rtcConfiguration -> m RTCPeerConnection
newRTCPeerConnection rtcConfiguration
  = liftIO
      (js_newRTCPeerConnection
         (maybe jsNull (unDictionary . toDictionary) rtcConfiguration)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"createOffer\"]($2, $3, $4)"
        js_createOffer ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescriptionCallback ->
            JSRef RTCPeerConnectionErrorCallback -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createOffer Mozilla webkitRTCPeerConnection.createOffer documentation> 
createOffer ::
            (MonadIO m, IsDictionary offerOptions) =>
              RTCPeerConnection ->
                Maybe RTCSessionDescriptionCallback ->
                  Maybe RTCPeerConnectionErrorCallback -> Maybe offerOptions -> m ()
createOffer self successCallback failureCallback offerOptions
  = liftIO
      (js_createOffer (unRTCPeerConnection self)
         (maybe jsNull pToJSRef successCallback)
         (maybe jsNull pToJSRef failureCallback)
         (maybe jsNull (unDictionary . toDictionary) offerOptions))
 
foreign import javascript unsafe "$1[\"createAnswer\"]($2, $3, $4)"
        js_createAnswer ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescriptionCallback ->
            JSRef RTCPeerConnectionErrorCallback -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation> 
createAnswer ::
             (MonadIO m, IsDictionary answerOptions) =>
               RTCPeerConnection ->
                 Maybe RTCSessionDescriptionCallback ->
                   Maybe RTCPeerConnectionErrorCallback -> Maybe answerOptions -> m ()
createAnswer self successCallback failureCallback answerOptions
  = liftIO
      (js_createAnswer (unRTCPeerConnection self)
         (maybe jsNull pToJSRef successCallback)
         (maybe jsNull pToJSRef failureCallback)
         (maybe jsNull (unDictionary . toDictionary) answerOptions))
 
foreign import javascript unsafe
        "$1[\"setLocalDescription\"]($2,\n$3, $4)" js_setLocalDescription
        ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescription ->
            JSRef VoidCallback -> JSRef RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setLocalDescription Mozilla webkitRTCPeerConnection.setLocalDescription documentation> 
setLocalDescription ::
                    (MonadIO m) =>
                      RTCPeerConnection ->
                        Maybe RTCSessionDescription ->
                          Maybe VoidCallback -> Maybe RTCPeerConnectionErrorCallback -> m ()
setLocalDescription self description successCallback
  failureCallback
  = liftIO
      (js_setLocalDescription (unRTCPeerConnection self)
         (maybe jsNull pToJSRef description)
         (maybe jsNull pToJSRef successCallback)
         (maybe jsNull pToJSRef failureCallback))
 
foreign import javascript unsafe
        "$1[\"setRemoteDescription\"]($2,\n$3, $4)" js_setRemoteDescription
        ::
        JSRef RTCPeerConnection ->
          JSRef RTCSessionDescription ->
            JSRef VoidCallback -> JSRef RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setRemoteDescription Mozilla webkitRTCPeerConnection.setRemoteDescription documentation> 
setRemoteDescription ::
                     (MonadIO m) =>
                       RTCPeerConnection ->
                         Maybe RTCSessionDescription ->
                           Maybe VoidCallback -> Maybe RTCPeerConnectionErrorCallback -> m ()
setRemoteDescription self description successCallback
  failureCallback
  = liftIO
      (js_setRemoteDescription (unRTCPeerConnection self)
         (maybe jsNull pToJSRef description)
         (maybe jsNull pToJSRef successCallback)
         (maybe jsNull pToJSRef failureCallback))
 
foreign import javascript unsafe "$1[\"updateIce\"]($2)"
        js_updateIce ::
        JSRef RTCPeerConnection -> JSRef Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.updateIce Mozilla webkitRTCPeerConnection.updateIce documentation> 
updateIce ::
          (MonadIO m, IsDictionary configuration) =>
            RTCPeerConnection -> Maybe configuration -> m ()
updateIce self configuration
  = liftIO
      (js_updateIce (unRTCPeerConnection self)
         (maybe jsNull (unDictionary . toDictionary) configuration))
 
foreign import javascript unsafe
        "$1[\"addIceCandidate\"]($2, $3,\n$4)" js_addIceCandidate ::
        JSRef RTCPeerConnection ->
          JSRef RTCIceCandidate ->
            JSRef VoidCallback -> JSRef RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addIceCandidate Mozilla webkitRTCPeerConnection.addIceCandidate documentation> 
addIceCandidate ::
                (MonadIO m) =>
                  RTCPeerConnection ->
                    Maybe RTCIceCandidate ->
                      Maybe VoidCallback -> Maybe RTCPeerConnectionErrorCallback -> m ()
addIceCandidate self candidate successCallback failureCallback
  = liftIO
      (js_addIceCandidate (unRTCPeerConnection self)
         (maybe jsNull pToJSRef candidate)
         (maybe jsNull pToJSRef successCallback)
         (maybe jsNull pToJSRef failureCallback))
 
foreign import javascript unsafe "$1[\"getLocalStreams\"]()"
        js_getLocalStreams ::
        JSRef RTCPeerConnection -> IO (JSRef [Maybe MediaStream])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getLocalStreams Mozilla webkitRTCPeerConnection.getLocalStreams documentation> 
getLocalStreams ::
                (MonadIO m) => RTCPeerConnection -> m [Maybe MediaStream]
getLocalStreams self
  = liftIO
      ((js_getLocalStreams (unRTCPeerConnection self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getRemoteStreams\"]()"
        js_getRemoteStreams ::
        JSRef RTCPeerConnection -> IO (JSRef [Maybe MediaStream])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getRemoteStreams Mozilla webkitRTCPeerConnection.getRemoteStreams documentation> 
getRemoteStreams ::
                 (MonadIO m) => RTCPeerConnection -> m [Maybe MediaStream]
getRemoteStreams self
  = liftIO
      ((js_getRemoteStreams (unRTCPeerConnection self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getStreamById\"]($2)"
        js_getStreamById ::
        JSRef RTCPeerConnection -> JSString -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamById ::
              (MonadIO m, ToJSString streamId) =>
                RTCPeerConnection -> streamId -> m (Maybe MediaStream)
getStreamById self streamId
  = liftIO
      ((js_getStreamById (unRTCPeerConnection self)
          (toJSString streamId))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getConfiguration\"]()"
        js_getConfiguration ::
        JSRef RTCPeerConnection -> IO (JSRef RTCConfiguration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfiguration ::
                 (MonadIO m) => RTCPeerConnection -> m (Maybe RTCConfiguration)
getConfiguration self
  = liftIO
      ((js_getConfiguration (unRTCPeerConnection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"addStream\"]($2)"
        js_addStream ::
        JSRef RTCPeerConnection -> JSRef MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addStream Mozilla webkitRTCPeerConnection.addStream documentation> 
addStream ::
          (MonadIO m) => RTCPeerConnection -> Maybe MediaStream -> m ()
addStream self stream
  = liftIO
      (js_addStream (unRTCPeerConnection self)
         (maybe jsNull pToJSRef stream))
 
foreign import javascript unsafe "$1[\"removeStream\"]($2)"
        js_removeStream ::
        JSRef RTCPeerConnection -> JSRef MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeStream Mozilla webkitRTCPeerConnection.removeStream documentation> 
removeStream ::
             (MonadIO m) => RTCPeerConnection -> Maybe MediaStream -> m ()
removeStream self stream
  = liftIO
      (js_removeStream (unRTCPeerConnection self)
         (maybe jsNull pToJSRef stream))
 
foreign import javascript unsafe "$1[\"getStats\"]($2, $3, $4)"
        js_getStats ::
        JSRef RTCPeerConnection ->
          JSRef RTCStatsCallback ->
            JSRef RTCPeerConnectionErrorCallback ->
              JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStats Mozilla webkitRTCPeerConnection.getStats documentation> 
getStats ::
         (MonadIO m, IsMediaStreamTrack selector) =>
           RTCPeerConnection ->
             Maybe RTCStatsCallback ->
               Maybe RTCPeerConnectionErrorCallback -> Maybe selector -> m ()
getStats self successCallback failureCallback selector
  = liftIO
      (js_getStats (unRTCPeerConnection self)
         (maybe jsNull pToJSRef successCallback)
         (maybe jsNull pToJSRef failureCallback)
         (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) selector))
 
foreign import javascript unsafe
        "$1[\"createDataChannel\"]($2, $3)" js_createDataChannel ::
        JSRef RTCPeerConnection ->
          JSString -> JSRef Dictionary -> IO (JSRef RTCDataChannel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannel ::
                  (MonadIO m, ToJSString label, IsDictionary options) =>
                    RTCPeerConnection ->
                      label -> Maybe options -> m (Maybe RTCDataChannel)
createDataChannel self label options
  = liftIO
      ((js_createDataChannel (unRTCPeerConnection self)
          (toJSString label)
          (maybe jsNull (unDictionary . toDictionary) options))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createDTMFSender\"]($2)"
        js_createDTMFSender ::
        JSRef RTCPeerConnection ->
          JSRef MediaStreamTrack -> IO (JSRef RTCDTMFSender)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDTMFSender Mozilla webkitRTCPeerConnection.createDTMFSender documentation> 
createDTMFSender ::
                 (MonadIO m, IsMediaStreamTrack track) =>
                   RTCPeerConnection -> Maybe track -> m (Maybe RTCDTMFSender)
createDTMFSender self track
  = liftIO
      ((js_createDTMFSender (unRTCPeerConnection self)
          (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) track))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        JSRef RTCPeerConnection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.close Mozilla webkitRTCPeerConnection.close documentation> 
close :: (MonadIO m) => RTCPeerConnection -> m ()
close self = liftIO (js_close (unRTCPeerConnection self))
 
foreign import javascript unsafe "$1[\"localDescription\"]"
        js_getLocalDescription ::
        JSRef RTCPeerConnection -> IO (JSRef RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
getLocalDescription ::
                    (MonadIO m) => RTCPeerConnection -> m (Maybe RTCSessionDescription)
getLocalDescription self
  = liftIO
      ((js_getLocalDescription (unRTCPeerConnection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"remoteDescription\"]"
        js_getRemoteDescription ::
        JSRef RTCPeerConnection -> IO (JSRef RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
getRemoteDescription ::
                     (MonadIO m) => RTCPeerConnection -> m (Maybe RTCSessionDescription)
getRemoteDescription self
  = liftIO
      ((js_getRemoteDescription (unRTCPeerConnection self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"signalingState\"]"
        js_getSignalingState :: JSRef RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.signalingState Mozilla webkitRTCPeerConnection.signalingState documentation> 
getSignalingState ::
                  (MonadIO m, FromJSString result) => RTCPeerConnection -> m result
getSignalingState self
  = liftIO
      (fromJSString <$>
         (js_getSignalingState (unRTCPeerConnection self)))
 
foreign import javascript unsafe "$1[\"iceGatheringState\"]"
        js_getIceGatheringState :: JSRef RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceGatheringState Mozilla webkitRTCPeerConnection.iceGatheringState documentation> 
getIceGatheringState ::
                     (MonadIO m, FromJSString result) => RTCPeerConnection -> m result
getIceGatheringState self
  = liftIO
      (fromJSString <$>
         (js_getIceGatheringState (unRTCPeerConnection self)))
 
foreign import javascript unsafe "$1[\"iceConnectionState\"]"
        js_getIceConnectionState :: JSRef RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceConnectionState Mozilla webkitRTCPeerConnection.iceConnectionState documentation> 
getIceConnectionState ::
                      (MonadIO m, FromJSString result) => RTCPeerConnection -> m result
getIceConnectionState self
  = liftIO
      (fromJSString <$>
         (js_getIceConnectionState (unRTCPeerConnection self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onnegotiationneeded Mozilla webkitRTCPeerConnection.onnegotiationneeded documentation> 
negotiationNeeded :: EventName RTCPeerConnection Event
negotiationNeeded
  = unsafeEventName (toJSString "negotiationneeded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onicecandidate Mozilla webkitRTCPeerConnection.onicecandidate documentation> 
iceCandidate :: EventName RTCPeerConnection RTCIceCandidateEvent
iceCandidate = unsafeEventName (toJSString "icecandidate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onsignalingstatechange Mozilla webkitRTCPeerConnection.onsignalingstatechange documentation> 
signalingStateChange :: EventName RTCPeerConnection Event
signalingStateChange
  = unsafeEventName (toJSString "signalingstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onaddstream Mozilla webkitRTCPeerConnection.onaddstream documentation> 
addStreamEvent :: EventName RTCPeerConnection Event
addStreamEvent = unsafeEventName (toJSString "addstream")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onremovestream Mozilla webkitRTCPeerConnection.onremovestream documentation> 
removeStreamEvent :: EventName RTCPeerConnection Event
removeStreamEvent = unsafeEventName (toJSString "removestream")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.oniceconnectionstatechange Mozilla webkitRTCPeerConnection.oniceconnectionstatechange documentation> 
iceConnectionStateChange :: EventName RTCPeerConnection Event
iceConnectionStateChange
  = unsafeEventName (toJSString "iceconnectionstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.ondatachannel Mozilla webkitRTCPeerConnection.ondatachannel documentation> 
dataChannel :: EventName RTCPeerConnection Event
dataChannel = unsafeEventName (toJSString "datachannel")