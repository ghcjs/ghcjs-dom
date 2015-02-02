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
        htmlMediaElementGetDefaultMuted, htmlMediaElementOnemptied,
        htmlMediaElementOnloadedmetadata, htmlMediaElementOnloadeddata,
        htmlMediaElementOncanplay, htmlMediaElementOncanplaythrough,
        htmlMediaElementOnplaying, htmlMediaElementOnended,
        htmlMediaElementOnwaiting, htmlMediaElementOndurationchange,
        htmlMediaElementOntimeupdate, htmlMediaElementOnplay,
        htmlMediaElementOnpause, htmlMediaElementOnratechange,
        htmlMediaElementOnvolumechange,
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
        htmlMediaElementOnwebkitkeyadded, htmlMediaElementOnwebkitkeyerror,
        htmlMediaElementOnwebkitkeymessage,
        htmlMediaElementOnwebkitneedkey,
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
        htmlMediaElementOnwebkitcurrentplaybacktargetiswirelesschanged,
        htmlMediaElementOnwebkitplaybacktargetavailabilitychanged,
        HTMLMediaElement, IsHTMLMediaElement, castToHTMLMediaElement,
        gTypeHTMLMediaElement, toHTMLMediaElement)
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

 
foreign import javascript unsafe "$1[\"load\"]()"
        ghcjs_dom_html_media_element_load ::
        JSRef HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.load Mozilla HTMLMediaElement.load documentation> 
htmlMediaElementLoad :: (IsHTMLMediaElement self) => self -> IO ()
htmlMediaElementLoad self
  = ghcjs_dom_html_media_element_load
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"canPlayType\"]($2, $3)"
        ghcjs_dom_html_media_element_can_play_type ::
        JSRef HTMLMediaElement -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.canPlayType Mozilla HTMLMediaElement.canPlayType documentation> 
htmlMediaElementCanPlayType ::
                            (IsHTMLMediaElement self, ToJSString type', ToJSString keySystem,
                             FromJSString result) =>
                              self -> type' -> keySystem -> IO result
htmlMediaElementCanPlayType self type' keySystem
  = fromJSString <$>
      (ghcjs_dom_html_media_element_can_play_type
         (unHTMLMediaElement (toHTMLMediaElement self))
         (toJSString type')
         (toJSString keySystem))
 
foreign import javascript unsafe "$1[\"play\"]()"
        ghcjs_dom_html_media_element_play ::
        JSRef HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.play Mozilla HTMLMediaElement.play documentation> 
htmlMediaElementPlay :: (IsHTMLMediaElement self) => self -> IO ()
htmlMediaElementPlay self
  = ghcjs_dom_html_media_element_play
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"pause\"]()"
        ghcjs_dom_html_media_element_pause ::
        JSRef HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.pause Mozilla HTMLMediaElement.pause documentation> 
htmlMediaElementPause :: (IsHTMLMediaElement self) => self -> IO ()
htmlMediaElementPause self
  = ghcjs_dom_html_media_element_pause
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"fastSeek\"]($2)"
        ghcjs_dom_html_media_element_fast_seek ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.fastSeek Mozilla HTMLMediaElement.fastSeek documentation> 
htmlMediaElementFastSeek ::
                         (IsHTMLMediaElement self) => self -> Double -> IO ()
htmlMediaElementFastSeek self time
  = ghcjs_dom_html_media_element_fast_seek
      (unHTMLMediaElement (toHTMLMediaElement self))
      time
 
foreign import javascript unsafe
        "$1[\"webkitGenerateKeyRequest\"]($2,\n$3)"
        ghcjs_dom_html_media_element_webkit_generate_key_request ::
        JSRef HTMLMediaElement -> JSString -> JSRef Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitGenerateKeyRequest Mozilla HTMLMediaElement.webkitGenerateKeyRequest documentation> 
htmlMediaElementWebkitGenerateKeyRequest ::
                                         (IsHTMLMediaElement self, ToJSString keySystem,
                                          IsUint8Array initData) =>
                                           self -> keySystem -> Maybe initData -> IO ()
htmlMediaElementWebkitGenerateKeyRequest self keySystem initData
  = ghcjs_dom_html_media_element_webkit_generate_key_request
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString keySystem)
      (maybe jsNull (unUint8Array . toUint8Array) initData)
 
foreign import javascript unsafe
        "$1[\"webkitAddKey\"]($2, $3, $4,\n$5)"
        ghcjs_dom_html_media_element_webkit_add_key ::
        JSRef HTMLMediaElement ->
          JSString ->
            JSRef Uint8Array -> JSRef Uint8Array -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitAddKey Mozilla HTMLMediaElement.webkitAddKey documentation> 
htmlMediaElementWebkitAddKey ::
                             (IsHTMLMediaElement self, ToJSString keySystem, IsUint8Array key,
                              IsUint8Array initData, ToJSString sessionId) =>
                               self ->
                                 keySystem -> Maybe key -> Maybe initData -> sessionId -> IO ()
htmlMediaElementWebkitAddKey self keySystem key initData sessionId
  = ghcjs_dom_html_media_element_webkit_add_key
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString keySystem)
      (maybe jsNull (unUint8Array . toUint8Array) key)
      (maybe jsNull (unUint8Array . toUint8Array) initData)
      (toJSString sessionId)
 
foreign import javascript unsafe
        "$1[\"webkitCancelKeyRequest\"]($2,\n$3)"
        ghcjs_dom_html_media_element_webkit_cancel_key_request ::
        JSRef HTMLMediaElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitCancelKeyRequest Mozilla HTMLMediaElement.webkitCancelKeyRequest documentation> 
htmlMediaElementWebkitCancelKeyRequest ::
                                       (IsHTMLMediaElement self, ToJSString keySystem,
                                        ToJSString sessionId) =>
                                         self -> keySystem -> sessionId -> IO ()
htmlMediaElementWebkitCancelKeyRequest self keySystem sessionId
  = ghcjs_dom_html_media_element_webkit_cancel_key_request
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString keySystem)
      (toJSString sessionId)
 
foreign import javascript unsafe "$1[\"webkitSetMediaKeys\"]($2)"
        ghcjs_dom_html_media_element_webkit_set_media_keys ::
        JSRef HTMLMediaElement -> JSRef MediaKeys -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitSetMediaKeys Mozilla HTMLMediaElement.webkitSetMediaKeys documentation> 
htmlMediaElementWebkitSetMediaKeys ::
                                   (IsHTMLMediaElement self, IsMediaKeys mediaKeys) =>
                                     self -> Maybe mediaKeys -> IO ()
htmlMediaElementWebkitSetMediaKeys self mediaKeys
  = ghcjs_dom_html_media_element_webkit_set_media_keys
      (unHTMLMediaElement (toHTMLMediaElement self))
      (maybe jsNull (unMediaKeys . toMediaKeys) mediaKeys)
 
foreign import javascript unsafe "$1[\"addTextTrack\"]($2, $3, $4)"
        ghcjs_dom_html_media_element_add_text_track ::
        JSRef HTMLMediaElement ->
          JSString -> JSString -> JSString -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.addTextTrack Mozilla HTMLMediaElement.addTextTrack documentation> 
htmlMediaElementAddTextTrack ::
                             (IsHTMLMediaElement self, ToJSString kind, ToJSString label,
                              ToJSString language) =>
                               self -> kind -> label -> language -> IO (Maybe TextTrack)
htmlMediaElementAddTextTrack self kind label language
  = (ghcjs_dom_html_media_element_add_text_track
       (unHTMLMediaElement (toHTMLMediaElement self))
       (toJSString kind)
       (toJSString label)
       (toJSString language))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"webkitShowPlaybackTargetPicker\"]()"
        ghcjs_dom_html_media_element_webkit_show_playback_target_picker ::
        JSRef HTMLMediaElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitShowPlaybackTargetPicker Mozilla HTMLMediaElement.webkitShowPlaybackTargetPicker documentation> 
htmlMediaElementWebkitShowPlaybackTargetPicker ::
                                               (IsHTMLMediaElement self) => self -> IO ()
htmlMediaElementWebkitShowPlaybackTargetPicker self
  = ghcjs_dom_html_media_element_webkit_show_playback_target_picker
      (unHTMLMediaElement (toHTMLMediaElement self))
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
                         (IsHTMLMediaElement self) => self -> IO (Maybe MediaError)
htmlMediaElementGetError self
  = (ghcjs_dom_html_media_element_get_error
       (unHTMLMediaElement (toHTMLMediaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_media_element_set_src ::
        JSRef HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.src Mozilla HTMLMediaElement.src documentation> 
htmlMediaElementSetSrc ::
                       (IsHTMLMediaElement self, ToJSString val) => self -> val -> IO ()
htmlMediaElementSetSrc self val
  = ghcjs_dom_html_media_element_set_src
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_media_element_get_src ::
        JSRef HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.src Mozilla HTMLMediaElement.src documentation> 
htmlMediaElementGetSrc ::
                       (IsHTMLMediaElement self, FromJSString result) => self -> IO result
htmlMediaElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_media_element_get_src
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"currentSrc\"]"
        ghcjs_dom_html_media_element_get_current_src ::
        JSRef HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentSrc Mozilla HTMLMediaElement.currentSrc documentation> 
htmlMediaElementGetCurrentSrc ::
                              (IsHTMLMediaElement self, FromJSString result) => self -> IO result
htmlMediaElementGetCurrentSrc self
  = fromJSString <$>
      (ghcjs_dom_html_media_element_get_current_src
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"networkState\"]"
        ghcjs_dom_html_media_element_get_network_state ::
        JSRef HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.networkState Mozilla HTMLMediaElement.networkState documentation> 
htmlMediaElementGetNetworkState ::
                                (IsHTMLMediaElement self) => self -> IO Word
htmlMediaElementGetNetworkState self
  = ghcjs_dom_html_media_element_get_network_state
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"preload\"] = $2;"
        ghcjs_dom_html_media_element_set_preload ::
        JSRef HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.preload Mozilla HTMLMediaElement.preload documentation> 
htmlMediaElementSetPreload ::
                           (IsHTMLMediaElement self, ToJSString val) => self -> val -> IO ()
htmlMediaElementSetPreload self val
  = ghcjs_dom_html_media_element_set_preload
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"preload\"]"
        ghcjs_dom_html_media_element_get_preload ::
        JSRef HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.preload Mozilla HTMLMediaElement.preload documentation> 
htmlMediaElementGetPreload ::
                           (IsHTMLMediaElement self, FromJSString result) => self -> IO result
htmlMediaElementGetPreload self
  = fromJSString <$>
      (ghcjs_dom_html_media_element_get_preload
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"buffered\"]"
        ghcjs_dom_html_media_element_get_buffered ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.buffered Mozilla HTMLMediaElement.buffered documentation> 
htmlMediaElementGetBuffered ::
                            (IsHTMLMediaElement self) => self -> IO (Maybe TimeRanges)
htmlMediaElementGetBuffered self
  = (ghcjs_dom_html_media_element_get_buffered
       (unHTMLMediaElement (toHTMLMediaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_html_media_element_get_ready_state ::
        JSRef HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.readyState Mozilla HTMLMediaElement.readyState documentation> 
htmlMediaElementGetReadyState ::
                              (IsHTMLMediaElement self) => self -> IO Word
htmlMediaElementGetReadyState self
  = ghcjs_dom_html_media_element_get_ready_state
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "($1[\"seeking\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_seeking ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seeking Mozilla HTMLMediaElement.seeking documentation> 
htmlMediaElementGetSeeking ::
                           (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetSeeking self
  = ghcjs_dom_html_media_element_get_seeking
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"currentTime\"] = $2;"
        ghcjs_dom_html_media_element_set_current_time ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentTime Mozilla HTMLMediaElement.currentTime documentation> 
htmlMediaElementSetCurrentTime ::
                               (IsHTMLMediaElement self) => self -> Double -> IO ()
htmlMediaElementSetCurrentTime self val
  = ghcjs_dom_html_media_element_set_current_time
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe "$1[\"currentTime\"]"
        ghcjs_dom_html_media_element_get_current_time ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.currentTime Mozilla HTMLMediaElement.currentTime documentation> 
htmlMediaElementGetCurrentTime ::
                               (IsHTMLMediaElement self) => self -> IO Double
htmlMediaElementGetCurrentTime self
  = ghcjs_dom_html_media_element_get_current_time
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_html_media_element_get_duration ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.duration Mozilla HTMLMediaElement.duration documentation> 
htmlMediaElementGetDuration ::
                            (IsHTMLMediaElement self) => self -> IO Double
htmlMediaElementGetDuration self
  = ghcjs_dom_html_media_element_get_duration
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_paused ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.paused Mozilla HTMLMediaElement.paused documentation> 
htmlMediaElementGetPaused ::
                          (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetPaused self
  = ghcjs_dom_html_media_element_get_paused
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "$1[\"defaultPlaybackRate\"] = $2;"
        ghcjs_dom_html_media_element_set_default_playback_rate ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultPlaybackRate Mozilla HTMLMediaElement.defaultPlaybackRate documentation> 
htmlMediaElementSetDefaultPlaybackRate ::
                                       (IsHTMLMediaElement self) => self -> Double -> IO ()
htmlMediaElementSetDefaultPlaybackRate self val
  = ghcjs_dom_html_media_element_set_default_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe "$1[\"defaultPlaybackRate\"]"
        ghcjs_dom_html_media_element_get_default_playback_rate ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultPlaybackRate Mozilla HTMLMediaElement.defaultPlaybackRate documentation> 
htmlMediaElementGetDefaultPlaybackRate ::
                                       (IsHTMLMediaElement self) => self -> IO Double
htmlMediaElementGetDefaultPlaybackRate self
  = ghcjs_dom_html_media_element_get_default_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"playbackRate\"] = $2;"
        ghcjs_dom_html_media_element_set_playback_rate ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playbackRate Mozilla HTMLMediaElement.playbackRate documentation> 
htmlMediaElementSetPlaybackRate ::
                                (IsHTMLMediaElement self) => self -> Double -> IO ()
htmlMediaElementSetPlaybackRate self val
  = ghcjs_dom_html_media_element_set_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        ghcjs_dom_html_media_element_get_playback_rate ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.playbackRate Mozilla HTMLMediaElement.playbackRate documentation> 
htmlMediaElementGetPlaybackRate ::
                                (IsHTMLMediaElement self) => self -> IO Double
htmlMediaElementGetPlaybackRate self
  = ghcjs_dom_html_media_element_get_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"played\"]"
        ghcjs_dom_html_media_element_get_played ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.played Mozilla HTMLMediaElement.played documentation> 
htmlMediaElementGetPlayed ::
                          (IsHTMLMediaElement self) => self -> IO (Maybe TimeRanges)
htmlMediaElementGetPlayed self
  = (ghcjs_dom_html_media_element_get_played
       (unHTMLMediaElement (toHTMLMediaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"seekable\"]"
        ghcjs_dom_html_media_element_get_seekable ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.seekable Mozilla HTMLMediaElement.seekable documentation> 
htmlMediaElementGetSeekable ::
                            (IsHTMLMediaElement self) => self -> IO (Maybe TimeRanges)
htmlMediaElementGetSeekable self
  = (ghcjs_dom_html_media_element_get_seekable
       (unHTMLMediaElement (toHTMLMediaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "($1[\"ended\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_ended ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ended Mozilla HTMLMediaElement.ended documentation> 
htmlMediaElementGetEnded ::
                         (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetEnded self
  = ghcjs_dom_html_media_element_get_ended
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"autoplay\"] = $2;"
        ghcjs_dom_html_media_element_set_autoplay ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.autoplay Mozilla HTMLMediaElement.autoplay documentation> 
htmlMediaElementSetAutoplay ::
                            (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetAutoplay self val
  = ghcjs_dom_html_media_element_set_autoplay
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe "($1[\"autoplay\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_autoplay ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.autoplay Mozilla HTMLMediaElement.autoplay documentation> 
htmlMediaElementGetAutoplay ::
                            (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetAutoplay self
  = ghcjs_dom_html_media_element_get_autoplay
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"loop\"] = $2;"
        ghcjs_dom_html_media_element_set_loop ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loop Mozilla HTMLMediaElement.loop documentation> 
htmlMediaElementSetLoop ::
                        (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetLoop self val
  = ghcjs_dom_html_media_element_set_loop
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe "($1[\"loop\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_loop ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.loop Mozilla HTMLMediaElement.loop documentation> 
htmlMediaElementGetLoop ::
                        (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetLoop self
  = ghcjs_dom_html_media_element_get_loop
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"controls\"] = $2;"
        ghcjs_dom_html_media_element_set_controls ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controls Mozilla HTMLMediaElement.controls documentation> 
htmlMediaElementSetControls ::
                            (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetControls self val
  = ghcjs_dom_html_media_element_set_controls
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe "($1[\"controls\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_controls ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controls Mozilla HTMLMediaElement.controls documentation> 
htmlMediaElementGetControls ::
                            (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetControls self
  = ghcjs_dom_html_media_element_get_controls
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        ghcjs_dom_html_media_element_set_volume ::
        JSRef HTMLMediaElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.volume Mozilla HTMLMediaElement.volume documentation> 
htmlMediaElementSetVolume ::
                          (IsHTMLMediaElement self) => self -> Double -> IO ()
htmlMediaElementSetVolume self val
  = ghcjs_dom_html_media_element_set_volume
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe "$1[\"volume\"]"
        ghcjs_dom_html_media_element_get_volume ::
        JSRef HTMLMediaElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.volume Mozilla HTMLMediaElement.volume documentation> 
htmlMediaElementGetVolume ::
                          (IsHTMLMediaElement self) => self -> IO Double
htmlMediaElementGetVolume self
  = ghcjs_dom_html_media_element_get_volume
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"muted\"] = $2;"
        ghcjs_dom_html_media_element_set_muted ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.muted Mozilla HTMLMediaElement.muted documentation> 
htmlMediaElementSetMuted ::
                         (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetMuted self val
  = ghcjs_dom_html_media_element_set_muted
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_muted ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.muted Mozilla HTMLMediaElement.muted documentation> 
htmlMediaElementGetMuted ::
                         (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetMuted self
  = ghcjs_dom_html_media_element_get_muted
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe "$1[\"defaultMuted\"] = $2;"
        ghcjs_dom_html_media_element_set_default_muted ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultMuted Mozilla HTMLMediaElement.defaultMuted documentation> 
htmlMediaElementSetDefaultMuted ::
                                (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetDefaultMuted self val
  = ghcjs_dom_html_media_element_set_default_muted
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe "($1[\"defaultMuted\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_default_muted ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.defaultMuted Mozilla HTMLMediaElement.defaultMuted documentation> 
htmlMediaElementGetDefaultMuted ::
                                (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetDefaultMuted self
  = ghcjs_dom_html_media_element_get_default_muted
      (unHTMLMediaElement (toHTMLMediaElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onemptied Mozilla HTMLMediaElement.onemptied documentation> 
htmlMediaElementOnemptied ::
                          (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnemptied = (connect "emptied")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onloadedmetadata Mozilla HTMLMediaElement.onloadedmetadata documentation> 
htmlMediaElementOnloadedmetadata ::
                                 (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnloadedmetadata = (connect "loadedmetadata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onloadeddata Mozilla HTMLMediaElement.onloadeddata documentation> 
htmlMediaElementOnloadeddata ::
                             (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnloadeddata = (connect "loadeddata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.oncanplay Mozilla HTMLMediaElement.oncanplay documentation> 
htmlMediaElementOncanplay ::
                          (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOncanplay = (connect "canplay")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.oncanplaythrough Mozilla HTMLMediaElement.oncanplaythrough documentation> 
htmlMediaElementOncanplaythrough ::
                                 (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOncanplaythrough = (connect "canplaythrough")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onplaying Mozilla HTMLMediaElement.onplaying documentation> 
htmlMediaElementOnplaying ::
                          (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnplaying = (connect "playing")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onended Mozilla HTMLMediaElement.onended documentation> 
htmlMediaElementOnended ::
                        (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnended = (connect "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwaiting Mozilla HTMLMediaElement.onwaiting documentation> 
htmlMediaElementOnwaiting ::
                          (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnwaiting = (connect "waiting")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ondurationchange Mozilla HTMLMediaElement.ondurationchange documentation> 
htmlMediaElementOndurationchange ::
                                 (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOndurationchange = (connect "durationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.ontimeupdate Mozilla HTMLMediaElement.ontimeupdate documentation> 
htmlMediaElementOntimeupdate ::
                             (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOntimeupdate = (connect "timeupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onplay Mozilla HTMLMediaElement.onplay documentation> 
htmlMediaElementOnplay ::
                       (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnplay = (connect "play")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onpause Mozilla HTMLMediaElement.onpause documentation> 
htmlMediaElementOnpause ::
                        (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnpause = (connect "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onratechange Mozilla HTMLMediaElement.onratechange documentation> 
htmlMediaElementOnratechange ::
                             (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnratechange = (connect "ratechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onvolumechange Mozilla HTMLMediaElement.onvolumechange documentation> 
htmlMediaElementOnvolumechange ::
                               (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnvolumechange = (connect "volumechange")
 
foreign import javascript unsafe
        "$1[\"webkitPreservesPitch\"] = $2;"
        ghcjs_dom_html_media_element_set_webkit_preserves_pitch ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitPreservesPitch Mozilla HTMLMediaElement.webkitPreservesPitch documentation> 
htmlMediaElementSetWebkitPreservesPitch ::
                                        (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetWebkitPreservesPitch self val
  = ghcjs_dom_html_media_element_set_webkit_preserves_pitch
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe
        "($1[\"webkitPreservesPitch\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_preserves_pitch ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitPreservesPitch Mozilla HTMLMediaElement.webkitPreservesPitch documentation> 
htmlMediaElementGetWebkitPreservesPitch ::
                                        (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetWebkitPreservesPitch self
  = ghcjs_dom_html_media_element_get_webkit_preserves_pitch
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "($1[\"webkitHasClosedCaptions\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_has_closed_captions ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitHasClosedCaptions Mozilla HTMLMediaElement.webkitHasClosedCaptions documentation> 
htmlMediaElementGetWebkitHasClosedCaptions ::
                                           (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetWebkitHasClosedCaptions self
  = ghcjs_dom_html_media_element_get_webkit_has_closed_captions
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "$1[\"webkitClosedCaptionsVisible\"] = $2;"
        ghcjs_dom_html_media_element_set_webkit_closed_captions_visible ::
        JSRef HTMLMediaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitClosedCaptionsVisible Mozilla HTMLMediaElement.webkitClosedCaptionsVisible documentation> 
htmlMediaElementSetWebkitClosedCaptionsVisible ::
                                               (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetWebkitClosedCaptionsVisible self val
  = ghcjs_dom_html_media_element_set_webkit_closed_captions_visible
      (unHTMLMediaElement (toHTMLMediaElement self))
      val
 
foreign import javascript unsafe
        "($1[\"webkitClosedCaptionsVisible\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_closed_captions_visible ::
        JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitClosedCaptionsVisible Mozilla HTMLMediaElement.webkitClosedCaptionsVisible documentation> 
htmlMediaElementGetWebkitClosedCaptionsVisible ::
                                               (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetWebkitClosedCaptionsVisible self
  = ghcjs_dom_html_media_element_get_webkit_closed_captions_visible
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "$1[\"webkitAudioDecodedByteCount\"]"
        ghcjs_dom_html_media_element_get_webkit_audio_decoded_byte_count ::
        JSRef HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitAudioDecodedByteCount Mozilla HTMLMediaElement.webkitAudioDecodedByteCount documentation> 
htmlMediaElementGetWebkitAudioDecodedByteCount ::
                                               (IsHTMLMediaElement self) => self -> IO Word
htmlMediaElementGetWebkitAudioDecodedByteCount self
  = ghcjs_dom_html_media_element_get_webkit_audio_decoded_byte_count
      (unHTMLMediaElement (toHTMLMediaElement self))
 
foreign import javascript unsafe
        "$1[\"webkitVideoDecodedByteCount\"]"
        ghcjs_dom_html_media_element_get_webkit_video_decoded_byte_count ::
        JSRef HTMLMediaElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitVideoDecodedByteCount Mozilla HTMLMediaElement.webkitVideoDecodedByteCount documentation> 
htmlMediaElementGetWebkitVideoDecodedByteCount ::
                                               (IsHTMLMediaElement self) => self -> IO Word
htmlMediaElementGetWebkitVideoDecodedByteCount self
  = ghcjs_dom_html_media_element_get_webkit_video_decoded_byte_count
      (unHTMLMediaElement (toHTMLMediaElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitkeyadded Mozilla HTMLMediaElement.onwebkitkeyadded documentation> 
htmlMediaElementOnwebkitkeyadded ::
                                 (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnwebkitkeyadded = (connect "webkitkeyadded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitkeyerror Mozilla HTMLMediaElement.onwebkitkeyerror documentation> 
htmlMediaElementOnwebkitkeyerror ::
                                 (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnwebkitkeyerror = (connect "webkitkeyerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitkeymessage Mozilla HTMLMediaElement.onwebkitkeymessage documentation> 
htmlMediaElementOnwebkitkeymessage ::
                                   (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnwebkitkeymessage = (connect "webkitkeymessage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitneedkey Mozilla HTMLMediaElement.onwebkitneedkey documentation> 
htmlMediaElementOnwebkitneedkey ::
                                (IsHTMLMediaElement self) => Signal self (EventM UIEvent self ())
htmlMediaElementOnwebkitneedkey = (connect "webkitneedkey")
 
foreign import javascript unsafe "$1[\"webkitKeys\"]"
        ghcjs_dom_html_media_element_get_webkit_keys ::
        JSRef HTMLMediaElement -> IO (JSRef MediaKeys)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitKeys Mozilla HTMLMediaElement.webkitKeys documentation> 
htmlMediaElementGetWebkitKeys ::
                              (IsHTMLMediaElement self) => self -> IO (Maybe MediaKeys)
htmlMediaElementGetWebkitKeys self
  = (ghcjs_dom_html_media_element_get_webkit_keys
       (unHTMLMediaElement (toHTMLMediaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"audioTracks\"]"
        ghcjs_dom_html_media_element_get_audio_tracks ::
        JSRef HTMLMediaElement -> IO (JSRef AudioTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.audioTracks Mozilla HTMLMediaElement.audioTracks documentation> 
htmlMediaElementGetAudioTracks ::
                               (IsHTMLMediaElement self) => self -> IO (Maybe AudioTrackList)
htmlMediaElementGetAudioTracks self
  = (ghcjs_dom_html_media_element_get_audio_tracks
       (unHTMLMediaElement (toHTMLMediaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"textTracks\"]"
        ghcjs_dom_html_media_element_get_text_tracks ::
        JSRef HTMLMediaElement -> IO (JSRef TextTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.textTracks Mozilla HTMLMediaElement.textTracks documentation> 
htmlMediaElementGetTextTracks ::
                              (IsHTMLMediaElement self) => self -> IO (Maybe TextTrackList)
htmlMediaElementGetTextTracks self
  = (ghcjs_dom_html_media_element_get_text_tracks
       (unHTMLMediaElement (toHTMLMediaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"videoTracks\"]"
        ghcjs_dom_html_media_element_get_video_tracks ::
        JSRef HTMLMediaElement -> IO (JSRef VideoTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.videoTracks Mozilla HTMLMediaElement.videoTracks documentation> 
htmlMediaElementGetVideoTracks ::
                               (IsHTMLMediaElement self) => self -> IO (Maybe VideoTrackList)
htmlMediaElementGetVideoTracks self
  = (ghcjs_dom_html_media_element_get_video_tracks
       (unHTMLMediaElement (toHTMLMediaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"mediaGroup\"] = $2;"
        ghcjs_dom_html_media_element_set_media_group ::
        JSRef HTMLMediaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
htmlMediaElementSetMediaGroup ::
                              (IsHTMLMediaElement self, ToJSString val) => self -> val -> IO ()
htmlMediaElementSetMediaGroup self val
  = ghcjs_dom_html_media_element_set_media_group
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"mediaGroup\"]"
        ghcjs_dom_html_media_element_get_media_group ::
        JSRef HTMLMediaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.mediaGroup Mozilla HTMLMediaElement.mediaGroup documentation> 
htmlMediaElementGetMediaGroup ::
                              (IsHTMLMediaElement self, FromJSString result) => self -> IO result
htmlMediaElementGetMediaGroup self
  = fromJSString <$>
      (ghcjs_dom_html_media_element_get_media_group
         (unHTMLMediaElement (toHTMLMediaElement self)))
 
foreign import javascript unsafe "$1[\"controller\"] = $2;"
        ghcjs_dom_html_media_element_set_controller ::
        JSRef HTMLMediaElement -> JSRef MediaController -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
htmlMediaElementSetController ::
                              (IsHTMLMediaElement self, IsMediaController val) =>
                                self -> Maybe val -> IO ()
htmlMediaElementSetController self val
  = ghcjs_dom_html_media_element_set_controller
      (unHTMLMediaElement (toHTMLMediaElement self))
      (maybe jsNull (unMediaController . toMediaController) val)
 
foreign import javascript unsafe "$1[\"controller\"]"
        ghcjs_dom_html_media_element_get_controller ::
        JSRef HTMLMediaElement -> IO (JSRef MediaController)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.controller Mozilla HTMLMediaElement.controller documentation> 
htmlMediaElementGetController ::
                              (IsHTMLMediaElement self) => self -> IO (Maybe MediaController)
htmlMediaElementGetController self
  = (ghcjs_dom_html_media_element_get_controller
       (unHTMLMediaElement (toHTMLMediaElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"webkitCurrentPlaybackTargetIsWireless\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_current_playback_target_is_wireless
        :: JSRef HTMLMediaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless Mozilla HTMLMediaElement.webkitCurrentPlaybackTargetIsWireless documentation> 
htmlMediaElementGetWebkitCurrentPlaybackTargetIsWireless ::
                                                         (IsHTMLMediaElement self) =>
                                                           self -> IO Bool
htmlMediaElementGetWebkitCurrentPlaybackTargetIsWireless self
  = ghcjs_dom_html_media_element_get_webkit_current_playback_target_is_wireless
      (unHTMLMediaElement (toHTMLMediaElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitcurrentplaybacktargetiswirelesschanged Mozilla HTMLMediaElement.onwebkitcurrentplaybacktargetiswirelesschanged documentation> 
htmlMediaElementOnwebkitcurrentplaybacktargetiswirelesschanged ::
                                                               (IsHTMLMediaElement self) =>
                                                                 Signal self
                                                                   (EventM UIEvent self ())
htmlMediaElementOnwebkitcurrentplaybacktargetiswirelesschanged
  = (connect "webkitcurrentplaybacktargetiswirelesschanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement.onwebkitplaybacktargetavailabilitychanged Mozilla HTMLMediaElement.onwebkitplaybacktargetavailabilitychanged documentation> 
htmlMediaElementOnwebkitplaybacktargetavailabilitychanged ::
                                                          (IsHTMLMediaElement self) =>
                                                            Signal self (EventM UIEvent self ())
htmlMediaElementOnwebkitplaybacktargetavailabilitychanged
  = (connect "webkitplaybacktargetavailabilitychanged")
#else
module GHCJS.DOM.HTMLMediaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMediaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMediaElement
#endif
