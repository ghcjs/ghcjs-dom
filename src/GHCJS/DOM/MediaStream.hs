{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStream
       (ghcjs_dom_media_stream_new, mediaStreamNew,
        ghcjs_dom_media_stream_get_audio_tracks, mediaStreamGetAudioTracks,
        ghcjs_dom_media_stream_get_video_tracks, mediaStreamGetVideoTracks,
        ghcjs_dom_media_stream_get_tracks, mediaStreamGetTracks,
        ghcjs_dom_media_stream_add_track, mediaStreamAddTrack,
        ghcjs_dom_media_stream_remove_track, mediaStreamRemoveTrack,
        ghcjs_dom_media_stream_get_track_by_id, mediaStreamGetTrackById,
        ghcjs_dom_media_stream_clone, mediaStreamClone,
        ghcjs_dom_media_stream_get_id, mediaStreamGetId,
        ghcjs_dom_media_stream_get_active, mediaStreamGetActive,
        mediaStreamActive, mediaStreamInactive, mediaStreamAddTrackEvent,
        mediaStreamRemoveTrackEvent, MediaStream, IsMediaStream,
        castToMediaStream, gTypeMediaStream, toMediaStream)
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
        "new window[\"webkitMediaStream\"]()" ghcjs_dom_media_stream_new ::
        IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
mediaStreamNew :: (MonadIO m) => m MediaStream
mediaStreamNew
  = liftIO (ghcjs_dom_media_stream_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"webkitMediaStream\"]($1)" ghcjs_dom_media_stream_new'
        :: JSRef MediaStream -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
mediaStreamNew' ::
                (MonadIO m, IsMediaStream stream) => Maybe stream -> m MediaStream
mediaStreamNew' stream
  = liftIO
      (ghcjs_dom_media_stream_new'
         (maybe jsNull (unMediaStream . toMediaStream) stream)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"webkitMediaStream\"]($1)"
        ghcjs_dom_media_stream_new'' ::
        JSRef [Maybe tracks] -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
mediaStreamNew'' ::
                 (MonadIO m, IsMediaStreamTrack tracks) =>
                   [Maybe tracks] -> m MediaStream
mediaStreamNew'' tracks
  = liftIO
      (toJSRef tracks >>=
         \ tracks' -> ghcjs_dom_media_stream_new'' tracks'
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getAudioTracks\"]()"
        ghcjs_dom_media_stream_get_audio_tracks ::
        JSRef MediaStream -> IO (JSRef [Maybe MediaStreamTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.audioTracks Mozilla webkitMediaStream.audioTracks documentation> 
mediaStreamGetAudioTracks ::
                          (MonadIO m, IsMediaStream self) =>
                            self -> m [Maybe MediaStreamTrack]
mediaStreamGetAudioTracks self
  = liftIO
      ((ghcjs_dom_media_stream_get_audio_tracks
          (unMediaStream (toMediaStream self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getVideoTracks\"]()"
        ghcjs_dom_media_stream_get_video_tracks ::
        JSRef MediaStream -> IO (JSRef [Maybe MediaStreamTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.videoTracks Mozilla webkitMediaStream.videoTracks documentation> 
mediaStreamGetVideoTracks ::
                          (MonadIO m, IsMediaStream self) =>
                            self -> m [Maybe MediaStreamTrack]
mediaStreamGetVideoTracks self
  = liftIO
      ((ghcjs_dom_media_stream_get_video_tracks
          (unMediaStream (toMediaStream self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getTracks\"]()"
        ghcjs_dom_media_stream_get_tracks ::
        JSRef MediaStream -> IO (JSRef [Maybe MediaStreamTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.tracks Mozilla webkitMediaStream.tracks documentation> 
mediaStreamGetTracks ::
                     (MonadIO m, IsMediaStream self) =>
                       self -> m [Maybe MediaStreamTrack]
mediaStreamGetTracks self
  = liftIO
      ((ghcjs_dom_media_stream_get_tracks
          (unMediaStream (toMediaStream self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"addTrack\"]($2)"
        ghcjs_dom_media_stream_add_track ::
        JSRef MediaStream -> JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.addTrack Mozilla webkitMediaStream.addTrack documentation> 
mediaStreamAddTrack ::
                    (MonadIO m, IsMediaStream self, IsMediaStreamTrack track) =>
                      self -> Maybe track -> m ()
mediaStreamAddTrack self track
  = liftIO
      (ghcjs_dom_media_stream_add_track
         (unMediaStream (toMediaStream self))
         (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) track))
 
foreign import javascript unsafe "$1[\"removeTrack\"]($2)"
        ghcjs_dom_media_stream_remove_track ::
        JSRef MediaStream -> JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.removeTrack Mozilla webkitMediaStream.removeTrack documentation> 
mediaStreamRemoveTrack ::
                       (MonadIO m, IsMediaStream self, IsMediaStreamTrack track) =>
                         self -> Maybe track -> m ()
mediaStreamRemoveTrack self track
  = liftIO
      (ghcjs_dom_media_stream_remove_track
         (unMediaStream (toMediaStream self))
         (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) track))
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        ghcjs_dom_media_stream_get_track_by_id ::
        JSRef MediaStream -> JSString -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.trackById Mozilla webkitMediaStream.trackById documentation> 
mediaStreamGetTrackById ::
                        (MonadIO m, IsMediaStream self, ToJSString trackId) =>
                          self -> trackId -> m (Maybe MediaStreamTrack)
mediaStreamGetTrackById self trackId
  = liftIO
      ((ghcjs_dom_media_stream_get_track_by_id
          (unMediaStream (toMediaStream self))
          (toJSString trackId))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"clone\"]()"
        ghcjs_dom_media_stream_clone ::
        JSRef MediaStream -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.clone Mozilla webkitMediaStream.clone documentation> 
mediaStreamClone ::
                 (MonadIO m, IsMediaStream self) => self -> m (Maybe MediaStream)
mediaStreamClone self
  = liftIO
      ((ghcjs_dom_media_stream_clone
          (unMediaStream (toMediaStream self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_media_stream_get_id :: JSRef MediaStream -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.id Mozilla webkitMediaStream.id documentation> 
mediaStreamGetId ::
                 (MonadIO m, IsMediaStream self, FromJSString result) =>
                   self -> m result
mediaStreamGetId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_stream_get_id
            (unMediaStream (toMediaStream self))))
 
foreign import javascript unsafe "($1[\"active\"] ? 1 : 0)"
        ghcjs_dom_media_stream_get_active :: JSRef MediaStream -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.active Mozilla webkitMediaStream.active documentation> 
mediaStreamGetActive ::
                     (MonadIO m, IsMediaStream self) => self -> m Bool
mediaStreamGetActive self
  = liftIO
      (ghcjs_dom_media_stream_get_active
         (unMediaStream (toMediaStream self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.active Mozilla webkitMediaStream.active documentation> 
mediaStreamActive ::
                  (IsMediaStream self, IsEventTarget self) => EventName self Event
mediaStreamActive = unsafeEventName (toJSString "active")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.inactive Mozilla webkitMediaStream.inactive documentation> 
mediaStreamInactive ::
                    (IsMediaStream self, IsEventTarget self) => EventName self Event
mediaStreamInactive = unsafeEventName (toJSString "inactive")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.addTrackEvent Mozilla webkitMediaStream.addTrackEvent documentation> 
mediaStreamAddTrackEvent ::
                         (IsMediaStream self, IsEventTarget self) => EventName self Event
mediaStreamAddTrackEvent = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.removeTrackEvent Mozilla webkitMediaStream.removeTrackEvent documentation> 
mediaStreamRemoveTrackEvent ::
                            (IsMediaStream self, IsEventTarget self) => EventName self Event
mediaStreamRemoveTrackEvent
  = unsafeEventName (toJSString "removetrack")
#else
module GHCJS.DOM.MediaStream (
  ) where
#endif
