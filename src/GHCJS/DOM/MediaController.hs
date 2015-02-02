{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaController
       (ghcjs_dom_media_controller_new, mediaControllerNew,
        ghcjs_dom_media_controller_play, mediaControllerPlay,
        ghcjs_dom_media_controller_pause, mediaControllerPause,
        ghcjs_dom_media_controller_unpause, mediaControllerUnpause,
        ghcjs_dom_media_controller_dispatch_event,
        mediaControllerDispatchEvent,
        ghcjs_dom_media_controller_get_buffered,
        mediaControllerGetBuffered,
        ghcjs_dom_media_controller_get_seekable,
        mediaControllerGetSeekable,
        ghcjs_dom_media_controller_get_duration,
        mediaControllerGetDuration,
        ghcjs_dom_media_controller_set_current_time,
        mediaControllerSetCurrentTime,
        ghcjs_dom_media_controller_get_current_time,
        mediaControllerGetCurrentTime,
        ghcjs_dom_media_controller_get_paused, mediaControllerGetPaused,
        ghcjs_dom_media_controller_get_played, mediaControllerGetPlayed,
        ghcjs_dom_media_controller_get_playback_state,
        mediaControllerGetPlaybackState,
        ghcjs_dom_media_controller_set_default_playback_rate,
        mediaControllerSetDefaultPlaybackRate,
        ghcjs_dom_media_controller_get_default_playback_rate,
        mediaControllerGetDefaultPlaybackRate,
        ghcjs_dom_media_controller_set_playback_rate,
        mediaControllerSetPlaybackRate,
        ghcjs_dom_media_controller_get_playback_rate,
        mediaControllerGetPlaybackRate,
        ghcjs_dom_media_controller_set_volume, mediaControllerSetVolume,
        ghcjs_dom_media_controller_get_volume, mediaControllerGetVolume,
        ghcjs_dom_media_controller_set_muted, mediaControllerSetMuted,
        ghcjs_dom_media_controller_get_muted, mediaControllerGetMuted,
        MediaController, IsMediaController, castToMediaController,
        gTypeMediaController, toMediaController)
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
        "new window[\"MediaController\"]()" ghcjs_dom_media_controller_new
        :: IO (JSRef MediaController)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController Mozilla MediaController documentation> 
mediaControllerNew :: IO MediaController
mediaControllerNew
  = ghcjs_dom_media_controller_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"play\"]()"
        ghcjs_dom_media_controller_play :: JSRef MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.play Mozilla MediaController.play documentation> 
mediaControllerPlay :: (IsMediaController self) => self -> IO ()
mediaControllerPlay self
  = ghcjs_dom_media_controller_play
      (unMediaController (toMediaController self))
 
foreign import javascript unsafe "$1[\"pause\"]()"
        ghcjs_dom_media_controller_pause :: JSRef MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.pause Mozilla MediaController.pause documentation> 
mediaControllerPause :: (IsMediaController self) => self -> IO ()
mediaControllerPause self
  = ghcjs_dom_media_controller_pause
      (unMediaController (toMediaController self))
 
foreign import javascript unsafe "$1[\"unpause\"]()"
        ghcjs_dom_media_controller_unpause ::
        JSRef MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.unpause Mozilla MediaController.unpause documentation> 
mediaControllerUnpause :: (IsMediaController self) => self -> IO ()
mediaControllerUnpause self
  = ghcjs_dom_media_controller_unpause
      (unMediaController (toMediaController self))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_media_controller_dispatch_event ::
        JSRef MediaController -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.dispatchEvent Mozilla MediaController.dispatchEvent documentation> 
mediaControllerDispatchEvent ::
                             (IsMediaController self, IsEvent evt) =>
                               self -> Maybe evt -> IO Bool
mediaControllerDispatchEvent self evt
  = ghcjs_dom_media_controller_dispatch_event
      (unMediaController (toMediaController self))
      (maybe jsNull (unEvent . toEvent) evt)
 
foreign import javascript unsafe "$1[\"buffered\"]"
        ghcjs_dom_media_controller_get_buffered ::
        JSRef MediaController -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.buffered Mozilla MediaController.buffered documentation> 
mediaControllerGetBuffered ::
                           (IsMediaController self) => self -> IO (Maybe TimeRanges)
mediaControllerGetBuffered self
  = (ghcjs_dom_media_controller_get_buffered
       (unMediaController (toMediaController self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"seekable\"]"
        ghcjs_dom_media_controller_get_seekable ::
        JSRef MediaController -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.seekable Mozilla MediaController.seekable documentation> 
mediaControllerGetSeekable ::
                           (IsMediaController self) => self -> IO (Maybe TimeRanges)
mediaControllerGetSeekable self
  = (ghcjs_dom_media_controller_get_seekable
       (unMediaController (toMediaController self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_media_controller_get_duration ::
        JSRef MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.duration Mozilla MediaController.duration documentation> 
mediaControllerGetDuration ::
                           (IsMediaController self) => self -> IO Double
mediaControllerGetDuration self
  = ghcjs_dom_media_controller_get_duration
      (unMediaController (toMediaController self))
 
foreign import javascript unsafe "$1[\"currentTime\"] = $2;"
        ghcjs_dom_media_controller_set_current_time ::
        JSRef MediaController -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.currentTime Mozilla MediaController.currentTime documentation> 
mediaControllerSetCurrentTime ::
                              (IsMediaController self) => self -> Double -> IO ()
mediaControllerSetCurrentTime self val
  = ghcjs_dom_media_controller_set_current_time
      (unMediaController (toMediaController self))
      val
 
foreign import javascript unsafe "$1[\"currentTime\"]"
        ghcjs_dom_media_controller_get_current_time ::
        JSRef MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.currentTime Mozilla MediaController.currentTime documentation> 
mediaControllerGetCurrentTime ::
                              (IsMediaController self) => self -> IO Double
mediaControllerGetCurrentTime self
  = ghcjs_dom_media_controller_get_current_time
      (unMediaController (toMediaController self))
 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        ghcjs_dom_media_controller_get_paused ::
        JSRef MediaController -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.paused Mozilla MediaController.paused documentation> 
mediaControllerGetPaused ::
                         (IsMediaController self) => self -> IO Bool
mediaControllerGetPaused self
  = ghcjs_dom_media_controller_get_paused
      (unMediaController (toMediaController self))
 
foreign import javascript unsafe "$1[\"played\"]"
        ghcjs_dom_media_controller_get_played ::
        JSRef MediaController -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.played Mozilla MediaController.played documentation> 
mediaControllerGetPlayed ::
                         (IsMediaController self) => self -> IO (Maybe TimeRanges)
mediaControllerGetPlayed self
  = (ghcjs_dom_media_controller_get_played
       (unMediaController (toMediaController self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        ghcjs_dom_media_controller_get_playback_state ::
        JSRef MediaController -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.playbackState Mozilla MediaController.playbackState documentation> 
mediaControllerGetPlaybackState ::
                                (IsMediaController self, FromJSString result) => self -> IO result
mediaControllerGetPlaybackState self
  = fromJSString <$>
      (ghcjs_dom_media_controller_get_playback_state
         (unMediaController (toMediaController self)))
 
foreign import javascript unsafe
        "$1[\"defaultPlaybackRate\"] = $2;"
        ghcjs_dom_media_controller_set_default_playback_rate ::
        JSRef MediaController -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.defaultPlaybackRate Mozilla MediaController.defaultPlaybackRate documentation> 
mediaControllerSetDefaultPlaybackRate ::
                                      (IsMediaController self) => self -> Double -> IO ()
mediaControllerSetDefaultPlaybackRate self val
  = ghcjs_dom_media_controller_set_default_playback_rate
      (unMediaController (toMediaController self))
      val
 
foreign import javascript unsafe "$1[\"defaultPlaybackRate\"]"
        ghcjs_dom_media_controller_get_default_playback_rate ::
        JSRef MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.defaultPlaybackRate Mozilla MediaController.defaultPlaybackRate documentation> 
mediaControllerGetDefaultPlaybackRate ::
                                      (IsMediaController self) => self -> IO Double
mediaControllerGetDefaultPlaybackRate self
  = ghcjs_dom_media_controller_get_default_playback_rate
      (unMediaController (toMediaController self))
 
foreign import javascript unsafe "$1[\"playbackRate\"] = $2;"
        ghcjs_dom_media_controller_set_playback_rate ::
        JSRef MediaController -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.playbackRate Mozilla MediaController.playbackRate documentation> 
mediaControllerSetPlaybackRate ::
                               (IsMediaController self) => self -> Double -> IO ()
mediaControllerSetPlaybackRate self val
  = ghcjs_dom_media_controller_set_playback_rate
      (unMediaController (toMediaController self))
      val
 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        ghcjs_dom_media_controller_get_playback_rate ::
        JSRef MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.playbackRate Mozilla MediaController.playbackRate documentation> 
mediaControllerGetPlaybackRate ::
                               (IsMediaController self) => self -> IO Double
mediaControllerGetPlaybackRate self
  = ghcjs_dom_media_controller_get_playback_rate
      (unMediaController (toMediaController self))
 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        ghcjs_dom_media_controller_set_volume ::
        JSRef MediaController -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.volume Mozilla MediaController.volume documentation> 
mediaControllerSetVolume ::
                         (IsMediaController self) => self -> Double -> IO ()
mediaControllerSetVolume self val
  = ghcjs_dom_media_controller_set_volume
      (unMediaController (toMediaController self))
      val
 
foreign import javascript unsafe "$1[\"volume\"]"
        ghcjs_dom_media_controller_get_volume ::
        JSRef MediaController -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.volume Mozilla MediaController.volume documentation> 
mediaControllerGetVolume ::
                         (IsMediaController self) => self -> IO Double
mediaControllerGetVolume self
  = ghcjs_dom_media_controller_get_volume
      (unMediaController (toMediaController self))
 
foreign import javascript unsafe "$1[\"muted\"] = $2;"
        ghcjs_dom_media_controller_set_muted ::
        JSRef MediaController -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.muted Mozilla MediaController.muted documentation> 
mediaControllerSetMuted ::
                        (IsMediaController self) => self -> Bool -> IO ()
mediaControllerSetMuted self val
  = ghcjs_dom_media_controller_set_muted
      (unMediaController (toMediaController self))
      val
 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        ghcjs_dom_media_controller_get_muted ::
        JSRef MediaController -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.muted Mozilla MediaController.muted documentation> 
mediaControllerGetMuted ::
                        (IsMediaController self) => self -> IO Bool
mediaControllerGetMuted self
  = ghcjs_dom_media_controller_get_muted
      (unMediaController (toMediaController self))
#else
module GHCJS.DOM.MediaController (
  ) where
#endif
