{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCPeerConnection
       (js_getSenders, getSenders, getSenders_, js_getReceivers,
        getReceivers, getReceivers_, js_getTransceivers, getTransceivers,
        getTransceivers_, js_addTrack, addTrack, addTrack_, js_removeTrack,
        removeTrack, js_addTransceiverTrack, addTransceiverTrack,
        addTransceiverTrack_, js_addTransceiver, addTransceiver,
        addTransceiver_, js_getLocalStreams, getLocalStreams,
        getLocalStreams_, js_getRemoteStreams, getRemoteStreams,
        getRemoteStreams_, js_getStreamById, getStreamById, getStreamById_,
        js_addStream, addStream, js_removeStream, removeStream,
        js_createOffer, createOffer, createOffer_, js_createAnswer,
        createAnswer, createAnswer_, js_setLocalDescription,
        setLocalDescription, js_setRemoteDescription, setRemoteDescription,
        js_addIceCandidate, addIceCandidate, js_getConfiguration,
        getConfiguration, getConfiguration_, js_setConfiguration,
        setConfiguration, js_getStats, getStats, getStats_,
        js_createDataChannel, createDataChannel, createDataChannel_,
        js_close, close, js_getLocalDescription, getLocalDescription,
        js_getCurrentLocalDescription, getCurrentLocalDescription,
        js_getPendingLocalDescription, getPendingLocalDescription,
        js_getRemoteDescription, getRemoteDescription,
        js_getCurrentRemoteDescription, getCurrentRemoteDescription,
        js_getPendingRemoteDescription, getPendingRemoteDescription,
        js_getSignalingState, getSignalingState, js_getIceGatheringState,
        getIceGatheringState, js_getIceConnectionState,
        getIceConnectionState, negotiationNeeded, iceCandidate,
        signalingStateChange, track, iceConnectionStateChange,
        icegatheringstatechange, dataChannel, addStreamEvent,
        RTCPeerConnection(..), gTypeRTCPeerConnection)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"getSenders\"]()"
        js_getSenders :: RTCPeerConnection -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getSenders Mozilla webkitRTCPeerConnection.getSenders documentation> 
getSenders :: (MonadIO m) => RTCPeerConnection -> m [RTCRtpSender]
getSenders self
  = liftIO ((js_getSenders self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getSenders Mozilla webkitRTCPeerConnection.getSenders documentation> 
getSenders_ :: (MonadIO m) => RTCPeerConnection -> m ()
getSenders_ self = liftIO (void (js_getSenders self))
 
foreign import javascript unsafe "$1[\"getReceivers\"]()"
        js_getReceivers :: RTCPeerConnection -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getReceivers Mozilla webkitRTCPeerConnection.getReceivers documentation> 
getReceivers ::
             (MonadIO m) => RTCPeerConnection -> m [RTCRtpReceiver]
getReceivers self
  = liftIO ((js_getReceivers self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getReceivers Mozilla webkitRTCPeerConnection.getReceivers documentation> 
getReceivers_ :: (MonadIO m) => RTCPeerConnection -> m ()
getReceivers_ self = liftIO (void (js_getReceivers self))
 
foreign import javascript unsafe "$1[\"getTransceivers\"]()"
        js_getTransceivers :: RTCPeerConnection -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getTransceivers Mozilla webkitRTCPeerConnection.getTransceivers documentation> 
getTransceivers ::
                (MonadIO m) => RTCPeerConnection -> m [RTCRtpTransceiver]
getTransceivers self
  = liftIO ((js_getTransceivers self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getTransceivers Mozilla webkitRTCPeerConnection.getTransceivers documentation> 
getTransceivers_ :: (MonadIO m) => RTCPeerConnection -> m ()
getTransceivers_ self = liftIO (void (js_getTransceivers self))
 
foreign import javascript unsafe "$1[\"addTrack\"]($2, $3)"
        js_addTrack ::
        RTCPeerConnection -> MediaStreamTrack -> JSVal -> IO RTCRtpSender

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTrack Mozilla webkitRTCPeerConnection.addTrack documentation> 
addTrack ::
         (MonadIO m) =>
           RTCPeerConnection ->
             MediaStreamTrack -> [MediaStream] -> m RTCRtpSender
addTrack self track streams
  = liftIO
      (toJSVal streams >>= \ streams' -> js_addTrack self track streams')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTrack Mozilla webkitRTCPeerConnection.addTrack documentation> 
addTrack_ ::
          (MonadIO m) =>
            RTCPeerConnection -> MediaStreamTrack -> [MediaStream] -> m ()
addTrack_ self track streams
  = liftIO
      (void
         (toJSVal streams >>=
            \ streams' -> js_addTrack self track streams'))
 
foreign import javascript unsafe "$1[\"removeTrack\"]($2)"
        js_removeTrack :: RTCPeerConnection -> RTCRtpSender -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeTrack Mozilla webkitRTCPeerConnection.removeTrack documentation> 
removeTrack ::
            (MonadIO m) => RTCPeerConnection -> RTCRtpSender -> m ()
removeTrack self sender = liftIO (js_removeTrack self sender)
 
foreign import javascript unsafe "$1[\"addTransceiver\"]($2, $3)"
        js_addTransceiverTrack ::
        RTCPeerConnection ->
          MediaStreamTrack ->
            Optional RTCRtpTransceiverInit -> IO RTCRtpTransceiver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTransceiver Mozilla webkitRTCPeerConnection.addTransceiver documentation> 
addTransceiverTrack ::
                    (MonadIO m) =>
                      RTCPeerConnection ->
                        MediaStreamTrack ->
                          Maybe RTCRtpTransceiverInit -> m RTCRtpTransceiver
addTransceiverTrack self track init
  = liftIO (js_addTransceiverTrack self track (maybeToOptional init))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTransceiver Mozilla webkitRTCPeerConnection.addTransceiver documentation> 
addTransceiverTrack_ ::
                     (MonadIO m) =>
                       RTCPeerConnection ->
                         MediaStreamTrack -> Maybe RTCRtpTransceiverInit -> m ()
addTransceiverTrack_ self track init
  = liftIO
      (void (js_addTransceiverTrack self track (maybeToOptional init)))
 
foreign import javascript unsafe "$1[\"addTransceiver\"]($2, $3)"
        js_addTransceiver ::
        RTCPeerConnection ->
          JSString -> Optional RTCRtpTransceiverInit -> IO RTCRtpTransceiver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTransceiver Mozilla webkitRTCPeerConnection.addTransceiver documentation> 
addTransceiver ::
               (MonadIO m, ToJSString kind) =>
                 RTCPeerConnection ->
                   kind -> Maybe RTCRtpTransceiverInit -> m RTCRtpTransceiver
addTransceiver self kind init
  = liftIO
      (js_addTransceiver self (toJSString kind) (maybeToOptional init))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addTransceiver Mozilla webkitRTCPeerConnection.addTransceiver documentation> 
addTransceiver_ ::
                (MonadIO m, ToJSString kind) =>
                  RTCPeerConnection -> kind -> Maybe RTCRtpTransceiverInit -> m ()
addTransceiver_ self kind init
  = liftIO
      (void
         (js_addTransceiver self (toJSString kind) (maybeToOptional init)))
 
foreign import javascript unsafe "$1[\"getLocalStreams\"]()"
        js_getLocalStreams :: RTCPeerConnection -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getLocalStreams Mozilla webkitRTCPeerConnection.getLocalStreams documentation> 
getLocalStreams ::
                (MonadIO m) => RTCPeerConnection -> m [MediaStream]
getLocalStreams self
  = liftIO ((js_getLocalStreams self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getLocalStreams Mozilla webkitRTCPeerConnection.getLocalStreams documentation> 
getLocalStreams_ :: (MonadIO m) => RTCPeerConnection -> m ()
getLocalStreams_ self = liftIO (void (js_getLocalStreams self))
 
foreign import javascript unsafe "$1[\"getRemoteStreams\"]()"
        js_getRemoteStreams :: RTCPeerConnection -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getRemoteStreams Mozilla webkitRTCPeerConnection.getRemoteStreams documentation> 
getRemoteStreams ::
                 (MonadIO m) => RTCPeerConnection -> m [MediaStream]
getRemoteStreams self
  = liftIO ((js_getRemoteStreams self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getRemoteStreams Mozilla webkitRTCPeerConnection.getRemoteStreams documentation> 
getRemoteStreams_ :: (MonadIO m) => RTCPeerConnection -> m ()
getRemoteStreams_ self = liftIO (void (js_getRemoteStreams self))
 
foreign import javascript unsafe "$1[\"getStreamById\"]($2)"
        js_getStreamById :: RTCPeerConnection -> JSString -> IO MediaStream

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamById ::
              (MonadIO m, ToJSString streamId) =>
                RTCPeerConnection -> streamId -> m MediaStream
getStreamById self streamId
  = liftIO (js_getStreamById self (toJSString streamId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStreamById Mozilla webkitRTCPeerConnection.getStreamById documentation> 
getStreamById_ ::
               (MonadIO m, ToJSString streamId) =>
                 RTCPeerConnection -> streamId -> m ()
getStreamById_ self streamId
  = liftIO (void (js_getStreamById self (toJSString streamId)))
 
foreign import javascript unsafe "$1[\"addStream\"]($2)"
        js_addStream :: RTCPeerConnection -> MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addStream Mozilla webkitRTCPeerConnection.addStream documentation> 
addStream ::
          (MonadIO m) => RTCPeerConnection -> MediaStream -> m ()
addStream self stream = liftIO (js_addStream self stream)
 
foreign import javascript unsafe "$1[\"removeStream\"]($2)"
        js_removeStream :: RTCPeerConnection -> MediaStream -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.removeStream Mozilla webkitRTCPeerConnection.removeStream documentation> 
removeStream ::
             (MonadIO m) => RTCPeerConnection -> MediaStream -> m ()
removeStream self stream = liftIO (js_removeStream self stream)
 
foreign import javascript interruptible
        "$1[\"createOffer\"]($2).then($c);" js_createOffer ::
        RTCPeerConnection ->
          Optional RTCOfferOptions -> IO RTCSessionDescriptionInit

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createOffer Mozilla webkitRTCPeerConnection.createOffer documentation> 
createOffer ::
            (MonadIO m) =>
              RTCPeerConnection ->
                Maybe RTCOfferOptions -> m RTCSessionDescriptionInit
createOffer self offerOptions
  = liftIO (js_createOffer self (maybeToOptional offerOptions))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createOffer Mozilla webkitRTCPeerConnection.createOffer documentation> 
createOffer_ ::
             (MonadIO m) => RTCPeerConnection -> Maybe RTCOfferOptions -> m ()
createOffer_ self offerOptions
  = liftIO
      (void (js_createOffer self (maybeToOptional offerOptions)))
 
foreign import javascript interruptible
        "$1[\"createAnswer\"]($2).then($c);" js_createAnswer ::
        RTCPeerConnection ->
          Optional RTCAnswerOptions -> IO RTCSessionDescriptionInit

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation> 
createAnswer ::
             (MonadIO m) =>
               RTCPeerConnection ->
                 Maybe RTCAnswerOptions -> m RTCSessionDescriptionInit
createAnswer self answerOptions
  = liftIO (js_createAnswer self (maybeToOptional answerOptions))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation> 
createAnswer_ ::
              (MonadIO m) => RTCPeerConnection -> Maybe RTCAnswerOptions -> m ()
createAnswer_ self answerOptions
  = liftIO
      (void (js_createAnswer self (maybeToOptional answerOptions)))
 
foreign import javascript interruptible
        "$1[\"setLocalDescription\"]($2).\nthen($c);"
        js_setLocalDescription ::
        RTCPeerConnection -> RTCSessionDescription -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setLocalDescription Mozilla webkitRTCPeerConnection.setLocalDescription documentation> 
setLocalDescription ::
                    (MonadIO m) => RTCPeerConnection -> RTCSessionDescription -> m ()
setLocalDescription self description
  = liftIO (js_setLocalDescription self description)
 
foreign import javascript interruptible
        "$1[\"setRemoteDescription\"]($2).\nthen($c);"
        js_setRemoteDescription ::
        RTCPeerConnection -> RTCSessionDescription -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setRemoteDescription Mozilla webkitRTCPeerConnection.setRemoteDescription documentation> 
setRemoteDescription ::
                     (MonadIO m) => RTCPeerConnection -> RTCSessionDescription -> m ()
setRemoteDescription self description
  = liftIO (js_setRemoteDescription self description)
 
foreign import javascript interruptible
        "$1[\"addIceCandidate\"]($2).\nthen($c);" js_addIceCandidate ::
        RTCPeerConnection -> RTCIceCandidate -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.addIceCandidate Mozilla webkitRTCPeerConnection.addIceCandidate documentation> 
addIceCandidate ::
                (MonadIO m) => RTCPeerConnection -> RTCIceCandidate -> m ()
addIceCandidate self candidate
  = liftIO (js_addIceCandidate self candidate)
 
foreign import javascript unsafe "$1[\"getConfiguration\"]()"
        js_getConfiguration :: RTCPeerConnection -> IO RTCConfiguration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfiguration ::
                 (MonadIO m) => RTCPeerConnection -> m RTCConfiguration
getConfiguration self = liftIO (js_getConfiguration self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getConfiguration Mozilla webkitRTCPeerConnection.getConfiguration documentation> 
getConfiguration_ :: (MonadIO m) => RTCPeerConnection -> m ()
getConfiguration_ self = liftIO (void (js_getConfiguration self))
 
foreign import javascript unsafe "$1[\"setConfiguration\"]($2)"
        js_setConfiguration ::
        RTCPeerConnection -> RTCConfiguration -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.setConfiguration Mozilla webkitRTCPeerConnection.setConfiguration documentation> 
setConfiguration ::
                 (MonadIO m) => RTCPeerConnection -> RTCConfiguration -> m ()
setConfiguration self configuration
  = liftIO (js_setConfiguration self configuration)
 
foreign import javascript interruptible
        "$1[\"getStats\"]($2).then($c);" js_getStats ::
        RTCPeerConnection -> Optional MediaStreamTrack -> IO RTCStatsReport

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStats Mozilla webkitRTCPeerConnection.getStats documentation> 
getStats ::
         (MonadIO m) =>
           RTCPeerConnection -> Maybe MediaStreamTrack -> m RTCStatsReport
getStats self selector
  = liftIO (js_getStats self (maybeToOptional selector))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.getStats Mozilla webkitRTCPeerConnection.getStats documentation> 
getStats_ ::
          (MonadIO m) => RTCPeerConnection -> Maybe MediaStreamTrack -> m ()
getStats_ self selector
  = liftIO (void (js_getStats self (maybeToOptional selector)))
 
foreign import javascript unsafe
        "$1[\"createDataChannel\"]($2, $3)" js_createDataChannel ::
        RTCPeerConnection ->
          Optional JSString ->
            Optional RTCDataChannelInit -> IO RTCDataChannel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannel ::
                  (MonadIO m, ToJSString label) =>
                    RTCPeerConnection ->
                      Maybe label -> Maybe RTCDataChannelInit -> m RTCDataChannel
createDataChannel self label options
  = liftIO
      (js_createDataChannel self (toOptionalJSString label)
         (maybeToOptional options))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.createDataChannel Mozilla webkitRTCPeerConnection.createDataChannel documentation> 
createDataChannel_ ::
                   (MonadIO m, ToJSString label) =>
                     RTCPeerConnection ->
                       Maybe label -> Maybe RTCDataChannelInit -> m ()
createDataChannel_ self label options
  = liftIO
      (void
         (js_createDataChannel self (toOptionalJSString label)
            (maybeToOptional options)))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        RTCPeerConnection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.close Mozilla webkitRTCPeerConnection.close documentation> 
close :: (MonadIO m) => RTCPeerConnection -> m ()
close self = liftIO (js_close self)
 
foreign import javascript unsafe "$1[\"localDescription\"]"
        js_getLocalDescription ::
        RTCPeerConnection -> IO RTCSessionDescription

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.localDescription Mozilla webkitRTCPeerConnection.localDescription documentation> 
getLocalDescription ::
                    (MonadIO m) => RTCPeerConnection -> m RTCSessionDescription
getLocalDescription self = liftIO (js_getLocalDescription self)
 
foreign import javascript unsafe "$1[\"currentLocalDescription\"]"
        js_getCurrentLocalDescription ::
        RTCPeerConnection -> IO RTCSessionDescription

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.currentLocalDescription Mozilla webkitRTCPeerConnection.currentLocalDescription documentation> 
getCurrentLocalDescription ::
                           (MonadIO m) => RTCPeerConnection -> m RTCSessionDescription
getCurrentLocalDescription self
  = liftIO (js_getCurrentLocalDescription self)
 
foreign import javascript unsafe "$1[\"pendingLocalDescription\"]"
        js_getPendingLocalDescription ::
        RTCPeerConnection -> IO RTCSessionDescription

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.pendingLocalDescription Mozilla webkitRTCPeerConnection.pendingLocalDescription documentation> 
getPendingLocalDescription ::
                           (MonadIO m) => RTCPeerConnection -> m RTCSessionDescription
getPendingLocalDescription self
  = liftIO (js_getPendingLocalDescription self)
 
foreign import javascript unsafe "$1[\"remoteDescription\"]"
        js_getRemoteDescription ::
        RTCPeerConnection -> IO RTCSessionDescription

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.remoteDescription Mozilla webkitRTCPeerConnection.remoteDescription documentation> 
getRemoteDescription ::
                     (MonadIO m) => RTCPeerConnection -> m RTCSessionDescription
getRemoteDescription self = liftIO (js_getRemoteDescription self)
 
foreign import javascript unsafe "$1[\"currentRemoteDescription\"]"
        js_getCurrentRemoteDescription ::
        RTCPeerConnection -> IO RTCSessionDescription

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.currentRemoteDescription Mozilla webkitRTCPeerConnection.currentRemoteDescription documentation> 
getCurrentRemoteDescription ::
                            (MonadIO m) => RTCPeerConnection -> m RTCSessionDescription
getCurrentRemoteDescription self
  = liftIO (js_getCurrentRemoteDescription self)
 
foreign import javascript unsafe "$1[\"pendingRemoteDescription\"]"
        js_getPendingRemoteDescription ::
        RTCPeerConnection -> IO RTCSessionDescription

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.pendingRemoteDescription Mozilla webkitRTCPeerConnection.pendingRemoteDescription documentation> 
getPendingRemoteDescription ::
                            (MonadIO m) => RTCPeerConnection -> m RTCSessionDescription
getPendingRemoteDescription self
  = liftIO (js_getPendingRemoteDescription self)
 
foreign import javascript unsafe "$1[\"signalingState\"]"
        js_getSignalingState :: RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.signalingState Mozilla webkitRTCPeerConnection.signalingState documentation> 
getSignalingState ::
                  (MonadIO m, FromJSString result) => RTCPeerConnection -> m result
getSignalingState self
  = liftIO (fromJSString <$> (js_getSignalingState self))
 
foreign import javascript unsafe "$1[\"iceGatheringState\"]"
        js_getIceGatheringState :: RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceGatheringState Mozilla webkitRTCPeerConnection.iceGatheringState documentation> 
getIceGatheringState ::
                     (MonadIO m, FromJSString result) => RTCPeerConnection -> m result
getIceGatheringState self
  = liftIO (fromJSString <$> (js_getIceGatheringState self))
 
foreign import javascript unsafe "$1[\"iceConnectionState\"]"
        js_getIceConnectionState :: RTCPeerConnection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.iceConnectionState Mozilla webkitRTCPeerConnection.iceConnectionState documentation> 
getIceConnectionState ::
                      (MonadIO m, FromJSString result) => RTCPeerConnection -> m result
getIceConnectionState self
  = liftIO (fromJSString <$> (js_getIceConnectionState self))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.ontrack Mozilla webkitRTCPeerConnection.ontrack documentation> 
track :: EventName RTCPeerConnection ontrack
track = unsafeEventName (toJSString "track")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.oniceconnectionstatechange Mozilla webkitRTCPeerConnection.oniceconnectionstatechange documentation> 
iceConnectionStateChange :: EventName RTCPeerConnection Event
iceConnectionStateChange
  = unsafeEventName (toJSString "iceconnectionstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onicegatheringstatechange Mozilla webkitRTCPeerConnection.onicegatheringstatechange documentation> 
icegatheringstatechange ::
                          EventName RTCPeerConnection onicegatheringstatechange
icegatheringstatechange
  = unsafeEventName (toJSString "icegatheringstatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.ondatachannel Mozilla webkitRTCPeerConnection.ondatachannel documentation> 
dataChannel :: EventName RTCPeerConnection Event
dataChannel = unsafeEventName (toJSString "datachannel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitRTCPeerConnection.onaddstream Mozilla webkitRTCPeerConnection.onaddstream documentation> 
addStreamEvent :: EventName RTCPeerConnection Event
addStreamEvent = unsafeEventName (toJSString "addstream")