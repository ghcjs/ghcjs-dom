{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioTrack
       (ghcjs_dom_audio_track_get_id, audioTrackGetId,
        ghcjs_dom_audio_track_set_kind, audioTrackSetKind,
        ghcjs_dom_audio_track_get_kind, audioTrackGetKind,
        ghcjs_dom_audio_track_get_label, audioTrackGetLabel,
        ghcjs_dom_audio_track_set_language, audioTrackSetLanguage,
        ghcjs_dom_audio_track_get_language, audioTrackGetLanguage,
        ghcjs_dom_audio_track_set_enabled, audioTrackSetEnabled,
        ghcjs_dom_audio_track_get_enabled, audioTrackGetEnabled,
        ghcjs_dom_audio_track_get_source_buffer, audioTrackGetSourceBuffer,
        AudioTrack, IsAudioTrack, castToAudioTrack, gTypeAudioTrack,
        toAudioTrack)
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

 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_audio_track_get_id :: JSRef AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.id Mozilla AudioTrack.id documentation> 
audioTrackGetId ::
                (IsAudioTrack self, FromJSString result) => self -> IO result
audioTrackGetId self
  = fromJSString <$>
      (ghcjs_dom_audio_track_get_id (unAudioTrack (toAudioTrack self)))
 
foreign import javascript unsafe "$1[\"kind\"] = $2;"
        ghcjs_dom_audio_track_set_kind ::
        JSRef AudioTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.kind Mozilla AudioTrack.kind documentation> 
audioTrackSetKind ::
                  (IsAudioTrack self, ToJSString val) => self -> val -> IO ()
audioTrackSetKind self val
  = ghcjs_dom_audio_track_set_kind (unAudioTrack (toAudioTrack self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"kind\"]"
        ghcjs_dom_audio_track_get_kind :: JSRef AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.kind Mozilla AudioTrack.kind documentation> 
audioTrackGetKind ::
                  (IsAudioTrack self, FromJSString result) => self -> IO result
audioTrackGetKind self
  = fromJSString <$>
      (ghcjs_dom_audio_track_get_kind (unAudioTrack (toAudioTrack self)))
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_audio_track_get_label :: JSRef AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.label Mozilla AudioTrack.label documentation> 
audioTrackGetLabel ::
                   (IsAudioTrack self, FromJSString result) => self -> IO result
audioTrackGetLabel self
  = fromJSString <$>
      (ghcjs_dom_audio_track_get_label
         (unAudioTrack (toAudioTrack self)))
 
foreign import javascript unsafe "$1[\"language\"] = $2;"
        ghcjs_dom_audio_track_set_language ::
        JSRef AudioTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.language Mozilla AudioTrack.language documentation> 
audioTrackSetLanguage ::
                      (IsAudioTrack self, ToJSString val) => self -> val -> IO ()
audioTrackSetLanguage self val
  = ghcjs_dom_audio_track_set_language
      (unAudioTrack (toAudioTrack self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"language\"]"
        ghcjs_dom_audio_track_get_language ::
        JSRef AudioTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.language Mozilla AudioTrack.language documentation> 
audioTrackGetLanguage ::
                      (IsAudioTrack self, FromJSString result) => self -> IO result
audioTrackGetLanguage self
  = fromJSString <$>
      (ghcjs_dom_audio_track_get_language
         (unAudioTrack (toAudioTrack self)))
 
foreign import javascript unsafe "$1[\"enabled\"] = $2;"
        ghcjs_dom_audio_track_set_enabled ::
        JSRef AudioTrack -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.enabled Mozilla AudioTrack.enabled documentation> 
audioTrackSetEnabled ::
                     (IsAudioTrack self) => self -> Bool -> IO ()
audioTrackSetEnabled self val
  = ghcjs_dom_audio_track_set_enabled
      (unAudioTrack (toAudioTrack self))
      val
 
foreign import javascript unsafe "($1[\"enabled\"] ? 1 : 0)"
        ghcjs_dom_audio_track_get_enabled :: JSRef AudioTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.enabled Mozilla AudioTrack.enabled documentation> 
audioTrackGetEnabled :: (IsAudioTrack self) => self -> IO Bool
audioTrackGetEnabled self
  = ghcjs_dom_audio_track_get_enabled
      (unAudioTrack (toAudioTrack self))
 
foreign import javascript unsafe "$1[\"sourceBuffer\"]"
        ghcjs_dom_audio_track_get_source_buffer ::
        JSRef AudioTrack -> IO (JSRef SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioTrack.sourceBuffer Mozilla AudioTrack.sourceBuffer documentation> 
audioTrackGetSourceBuffer ::
                          (IsAudioTrack self) => self -> IO (Maybe SourceBuffer)
audioTrackGetSourceBuffer self
  = (ghcjs_dom_audio_track_get_source_buffer
       (unAudioTrack (toAudioTrack self)))
      >>= fromJSRef
#else
module GHCJS.DOM.AudioTrack (
  ) where
#endif
