{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCPeerConnection
       (js_newRTCPeerConnection, newRTCPeerConnection, js_createOffer,
        createOffer, js_createAnswer, createAnswer, js_setLocalDescription,
        setLocalDescription, js_setRemoteDescription, setRemoteDescription,
        js_updateIce, updateIce, js_addIceCandidate, addIceCandidate,
        js_getLocalStreams, getLocalStreams, getLocalStreams_,
        js_getRemoteStreams, getRemoteStreams, getRemoteStreams_,
        js_getStreamById, getStreamById, getStreamById_,
        getStreamByIdUnchecked, js_getConfiguration, getConfiguration,
        getConfiguration_, getConfigurationUnchecked, js_addStream,
        addStream, js_removeStream, removeStream, js_getStats, getStats,
        js_createDataChannel, createDataChannel, createDataChannel_,
        createDataChannelUnchecked, js_createDTMFSender, createDTMFSender,
        createDTMFSender_, createDTMFSenderUnchecked, js_close, close,
        js_getLocalDescription, getLocalDescription,
        getLocalDescriptionUnchecked, js_getRemoteDescription,
        getRemoteDescription, getRemoteDescriptionUnchecked,
        js_getSignalingState, getSignalingState, js_getIceGatheringState,
        getIceGatheringState, js_getIceConnectionState,
        getIceConnectionState, negotiationNeeded, iceCandidate,
        signalingStateChange, addStreamEvent, removeStreamEvent,
        iceConnectionStateChange, dataChannel, RTCPeerConnection(..),
        gTypeRTCPeerConnection)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "new window[\"webkitRTCPeerConnection\"]($1)"
        js_newRTCPeerConnection ::
        Nullable Dictionary -> IO RTCPeerConnection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection Mozilla webkitRTCPeerConnection documentation> 
newRTCPeerConnection ::
                     (MonadIO m, IsDictionary rtcConfiguration) =>
                       Maybe rtcConfiguration -> m RTCPeerConnection
newRTCPeerConnection rtcConfiguration
  = liftIO
      (js_newRTCPeerConnection
         (maybeToNullable (fmap toDictionary rtcConfiguration)))
 
foreign import javascript unsafe "$1[\"createOffer\"]($2, $3, $4)"
        js_createOffer ::
        RTCPeerConnection ->
          Nullable RTCSessionDescriptionCallback ->
            Nullable RTCPeerConnectionErrorCallback ->
              Nullable Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createOffer Mozilla webkitRTCPeerConnection.createOffer documentation> 
createOffer ::
            (MonadIO m, IsDictionary offerOptions) =>
              RTCPeerConnection ->
                Maybe RTCSessionDescriptionCallback ->
                  Maybe RTCPeerConnectionErrorCallback -> Maybe offerOptions -> m ()
createOffer self successCallback failureCallback offerOptions
  = liftIO
      (js_createOffer (self) (maybeToNullable successCallback)
         (maybeToNullable failureCallback)
         (maybeToNullable (fmap toDictionary offerOptions)))
 
foreign import javascript unsafe "$1[\"createAnswer\"]($2, $3, $4)"
        js_createAnswer ::
        RTCPeerConnection ->
          Nullable RTCSessionDescriptionCallback ->
            Nullable RTCPeerConnectionErrorCallback ->
              Nullable Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation> 
createAnswer ::
             (MonadIO m, IsDictionary answerOptions) =>
               RTCPeerConnection ->
                 Maybe RTCSessionDescriptionCallback ->
                   Maybe RTCPeerConnectionErrorCallback -> Maybe answerOptions -> m ()
createAnswer self successCallback failureCallback answerOptions
  = liftIO
      (js_createAnswer (self) (maybeToNullable successCallback)
         (maybeToNullable failureCallback)
         (maybeToNullable (fmap toDictionary answerOptions)))
 
foreign import javascript unsafe
        "$1[\"setLocalDescription\"]($2,\n$3, $4)" js_setLocalDescription
        ::
        RTCPeerConnection ->
          Nullable RTCSessionDescription ->
            Nullable VoidCallback ->
              Nullable RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setLocalDescription Mozilla webkitRTCPeerConnection.setLocalDescription documentation> 
setLocalDescription ::
                    (MonadIO m) =>
                      RTCPeerConnection ->
                        Maybe RTCSessionDescription ->
                          Maybe VoidCallback -> Maybe RTCPeerConnectionErrorCallback -> m ()
setLocalDescription self description successCallback
  failureCallback
  = liftIO
      (js_setLocalDescription (self) (maybeToNullable description)
         (maybeToNullable successCallback)
         (maybeToNullable failureCallback))
 
foreign import javascript unsafe
        "$1[\"setRemoteDescription\"]($2,\n$3, $4)" js_setRemoteDescription
        ::
        RTCPeerConnection ->
          Nullable RTCSessionDescription ->
            Nullable VoidCallback ->
              Nullable RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setRemoteDescription Mozilla webkitRTCPeerConnection.setRemoteDescription documentation> 
setRemoteDescription ::
                     (MonadIO m) =>
                       RTCPeerConnection ->
                         Maybe RTCSessionDescription ->
                           Maybe VoidCallback -> Maybe RTCPeerConnectionErrorCallback -> m ()
setRemoteDescription self description successCallback
  failureCallback
  = liftIO
      (js_setRemoteDescription (self) (maybeToNullable description)
         (maybeToNullable successCallback)
         (maybeToNullable failureCallback))
 
foreign import javascript unsafe "$1[\"updateIce\"]($2)"
        js_updateIce :: RTCPeerConnection -> Nullable Dictionary -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.updateIce Mozilla webkitRTCPeerConnection.updateIce documentation> 
updateIce ::
          (MonadIO m, IsDictionary configuration) =>
            RTCPeerConnection -> Maybe configuration -> m ()
updateIce self configuration
  = liftIO
      (js_updateIce (self)
         (maybeToNullable (fmap toDictionary configuration)))
 
foreign import javascript unsafe
        "$1[\"addIceCandidate\"]($2, $3,\n$4)" js_addIceCandidate ::
        RTCPeerConnection ->
          Nullable RTCIceCandidate ->
            Nullable VoidCallback ->
              Nullable RTCPeerConnectionErrorCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addIceCandidate Mozilla webkitRTCPeerConnection.addIceCandidate documentation> 
addIceCandidate ::
                (MonadIO m) =>
                  RTCPeerConnection ->
                    Maybe RTCIceCandidate ->
                      Maybe VoidCallback -> Maybe RTCPeerConnectionErrorCallback -> m ()
addIceCandidate self candidate successCallback failureCallback
  = liftIO
      (js_addIceCandidate (self) (maybeToNullable candidate)
         (maybeToNullable successCallback)
         (maybeToNullable failureCallback))
 
foreign import javascript unsafe "$1[\"getLocalStreams\"]()"
        js_getLocalStreams :: RTCPeerConnection -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getLocalStreams Mozilla webkitRTCPeerConnection.getLocalStreams documentation> 
getLocalStreams ::
                (MonadIO m) => RTCPeerConnection -> m [Maybe MediaStream]
getLocalStreams self
  = liftIO ((js_getLocalStreams (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getLocalStreams Mozilla webkitRTCPeerConnection.getLocalStreams documentation> 
getLocalStreams_ :: (MonadIO m) => RTCPeerConnection -> m ()
getLocalStreams_ self = liftIO (void (js_getLocalStreams (self)))
 
foreign import javascript unsafe "$1[\"getRemoteStreams\"]()"
        js_getRemoteStreams :: RTCPeerConnection -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getRemoteStreams Mozilla webkitRTCPeerConnection.getRemoteStreams documentation> 
getRemoteStreams ::
                 (MonadIO m) => RTCPeerConnection -> m [Maybe MediaStream]
getRemoteStreams self
  = liftIO ((js_getRemoteStreams (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getRemoteStreams Mozilla webkitRTCPeerConnection.getRemoteStreams documentation> 
getRemoteStreams_ :: (MonadIO m) => RTCPeerConnection -> m ()
getRemoteStreams_ self = liftIO (void (js_getRemoteStreams (self)))
 
foreign import javascript unsafe "$1[\"getStreamById\"]($2)"
        js_getStreamById ::
        RTCPeerConnection -> JSString -> IO (Nullable MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamById ::
              (MonadIO m, ToJSString streamId) =>
                RTCPeerConnection -> streamId -> m (Maybe MediaStream)
getStreamById self streamId
  = liftIO
      (nullableToMaybe <$>
         (js_getStreamById (self) (toJSString streamId)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamById_ ::
               (MonadIO m, ToJSString streamId) =>
                 RTCPeerConnection -> streamId -> m ()
getStreamById_ self streamId
  = liftIO (void (js_getStreamById (self) (toJSString streamId)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamByIdUnchecked ::
                       (MonadIO m, ToJSString streamId) =>
                         RTCPeerConnection -> streamId -> m MediaStream
getStreamByIdUnchecked self streamId
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getStreamById (self) (toJSString streamId)))
 
foreign import javascript unsafe "$1[\"getConfiguration\"]()"
        js_getConfiguration ::
        RTCPeerConnection -> IO (Nullable RTCConfiguration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfiguration ::
                 (MonadIO m) => RTCPeerConnection -> m (Maybe RTCConfiguration)
getConfiguration self
  = liftIO (nullableToMaybe <$> (js_getConfiguration (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfiguration_ :: (MonadIO m) => RTCPeerConnection -> m ()
getConfiguration_ self = liftIO (void (js_getConfiguration (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfigurationUnchecked ::
                          (MonadIO m) => RTCPeerConnection -> m RTCConfiguration
getConfigurationUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getConfiguration (self)))
 
foreign import javascript unsafe "$1[\"addStream\"]($2)"
        js_addStream :: RTCPeerConnection -> Nullable MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addStream Mozilla webkitRTCPeerConnection.addStream documentation> 
addStream ::
          (MonadIO m) => RTCPeerConnection -> Maybe MediaStream -> m ()
addStream self stream
  = liftIO (js_addStream (self) (maybeToNullable stream))
 
foreign import javascript unsafe "$1[\"removeStream\"]($2)"
        js_removeStream ::
        RTCPeerConnection -> Nullable MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeStream Mozilla webkitRTCPeerConnection.removeStream documentation> 
removeStream ::
             (MonadIO m) => RTCPeerConnection -> Maybe MediaStream -> m ()
removeStream self stream
  = liftIO (js_removeStream (self) (maybeToNullable stream))
 
foreign import javascript unsafe "$1[\"getStats\"]($2, $3, $4)"
        js_getStats ::
        RTCPeerConnection ->
          Nullable RTCStatsCallback ->
            Nullable RTCPeerConnectionErrorCallback ->
              Nullable MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStats Mozilla webkitRTCPeerConnection.getStats documentation> 
getStats ::
         (MonadIO m, IsMediaStreamTrack selector) =>
           RTCPeerConnection ->
             Maybe RTCStatsCallback ->
               Maybe RTCPeerConnectionErrorCallback -> Maybe selector -> m ()
getStats self successCallback failureCallback selector
  = liftIO
      (js_getStats (self) (maybeToNullable successCallback)
         (maybeToNullable failureCallback)
         (maybeToNullable (fmap toMediaStreamTrack selector)))
 
foreign import javascript unsafe
        "$1[\"createDataChannel\"]($2, $3)" js_createDataChannel ::
        RTCPeerConnection ->
          Nullable JSString ->
            Nullable Dictionary -> IO (Nullable RTCDataChannel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannel ::
                  (MonadIO m, ToJSString label, IsDictionary options) =>
                    RTCPeerConnection ->
                      Maybe label -> Maybe options -> m (Maybe RTCDataChannel)
createDataChannel self label options
  = liftIO
      (nullableToMaybe <$>
         (js_createDataChannel (self) (toMaybeJSString label)
            (maybeToNullable (fmap toDictionary options))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannel_ ::
                   (MonadIO m, ToJSString label, IsDictionary options) =>
                     RTCPeerConnection -> Maybe label -> Maybe options -> m ()
createDataChannel_ self label options
  = liftIO
      (void
         (js_createDataChannel (self) (toMaybeJSString label)
            (maybeToNullable (fmap toDictionary options))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannelUnchecked ::
                           (MonadIO m, ToJSString label, IsDictionary options) =>
                             RTCPeerConnection ->
                               Maybe label -> Maybe options -> m RTCDataChannel
createDataChannelUnchecked self label options
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createDataChannel (self) (toMaybeJSString label)
            (maybeToNullable (fmap toDictionary options))))
 
foreign import javascript unsafe "$1[\"createDTMFSender\"]($2)"
        js_createDTMFSender ::
        RTCPeerConnection ->
          Nullable MediaStreamTrack -> IO (Nullable RTCDTMFSender)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDTMFSender Mozilla webkitRTCPeerConnection.createDTMFSender documentation> 
createDTMFSender ::
                 (MonadIO m, IsMediaStreamTrack track) =>
                   RTCPeerConnection -> Maybe track -> m (Maybe RTCDTMFSender)
createDTMFSender self track
  = liftIO
      (nullableToMaybe <$>
         (js_createDTMFSender (self)
            (maybeToNullable (fmap toMediaStreamTrack track))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDTMFSender Mozilla webkitRTCPeerConnection.createDTMFSender documentation> 
createDTMFSender_ ::
                  (MonadIO m, IsMediaStreamTrack track) =>
                    RTCPeerConnection -> Maybe track -> m ()
createDTMFSender_ self track
  = liftIO
      (void
         (js_createDTMFSender (self)
            (maybeToNullable (fmap toMediaStreamTrack track))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDTMFSender Mozilla webkitRTCPeerConnection.createDTMFSender documentation> 
createDTMFSenderUnchecked ::
                          (MonadIO m, IsMediaStreamTrack track) =>
                            RTCPeerConnection -> Maybe track -> m RTCDTMFSender
createDTMFSenderUnchecked self track
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createDTMFSender (self)
            (maybeToNullable (fmap toMediaStreamTrack track))))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        RTCPeerConnection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.close Mozilla webkitRTCPeerConnection.close documentation> 
close :: (MonadIO m) => RTCPeerConnection -> m ()
close self = liftIO (js_close (self))
 
foreign import javascript unsafe "$1[\"localDescription\"]"
        js_getLocalDescription ::
        RTCPeerConnection -> IO (Nullable RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
getLocalDescription ::
                    (MonadIO m) => RTCPeerConnection -> m (Maybe RTCSessionDescription)
getLocalDescription self
  = liftIO (nullableToMaybe <$> (js_getLocalDescription (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
getLocalDescriptionUnchecked ::
                             (MonadIO m) => RTCPeerConnection -> m RTCSessionDescription
getLocalDescriptionUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getLocalDescription (self)))
 
foreign import javascript unsafe "$1[\"remoteDescription\"]"
        js_getRemoteDescription ::
        RTCPeerConnection -> IO (Nullable RTCSessionDescription)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
getRemoteDescription ::
                     (MonadIO m) => RTCPeerConnection -> m (Maybe RTCSessionDescription)
getRemoteDescription self
  = liftIO (nullableToMaybe <$> (js_getRemoteDescription (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
getRemoteDescriptionUnchecked ::
                              (MonadIO m) => RTCPeerConnection -> m RTCSessionDescription
getRemoteDescriptionUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getRemoteDescription (self)))
 
foreign import javascript unsafe "$1[\"signalingState\"]"
        js_getSignalingState :: RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.signalingState Mozilla webkitRTCPeerConnection.signalingState documentation> 
getSignalingState ::
                  (MonadIO m, FromJSString result) => RTCPeerConnection -> m result
getSignalingState self
  = liftIO (fromJSString <$> (js_getSignalingState (self)))
 
foreign import javascript unsafe "$1[\"iceGatheringState\"]"
        js_getIceGatheringState :: RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceGatheringState Mozilla webkitRTCPeerConnection.iceGatheringState documentation> 
getIceGatheringState ::
                     (MonadIO m, FromJSString result) => RTCPeerConnection -> m result
getIceGatheringState self
  = liftIO (fromJSString <$> (js_getIceGatheringState (self)))
 
foreign import javascript unsafe "$1[\"iceConnectionState\"]"
        js_getIceConnectionState :: RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceConnectionState Mozilla webkitRTCPeerConnection.iceConnectionState documentation> 
getIceConnectionState ::
                      (MonadIO m, FromJSString result) => RTCPeerConnection -> m result
getIceConnectionState self
  = liftIO (fromJSString <$> (js_getIceConnectionState (self)))

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