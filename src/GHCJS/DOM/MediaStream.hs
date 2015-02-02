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
        ghcjs_dom_media_stream_dispatch_event, mediaStreamDispatchEvent,
        ghcjs_dom_media_stream_get_id, mediaStreamGetId,
        ghcjs_dom_media_stream_get_active, mediaStreamGetActive,
        mediaStreamOnactive, mediaStreamOninactive, mediaStreamOnaddtrack,
        mediaStreamOnremovetrack, MediaStream, IsMediaStream,
        castToMediaStream, gTypeMediaStream, toMediaStream)
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

 
foreign import javascript unsafe
        "new window[\"webkitMediaStream\"]()" ghcjs_dom_media_stream_new ::
        IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
mediaStreamNew :: IO MediaStream
mediaStreamNew = ghcjs_dom_media_stream_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe
        "new window[\"webkitMediaStream\"]($1)" ghcjs_dom_media_stream_new'
        :: JSRef MediaStream -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
mediaStreamNew' ::
                (IsMediaStream stream) => Maybe stream -> IO MediaStream
mediaStreamNew' stream
  = ghcjs_dom_media_stream_new'
      (maybe jsNull (unMediaStream . toMediaStream) stream)
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe
        "new window[\"webkitMediaStream\"]($1)"
        ghcjs_dom_media_stream_new'' ::
        JSRef [Maybe tracks] -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
mediaStreamNew'' ::
                 (IsMediaStreamTrack tracks) => [Maybe tracks] -> IO MediaStream
mediaStreamNew'' tracks
  = toJSRef tracks >>=
      \ tracks' -> ghcjs_dom_media_stream_new'' tracks'
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"getAudioTracks\"]()"
        ghcjs_dom_media_stream_get_audio_tracks ::
        JSRef MediaStream -> IO (JSRef [Maybe MediaStreamTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.audioTracks Mozilla webkitMediaStream.audioTracks documentation> 
mediaStreamGetAudioTracks ::
                          (IsMediaStream self) => self -> IO [Maybe MediaStreamTrack]
mediaStreamGetAudioTracks self
  = (ghcjs_dom_media_stream_get_audio_tracks
       (unMediaStream (toMediaStream self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"getVideoTracks\"]()"
        ghcjs_dom_media_stream_get_video_tracks ::
        JSRef MediaStream -> IO (JSRef [Maybe MediaStreamTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.videoTracks Mozilla webkitMediaStream.videoTracks documentation> 
mediaStreamGetVideoTracks ::
                          (IsMediaStream self) => self -> IO [Maybe MediaStreamTrack]
mediaStreamGetVideoTracks self
  = (ghcjs_dom_media_stream_get_video_tracks
       (unMediaStream (toMediaStream self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"getTracks\"]()"
        ghcjs_dom_media_stream_get_tracks ::
        JSRef MediaStream -> IO (JSRef [Maybe MediaStreamTrack])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.tracks Mozilla webkitMediaStream.tracks documentation> 
mediaStreamGetTracks ::
                     (IsMediaStream self) => self -> IO [Maybe MediaStreamTrack]
mediaStreamGetTracks self
  = (ghcjs_dom_media_stream_get_tracks
       (unMediaStream (toMediaStream self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"addTrack\"]($2)"
        ghcjs_dom_media_stream_add_track ::
        JSRef MediaStream -> JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.addTrack Mozilla webkitMediaStream.addTrack documentation> 
mediaStreamAddTrack ::
                    (IsMediaStream self, IsMediaStreamTrack track) =>
                      self -> Maybe track -> IO ()
mediaStreamAddTrack self track
  = ghcjs_dom_media_stream_add_track
      (unMediaStream (toMediaStream self))
      (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) track)
 
foreign import javascript unsafe "$1[\"removeTrack\"]($2)"
        ghcjs_dom_media_stream_remove_track ::
        JSRef MediaStream -> JSRef MediaStreamTrack -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.removeTrack Mozilla webkitMediaStream.removeTrack documentation> 
mediaStreamRemoveTrack ::
                       (IsMediaStream self, IsMediaStreamTrack track) =>
                         self -> Maybe track -> IO ()
mediaStreamRemoveTrack self track
  = ghcjs_dom_media_stream_remove_track
      (unMediaStream (toMediaStream self))
      (maybe jsNull (unMediaStreamTrack . toMediaStreamTrack) track)
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        ghcjs_dom_media_stream_get_track_by_id ::
        JSRef MediaStream -> JSString -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.trackById Mozilla webkitMediaStream.trackById documentation> 
mediaStreamGetTrackById ::
                        (IsMediaStream self, ToJSString trackId) =>
                          self -> trackId -> IO (Maybe MediaStreamTrack)
mediaStreamGetTrackById self trackId
  = (ghcjs_dom_media_stream_get_track_by_id
       (unMediaStream (toMediaStream self))
       (toJSString trackId))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"clone\"]()"
        ghcjs_dom_media_stream_clone ::
        JSRef MediaStream -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.clone Mozilla webkitMediaStream.clone documentation> 
mediaStreamClone ::
                 (IsMediaStream self) => self -> IO (Maybe MediaStream)
mediaStreamClone self
  = (ghcjs_dom_media_stream_clone
       (unMediaStream (toMediaStream self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_media_stream_dispatch_event ::
        JSRef MediaStream -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.dispatchEvent Mozilla webkitMediaStream.dispatchEvent documentation> 
mediaStreamDispatchEvent ::
                         (IsMediaStream self, IsEvent event) =>
                           self -> Maybe event -> IO Bool
mediaStreamDispatchEvent self event
  = ghcjs_dom_media_stream_dispatch_event
      (unMediaStream (toMediaStream self))
      (maybe jsNull (unEvent . toEvent) event)
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_media_stream_get_id :: JSRef MediaStream -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.id Mozilla webkitMediaStream.id documentation> 
mediaStreamGetId ::
                 (IsMediaStream self, FromJSString result) => self -> IO result
mediaStreamGetId self
  = fromJSString <$>
      (ghcjs_dom_media_stream_get_id
         (unMediaStream (toMediaStream self)))
 
foreign import javascript unsafe "($1[\"active\"] ? 1 : 0)"
        ghcjs_dom_media_stream_get_active :: JSRef MediaStream -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.active Mozilla webkitMediaStream.active documentation> 
mediaStreamGetActive :: (IsMediaStream self) => self -> IO Bool
mediaStreamGetActive self
  = ghcjs_dom_media_stream_get_active
      (unMediaStream (toMediaStream self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.onactive Mozilla webkitMediaStream.onactive documentation> 
mediaStreamOnactive ::
                    (IsMediaStream self) => Signal self (EventM UIEvent self ())
mediaStreamOnactive = (connect "active")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.oninactive Mozilla webkitMediaStream.oninactive documentation> 
mediaStreamOninactive ::
                      (IsMediaStream self) => Signal self (EventM UIEvent self ())
mediaStreamOninactive = (connect "inactive")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.onaddtrack Mozilla webkitMediaStream.onaddtrack documentation> 
mediaStreamOnaddtrack ::
                      (IsMediaStream self) => Signal self (EventM UIEvent self ())
mediaStreamOnaddtrack = (connect "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.onremovetrack Mozilla webkitMediaStream.onremovetrack documentation> 
mediaStreamOnremovetrack ::
                         (IsMediaStream self) => Signal self (EventM UIEvent self ())
mediaStreamOnremovetrack = (connect "removetrack")
#else
module GHCJS.DOM.MediaStream (
  ) where
#endif
