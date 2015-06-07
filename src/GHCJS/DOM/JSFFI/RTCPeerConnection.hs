{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, GHCForeignImportPrim,
             UnboxedTuples, MagicHash, UnliftedFFITypes, LambdaCase #-}
module GHCJS.DOM.JSFFI.RTCPeerConnection (
    module Generated
  , js_createOffer
  , createOffer'
  , createOffer
  , js_createAnswer
  , createAnswer'
  , createAnswer
  , js_setLocalDescription
  , setLocalDescription'
  , setLocalDescription
  , js_setRemoteDescription
  , setRemoteDescription'
  , setRemoteDescription
) where

import GHC.Base (IO(..))
import GHC.Prim (RealWorld, State#, ByteArray#)

import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Prim (JSRef(..))
import GHCJS.Foreign (jsNull)
import GHCJS.Marshal (fromJSRef)
import GHCJS.Marshal.Pure (pToJSRef, pFromJSRef)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.DOMError (throwDOMErrorException)
import GHCJS.DOM.JSFFI.Generated.Geolocation as Generated hiding (js_getCurrentPosition, getCurrentPosition)

foreign import javascript interruptible
    "$1[\"createOffer\"](function(d) { $c(true, d); }, function(e) { $c(false, e); }, $2);" js_createOffer ::
    JSRef RTCPeerConnection -> JSRef Dictionary -> State# RealWorld -> (# State# RealWorld, Bool, ByteArray# #)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#createOffer Mozilla webkitRTCPeerConnection.createOffer documentation>
createOffer' :: MonadIO m => RTCPeerConnection -> Maybe Dictionary -> m (Either DOMError RTCSessionDescription)
createOffer' self offerOptions = liftIO . IO $ \s# ->
    case js_createOffer (unRTCPeerConnection self) (maybe jsNull unDictionary offerOptions) s# of
        (# s2#, False, error #) -> (# s2#, Left  (DOMError              (JSRef error)) #)
        (# s2#, True,  d     #) -> (# s2#, Right (RTCSessionDescription (JSRef d    )) #)

createOffer :: MonadIO m => RTCPeerConnection -> Maybe Dictionary -> m RTCSessionDescription
createOffer self offerOptions = createOffer' self offerOptions >>= either throwDOMErrorException return

foreign import javascript interruptible
    "$1[\"createAnswer\"](function(d) { $c(true, d); }, function(e) { $c(false, e); }, $2);" js_createAnswer ::
    JSRef RTCPeerConnection -> JSRef Dictionary -> JSRef Dictionary -> State# RealWorld -> (# State# RealWorld, Bool, ByteArray# #)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#createAnswer Mozilla webkitRTCPeerConnection.createAnswer documentation>
createAnswer' :: MonadIO m => RTCPeerConnection -> Maybe Dictionary -> m (Either DOMError RTCSessionDescription)
createAnswer' self answerOptions = liftIO . IO $ \s# ->
    case js_createOffer (unRTCPeerConnection self) (maybe jsNull unDictionary answerOptions) s# of
        (# s2#, False, error #) -> (# s2#, Left  (DOMError              (JSRef error)) #)
        (# s2#, True,  d     #) -> (# s2#, Right (RTCSessionDescription (JSRef d    )) #)

createAnswer :: MonadIO m => RTCPeerConnection -> Maybe Dictionary -> m RTCSessionDescription
createAnswer self answerOptions = createAnswer' self answerOptions >>= either throwDOMErrorException return

foreign import javascript interruptible
    "$1[\"setLocalDescription\"]($2, function() { $c(null); }, function(e) { $c(e); });" js_setLocalDescription ::
    JSRef RTCPeerConnection -> JSRef RTCSessionDescription -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#setLocalDescription Mozilla webkitRTCPeerConnection.setLocalDescription documentation>
setLocalDescription' :: MonadIO m => RTCPeerConnection -> RTCSessionDescription -> m (Maybe DOMError)
setLocalDescription' self description = liftIO $
    js_setLocalDescription (unRTCPeerConnection self) (pToJSRef description) >>= fromJSRef

setLocalDescription :: MonadIO m => RTCPeerConnection -> RTCSessionDescription -> m ()
setLocalDescription self description = setLocalDescription' self description >>= maybe (return ()) throwDOMErrorException

foreign import javascript interruptible
    "$1[\"setRemoteDescription\"]($2, function() { $c(null); }, function(e) { $c(e); });" js_setRemoteDescription ::
    JSRef RTCPeerConnection -> JSRef RTCSessionDescription -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#setRemoteDescription Mozilla webkitRTCPeerConnection.setRemoteDescription documentation>
setRemoteDescription' :: MonadIO m => RTCPeerConnection -> RTCSessionDescription -> m (Maybe DOMError)
setRemoteDescription' self description = liftIO $
    js_setRemoteDescription (unRTCPeerConnection self) (pToJSRef description) >>= fromJSRef

setRemoteDescription :: MonadIO m => RTCPeerConnection -> RTCSessionDescription -> m ()
setRemoteDescription self description = setRemoteDescription' self description >>= maybe (return ())throwDOMErrorException

foreign import javascript interruptible
    "$1[\"addIceCandidate\"]($2, function() { $c(null); }, function(e) { $c(e); });" js_addIceCandidate ::
    JSRef RTCPeerConnection -> JSRef RTCIceCandidate -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#addIceCandidate Mozilla webkitRTCPeerConnection.addIceCandidate documentation>
addIceCandidate' :: MonadIO m => RTCPeerConnection -> RTCIceCandidate -> m (Maybe DOMError)
addIceCandidate' self candidate = liftIO $
    js_addIceCandidate (unRTCPeerConnection self) (pToJSRef candidate) >>= fromJSRef

addIceCandidate :: MonadIO m => RTCPeerConnection -> RTCIceCandidate -> m ()
addIceCandidate self candidate = addIceCandidate' self candidate >>= maybe (return ()) throwDOMErrorException

foreign import javascript interruptible
    "$1[\"getStats\"]($2, function(s) { $c(true, s); }, function(e) { $c(false, e); });" js_getStats ::
    JSRef RTCPeerConnection -> JSRef MediaStreamTrack -> State# RealWorld -> (# State# RealWorld, Bool, ByteArray# #)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection#getStats Mozilla webkitRTCPeerConnection.getStats documentation>
getStats' :: (MonadIO m, IsMediaStreamTrack selector) => RTCPeerConnection -> Maybe selector -> m (Either DOMError RTCStatsReport)
getStats' self selector = liftIO . IO $ \s# ->
    case js_getStats (unRTCPeerConnection self) (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) selector) s# of
        (# s2#, False, error #) -> (# s2#, Left  (DOMError       (JSRef error)) #)
        (# s2#, True,  stats #) -> (# s2#, Right (RTCStatsReport (JSRef stats)) #)

getStats :: (MonadIO m, IsMediaStreamTrack selector) => RTCPeerConnection -> Maybe selector -> m RTCStatsReport
getStats self selector = getStats' self selector >>= either throwDOMErrorException return

