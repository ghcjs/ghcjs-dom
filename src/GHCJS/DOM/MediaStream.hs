{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStream
       (js_newMediaStream, newMediaStream, js_newMediaStream',
        newMediaStream', js_newMediaStream'', newMediaStream'',
        js_getAudioTracks, getAudioTracks, js_getVideoTracks,
        getVideoTracks, js_getTracks, getTracks, js_addTrack, addTrack,
        js_removeTrack, removeTrack, js_getTrackById, getTrackById,
        js_clone, clone, js_getId, getId, js_getActive, getActive, active,
        inactive, addTrackEvent, removeTrackEvent, MediaStream,
        castToMediaStream, gTypeMediaStream)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "new window[\"webkitMediaStream\"]()" js_newMediaStream ::
        IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
newMediaStream :: (MonadIO m) => m MediaStream
newMediaStream = liftIO (js_newMediaStream >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"webkitMediaStream\"]($1)" js_newMediaStream' ::
        JSRef MediaStream -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
newMediaStream' ::
                (MonadIO m) => Maybe MediaStream -> m MediaStream
newMediaStream' stream
  = liftIO
      (js_newMediaStream' (maybe jsNull unMediaStream stream) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"webkitMediaStream\"]($1)" js_newMediaStream'' ::
        JSRef [Maybe tracks] -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
newMediaStream'' ::
                 (MonadIO m, IsMediaStreamTrack tracks) =>
                   [Maybe tracks] -> m MediaStream
newMediaStream'' tracks
  = liftIO
      (toJSRef tracks >>= \ tracks' -> js_newMediaStream'' tracks' >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getAudioTracks\"]()"
        js_getAudioTracks ::
        JSRef MediaStream -> IO (JSRef [Maybe MediaStreamTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getAudioTracks Mozilla webkitMediaStream.getAudioTracks documentation> 
getAudioTracks ::
               (MonadIO m) => MediaStream -> m [Maybe MediaStreamTrack]
getAudioTracks self
  = liftIO
      ((js_getAudioTracks (unMediaStream self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getVideoTracks\"]()"
        js_getVideoTracks ::
        JSRef MediaStream -> IO (JSRef [Maybe MediaStreamTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getVideoTracks Mozilla webkitMediaStream.getVideoTracks documentation> 
getVideoTracks ::
               (MonadIO m) => MediaStream -> m [Maybe MediaStreamTrack]
getVideoTracks self
  = liftIO
      ((js_getVideoTracks (unMediaStream self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getTracks\"]()" js_getTracks
        :: JSRef MediaStream -> IO (JSRef [Maybe MediaStreamTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getTracks Mozilla webkitMediaStream.getTracks documentation> 
getTracks ::
          (MonadIO m) => MediaStream -> m [Maybe MediaStreamTrack]
getTracks self
  = liftIO
      ((js_getTracks (unMediaStream self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"addTrack\"]($2)" js_addTrack
        :: JSRef MediaStream -> JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.addTrack Mozilla webkitMediaStream.addTrack documentation> 
addTrack ::
         (MonadIO m, IsMediaStreamTrack track) =>
           MediaStream -> Maybe track -> m ()
addTrack self track
  = liftIO
      (js_addTrack (unMediaStream self)
         (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) track))
 
foreign import javascript unsafe "$1[\"removeTrack\"]($2)"
        js_removeTrack ::
        JSRef MediaStream -> JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.removeTrack Mozilla webkitMediaStream.removeTrack documentation> 
removeTrack ::
            (MonadIO m, IsMediaStreamTrack track) =>
              MediaStream -> Maybe track -> m ()
removeTrack self track
  = liftIO
      (js_removeTrack (unMediaStream self)
         (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) track))
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        js_getTrackById ::
        JSRef MediaStream -> JSString -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getTrackById Mozilla webkitMediaStream.getTrackById documentation> 
getTrackById ::
             (MonadIO m, ToJSString trackId) =>
               MediaStream -> trackId -> m (Maybe MediaStreamTrack)
getTrackById self trackId
  = liftIO
      ((js_getTrackById (unMediaStream self) (toJSString trackId)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"clone\"]()" js_clone ::
        JSRef MediaStream -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.clone Mozilla webkitMediaStream.clone documentation> 
clone :: (MonadIO m) => MediaStream -> m (Maybe MediaStream)
clone self = liftIO ((js_clone (unMediaStream self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        JSRef MediaStream -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.id Mozilla webkitMediaStream.id documentation> 
getId ::
      (MonadIO m, FromJSString result) => MediaStream -> m result
getId self
  = liftIO (fromJSString <$> (js_getId (unMediaStream self)))
 
foreign import javascript unsafe "($1[\"active\"] ? 1 : 0)"
        js_getActive :: JSRef MediaStream -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.active Mozilla webkitMediaStream.active documentation> 
getActive :: (MonadIO m) => MediaStream -> m Bool
getActive self = liftIO (js_getActive (unMediaStream self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.onactive Mozilla webkitMediaStream.onactive documentation> 
active :: EventName MediaStream Event
active = unsafeEventName (toJSString "active")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.oninactive Mozilla webkitMediaStream.oninactive documentation> 
inactive :: EventName MediaStream Event
inactive = unsafeEventName (toJSString "inactive")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.onaddtrack Mozilla webkitMediaStream.onaddtrack documentation> 
addTrackEvent :: EventName MediaStream Event
addTrackEvent = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.onremovetrack Mozilla webkitMediaStream.onremovetrack documentation> 
removeTrackEvent :: EventName MediaStream Event
removeTrackEvent = unsafeEventName (toJSString "removetrack")
#else
module GHCJS.DOM.MediaStream (
  ) where
#endif
