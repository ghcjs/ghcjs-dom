{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VideoTrack
       (ghcjs_dom_video_track_get_id, videoTrackGetId,
        ghcjs_dom_video_track_set_kind, videoTrackSetKind,
        ghcjs_dom_video_track_get_kind, videoTrackGetKind,
        ghcjs_dom_video_track_get_label, videoTrackGetLabel,
        ghcjs_dom_video_track_set_language, videoTrackSetLanguage,
        ghcjs_dom_video_track_get_language, videoTrackGetLanguage,
        ghcjs_dom_video_track_set_selected, videoTrackSetSelected,
        ghcjs_dom_video_track_get_selected, videoTrackGetSelected,
        ghcjs_dom_video_track_get_source_buffer, videoTrackGetSourceBuffer,
        VideoTrack, IsVideoTrack, castToVideoTrack, gTypeVideoTrack,
        toVideoTrack)
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
        ghcjs_dom_video_track_get_id :: JSRef VideoTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.id Mozilla VideoTrack.id documentation> 
videoTrackGetId ::
                (IsVideoTrack self, FromJSString result) => self -> IO result
videoTrackGetId self
  = fromJSString <$>
      (ghcjs_dom_video_track_get_id (unVideoTrack (toVideoTrack self)))
 
foreign import javascript unsafe "$1[\"kind\"] = $2;"
        ghcjs_dom_video_track_set_kind ::
        JSRef VideoTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.kind Mozilla VideoTrack.kind documentation> 
videoTrackSetKind ::
                  (IsVideoTrack self, ToJSString val) => self -> val -> IO ()
videoTrackSetKind self val
  = ghcjs_dom_video_track_set_kind (unVideoTrack (toVideoTrack self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"kind\"]"
        ghcjs_dom_video_track_get_kind :: JSRef VideoTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.kind Mozilla VideoTrack.kind documentation> 
videoTrackGetKind ::
                  (IsVideoTrack self, FromJSString result) => self -> IO result
videoTrackGetKind self
  = fromJSString <$>
      (ghcjs_dom_video_track_get_kind (unVideoTrack (toVideoTrack self)))
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_video_track_get_label :: JSRef VideoTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.label Mozilla VideoTrack.label documentation> 
videoTrackGetLabel ::
                   (IsVideoTrack self, FromJSString result) => self -> IO result
videoTrackGetLabel self
  = fromJSString <$>
      (ghcjs_dom_video_track_get_label
         (unVideoTrack (toVideoTrack self)))
 
foreign import javascript unsafe "$1[\"language\"] = $2;"
        ghcjs_dom_video_track_set_language ::
        JSRef VideoTrack -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.language Mozilla VideoTrack.language documentation> 
videoTrackSetLanguage ::
                      (IsVideoTrack self, ToJSString val) => self -> val -> IO ()
videoTrackSetLanguage self val
  = ghcjs_dom_video_track_set_language
      (unVideoTrack (toVideoTrack self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"language\"]"
        ghcjs_dom_video_track_get_language ::
        JSRef VideoTrack -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.language Mozilla VideoTrack.language documentation> 
videoTrackGetLanguage ::
                      (IsVideoTrack self, FromJSString result) => self -> IO result
videoTrackGetLanguage self
  = fromJSString <$>
      (ghcjs_dom_video_track_get_language
         (unVideoTrack (toVideoTrack self)))
 
foreign import javascript unsafe "$1[\"selected\"] = $2;"
        ghcjs_dom_video_track_set_selected ::
        JSRef VideoTrack -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.selected Mozilla VideoTrack.selected documentation> 
videoTrackSetSelected ::
                      (IsVideoTrack self) => self -> Bool -> IO ()
videoTrackSetSelected self val
  = ghcjs_dom_video_track_set_selected
      (unVideoTrack (toVideoTrack self))
      val
 
foreign import javascript unsafe "($1[\"selected\"] ? 1 : 0)"
        ghcjs_dom_video_track_get_selected :: JSRef VideoTrack -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.selected Mozilla VideoTrack.selected documentation> 
videoTrackGetSelected :: (IsVideoTrack self) => self -> IO Bool
videoTrackGetSelected self
  = ghcjs_dom_video_track_get_selected
      (unVideoTrack (toVideoTrack self))
 
foreign import javascript unsafe "$1[\"sourceBuffer\"]"
        ghcjs_dom_video_track_get_source_buffer ::
        JSRef VideoTrack -> IO (JSRef SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.sourceBuffer Mozilla VideoTrack.sourceBuffer documentation> 
videoTrackGetSourceBuffer ::
                          (IsVideoTrack self) => self -> IO (Maybe SourceBuffer)
videoTrackGetSourceBuffer self
  = (ghcjs_dom_video_track_get_source_buffer
       (unVideoTrack (toVideoTrack self)))
      >>= fromJSRef
#else
module GHCJS.DOM.VideoTrack (
  ) where
#endif
