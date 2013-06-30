{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLMediaElement
       (webkit_dom_html_media_element_load, htmlMediaElementLoad,
        webkit_dom_html_media_element_can_play_type,
        htmlMediaElementCanPlayType, webkit_dom_html_media_element_play,
        htmlMediaElementPlay, webkit_dom_html_media_element_pause,
        htmlMediaElementPause, cNETWORK_EMPTY, cNETWORK_IDLE,
        cNETWORK_LOADING, cNETWORK_NO_SOURCE, cHAVE_NOTHING,
        cHAVE_METADATA, cHAVE_CURRENT_DATA, cHAVE_FUTURE_DATA,
        cHAVE_ENOUGH_DATA, webkit_dom_html_media_element_get_error,
        htmlMediaElementGetError, webkit_dom_html_media_element_set_src,
        htmlMediaElementSetSrc, webkit_dom_html_media_element_get_src,
        htmlMediaElementGetSrc,
        webkit_dom_html_media_element_get_current_src,
        htmlMediaElementGetCurrentSrc,
        webkit_dom_html_media_element_get_network_state,
        htmlMediaElementGetNetworkState,
        webkit_dom_html_media_element_set_preload,
        htmlMediaElementSetPreload,
        webkit_dom_html_media_element_get_preload,
        htmlMediaElementGetPreload,
        webkit_dom_html_media_element_get_buffered,
        htmlMediaElementGetBuffered,
        webkit_dom_html_media_element_get_ready_state,
        htmlMediaElementGetReadyState,
        webkit_dom_html_media_element_get_seeking,
        htmlMediaElementGetSeeking,
        webkit_dom_html_media_element_set_current_time,
        htmlMediaElementSetCurrentTime,
        webkit_dom_html_media_element_get_current_time,
        htmlMediaElementGetCurrentTime,
        webkit_dom_html_media_element_get_initial_time,
        htmlMediaElementGetInitialTime,
        webkit_dom_html_media_element_get_start_time,
        htmlMediaElementGetStartTime,
        webkit_dom_html_media_element_get_duration,
        htmlMediaElementGetDuration,
        webkit_dom_html_media_element_get_paused,
        htmlMediaElementGetPaused,
        webkit_dom_html_media_element_set_default_playback_rate,
        htmlMediaElementSetDefaultPlaybackRate,
        webkit_dom_html_media_element_get_default_playback_rate,
        htmlMediaElementGetDefaultPlaybackRate,
        webkit_dom_html_media_element_set_playback_rate,
        htmlMediaElementSetPlaybackRate,
        webkit_dom_html_media_element_get_playback_rate,
        htmlMediaElementGetPlaybackRate,
        webkit_dom_html_media_element_get_played,
        htmlMediaElementGetPlayed,
        webkit_dom_html_media_element_get_seekable,
        htmlMediaElementGetSeekable,
        webkit_dom_html_media_element_get_ended, htmlMediaElementGetEnded,
        webkit_dom_html_media_element_set_autoplay,
        htmlMediaElementSetAutoplay,
        webkit_dom_html_media_element_get_autoplay,
        htmlMediaElementGetAutoplay,
        webkit_dom_html_media_element_set_loop, htmlMediaElementSetLoop,
        webkit_dom_html_media_element_get_loop, htmlMediaElementGetLoop,
        webkit_dom_html_media_element_set_controls,
        htmlMediaElementSetControls,
        webkit_dom_html_media_element_get_controls,
        htmlMediaElementGetControls,
        webkit_dom_html_media_element_set_volume,
        htmlMediaElementSetVolume,
        webkit_dom_html_media_element_get_volume,
        htmlMediaElementGetVolume, webkit_dom_html_media_element_set_muted,
        htmlMediaElementSetMuted, webkit_dom_html_media_element_get_muted,
        htmlMediaElementGetMuted,
        webkit_dom_html_media_element_set_default_muted,
        htmlMediaElementSetDefaultMuted,
        webkit_dom_html_media_element_get_default_muted,
        htmlMediaElementGetDefaultMuted,
        webkit_dom_html_media_element_set_webkit_preserves_pitch,
        htmlMediaElementSetWebkitPreservesPitch,
        webkit_dom_html_media_element_get_webkit_preserves_pitch,
        htmlMediaElementGetWebkitPreservesPitch,
        webkit_dom_html_media_element_get_webkit_has_closed_captions,
        htmlMediaElementGetWebkitHasClosedCaptions,
        webkit_dom_html_media_element_set_webkit_closed_captions_visible,
        htmlMediaElementSetWebkitClosedCaptionsVisible,
        webkit_dom_html_media_element_get_webkit_closed_captions_visible,
        htmlMediaElementGetWebkitClosedCaptionsVisible,
        webkit_dom_html_media_element_get_webkit_audio_decoded_byte_count,
        htmlMediaElementGetWebkitAudioDecodedByteCount,
        webkit_dom_html_media_element_get_webkit_video_decoded_byte_count,
        htmlMediaElementGetWebkitVideoDecodedByteCount,
        webkit_dom_html_media_element_set_media_group,
        htmlMediaElementSetMediaGroup,
        webkit_dom_html_media_element_get_media_group,
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
        webkit_dom_html_media_element_load ::
        JSRef HTMLMediaElement -> IO ()
#else 
webkit_dom_html_media_element_load ::
                                     JSRef HTMLMediaElement -> IO ()
webkit_dom_html_media_element_load = undefined
#endif
 
htmlMediaElementLoad ::
                     (HTMLMediaElementClass self) => self -> IO ()
htmlMediaElementLoad self
  = webkit_dom_html_media_element_load
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"canPlayType\"]($2)"
        webkit_dom_html_media_element_can_play_type ::
        JSRef HTMLMediaElement -> JSString -> IO JSString
#else 
webkit_dom_html_media_element_can_play_type ::
                                              JSRef HTMLMediaElement -> JSString -> IO JSString
webkit_dom_html_media_element_can_play_type = undefined
#endif
 
htmlMediaElementCanPlayType ::
                            (HTMLMediaElementClass self, ToJSString type',
                             FromJSString result) =>
                              self -> type' -> IO result
htmlMediaElementCanPlayType self type'
  = fromJSString <$>
      (webkit_dom_html_media_element_can_play_type
         (unHTMLMediaElement (toHTMLMediaElement self))
         (toJSString type'))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"play\"]()"
        webkit_dom_html_media_element_play ::
        JSRef HTMLMediaElement -> IO ()
#else 
webkit_dom_html_media_element_play ::
                                     JSRef HTMLMediaElement -> IO ()
webkit_dom_html_media_element_play = undefined
#endif
 
htmlMediaElementPlay ::
                     (HTMLMediaElementClass self) => self -> IO ()
htmlMediaElementPlay self
  = webkit_dom_html_media_element_play
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pause\"]()"
        webkit_dom_html_media_element_pause ::
        JSRef HTMLMediaElement -> IO ()
#else 
webkit_dom_html_media_element_pause ::
                                      JSRef HTMLMediaElement -> IO ()
webkit_dom_html_media_element_pause = undefined
#endif
 
htmlMediaElementPause ::
                      (HTMLMediaElementClass self) => self -> IO ()
htmlMediaElementPause self
  = webkit_dom_html_media_element_pause
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
        webkit_dom_html_media_element_get_error ::
        JSRef HTMLMediaElement -> IO (JSRef MediaError)
#else 
webkit_dom_html_media_element_get_error ::
                                          JSRef HTMLMediaElement -> IO (JSRef MediaError)
webkit_dom_html_media_element_get_error = undefined
#endif
 
htmlMediaElementGetError ::
                         (HTMLMediaElementClass self) => self -> IO (Maybe MediaError)
htmlMediaElementGetError self
  = fmap MediaError . maybeJSNull <$>
      (webkit_dom_html_media_element_get_error
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        webkit_dom_html_media_element_set_src ::
        JSRef HTMLMediaElement -> JSString -> IO ()
#else 
webkit_dom_html_media_element_set_src ::
                                        JSRef HTMLMediaElement -> JSString -> IO ()
webkit_dom_html_media_element_set_src = undefined
#endif
 
htmlMediaElementSetSrc ::
                       (HTMLMediaElementClass self, ToJSString val) =>
                         self -> val -> IO ()
htmlMediaElementSetSrc self val
  = webkit_dom_html_media_element_set_src
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        webkit_dom_html_media_element_get_src ::
        JSRef HTMLMediaElement -> IO JSString
#else 
webkit_dom_html_media_element_get_src ::
                                        JSRef HTMLMediaElement -> IO JSString
webkit_dom_html_media_element_get_src = undefined
#endif
 
htmlMediaElementGetSrc ::
                       (HTMLMediaElementClass self, FromJSString result) =>
                         self -> IO result
htmlMediaElementGetSrc self
  = fromJSString <$>
      (webkit_dom_html_media_element_get_src
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentSrc\"]"
        webkit_dom_html_media_element_get_current_src ::
        JSRef HTMLMediaElement -> IO JSString
#else 
webkit_dom_html_media_element_get_current_src ::
                                                JSRef HTMLMediaElement -> IO JSString
webkit_dom_html_media_element_get_current_src = undefined
#endif
 
htmlMediaElementGetCurrentSrc ::
                              (HTMLMediaElementClass self, FromJSString result) =>
                                self -> IO result
htmlMediaElementGetCurrentSrc self
  = fromJSString <$>
      (webkit_dom_html_media_element_get_current_src
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"networkState\"]"
        webkit_dom_html_media_element_get_network_state ::
        JSRef HTMLMediaElement -> IO Word
#else 
webkit_dom_html_media_element_get_network_state ::
                                                  JSRef HTMLMediaElement -> IO Word
webkit_dom_html_media_element_get_network_state = undefined
#endif
 
htmlMediaElementGetNetworkState ::
                                (HTMLMediaElementClass self) => self -> IO Word
htmlMediaElementGetNetworkState self
  = webkit_dom_html_media_element_get_network_state
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"preload\"] = $2;"
        webkit_dom_html_media_element_set_preload ::
        JSRef HTMLMediaElement -> JSString -> IO ()
#else 
webkit_dom_html_media_element_set_preload ::
                                            JSRef HTMLMediaElement -> JSString -> IO ()
webkit_dom_html_media_element_set_preload = undefined
#endif
 
htmlMediaElementSetPreload ::
                           (HTMLMediaElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlMediaElementSetPreload self val
  = webkit_dom_html_media_element_set_preload
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"preload\"]"
        webkit_dom_html_media_element_get_preload ::
        JSRef HTMLMediaElement -> IO JSString
#else 
webkit_dom_html_media_element_get_preload ::
                                            JSRef HTMLMediaElement -> IO JSString
webkit_dom_html_media_element_get_preload = undefined
#endif
 
htmlMediaElementGetPreload ::
                           (HTMLMediaElementClass self, FromJSString result) =>
                             self -> IO result
htmlMediaElementGetPreload self
  = fromJSString <$>
      (webkit_dom_html_media_element_get_preload
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"buffered\"]"
        webkit_dom_html_media_element_get_buffered ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
#else 
webkit_dom_html_media_element_get_buffered ::
                                             JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
webkit_dom_html_media_element_get_buffered = undefined
#endif
 
htmlMediaElementGetBuffered ::
                            (HTMLMediaElementClass self) => self -> IO (Maybe TimeRanges)
htmlMediaElementGetBuffered self
  = fmap TimeRanges . maybeJSNull <$>
      (webkit_dom_html_media_element_get_buffered
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"readyState\"]"
        webkit_dom_html_media_element_get_ready_state ::
        JSRef HTMLMediaElement -> IO Word
#else 
webkit_dom_html_media_element_get_ready_state ::
                                                JSRef HTMLMediaElement -> IO Word
webkit_dom_html_media_element_get_ready_state = undefined
#endif
 
htmlMediaElementGetReadyState ::
                              (HTMLMediaElementClass self) => self -> IO Word
htmlMediaElementGetReadyState self
  = webkit_dom_html_media_element_get_ready_state
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"seeking\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_seeking ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_seeking ::
                                            JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_seeking = undefined
#endif
 
htmlMediaElementGetSeeking ::
                           (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetSeeking self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_seeking
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentTime\"] = $2;"
        webkit_dom_html_media_element_set_current_time ::
        JSRef HTMLMediaElement -> Float -> IO ()
#else 
webkit_dom_html_media_element_set_current_time ::
                                                 JSRef HTMLMediaElement -> Float -> IO ()
webkit_dom_html_media_element_set_current_time = undefined
#endif
 
htmlMediaElementSetCurrentTime ::
                               (HTMLMediaElementClass self) => self -> Float -> IO ()
htmlMediaElementSetCurrentTime self val
  = webkit_dom_html_media_element_set_current_time
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentTime\"]"
        webkit_dom_html_media_element_get_current_time ::
        JSRef HTMLMediaElement -> IO Float
#else 
webkit_dom_html_media_element_get_current_time ::
                                                 JSRef HTMLMediaElement -> IO Float
webkit_dom_html_media_element_get_current_time = undefined
#endif
 
htmlMediaElementGetCurrentTime ::
                               (HTMLMediaElementClass self) => self -> IO Float
htmlMediaElementGetCurrentTime self
  = webkit_dom_html_media_element_get_current_time
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"initialTime\"]"
        webkit_dom_html_media_element_get_initial_time ::
        JSRef HTMLMediaElement -> IO Double
#else 
webkit_dom_html_media_element_get_initial_time ::
                                                 JSRef HTMLMediaElement -> IO Double
webkit_dom_html_media_element_get_initial_time = undefined
#endif
 
htmlMediaElementGetInitialTime ::
                               (HTMLMediaElementClass self) => self -> IO Double
htmlMediaElementGetInitialTime self
  = webkit_dom_html_media_element_get_initial_time
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"startTime\"]"
        webkit_dom_html_media_element_get_start_time ::
        JSRef HTMLMediaElement -> IO Float
#else 
webkit_dom_html_media_element_get_start_time ::
                                               JSRef HTMLMediaElement -> IO Float
webkit_dom_html_media_element_get_start_time = undefined
#endif
 
htmlMediaElementGetStartTime ::
                             (HTMLMediaElementClass self) => self -> IO Float
htmlMediaElementGetStartTime self
  = webkit_dom_html_media_element_get_start_time
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"duration\"]"
        webkit_dom_html_media_element_get_duration ::
        JSRef HTMLMediaElement -> IO Float
#else 
webkit_dom_html_media_element_get_duration ::
                                             JSRef HTMLMediaElement -> IO Float
webkit_dom_html_media_element_get_duration = undefined
#endif
 
htmlMediaElementGetDuration ::
                            (HTMLMediaElementClass self) => self -> IO Float
htmlMediaElementGetDuration self
  = webkit_dom_html_media_element_get_duration
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"paused\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_paused ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_paused ::
                                           JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_paused = undefined
#endif
 
htmlMediaElementGetPaused ::
                          (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetPaused self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_paused
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"defaultPlaybackRate\"] = $2;"
        webkit_dom_html_media_element_set_default_playback_rate ::
        JSRef HTMLMediaElement -> Float -> IO ()
#else 
webkit_dom_html_media_element_set_default_playback_rate ::
                                                          JSRef HTMLMediaElement -> Float -> IO ()
webkit_dom_html_media_element_set_default_playback_rate = undefined
#endif
 
htmlMediaElementSetDefaultPlaybackRate ::
                                       (HTMLMediaElementClass self) => self -> Float -> IO ()
htmlMediaElementSetDefaultPlaybackRate self val
  = webkit_dom_html_media_element_set_default_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultPlaybackRate\"]"
        webkit_dom_html_media_element_get_default_playback_rate ::
        JSRef HTMLMediaElement -> IO Float
#else 
webkit_dom_html_media_element_get_default_playback_rate ::
                                                          JSRef HTMLMediaElement -> IO Float
webkit_dom_html_media_element_get_default_playback_rate = undefined
#endif
 
htmlMediaElementGetDefaultPlaybackRate ::
                                       (HTMLMediaElementClass self) => self -> IO Float
htmlMediaElementGetDefaultPlaybackRate self
  = webkit_dom_html_media_element_get_default_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"playbackRate\"] = $2;"
        webkit_dom_html_media_element_set_playback_rate ::
        JSRef HTMLMediaElement -> Float -> IO ()
#else 
webkit_dom_html_media_element_set_playback_rate ::
                                                  JSRef HTMLMediaElement -> Float -> IO ()
webkit_dom_html_media_element_set_playback_rate = undefined
#endif
 
htmlMediaElementSetPlaybackRate ::
                                (HTMLMediaElementClass self) => self -> Float -> IO ()
htmlMediaElementSetPlaybackRate self val
  = webkit_dom_html_media_element_set_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        webkit_dom_html_media_element_get_playback_rate ::
        JSRef HTMLMediaElement -> IO Float
#else 
webkit_dom_html_media_element_get_playback_rate ::
                                                  JSRef HTMLMediaElement -> IO Float
webkit_dom_html_media_element_get_playback_rate = undefined
#endif
 
htmlMediaElementGetPlaybackRate ::
                                (HTMLMediaElementClass self) => self -> IO Float
htmlMediaElementGetPlaybackRate self
  = webkit_dom_html_media_element_get_playback_rate
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"played\"]"
        webkit_dom_html_media_element_get_played ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
#else 
webkit_dom_html_media_element_get_played ::
                                           JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
webkit_dom_html_media_element_get_played = undefined
#endif
 
htmlMediaElementGetPlayed ::
                          (HTMLMediaElementClass self) => self -> IO (Maybe TimeRanges)
htmlMediaElementGetPlayed self
  = fmap TimeRanges . maybeJSNull <$>
      (webkit_dom_html_media_element_get_played
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"seekable\"]"
        webkit_dom_html_media_element_get_seekable ::
        JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
#else 
webkit_dom_html_media_element_get_seekable ::
                                             JSRef HTMLMediaElement -> IO (JSRef TimeRanges)
webkit_dom_html_media_element_get_seekable = undefined
#endif
 
htmlMediaElementGetSeekable ::
                            (HTMLMediaElementClass self) => self -> IO (Maybe TimeRanges)
htmlMediaElementGetSeekable self
  = fmap TimeRanges . maybeJSNull <$>
      (webkit_dom_html_media_element_get_seekable
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"ended\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_ended ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_ended ::
                                          JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_ended = undefined
#endif
 
htmlMediaElementGetEnded ::
                         (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetEnded self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_ended
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autoplay\"] = $2;"
        webkit_dom_html_media_element_set_autoplay ::
        JSRef HTMLMediaElement -> JSBool -> IO ()
#else 
webkit_dom_html_media_element_set_autoplay ::
                                             JSRef HTMLMediaElement -> JSBool -> IO ()
webkit_dom_html_media_element_set_autoplay = undefined
#endif
 
htmlMediaElementSetAutoplay ::
                            (HTMLMediaElementClass self) => self -> Bool -> IO ()
htmlMediaElementSetAutoplay self val
  = webkit_dom_html_media_element_set_autoplay
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"autoplay\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_autoplay ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_autoplay ::
                                             JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_autoplay = undefined
#endif
 
htmlMediaElementGetAutoplay ::
                            (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetAutoplay self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_autoplay
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"loop\"] = $2;"
        webkit_dom_html_media_element_set_loop ::
        JSRef HTMLMediaElement -> JSBool -> IO ()
#else 
webkit_dom_html_media_element_set_loop ::
                                         JSRef HTMLMediaElement -> JSBool -> IO ()
webkit_dom_html_media_element_set_loop = undefined
#endif
 
htmlMediaElementSetLoop ::
                        (HTMLMediaElementClass self) => self -> Bool -> IO ()
htmlMediaElementSetLoop self val
  = webkit_dom_html_media_element_set_loop
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"loop\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_loop ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_loop ::
                                         JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_loop = undefined
#endif
 
htmlMediaElementGetLoop ::
                        (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetLoop self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_loop
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"controls\"] = $2;"
        webkit_dom_html_media_element_set_controls ::
        JSRef HTMLMediaElement -> JSBool -> IO ()
#else 
webkit_dom_html_media_element_set_controls ::
                                             JSRef HTMLMediaElement -> JSBool -> IO ()
webkit_dom_html_media_element_set_controls = undefined
#endif
 
htmlMediaElementSetControls ::
                            (HTMLMediaElementClass self) => self -> Bool -> IO ()
htmlMediaElementSetControls self val
  = webkit_dom_html_media_element_set_controls
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"controls\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_controls ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_controls ::
                                             JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_controls = undefined
#endif
 
htmlMediaElementGetControls ::
                            (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetControls self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_controls
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"volume\"] = $2;"
        webkit_dom_html_media_element_set_volume ::
        JSRef HTMLMediaElement -> Float -> IO ()
#else 
webkit_dom_html_media_element_set_volume ::
                                           JSRef HTMLMediaElement -> Float -> IO ()
webkit_dom_html_media_element_set_volume = undefined
#endif
 
htmlMediaElementSetVolume ::
                          (HTMLMediaElementClass self) => self -> Float -> IO ()
htmlMediaElementSetVolume self val
  = webkit_dom_html_media_element_set_volume
      (unHTMLMediaElement (toHTMLMediaElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"volume\"]"
        webkit_dom_html_media_element_get_volume ::
        JSRef HTMLMediaElement -> IO Float
#else 
webkit_dom_html_media_element_get_volume ::
                                           JSRef HTMLMediaElement -> IO Float
webkit_dom_html_media_element_get_volume = undefined
#endif
 
htmlMediaElementGetVolume ::
                          (HTMLMediaElementClass self) => self -> IO Float
htmlMediaElementGetVolume self
  = webkit_dom_html_media_element_get_volume
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"muted\"] = $2;"
        webkit_dom_html_media_element_set_muted ::
        JSRef HTMLMediaElement -> JSBool -> IO ()
#else 
webkit_dom_html_media_element_set_muted ::
                                          JSRef HTMLMediaElement -> JSBool -> IO ()
webkit_dom_html_media_element_set_muted = undefined
#endif
 
htmlMediaElementSetMuted ::
                         (HTMLMediaElementClass self) => self -> Bool -> IO ()
htmlMediaElementSetMuted self val
  = webkit_dom_html_media_element_set_muted
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"muted\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_muted ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_muted ::
                                          JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_muted = undefined
#endif
 
htmlMediaElementGetMuted ::
                         (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetMuted self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_muted
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultMuted\"] = $2;"
        webkit_dom_html_media_element_set_default_muted ::
        JSRef HTMLMediaElement -> JSBool -> IO ()
#else 
webkit_dom_html_media_element_set_default_muted ::
                                                  JSRef HTMLMediaElement -> JSBool -> IO ()
webkit_dom_html_media_element_set_default_muted = undefined
#endif
 
htmlMediaElementSetDefaultMuted ::
                                (HTMLMediaElementClass self) => self -> Bool -> IO ()
htmlMediaElementSetDefaultMuted self val
  = webkit_dom_html_media_element_set_default_muted
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"defaultMuted\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_default_muted ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_default_muted ::
                                                  JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_default_muted = undefined
#endif
 
htmlMediaElementGetDefaultMuted ::
                                (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetDefaultMuted self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_default_muted
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitPreservesPitch\"] = $2;"
        webkit_dom_html_media_element_set_webkit_preserves_pitch ::
        JSRef HTMLMediaElement -> JSBool -> IO ()
#else 
webkit_dom_html_media_element_set_webkit_preserves_pitch ::
                                                           JSRef HTMLMediaElement -> JSBool -> IO ()
webkit_dom_html_media_element_set_webkit_preserves_pitch
  = undefined
#endif
 
htmlMediaElementSetWebkitPreservesPitch ::
                                        (HTMLMediaElementClass self) => self -> Bool -> IO ()
htmlMediaElementSetWebkitPreservesPitch self val
  = webkit_dom_html_media_element_set_webkit_preserves_pitch
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitPreservesPitch\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_webkit_preserves_pitch ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_webkit_preserves_pitch ::
                                                           JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_webkit_preserves_pitch
  = undefined
#endif
 
htmlMediaElementGetWebkitPreservesPitch ::
                                        (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetWebkitPreservesPitch self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_webkit_preserves_pitch
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitHasClosedCaptions\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_webkit_has_closed_captions ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_webkit_has_closed_captions ::
                                                               JSRef HTMLMediaElement -> IO JSBool
webkit_dom_html_media_element_get_webkit_has_closed_captions
  = undefined
#endif
 
htmlMediaElementGetWebkitHasClosedCaptions ::
                                           (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetWebkitHasClosedCaptions self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_webkit_has_closed_captions
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitClosedCaptionsVisible\"] = $2;"
        webkit_dom_html_media_element_set_webkit_closed_captions_visible ::
        JSRef HTMLMediaElement -> JSBool -> IO ()
#else 
webkit_dom_html_media_element_set_webkit_closed_captions_visible ::
                                                                   JSRef HTMLMediaElement ->
                                                                     JSBool -> IO ()
webkit_dom_html_media_element_set_webkit_closed_captions_visible
  = undefined
#endif
 
htmlMediaElementSetWebkitClosedCaptionsVisible ::
                                               (HTMLMediaElementClass self) => self -> Bool -> IO ()
htmlMediaElementSetWebkitClosedCaptionsVisible self val
  = webkit_dom_html_media_element_set_webkit_closed_captions_visible
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"webkitClosedCaptionsVisible\"] ? 1 : 0)"
        webkit_dom_html_media_element_get_webkit_closed_captions_visible ::
        JSRef HTMLMediaElement -> IO JSBool
#else 
webkit_dom_html_media_element_get_webkit_closed_captions_visible ::
                                                                   JSRef HTMLMediaElement ->
                                                                     IO JSBool
webkit_dom_html_media_element_get_webkit_closed_captions_visible
  = undefined
#endif
 
htmlMediaElementGetWebkitClosedCaptionsVisible ::
                                               (HTMLMediaElementClass self) => self -> IO Bool
htmlMediaElementGetWebkitClosedCaptionsVisible self
  = fromJSBool <$>
      (webkit_dom_html_media_element_get_webkit_closed_captions_visible
         (unHTMLMediaElement (toHTMLMediaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitAudioDecodedByteCount\"]"
        webkit_dom_html_media_element_get_webkit_audio_decoded_byte_count
        :: JSRef HTMLMediaElement -> IO Word
#else 
webkit_dom_html_media_element_get_webkit_audio_decoded_byte_count ::
                                                                    JSRef HTMLMediaElement ->
                                                                      IO Word
webkit_dom_html_media_element_get_webkit_audio_decoded_byte_count
  = undefined
#endif
 
htmlMediaElementGetWebkitAudioDecodedByteCount ::
                                               (HTMLMediaElementClass self) => self -> IO Word
htmlMediaElementGetWebkitAudioDecodedByteCount self
  = webkit_dom_html_media_element_get_webkit_audio_decoded_byte_count
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitVideoDecodedByteCount\"]"
        webkit_dom_html_media_element_get_webkit_video_decoded_byte_count
        :: JSRef HTMLMediaElement -> IO Word
#else 
webkit_dom_html_media_element_get_webkit_video_decoded_byte_count ::
                                                                    JSRef HTMLMediaElement ->
                                                                      IO Word
webkit_dom_html_media_element_get_webkit_video_decoded_byte_count
  = undefined
#endif
 
htmlMediaElementGetWebkitVideoDecodedByteCount ::
                                               (HTMLMediaElementClass self) => self -> IO Word
htmlMediaElementGetWebkitVideoDecodedByteCount self
  = webkit_dom_html_media_element_get_webkit_video_decoded_byte_count
      (unHTMLMediaElement (toHTMLMediaElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mediaGroup\"] = $2;"
        webkit_dom_html_media_element_set_media_group ::
        JSRef HTMLMediaElement -> JSString -> IO ()
#else 
webkit_dom_html_media_element_set_media_group ::
                                                JSRef HTMLMediaElement -> JSString -> IO ()
webkit_dom_html_media_element_set_media_group = undefined
#endif
 
htmlMediaElementSetMediaGroup ::
                              (HTMLMediaElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlMediaElementSetMediaGroup self val
  = webkit_dom_html_media_element_set_media_group
      (unHTMLMediaElement (toHTMLMediaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"mediaGroup\"]"
        webkit_dom_html_media_element_get_media_group ::
        JSRef HTMLMediaElement -> IO JSString
#else 
webkit_dom_html_media_element_get_media_group ::
                                                JSRef HTMLMediaElement -> IO JSString
webkit_dom_html_media_element_get_media_group = undefined
#endif
 
htmlMediaElementGetMediaGroup ::
                              (HTMLMediaElementClass self, FromJSString result) =>
                                self -> IO result
htmlMediaElementGetMediaGroup self
  = fromJSString <$>
      (webkit_dom_html_media_element_get_media_group
         (unHTMLMediaElement (toHTMLMediaElement self)))