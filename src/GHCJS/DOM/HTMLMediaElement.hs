{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMediaElement
       (ghcjs_dom_html_media_element_load, htmlMediaElementLoad,
        ghcjs_dom_html_media_element_can_play_type,
        htmlMediaElementCanPlayType, ghcjs_dom_html_media_element_play,
        htmlMediaElementPlay, ghcjs_dom_html_media_element_pause,
        htmlMediaElementPause, cNETWORK_EMPTY, cNETWORK_IDLE,
        cNETWORK_LOADING, cNETWORK_NO_SOURCE, cHAVE_NOTHING,
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
        ghcjs_dom_html_media_element_get_initial_time,
        htmlMediaElementGetInitialTime,
        ghcjs_dom_html_media_element_get_start_time,
        htmlMediaElementGetStartTime,
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
        htmlMediaElementGetDefaultMuted,
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
        ghcjs_dom_html_media_element_set_media_group,
        htmlMediaElementSetMediaGroup,
        ghcjs_dom_html_media_element_get_media_group,
        htmlMediaElementGetMediaGroup)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"load\"]()"
        ghcjs_dom_html_media_element_load ::
        JSRef HTMLMediaElement -> IO ()
#else 
ghcjs_dom_html_media_element_load ::
                                    JSRef HTMLMediaElement -> IO ()
ghcjs_dom_html_media_element_load = undefined
#endif
 
htmlMediaElementLoad :: (IsHTMLMediaElement self) => self -> IO ()
htmlMediaElementLoad self
  = ghcjs_dom_html_media_element_load
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"canPlayType\"]($2)"
        ghcjs_dom_html_media_element_can_play_type ::
        JSRef HTMLMediaElement -> JSString -> IO JSString
#else 
ghcjs_dom_html_media_element_can_play_type ::
                                             JSRef HTMLMediaElement -> JSString -> IO JSString
ghcjs_dom_html_media_element_can_play_type = undefined
#endif
 
htmlMediaElementCanPlayType ::
                            (IsHTMLMediaElement self, ToJSString type', FromJSString result) =>
                              self -> type' -> IO result
htmlMediaElementCanPlayType self type'
  = fromJSString <$>
      (ghcjs_dom_html_media_element_can_play_type
         (unHTMLMediaElement (toHTMLMediaElement self))
         (toJSString type'))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"play\"]()"
        ghcjs_dom_html_media_element_play ::
        JSRef HTMLMediaElement -> IO ()
#else 
ghcjs_dom_html_media_element_play ::
                                    JSRef HTMLMediaElement -> IO ()
ghcjs_dom_html_media_element_play = undefined
#endif
 
htmlMediaElementPlay :: (IsHTMLMediaElement self) => self -> IO ()
htmlMediaElementPlay self
  = ghcjs_dom_html_media_element_play
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pause\"]()"
        ghcjs_dom_html_media_element_pause ::
        JSRef HTMLMediaElement -> IO ()
#else 
ghcjs_dom_html_media_element_pause ::
                                     JSRef HTMLMediaElement -> IO ()
ghcjs_dom_html_media_element_pause = undefined
#endif
 
htmlMediaElementPause :: (IsHTMLMediaElement self) => self -> IO ()
htmlMediaElementPause self
  = ghcjs_dom_html_media_element_pause
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


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_html_media_element_get_error ::
        JSRef HTMLMediaElement -> IO (JSRef MediaError)
#else 
ghcjs_dom_html_media_element_get_error ::
                                         JSRef HTMLMediaElement -> IO (JSRef MediaError)
ghcjs_dom_html_media_element_get_error = undefined
#endif
 
htmlMediaElementGetError ::
                         (IsHTMLMediaElement self) => self -> IO (Maybe MediaError)
htmlMediaElementGetError self
  = fmap MediaError . maybeJSNull <$>
      (ghcjs_dom_html_media_element_get_error
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_media_element_set_src ::
        JSRef HTMLMediaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_media_element_set_src ::
                                       JSRef HTMLMediaElement -> JSString -> IO ()
ghcjs_dom_html_media_element_set_src = undefined
#endif
 
htmlMediaElementSetSrc ::
                       (IsHTMLMediaElement self, ToJSString val) => self -> val -> IO ()
htmlMediaElementSetSrc self val
  = ghcjs_dom_html_media_element_set_src
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_media_element_get_src ::
        JSRef HTMLMediaElement -> IO JSString
#else 
ghcjs_dom_html_media_element_get_src ::
                                       JSRef HTMLMediaElement -> IO JSString
ghcjs_dom_html_media_element_get_src = undefined
#endif
 
htmlMediaElementGetSrc ::
                       (IsHTMLMediaElement self, FromJSString result) => self -> IO result
htmlMediaElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_media_element_get_src
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentSrc\"]"
        ghcjs_dom_html_media_element_get_current_src ::
        JSRef HTMLMediaElement -> IO JSString
#else 
ghcjs_dom_html_media_element_get_current_src ::
                                               JSRef HTMLMediaElement -> IO JSString
ghcjs_dom_html_media_element_get_current_src = undefined
#endif
 
htmlMediaElementGetCurrentSrc ::
                              (IsHTMLMediaElement self, FromJSString result) => self -> IO result
htmlMediaElementGetCurrentSrc self
  = fromJSString <$>
      (ghcjs_dom_html_media_element_get_current_src
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"networkState\"]"
        ghcjs_dom_html_media_element_get_network_state ::
        JSRef HTMLMediaElement -> IO Word
#else 
ghcjs_dom_html_media_element_get_network_state ::
                                                 JSRef HTMLMediaElement -> IO Word
ghcjs_dom_html_media_element_get_network_state = undefined
#endif
 
htmlMediaElementGetNetworkState ::
                                (IsHTMLMediaElement self) => self -> IO Word
htmlMediaElementGetNetworkState self
  = ghcjs_dom_html_media_element_get_network_state
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"preload\"] = $2;"
        ghcjs_dom_html_media_element_set_preload ::
        JSRef HTMLMediaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_media_element_set_preload ::
                                           JSRef HTMLMediaElement -> JSString -> IO ()
ghcjs_dom_html_media_element_set_preload = undefined
#endif
 
htmlMediaElementSetPreload ::
                           (IsHTMLMediaElement self, ToJSString val) => self -> val -> IO ()
htmlMediaElementSetPreload self val
  = ghcjs_dom_html_media_element_set_preload
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"preload\"]"
        ghcjs_dom_html_media_element_get_preload ::
        JSRef HTMLMediaElement -> IO JSString
#else 
ghcjs_dom_html_media_element_get_preload ::
                                           JSRef HTMLMediaElement -> IO JSString
ghcjs_dom_html_media_element_get_preload = undefined
#endif
 
htmlMediaElementGetPreload ::
                           (IsHTMLMediaElement self, FromJSString result) => self -> IO result
htmlMediaElementGetPreload self
  = fromJSString <$>
      (ghcjs_dom_html_media_element_get_preload
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"buffered\"]"
        ghcjs_dom_html_media_element_get_buffered ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
#else 
ghcjs_dom_html_media_element_get_buffered ::
                                            JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
ghcjs_dom_html_media_element_get_buffered = undefined
#endif
 
htmlMediaElementGetBuffered ::
                            (IsHTMLMediaElement self) => self -> IO (Maybe TimeRanges)
htmlMediaElementGetBuffered self
  = fmap TimeRanges . maybeJSNull <$>
      (ghcjs_dom_html_media_element_get_buffered
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_html_media_element_get_ready_state ::
        JSRef HTMLMediaElement -> IO Word
#else 
ghcjs_dom_html_media_element_get_ready_state ::
                                               JSRef HTMLMediaElement -> IO Word
ghcjs_dom_html_media_element_get_ready_state = undefined
#endif
 
htmlMediaElementGetReadyState ::
                              (IsHTMLMediaElement self) => self -> IO Word
htmlMediaElementGetReadyState self
  = ghcjs_dom_html_media_element_get_ready_state
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"seeking\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_seeking ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_seeking ::
                                           JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_seeking = undefined
#endif
 
htmlMediaElementGetSeeking ::
                           (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetSeeking self
  = ghcjs_dom_html_media_element_get_seeking
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentTime\"] = $2;"
        ghcjs_dom_html_media_element_set_current_time ::
        JSRef HTMLMediaElement -> Float -> IO ()
#else 
ghcjs_dom_html_media_element_set_current_time ::
                                                JSRef HTMLMediaElement -> Float -> IO ()
ghcjs_dom_html_media_element_set_current_time = undefined
#endif
 
htmlMediaElementSetCurrentTime ::
                               (IsHTMLMediaElement self) => self -> Float -> IO ()
htmlMediaElementSetCurrentTime self val
  = ghcjs_dom_html_media_element_set_current_time
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentTime\"]"
        ghcjs_dom_html_media_element_get_current_time ::
        JSRef HTMLMediaElement -> IO Float
#else 
ghcjs_dom_html_media_element_get_current_time ::
                                                JSRef HTMLMediaElement -> IO Float
ghcjs_dom_html_media_element_get_current_time = undefined
#endif
 
htmlMediaElementGetCurrentTime ::
                               (IsHTMLMediaElement self) => self -> IO Float
htmlMediaElementGetCurrentTime self
  = ghcjs_dom_html_media_element_get_current_time
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"initialTime\"]"
        ghcjs_dom_html_media_element_get_initial_time ::
        JSRef HTMLMediaElement -> IO Double
#else 
ghcjs_dom_html_media_element_get_initial_time ::
                                                JSRef HTMLMediaElement -> IO Double
ghcjs_dom_html_media_element_get_initial_time = undefined
#endif
 
htmlMediaElementGetInitialTime ::
                               (IsHTMLMediaElement self) => self -> IO Double
htmlMediaElementGetInitialTime self
  = ghcjs_dom_html_media_element_get_initial_time
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"startTime\"]"
        ghcjs_dom_html_media_element_get_start_time ::
        JSRef HTMLMediaElement -> IO Float
#else 
ghcjs_dom_html_media_element_get_start_time ::
                                              JSRef HTMLMediaElement -> IO Float
ghcjs_dom_html_media_element_get_start_time = undefined
#endif
 
htmlMediaElementGetStartTime ::
                             (IsHTMLMediaElement self) => self -> IO Float
htmlMediaElementGetStartTime self
  = ghcjs_dom_html_media_element_get_start_time
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_html_media_element_get_duration ::
        JSRef HTMLMediaElement -> IO Float
#else 
ghcjs_dom_html_media_element_get_duration ::
                                            JSRef HTMLMediaElement -> IO Float
ghcjs_dom_html_media_element_get_duration = undefined
#endif
 
htmlMediaElementGetDuration ::
                            (IsHTMLMediaElement self) => self -> IO Float
htmlMediaElementGetDuration self
  = ghcjs_dom_html_media_element_get_duration
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_paused ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_paused ::
                                          JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_paused = undefined
#endif
 
htmlMediaElementGetPaused ::
                          (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetPaused self
  = ghcjs_dom_html_media_element_get_paused
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"defaultPlaybackRate\"] = $2;"
        ghcjs_dom_html_media_element_set_default_playback_rate ::
        JSRef HTMLMediaElement -> Float -> IO ()
#else 
ghcjs_dom_html_media_element_set_default_playback_rate ::
                                                         JSRef HTMLMediaElement -> Float -> IO ()
ghcjs_dom_html_media_element_set_default_playback_rate = undefined
#endif
 
htmlMediaElementSetDefaultPlaybackRate ::
                                       (IsHTMLMediaElement self) => self -> Float -> IO ()
htmlMediaElementSetDefaultPlaybackRate self val
  = ghcjs_dom_html_media_element_set_default_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultPlaybackRate\"]"
        ghcjs_dom_html_media_element_get_default_playback_rate ::
        JSRef HTMLMediaElement -> IO Float
#else 
ghcjs_dom_html_media_element_get_default_playback_rate ::
                                                         JSRef HTMLMediaElement -> IO Float
ghcjs_dom_html_media_element_get_default_playback_rate = undefined
#endif
 
htmlMediaElementGetDefaultPlaybackRate ::
                                       (IsHTMLMediaElement self) => self -> IO Float
htmlMediaElementGetDefaultPlaybackRate self
  = ghcjs_dom_html_media_element_get_default_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"playbackRate\"] = $2;"
        ghcjs_dom_html_media_element_set_playback_rate ::
        JSRef HTMLMediaElement -> Float -> IO ()
#else 
ghcjs_dom_html_media_element_set_playback_rate ::
                                                 JSRef HTMLMediaElement -> Float -> IO ()
ghcjs_dom_html_media_element_set_playback_rate = undefined
#endif
 
htmlMediaElementSetPlaybackRate ::
                                (IsHTMLMediaElement self) => self -> Float -> IO ()
htmlMediaElementSetPlaybackRate self val
  = ghcjs_dom_html_media_element_set_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        ghcjs_dom_html_media_element_get_playback_rate ::
        JSRef HTMLMediaElement -> IO Float
#else 
ghcjs_dom_html_media_element_get_playback_rate ::
                                                 JSRef HTMLMediaElement -> IO Float
ghcjs_dom_html_media_element_get_playback_rate = undefined
#endif
 
htmlMediaElementGetPlaybackRate ::
                                (IsHTMLMediaElement self) => self -> IO Float
htmlMediaElementGetPlaybackRate self
  = ghcjs_dom_html_media_element_get_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"played\"]"
        ghcjs_dom_html_media_element_get_played ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
#else 
ghcjs_dom_html_media_element_get_played ::
                                          JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
ghcjs_dom_html_media_element_get_played = undefined
#endif
 
htmlMediaElementGetPlayed ::
                          (IsHTMLMediaElement self) => self -> IO (Maybe TimeRanges)
htmlMediaElementGetPlayed self
  = fmap TimeRanges . maybeJSNull <$>
      (ghcjs_dom_html_media_element_get_played
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"seekable\"]"
        ghcjs_dom_html_media_element_get_seekable ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
#else 
ghcjs_dom_html_media_element_get_seekable ::
                                            JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
ghcjs_dom_html_media_element_get_seekable = undefined
#endif
 
htmlMediaElementGetSeekable ::
                            (IsHTMLMediaElement self) => self -> IO (Maybe TimeRanges)
htmlMediaElementGetSeekable self
  = fmap TimeRanges . maybeJSNull <$>
      (ghcjs_dom_html_media_element_get_seekable
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"ended\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_ended ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_ended ::
                                         JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_ended = undefined
#endif
 
htmlMediaElementGetEnded ::
                         (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetEnded self
  = ghcjs_dom_html_media_element_get_ended
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autoplay\"] = $2;"
        ghcjs_dom_html_media_element_set_autoplay ::
        JSRef HTMLMediaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_media_element_set_autoplay ::
                                            JSRef HTMLMediaElement -> Bool -> IO ()
ghcjs_dom_html_media_element_set_autoplay = undefined
#endif
 
htmlMediaElementSetAutoplay ::
                            (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetAutoplay self val
  = ghcjs_dom_html_media_element_set_autoplay
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"autoplay\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_autoplay ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_autoplay ::
                                            JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_autoplay = undefined
#endif
 
htmlMediaElementGetAutoplay ::
                            (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetAutoplay self
  = ghcjs_dom_html_media_element_get_autoplay
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"loop\"] = $2;"
        ghcjs_dom_html_media_element_set_loop ::
        JSRef HTMLMediaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_media_element_set_loop ::
                                        JSRef HTMLMediaElement -> Bool -> IO ()
ghcjs_dom_html_media_element_set_loop = undefined
#endif
 
htmlMediaElementSetLoop ::
                        (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetLoop self val
  = ghcjs_dom_html_media_element_set_loop
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"loop\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_loop ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_loop ::
                                        JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_loop = undefined
#endif
 
htmlMediaElementGetLoop ::
                        (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetLoop self
  = ghcjs_dom_html_media_element_get_loop
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"controls\"] = $2;"
        ghcjs_dom_html_media_element_set_controls ::
        JSRef HTMLMediaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_media_element_set_controls ::
                                            JSRef HTMLMediaElement -> Bool -> IO ()
ghcjs_dom_html_media_element_set_controls = undefined
#endif
 
htmlMediaElementSetControls ::
                            (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetControls self val
  = ghcjs_dom_html_media_element_set_controls
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"controls\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_controls ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_controls ::
                                            JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_controls = undefined
#endif
 
htmlMediaElementGetControls ::
                            (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetControls self
  = ghcjs_dom_html_media_element_get_controls
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        ghcjs_dom_html_media_element_set_volume ::
        JSRef HTMLMediaElement -> Float -> IO ()
#else 
ghcjs_dom_html_media_element_set_volume ::
                                          JSRef HTMLMediaElement -> Float -> IO ()
ghcjs_dom_html_media_element_set_volume = undefined
#endif
 
htmlMediaElementSetVolume ::
                          (IsHTMLMediaElement self) => self -> Float -> IO ()
htmlMediaElementSetVolume self val
  = ghcjs_dom_html_media_element_set_volume
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"volume\"]"
        ghcjs_dom_html_media_element_get_volume ::
        JSRef HTMLMediaElement -> IO Float
#else 
ghcjs_dom_html_media_element_get_volume ::
                                          JSRef HTMLMediaElement -> IO Float
ghcjs_dom_html_media_element_get_volume = undefined
#endif
 
htmlMediaElementGetVolume ::
                          (IsHTMLMediaElement self) => self -> IO Float
htmlMediaElementGetVolume self
  = ghcjs_dom_html_media_element_get_volume
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"muted\"] = $2;"
        ghcjs_dom_html_media_element_set_muted ::
        JSRef HTMLMediaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_media_element_set_muted ::
                                         JSRef HTMLMediaElement -> Bool -> IO ()
ghcjs_dom_html_media_element_set_muted = undefined
#endif
 
htmlMediaElementSetMuted ::
                         (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetMuted self val
  = ghcjs_dom_html_media_element_set_muted
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_muted ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_muted ::
                                         JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_muted = undefined
#endif
 
htmlMediaElementGetMuted ::
                         (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetMuted self
  = ghcjs_dom_html_media_element_get_muted
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultMuted\"] = $2;"
        ghcjs_dom_html_media_element_set_default_muted ::
        JSRef HTMLMediaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_media_element_set_default_muted ::
                                                 JSRef HTMLMediaElement -> Bool -> IO ()
ghcjs_dom_html_media_element_set_default_muted = undefined
#endif
 
htmlMediaElementSetDefaultMuted ::
                                (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetDefaultMuted self val
  = ghcjs_dom_html_media_element_set_default_muted
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"defaultMuted\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_default_muted ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_default_muted ::
                                                 JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_default_muted = undefined
#endif
 
htmlMediaElementGetDefaultMuted ::
                                (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetDefaultMuted self
  = ghcjs_dom_html_media_element_get_default_muted
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitPreservesPitch\"] = $2;"
        ghcjs_dom_html_media_element_set_webkit_preserves_pitch ::
        JSRef HTMLMediaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_media_element_set_webkit_preserves_pitch ::
                                                          JSRef HTMLMediaElement -> Bool -> IO ()
ghcjs_dom_html_media_element_set_webkit_preserves_pitch = undefined
#endif
 
htmlMediaElementSetWebkitPreservesPitch ::
                                        (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetWebkitPreservesPitch self val
  = ghcjs_dom_html_media_element_set_webkit_preserves_pitch
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitPreservesPitch\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_preserves_pitch ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_webkit_preserves_pitch ::
                                                          JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_webkit_preserves_pitch = undefined
#endif
 
htmlMediaElementGetWebkitPreservesPitch ::
                                        (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetWebkitPreservesPitch self
  = ghcjs_dom_html_media_element_get_webkit_preserves_pitch
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitHasClosedCaptions\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_has_closed_captions ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_webkit_has_closed_captions ::
                                                              JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_webkit_has_closed_captions
  = undefined
#endif
 
htmlMediaElementGetWebkitHasClosedCaptions ::
                                           (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetWebkitHasClosedCaptions self
  = ghcjs_dom_html_media_element_get_webkit_has_closed_captions
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitClosedCaptionsVisible\"] = $2;"
        ghcjs_dom_html_media_element_set_webkit_closed_captions_visible ::
        JSRef HTMLMediaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_media_element_set_webkit_closed_captions_visible ::
                                                                  JSRef HTMLMediaElement ->
                                                                    Bool -> IO ()
ghcjs_dom_html_media_element_set_webkit_closed_captions_visible
  = undefined
#endif
 
htmlMediaElementSetWebkitClosedCaptionsVisible ::
                                               (IsHTMLMediaElement self) => self -> Bool -> IO ()
htmlMediaElementSetWebkitClosedCaptionsVisible self val
  = ghcjs_dom_html_media_element_set_webkit_closed_captions_visible
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitClosedCaptionsVisible\"] ? 1 : 0)"
        ghcjs_dom_html_media_element_get_webkit_closed_captions_visible ::
        JSRef HTMLMediaElement -> IO Bool
#else 
ghcjs_dom_html_media_element_get_webkit_closed_captions_visible ::
                                                                  JSRef HTMLMediaElement -> IO Bool
ghcjs_dom_html_media_element_get_webkit_closed_captions_visible
  = undefined
#endif
 
htmlMediaElementGetWebkitClosedCaptionsVisible ::
                                               (IsHTMLMediaElement self) => self -> IO Bool
htmlMediaElementGetWebkitClosedCaptionsVisible self
  = ghcjs_dom_html_media_element_get_webkit_closed_captions_visible
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitAudioDecodedByteCount\"]"
        ghcjs_dom_html_media_element_get_webkit_audio_decoded_byte_count ::
        JSRef HTMLMediaElement -> IO Word
#else 
ghcjs_dom_html_media_element_get_webkit_audio_decoded_byte_count ::
                                                                   JSRef HTMLMediaElement -> IO Word
ghcjs_dom_html_media_element_get_webkit_audio_decoded_byte_count
  = undefined
#endif
 
htmlMediaElementGetWebkitAudioDecodedByteCount ::
                                               (IsHTMLMediaElement self) => self -> IO Word
htmlMediaElementGetWebkitAudioDecodedByteCount self
  = ghcjs_dom_html_media_element_get_webkit_audio_decoded_byte_count
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitVideoDecodedByteCount\"]"
        ghcjs_dom_html_media_element_get_webkit_video_decoded_byte_count ::
        JSRef HTMLMediaElement -> IO Word
#else 
ghcjs_dom_html_media_element_get_webkit_video_decoded_byte_count ::
                                                                   JSRef HTMLMediaElement -> IO Word
ghcjs_dom_html_media_element_get_webkit_video_decoded_byte_count
  = undefined
#endif
 
htmlMediaElementGetWebkitVideoDecodedByteCount ::
                                               (IsHTMLMediaElement self) => self -> IO Word
htmlMediaElementGetWebkitVideoDecodedByteCount self
  = ghcjs_dom_html_media_element_get_webkit_video_decoded_byte_count
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mediaGroup\"] = $2;"
        ghcjs_dom_html_media_element_set_media_group ::
        JSRef HTMLMediaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_media_element_set_media_group ::
                                               JSRef HTMLMediaElement -> JSString -> IO ()
ghcjs_dom_html_media_element_set_media_group = undefined
#endif
 
htmlMediaElementSetMediaGroup ::
                              (IsHTMLMediaElement self, ToJSString val) => self -> val -> IO ()
htmlMediaElementSetMediaGroup self val
  = ghcjs_dom_html_media_element_set_media_group
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mediaGroup\"]"
        ghcjs_dom_html_media_element_get_media_group ::
        JSRef HTMLMediaElement -> IO JSString
#else 
ghcjs_dom_html_media_element_get_media_group ::
                                               JSRef HTMLMediaElement -> IO JSString
ghcjs_dom_html_media_element_get_media_group = undefined
#endif
 
htmlMediaElementGetMediaGroup ::
                              (IsHTMLMediaElement self, FromJSString result) => self -> IO result
htmlMediaElementGetMediaGroup self
  = fromJSString <$>
      (ghcjs_dom_html_media_element_get_media_group
         (unHTMLMediaElement (toHTMLMediaElement self)))
#else
module GHCJS.DOM.HTMLMediaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMediaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMediaElement
#endif
