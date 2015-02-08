{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMediaElement
       (ghcjs_dom_html_media_element_load, htmlMediaElementLoad,
        ghcjs_dom_html_media_element_can_play_type,
        htmlMediaElementCanPlayType, ghcjs_dom_html_media_element_play,
        htmlMediaElementPlay, ghcjs_dom_html_media_element_pause,
        htmlMediaElementPause, ghcjs_dom_html_media_element_fast_seek,
        htmlMediaElementFastSeek,
        ghcjs_dom_html_media_element_webkit_generate_key_request,
        htmlMediaElementWebkitGenerateKeyRequest,
        ghcjs_dom_html_media_element_webkit_add_key,
        htmlMediaElementWebkitAddKey,
        ghcjs_dom_html_media_element_webkit_cancel_key_request,
        htmlMediaElementWebkitCancelKeyRequest,
        ghcjs_dom_html_media_element_webkit_set_media_keys,
        htmlMediaElementWebkitSetMediaKeys,
        ghcjs_dom_html_media_element_add_text_track,
        htmlMediaElementAddTextTrack,
        ghcjs_dom_html_media_element_webkit_show_playback_target_picker,
        htmlMediaElementWebkitShowPlaybackTargetPicker, cNETWORK_EMPTY,
        cNETWORK_IDLE, cNETWORK_LOADING, cNETWORK_NO_SOURCE, cHAVE_NOTHING,
        cHAVE_METADATA, cHAVE_CURRENT_DATA, cHAVE_FUTURE_DATA,
        cHAVE_ENOUGH_DATA, ghcjs_dom_html_media_element_get_error,
        htmlMediaElementGetError, ghcjs_dom_html_media_element_set_src,
        htmlMediaElementSetSrc, ghcjs_dom_html_media_element_get_src,
        htmlMediaElementGetSrc,
        ghcjs_dom_html_media_element_get_current_src,
        htmlMediaElementGetCurrentSrc,
        ghcjs_dom_html_media_element_get_network_state,
        htmlMediaElementGetNetworkState,
        ghcjs_dom_html_media_element_set_preload,
        htmlMediaElementSetPreload,
        ghcjs_dom_html_media_element_get_preload,
        htmlMediaElementGetPreload,
        ghcjs_dom_html_media_element_get_buffered,
        htmlMediaElementGetBuffered,
        ghcjs_dom_html_media_element_get_ready_state,
        htmlMediaElementGetReadyState,
        ghcjs_dom_html_media_element_get_seeking,
        htmlMediaElementGetSeeking,
        ghcjs_dom_html_media_element_set_current_time,
        htmlMediaElementSetCurrentTime,
        ghcjs_dom_html_media_element_get_current_time,
        htmlMediaElementGetCurrentTime,
        ghcjs_dom_html_media_element_get_duration,
        htmlMediaElementGetDuration,
        ghcjs_dom_html_media_element_get_paused, htmlMediaElementGetPaused,
        ghcjs_dom_html_media_element_set_default_playback_rate,
        htmlMediaElementSetDefaultPlaybackRate,
        ghcjs_dom_html_media_element_get_default_playback_rate,
        htmlMediaElementGetDefaultPlaybackRate,
        ghcjs_dom_html_media_element_set_playback_rate,
        htmlMediaElementSetPlaybackRate,
        ghcjs_dom_html_media_element_get_playback_rate,
        htmlMediaElementGetPlaybackRate,
        ghcjs_dom_html_media_element_get_played, htmlMediaElementGetPlayed,
        ghcjs_dom_html_media_element_get_seekable,
        htmlMediaElementGetSeekable,
        ghcjs_dom_html_media_element_get_ended, htmlMediaElementGetEnded,
        ghcjs_dom_html_media_element_set_autoplay,
        htmlMediaElementSetAutoplay,
        ghcjs_dom_html_media_element_get_autoplay,
        htmlMediaElementGetAutoplay, ghcjs_dom_html_media_element_set_loop,
        htmlMediaElementSetLoop, ghcjs_dom_html_media_element_get_loop,
        htmlMediaElementGetLoop, ghcjs_dom_html_media_element_set_controls,
        htmlMediaElementSetControls,
        ghcjs_dom_html_media_element_get_controls,
        htmlMediaElementGetControls,
        ghcjs_dom_html_media_element_set_volume, htmlMediaElementSetVolume,
        ghcjs_dom_html_media_element_get_volume, htmlMediaElementGetVolume,
        ghcjs_dom_html_media_element_set_muted, htmlMediaElementSetMuted,
        ghcjs_dom_html_media_element_get_muted, htmlMediaElementGetMuted,
        ghcjs_dom_html_media_element_set_default_muted,
        htmlMediaElementSetDefaultMuted,
        ghcjs_dom_html_media_element_get_default_muted,
        htmlMediaElementGetDefaultMuted, htmlMediaElementEmptied,
        htmlMediaElementLoadedMetadata, htmlMediaElementLoadedData,
        htmlMediaElementCanPlay, htmlMediaElementCanPlayThrough,
        htmlMediaElementPlaying, htmlMediaElementEnded,
        htmlMediaElementWaiting, htmlMediaElementDurationChange,
        htmlMediaElementTimeUpdate, htmlMediaElementPlayEvent,
        htmlMediaElementPauseEvent, htmlMediaElementRateChange,
        htmlMediaElementVolumeChange,
        ghcjs_dom_html_media_element_set_webkit_preserves_pitch,
        htmlMediaElementSetWebkitPreservesPitch,
        ghcjs_dom_html_media_element_get_webkit_preserves_pitch,
        htmlMediaElementGetWebkitPreservesPitch,
        ghcjs_dom_html_media_element_get_webkit_has_closed_captions,
        htmlMediaElementGetWebkitHasClosedCaptions,
        ghcjs_dom_html_media_element_set_webkit_closed_captions_visible,
        htmlMediaElementSetWebkitClosedCaptionsVisible,
        ghcjs_dom_html_media_element_get_webkit_closed_captions_visible,
        htmlMediaElementGetWebkitClosedCaptionsVisible,
        ghcjs_dom_html_media_element_get_webkit_audio_decoded_byte_count,
        htmlMediaElementGetWebkitAudioDecodedByteCount,
        ghcjs_dom_html_media_element_get_webkit_video_decoded_byte_count,
        htmlMediaElementGetWebkitVideoDecodedByteCount,
        htmlMediaElementWebKitKeyAdded, htmlMediaElementWebKitKeyError,
        htmlMediaElementWebKitKeyMessage, htmlMediaElementWebKitNeedKey,
        ghcjs_dom_html_media_element_get_webkit_keys,
        htmlMediaElementGetWebkitKeys,
        ghcjs_dom_html_media_element_get_audio_tracks,
        htmlMediaElementGetAudioTracks,
        ghcjs_dom_html_media_element_get_text_tracks,
        htmlMediaElementGetTextTracks,
        ghcjs_dom_html_media_element_get_video_tracks,
        htmlMediaElementGetVideoTracks,
        ghcjs_dom_html_media_element_set_media_group,
        htmlMediaElementSetMediaGroup,
        ghcjs_dom_html_media_element_get_media_group,
        htmlMediaElementGetMediaGroup,
        ghcjs_dom_html_media_element_set_controller,
        htmlMediaElementSetController,
        ghcjs_dom_html_media_element_get_controller,
        htmlMediaElementGetController,
        ghcjs_dom_html_media_element_get_webkit_current_playback_target_is_wireless,
        htmlMediaElementGetWebkitCurrentPlaybackTargetIsWireless,
        htmlMediaElementWebKitCurrentPlaybackTargetIsWirelessChanged,
        htmlMediaElementWebKitPlaybackTargetAvailabilityChanged,
        HTMLMediaElement, IsHTMLMediaElement, castToHTMLMediaElement,
        gTypeHTMLMediaElement, toHTMLMediaElement)
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

 
foreign import javascript unsafe "$1[\"load\"]()"
        ghcjs_dom_html_media_element_load ::
        JSRef HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.load Mozilla HTMLMediaElement.load documentation> 
htmlMediaElementLoad ::
                     (MonadIO m, IsHTMLMediaElement self) => self -> m ()
htmlMediaElementLoad self
  = liftIO
      (ghcjs_dom_html_media_element_load
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"canPlayType\"]($2, $3)"
        ghcjs_dom_html_media_element_can_play_type ::
        JSRef HTMLMediaElement -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlayType Mozilla HTMLMediaElement.canPlayType documentation> 
htmlMediaElementCanPlayType ::
                            (MonadIO m, IsHTMLMediaElement self, ToJSString type',
                             ToJSString keySystem, FromJSString result) =>
                              self -> type' -> keySystem -> m result
htmlMediaElementCanPlayType self type' keySystem
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_media_element_can_play_type
            (unHTMLMediaElement (toHTMLMediaElement self))
            (toJSString type')
            (toJSString keySystem)))
 
foreign import javascript unsafe "$1[\"play\"]()"
        ghcjs_dom_html_media_element_play ::
        JSRef HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.play Mozilla HTMLMediaElement.play documentation> 
htmlMediaElementPlay ::
                     (MonadIO m, IsHTMLMediaElement self) => self -> m ()
htmlMediaElementPlay self
  = liftIO
      (ghcjs_dom_html_media_element_play
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"pause\"]()"
        ghcjs_dom_html_media_element_pause ::
        JSRef HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.pause Mozilla HTMLMediaElement.pause documentation> 
htmlMediaElementPause ::
                      (MonadIO m, IsHTMLMediaElement self) => self -> m ()
htmlMediaElementPause self
  = liftIO
      (ghcjs_dom_html_media_element_pause
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"fastSeek\"]($2)"
        ghcjs_dom_html_media_element_fast_seek ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.fastSeek Mozilla HTMLMediaElement.fastSeek documentation> 
htmlMediaElementFastSeek ::
                         (MonadIO m, IsHTMLMediaElement self) => self -> Double -> m ()
htmlMediaElementFastSeek self time
  = liftIO
      (ghcjs_dom_html_media_element_fast_seek
         (unHTMLMediaElement (toHTMLMediaElement self))
         time)
 
foreign import javascript unsafe
        "$1[\"webkitGenerateKeyRequest\"]($2,\n$3)"
        ghcjs_dom_html_media_element_webkit_generate_key_request ::
        JSRef HTMLMediaElement -> JSString -> JSRef Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitGenerateKeyRequest Mozilla HTMLMediaElement.webkitGenerateKeyRequest documentation> 
htmlMediaElementWebkitGenerateKeyRequest ::
                                         (MonadIO m, IsHTMLMediaElement self, ToJSString keySystem,
                                          IsUint8Array initData) =>
                                           self -> keySystem -> Maybe initData -> m ()
htmlMediaElementWebkitGenerateKeyRequest self keySystem initData
  = liftIO
      (ghcjs_dom_html_media_element_webkit_generate_key_request
         (unHTMLMediaElement (toHTMLMediaElement self))
         (toJSString keySystem)
         (maybe jsNull (unUint8Array . toUint8Array) initData))
 
foreign import javascript unsafe
        "$1[\"webkitAddKey\"]($2, $3, $4,\n$5)"
        ghcjs_dom_html_media_element_webkit_add_key ::
        JSRef HTMLMediaElement ->
          JSString ->
            JSRef Uint8Array -> JSRef Uint8Array -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitAddKey Mozilla HTMLMediaElement.webkitAddKey documentation> 
htmlMediaElementWebkitAddKey ::
                             (MonadIO m, IsHTMLMediaElement self, ToJSString keySystem,
                              IsUint8Array key, IsUint8Array initData, ToJSString sessionId) =>
                               self ->
                                 keySystem -> Maybe key -> Maybe initData -> sessionId -> m ()
htmlMediaElementWebkitAddKey self keySystem key initData sessionId
  = liftIO
      (ghcjs_dom_html_media_element_webkit_add_key
         (unHTMLMediaElement (toHTMLMediaElement self))
         (toJSString keySystem)
         (maybe jsNull (unUint8Array . toUint8Array) key)
         (maybe jsNull (unUint8Array . toUint8Array) initData)
         (toJSString sessionId))
 
foreign import javascript unsafe
        "$1[\"webkitCancelKeyRequest\"]($2,\n$3)"
        ghcjs_dom_html_media_element_webkit_cancel_key_request ::
        JSRef HTMLMediaElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitCancelKeyRequest Mozilla HTMLMediaElement.webkitCancelKeyRequest documentation> 
htmlMediaElementWebkitCancelKeyRequest ::
                                       (MonadIO m, IsHTMLMediaElement self, ToJSString keySystem,
                                        ToJSString sessionId) =>
                                         self -> keySystem -> sessionId -> m ()
htmlMediaElementWebkitCancelKeyRequest self keySystem sessionId
  = liftIO
      (ghcjs_dom_html_media_element_webkit_cancel_key_request
         (unHTMLMediaElement (toHTMLMediaElement self))
         (toJSString keySystem)
         (toJSString sessionId))
 
foreign import javascript unsafe "$1[\"webkitSetMediaKeys\"]($2)"
        ghcjs_dom_html_media_element_webkit_set_media_keys ::
        JSRef HTMLMediaElement -> JSRef MediaKeys -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitSetMediaKeys Mozilla HTMLMediaElement.webkitSetMediaKeys documentation> 
htmlMediaElementWebkitSetMediaKeys ::
                                   (MonadIO m, IsHTMLMediaElement self, IsMediaKeys mediaKeys) =>
                                     self -> Maybe mediaKeys -> m ()
htmlMediaElementWebkitSetMediaKeys self mediaKeys
  = liftIO
      (ghcjs_dom_html_media_element_webkit_set_media_keys
         (unHTMLMediaElement (toHTMLMediaElement self))
         (maybe jsNull (unMediaKeys . toMediaKeys) mediaKeys))
 
foreign import javascript unsafe "$1[\"addTextTrack\"]($2, $3, $4)"
        ghcjs_dom_html_media_element_add_text_track ::
        JSRef HTMLMediaElement ->
          JSString -> JSString -> JSString -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.addTextTrack Mozilla HTMLMediaElement.addTextTrack documentation> 
htmlMediaElementAddTextTrack ::
                             (MonadIO m, IsHTMLMediaElement self, ToJSString kind,
                              ToJSString label, ToJSString language) =>
                               self -> kind -> label -> language -> m (Maybe TextTrack)
htmlMediaElementAddTextTrack self kind label language
  = liftIO
      ((ghcjs_dom_html_media_element_add_text_track
          (unHTMLMediaElement (toHTMLMediaElement self))
          (toJSString kind)
          (toJSString label)
          (toJSString language))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitShowPlaybackTargetPicker\"]()"
        ghcjs_dom_html_media_element_webkit_show_playback_target_picker ::
        JSRef HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitShowPlaybackTargetPicker Mozilla HTMLMediaElement.webkitShowPlaybackTargetPicker documentation> 
htmlMediaElementWebkitShowPlaybackTargetPicker ::
                                               (MonadIO m, IsHTMLMediaElement self) => self -> m ()
htmlMediaElementWebkitShowPlaybackTargetPicker self
  = liftIO
      (ghcjs_dom_html_media_element_webkit_show_playback_target_picker
         (unHTMLMediaElement (toHTMLMediaElement self)))
cNETWORK_EMPTY = 0
cNETWORK_IDLE = 1
cNETWORK_LOADING = 2
cNETWORK_NO_SOURCE = 3
cHAVE_NOTHING = 0
cHAVE_METADATA = 1
cHAVE_CURRENT_DATA = 2
cHAVE_FUTURE_DATA = 3
cHAVE_ENOUGH_DATA = 4
 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_html_media_element_get_error ::
        JSRef HTMLMediaElement -> IO (JSRef MediaError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.error Mozilla HTMLMediaElement.error documentation> 
htmlMediaElementGetError ::
                         (MonadIO m, IsHTMLMediaElement self) =>
                           self -> m (Maybe MediaError)
htmlMediaElementGetError self
  = liftIO
      ((ghcjs_dom_html_media_element_get_error
          (unHTMLMediaElement (toHTMLMediaElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_media_element_set_src ::
        JSRef HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.src Mozilla HTMLMediaElement.src documentation> 
htmlMediaElementSetSrc ::
                       (MonadIO m, IsHTMLMediaElement self, ToJSString val) =>
                         self -> val -> m ()
htmlMediaElementSetSrc self val
  = liftIO
      (ghcjs_dom_html_media_element_set_src
         (unHTMLMediaElement (toHTMLMediaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_media_element_get_src ::
        JSRef HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.src Mozilla HTMLMediaElement.src documentation> 
htmlMediaElementGetSrc ::
                       (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                         self -> m result
htmlMediaElementGetSrc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_media_element_get_src
            (unHTMLMediaElement (toHTMLMediaElement self))))
 
foreign import javascript unsafe "$1[\"currentSrc\"]"
        ghcjs_dom_html_media_element_get_current_src ::
        JSRef HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentSrc Mozilla HTMLMediaElement.currentSrc documentation> 
htmlMediaElementGetCurrentSrc ::
                              (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                                self -> m result
htmlMediaElementGetCurrentSrc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_media_element_get_current_src
            (unHTMLMediaElement (toHTMLMediaElement self))))
 
foreign import javascript unsafe "$1[\"networkState\"]"
        ghcjs_dom_html_media_element_get_network_state ::
        JSRef HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.networkState Mozilla HTMLMediaElement.networkState documentation> 
htmlMediaElementGetNetworkState ::
                                (MonadIO m, IsHTMLMediaElement self) => self -> m Word
htmlMediaElementGetNetworkState self
  = liftIO
      (ghcjs_dom_html_media_element_get_network_state
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"preload\"] = $2;"
        ghcjs_dom_html_media_element_set_preload ::
        JSRef HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.preload Mozilla HTMLMediaElement.preload documentation> 
htmlMediaElementSetPreload ::
                           (MonadIO m, IsHTMLMediaElement self, ToJSString val) =>
                             self -> val -> m ()
htmlMediaElementSetPreload self val
  = liftIO
      (ghcjs_dom_html_media_element_set_preload
         (unHTMLMediaElement (toHTMLMediaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"preload\"]"
        ghcjs_dom_html_media_element_get_preload ::
        JSRef HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.preload Mozilla HTMLMediaElement.preload documentation> 
htmlMediaElementGetPreload ::
                           (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                             self -> m result
htmlMediaElementGetPreload self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_media_element_get_preload
            (unHTMLMediaElement (toHTMLMediaElement self))))
 
foreign import javascript unsafe "$1[\"buffered\"]"
        ghcjs_dom_html_media_element_get_buffered ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.buffered Mozilla HTMLMediaElement.buffered documentation> 
htmlMediaElementGetBuffered ::
                            (MonadIO m, IsHTMLMediaElement self) =>
                              self -> m (Maybe TimeRanges)
htmlMediaElementGetBuffered self
  = liftIO
      ((ghcjs_dom_html_media_element_get_buffered
          (unHTMLMediaElement (toHTMLMediaElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_html_media_element_get_ready_state ::
        JSRef HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.readyState Mozilla HTMLMediaElement.readyState documentation> 
htmlMediaElementGetReadyState ::
                              (MonadIO m, IsHTMLMediaElement self) => self -> m Word
htmlMediaElementGetReadyState self
  = liftIO
      (ghcjs_dom_html_media_element_get_ready_state
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "($1[\"seeking\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_seeking ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seeking Mozilla HTMLMediaElement.seeking documentation> 
htmlMediaElementGetSeeking ::
                           (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetSeeking self
  = liftIO
      (ghcjs_dom_html_media_element_get_seeking
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"currentTime\"] = $2;"
        ghcjs_dom_html_media_element_set_current_time ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentTime Mozilla HTMLMediaElement.currentTime documentation> 
htmlMediaElementSetCurrentTime ::
                               (MonadIO m, IsHTMLMediaElement self) => self -> Double -> m ()
htmlMediaElementSetCurrentTime self val
  = liftIO
      (ghcjs_dom_html_media_element_set_current_time
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe "$1[\"currentTime\"]"
        ghcjs_dom_html_media_element_get_current_time ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentTime Mozilla HTMLMediaElement.currentTime documentation> 
htmlMediaElementGetCurrentTime ::
                               (MonadIO m, IsHTMLMediaElement self) => self -> m Double
htmlMediaElementGetCurrentTime self
  = liftIO
      (ghcjs_dom_html_media_element_get_current_time
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_html_media_element_get_duration ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.duration Mozilla HTMLMediaElement.duration documentation> 
htmlMediaElementGetDuration ::
                            (MonadIO m, IsHTMLMediaElement self) => self -> m Double
htmlMediaElementGetDuration self
  = liftIO
      (ghcjs_dom_html_media_element_get_duration
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_paused ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.paused Mozilla HTMLMediaElement.paused documentation> 
htmlMediaElementGetPaused ::
                          (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetPaused self
  = liftIO
      (ghcjs_dom_html_media_element_get_paused
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe
        "$1[\"defaultPlaybackRate\"] = $2;"
        ghcjs_dom_html_media_element_set_default_playback_rate ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultPlaybackRate Mozilla HTMLMediaElement.defaultPlaybackRate documentation> 
htmlMediaElementSetDefaultPlaybackRate ::
                                       (MonadIO m, IsHTMLMediaElement self) =>
                                         self -> Double -> m ()
htmlMediaElementSetDefaultPlaybackRate self val
  = liftIO
      (ghcjs_dom_html_media_element_set_default_playback_rate
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe "$1[\"defaultPlaybackRate\"]"
        ghcjs_dom_html_media_element_get_default_playback_rate ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultPlaybackRate Mozilla HTMLMediaElement.defaultPlaybackRate documentation> 
htmlMediaElementGetDefaultPlaybackRate ::
                                       (MonadIO m, IsHTMLMediaElement self) => self -> m Double
htmlMediaElementGetDefaultPlaybackRate self
  = liftIO
      (ghcjs_dom_html_media_element_get_default_playback_rate
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"playbackRate\"] = $2;"
        ghcjs_dom_html_media_element_set_playback_rate ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playbackRate Mozilla HTMLMediaElement.playbackRate documentation> 
htmlMediaElementSetPlaybackRate ::
                                (MonadIO m, IsHTMLMediaElement self) => self -> Double -> m ()
htmlMediaElementSetPlaybackRate self val
  = liftIO
      (ghcjs_dom_html_media_element_set_playback_rate
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        ghcjs_dom_html_media_element_get_playback_rate ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playbackRate Mozilla HTMLMediaElement.playbackRate documentation> 
htmlMediaElementGetPlaybackRate ::
                                (MonadIO m, IsHTMLMediaElement self) => self -> m Double
htmlMediaElementGetPlaybackRate self
  = liftIO
      (ghcjs_dom_html_media_element_get_playback_rate
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"played\"]"
        ghcjs_dom_html_media_element_get_played ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.played Mozilla HTMLMediaElement.played documentation> 
htmlMediaElementGetPlayed ::
                          (MonadIO m, IsHTMLMediaElement self) =>
                            self -> m (Maybe TimeRanges)
htmlMediaElementGetPlayed self
  = liftIO
      ((ghcjs_dom_html_media_element_get_played
          (unHTMLMediaElement (toHTMLMediaElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"seekable\"]"
        ghcjs_dom_html_media_element_get_seekable ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seekable Mozilla HTMLMediaElement.seekable documentation> 
htmlMediaElementGetSeekable ::
                            (MonadIO m, IsHTMLMediaElement self) =>
                              self -> m (Maybe TimeRanges)
htmlMediaElementGetSeekable self
  = liftIO
      ((ghcjs_dom_html_media_element_get_seekable
          (unHTMLMediaElement (toHTMLMediaElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"ended\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_ended ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ended Mozilla HTMLMediaElement.ended documentation> 
htmlMediaElementGetEnded ::
                         (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetEnded self
  = liftIO
      (ghcjs_dom_html_media_element_get_ended
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"autoplay\"] = $2;"
        ghcjs_dom_html_media_element_set_autoplay ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.autoplay Mozilla HTMLMediaElement.autoplay documentation> 
htmlMediaElementSetAutoplay ::
                            (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
htmlMediaElementSetAutoplay self val
  = liftIO
      (ghcjs_dom_html_media_element_set_autoplay
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe "($1[\"autoplay\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_autoplay ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.autoplay Mozilla HTMLMediaElement.autoplay documentation> 
htmlMediaElementGetAutoplay ::
                            (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetAutoplay self
  = liftIO
      (ghcjs_dom_html_media_element_get_autoplay
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"loop\"] = $2;"
        ghcjs_dom_html_media_element_set_loop ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loop Mozilla HTMLMediaElement.loop documentation> 
htmlMediaElementSetLoop ::
                        (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
htmlMediaElementSetLoop self val
  = liftIO
      (ghcjs_dom_html_media_element_set_loop
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe "($1[\"loop\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_loop ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loop Mozilla HTMLMediaElement.loop documentation> 
htmlMediaElementGetLoop ::
                        (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetLoop self
  = liftIO
      (ghcjs_dom_html_media_element_get_loop
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"controls\"] = $2;"
        ghcjs_dom_html_media_element_set_controls ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controls Mozilla HTMLMediaElement.controls documentation> 
htmlMediaElementSetControls ::
                            (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
htmlMediaElementSetControls self val
  = liftIO
      (ghcjs_dom_html_media_element_set_controls
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe "($1[\"controls\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_controls ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controls Mozilla HTMLMediaElement.controls documentation> 
htmlMediaElementGetControls ::
                            (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetControls self
  = liftIO
      (ghcjs_dom_html_media_element_get_controls
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        ghcjs_dom_html_media_element_set_volume ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.volume Mozilla HTMLMediaElement.volume documentation> 
htmlMediaElementSetVolume ::
                          (MonadIO m, IsHTMLMediaElement self) => self -> Double -> m ()
htmlMediaElementSetVolume self val
  = liftIO
      (ghcjs_dom_html_media_element_set_volume
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe "$1[\"volume\"]"
        ghcjs_dom_html_media_element_get_volume ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.volume Mozilla HTMLMediaElement.volume documentation> 
htmlMediaElementGetVolume ::
                          (MonadIO m, IsHTMLMediaElement self) => self -> m Double
htmlMediaElementGetVolume self
  = liftIO
      (ghcjs_dom_html_media_element_get_volume
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"muted\"] = $2;"
        ghcjs_dom_html_media_element_set_muted ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.muted Mozilla HTMLMediaElement.muted documentation> 
htmlMediaElementSetMuted ::
                         (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
htmlMediaElementSetMuted self val
  = liftIO
      (ghcjs_dom_html_media_element_set_muted
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_muted ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.muted Mozilla HTMLMediaElement.muted documentation> 
htmlMediaElementGetMuted ::
                         (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetMuted self
  = liftIO
      (ghcjs_dom_html_media_element_get_muted
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"defaultMuted\"] = $2;"
        ghcjs_dom_html_media_element_set_default_muted ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultMuted Mozilla HTMLMediaElement.defaultMuted documentation> 
htmlMediaElementSetDefaultMuted ::
                                (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
htmlMediaElementSetDefaultMuted self val
  = liftIO
      (ghcjs_dom_html_media_element_set_default_muted
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe "($1[\"defaultMuted\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_default_muted ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultMuted Mozilla HTMLMediaElement.defaultMuted documentation> 
htmlMediaElementGetDefaultMuted ::
                                (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetDefaultMuted self
  = liftIO
      (ghcjs_dom_html_media_element_get_default_muted
         (unHTMLMediaElement (toHTMLMediaElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.emptied Mozilla HTMLMediaElement.emptied documentation> 
htmlMediaElementEmptied ::
                        (IsHTMLMediaElement self, IsEventTarget self) =>
                          EventName self Event
htmlMediaElementEmptied = unsafeEventName (toJSString "emptied")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loadedMetadata Mozilla HTMLMediaElement.loadedMetadata documentation> 
htmlMediaElementLoadedMetadata ::
                               (IsHTMLMediaElement self, IsEventTarget self) =>
                                 EventName self Event
htmlMediaElementLoadedMetadata
  = unsafeEventName (toJSString "loadedmetadata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loadedData Mozilla HTMLMediaElement.loadedData documentation> 
htmlMediaElementLoadedData ::
                           (IsHTMLMediaElement self, IsEventTarget self) =>
                             EventName self Event
htmlMediaElementLoadedData
  = unsafeEventName (toJSString "loadeddata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlay Mozilla HTMLMediaElement.canPlay documentation> 
htmlMediaElementCanPlay ::
                        (IsHTMLMediaElement self, IsEventTarget self) =>
                          EventName self Event
htmlMediaElementCanPlay = unsafeEventName (toJSString "canplay")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlayThrough Mozilla HTMLMediaElement.canPlayThrough documentation> 
htmlMediaElementCanPlayThrough ::
                               (IsHTMLMediaElement self, IsEventTarget self) =>
                                 EventName self Event
htmlMediaElementCanPlayThrough
  = unsafeEventName (toJSString "canplaythrough")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playing Mozilla HTMLMediaElement.playing documentation> 
htmlMediaElementPlaying ::
                        (IsHTMLMediaElement self, IsEventTarget self) =>
                          EventName self Event
htmlMediaElementPlaying = unsafeEventName (toJSString "playing")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ended Mozilla HTMLMediaElement.ended documentation> 
htmlMediaElementEnded ::
                      (IsHTMLMediaElement self, IsEventTarget self) =>
                        EventName self Event
htmlMediaElementEnded = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.waiting Mozilla HTMLMediaElement.waiting documentation> 
htmlMediaElementWaiting ::
                        (IsHTMLMediaElement self, IsEventTarget self) =>
                          EventName self Event
htmlMediaElementWaiting = unsafeEventName (toJSString "waiting")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.durationChange Mozilla HTMLMediaElement.durationChange documentation> 
htmlMediaElementDurationChange ::
                               (IsHTMLMediaElement self, IsEventTarget self) =>
                                 EventName self Event
htmlMediaElementDurationChange
  = unsafeEventName (toJSString "durationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.timeUpdate Mozilla HTMLMediaElement.timeUpdate documentation> 
htmlMediaElementTimeUpdate ::
                           (IsHTMLMediaElement self, IsEventTarget self) =>
                             EventName self Event
htmlMediaElementTimeUpdate
  = unsafeEventName (toJSString "timeupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playEvent Mozilla HTMLMediaElement.playEvent documentation> 
htmlMediaElementPlayEvent ::
                          (IsHTMLMediaElement self, IsEventTarget self) =>
                            EventName self Event
htmlMediaElementPlayEvent = unsafeEventName (toJSString "play")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.pauseEvent Mozilla HTMLMediaElement.pauseEvent documentation> 
htmlMediaElementPauseEvent ::
                           (IsHTMLMediaElement self, IsEventTarget self) =>
                             EventName self Event
htmlMediaElementPauseEvent = unsafeEventName (toJSString "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.rateChange Mozilla HTMLMediaElement.rateChange documentation> 
htmlMediaElementRateChange ::
                           (IsHTMLMediaElement self, IsEventTarget self) =>
                             EventName self Event
htmlMediaElementRateChange
  = unsafeEventName (toJSString "ratechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.volumeChange Mozilla HTMLMediaElement.volumeChange documentation> 
htmlMediaElementVolumeChange ::
                             (IsHTMLMediaElement self, IsEventTarget self) =>
                               EventName self Event
htmlMediaElementVolumeChange
  = unsafeEventName (toJSString "volumechange")
 
foreign import javascript unsafe
        "$1[\"webkitPreservesPitch\"] = $2;"
        ghcjs_dom_html_media_element_set_webkit_preserves_pitch ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitPreservesPitch Mozilla HTMLMediaElement.webkitPreservesPitch documentation> 
htmlMediaElementSetWebkitPreservesPitch ::
                                        (MonadIO m, IsHTMLMediaElement self) => self -> Bool -> m ()
htmlMediaElementSetWebkitPreservesPitch self val
  = liftIO
      (ghcjs_dom_html_media_element_set_webkit_preserves_pitch
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe
        "($1[\"webkitPreservesPitch\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_preserves_pitch ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitPreservesPitch Mozilla HTMLMediaElement.webkitPreservesPitch documentation> 
htmlMediaElementGetWebkitPreservesPitch ::
                                        (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetWebkitPreservesPitch self
  = liftIO
      (ghcjs_dom_html_media_element_get_webkit_preserves_pitch
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe
        "($1[\"webkitHasClosedCaptions\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_has_closed_captions ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitHasClosedCaptions Mozilla HTMLMediaElement.webkitHasClosedCaptions documentation> 
htmlMediaElementGetWebkitHasClosedCaptions ::
                                           (MonadIO m, IsHTMLMediaElement self) => self -> m Bool
htmlMediaElementGetWebkitHasClosedCaptions self
  = liftIO
      (ghcjs_dom_html_media_element_get_webkit_has_closed_captions
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe
        "$1[\"webkitClosedCaptionsVisible\"] = $2;"
        ghcjs_dom_html_media_element_set_webkit_closed_captions_visible ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitClosedCaptionsVisible Mozilla HTMLMediaElement.webkitClosedCaptionsVisible documentation> 
htmlMediaElementSetWebkitClosedCaptionsVisible ::
                                               (MonadIO m, IsHTMLMediaElement self) =>
                                                 self -> Bool -> m ()
htmlMediaElementSetWebkitClosedCaptionsVisible self val
  = liftIO
      (ghcjs_dom_html_media_element_set_webkit_closed_captions_visible
         (unHTMLMediaElement (toHTMLMediaElement self))
         val)
 
foreign import javascript unsafe
        "($1[\"webkitClosedCaptionsVisible\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_closed_captions_visible ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitClosedCaptionsVisible Mozilla HTMLMediaElement.webkitClosedCaptionsVisible documentation> 
htmlMediaElementGetWebkitClosedCaptionsVisible ::
                                               (MonadIO m, IsHTMLMediaElement self) =>
                                                 self -> m Bool
htmlMediaElementGetWebkitClosedCaptionsVisible self
  = liftIO
      (ghcjs_dom_html_media_element_get_webkit_closed_captions_visible
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe
        "$1[\"webkitAudioDecodedByteCount\"]"
        ghcjs_dom_html_media_element_get_webkit_audio_decoded_byte_count ::
        JSRef HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitAudioDecodedByteCount Mozilla HTMLMediaElement.webkitAudioDecodedByteCount documentation> 
htmlMediaElementGetWebkitAudioDecodedByteCount ::
                                               (MonadIO m, IsHTMLMediaElement self) =>
                                                 self -> m Word
htmlMediaElementGetWebkitAudioDecodedByteCount self
  = liftIO
      (ghcjs_dom_html_media_element_get_webkit_audio_decoded_byte_count
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe
        "$1[\"webkitVideoDecodedByteCount\"]"
        ghcjs_dom_html_media_element_get_webkit_video_decoded_byte_count ::
        JSRef HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitVideoDecodedByteCount Mozilla HTMLMediaElement.webkitVideoDecodedByteCount documentation> 
htmlMediaElementGetWebkitVideoDecodedByteCount ::
                                               (MonadIO m, IsHTMLMediaElement self) =>
                                                 self -> m Word
htmlMediaElementGetWebkitVideoDecodedByteCount self
  = liftIO
      (ghcjs_dom_html_media_element_get_webkit_video_decoded_byte_count
         (unHTMLMediaElement (toHTMLMediaElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webKitKeyAdded Mozilla HTMLMediaElement.webKitKeyAdded documentation> 
htmlMediaElementWebKitKeyAdded ::
                               (IsHTMLMediaElement self, IsEventTarget self) =>
                                 EventName self Event
htmlMediaElementWebKitKeyAdded
  = unsafeEventName (toJSString "webkitkeyadded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webKitKeyError Mozilla HTMLMediaElement.webKitKeyError documentation> 
htmlMediaElementWebKitKeyError ::
                               (IsHTMLMediaElement self, IsEventTarget self) =>
                                 EventName self Event
htmlMediaElementWebKitKeyError
  = unsafeEventName (toJSString "webkitkeyerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webKitKeyMessage Mozilla HTMLMediaElement.webKitKeyMessage documentation> 
htmlMediaElementWebKitKeyMessage ::
                                 (IsHTMLMediaElement self, IsEventTarget self) =>
                                   EventName self Event
htmlMediaElementWebKitKeyMessage
  = unsafeEventName (toJSString "webkitkeymessage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webKitNeedKey Mozilla HTMLMediaElement.webKitNeedKey documentation> 
htmlMediaElementWebKitNeedKey ::
                              (IsHTMLMediaElement self, IsEventTarget self) =>
                                EventName self Event
htmlMediaElementWebKitNeedKey
  = unsafeEventName (toJSString "webkitneedkey")
 
foreign import javascript unsafe "$1[\"webkitKeys\"]"
        ghcjs_dom_html_media_element_get_webkit_keys ::
        JSRef HTMLMediaElement -> IO (JSRef MediaKeys)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitKeys Mozilla HTMLMediaElement.webkitKeys documentation> 
htmlMediaElementGetWebkitKeys ::
                              (MonadIO m, IsHTMLMediaElement self) => self -> m (Maybe MediaKeys)
htmlMediaElementGetWebkitKeys self
  = liftIO
      ((ghcjs_dom_html_media_element_get_webkit_keys
          (unHTMLMediaElement (toHTMLMediaElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"audioTracks\"]"
        ghcjs_dom_html_media_element_get_audio_tracks ::
        JSRef HTMLMediaElement -> IO (JSRef AudioTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.audioTracks Mozilla HTMLMediaElement.audioTracks documentation> 
htmlMediaElementGetAudioTracks ::
                               (MonadIO m, IsHTMLMediaElement self) =>
                                 self -> m (Maybe AudioTrackList)
htmlMediaElementGetAudioTracks self
  = liftIO
      ((ghcjs_dom_html_media_element_get_audio_tracks
          (unHTMLMediaElement (toHTMLMediaElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"textTracks\"]"
        ghcjs_dom_html_media_element_get_text_tracks ::
        JSRef HTMLMediaElement -> IO (JSRef TextTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.textTracks Mozilla HTMLMediaElement.textTracks documentation> 
htmlMediaElementGetTextTracks ::
                              (MonadIO m, IsHTMLMediaElement self) =>
                                self -> m (Maybe TextTrackList)
htmlMediaElementGetTextTracks self
  = liftIO
      ((ghcjs_dom_html_media_element_get_text_tracks
          (unHTMLMediaElement (toHTMLMediaElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"videoTracks\"]"
        ghcjs_dom_html_media_element_get_video_tracks ::
        JSRef HTMLMediaElement -> IO (JSRef VideoTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.videoTracks Mozilla HTMLMediaElement.videoTracks documentation> 
htmlMediaElementGetVideoTracks ::
                               (MonadIO m, IsHTMLMediaElement self) =>
                                 self -> m (Maybe VideoTrackList)
htmlMediaElementGetVideoTracks self
  = liftIO
      ((ghcjs_dom_html_media_element_get_video_tracks
          (unHTMLMediaElement (toHTMLMediaElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"mediaGroup\"] = $2;"
        ghcjs_dom_html_media_element_set_media_group ::
        JSRef HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
htmlMediaElementSetMediaGroup ::
                              (MonadIO m, IsHTMLMediaElement self, ToJSString val) =>
                                self -> val -> m ()
htmlMediaElementSetMediaGroup self val
  = liftIO
      (ghcjs_dom_html_media_element_set_media_group
         (unHTMLMediaElement (toHTMLMediaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"mediaGroup\"]"
        ghcjs_dom_html_media_element_get_media_group ::
        JSRef HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
htmlMediaElementGetMediaGroup ::
                              (MonadIO m, IsHTMLMediaElement self, FromJSString result) =>
                                self -> m result
htmlMediaElementGetMediaGroup self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_media_element_get_media_group
            (unHTMLMediaElement (toHTMLMediaElement self))))
 
foreign import javascript unsafe "$1[\"controller\"] = $2;"
        ghcjs_dom_html_media_element_set_controller ::
        JSRef HTMLMediaElement -> JSRef MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
htmlMediaElementSetController ::
                              (MonadIO m, IsHTMLMediaElement self, IsMediaController val) =>
                                self -> Maybe val -> m ()
htmlMediaElementSetController self val
  = liftIO
      (ghcjs_dom_html_media_element_set_controller
         (unHTMLMediaElement (toHTMLMediaElement self))
         (maybe jsNull (unMediaController . toMediaController) val))
 
foreign import javascript unsafe "$1[\"controller\"]"
        ghcjs_dom_html_media_element_get_controller ::
        JSRef HTMLMediaElement -> IO (JSRef MediaController)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
htmlMediaElementGetController ::
                              (MonadIO m, IsHTMLMediaElement self) =>
                                self -> m (Maybe MediaController)
htmlMediaElementGetController self
  = liftIO
      ((ghcjs_dom_html_media_element_get_controller
          (unHTMLMediaElement (toHTMLMediaElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"webkitCurrentPlaybackTargetIsWireless\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_current_playback_target_is_wireless
        :: JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless Mozilla HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless documentation> 
htmlMediaElementGetWebkitCurrentPlaybackTargetIsWireless ::
                                                         (MonadIO m, IsHTMLMediaElement self) =>
                                                           self -> m Bool
htmlMediaElementGetWebkitCurrentPlaybackTargetIsWireless self
  = liftIO
      (ghcjs_dom_html_media_element_get_webkit_current_playback_target_is_wireless
         (unHTMLMediaElement (toHTMLMediaElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webKitCurrentPlaybackTargetIsWirelessChanged Mozilla HTMLMediaElement.webKitCurrentPlaybackTargetIsWirelessChanged documentation> 
htmlMediaElementWebKitCurrentPlaybackTargetIsWirelessChanged ::
                                                             (IsHTMLMediaElement self,
                                                              IsEventTarget self) =>
                                                               EventName self Event
htmlMediaElementWebKitCurrentPlaybackTargetIsWirelessChanged
  = unsafeEventName
      (toJSString "webkitcurrentplaybacktargetiswirelesschanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webKitPlaybackTargetAvailabilityChanged Mozilla HTMLMediaElement.webKitPlaybackTargetAvailabilityChanged documentation> 
htmlMediaElementWebKitPlaybackTargetAvailabilityChanged ::
                                                        (IsHTMLMediaElement self,
                                                         IsEventTarget self) =>
                                                          EventName self Event
htmlMediaElementWebKitPlaybackTargetAvailabilityChanged
  = unsafeEventName
      (toJSString "webkitplaybacktargetavailabilitychanged")
#else
module GHCJS.DOM.HTMLMediaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMediaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMediaElement
#endif
