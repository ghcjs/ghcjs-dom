{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VideoPlaybackQuality
       (ghcjs_dom_video_playback_quality_get_creation_time,
        videoPlaybackQualityGetCreationTime,
        ghcjs_dom_video_playback_quality_get_total_video_frames,
        videoPlaybackQualityGetTotalVideoFrames,
        ghcjs_dom_video_playback_quality_get_dropped_video_frames,
        videoPlaybackQualityGetDroppedVideoFrames,
        ghcjs_dom_video_playback_quality_get_corrupted_video_frames,
        videoPlaybackQualityGetCorruptedVideoFrames,
        ghcjs_dom_video_playback_quality_get_total_frame_delay,
        videoPlaybackQualityGetTotalFrameDelay, VideoPlaybackQuality,
        IsVideoPlaybackQuality, castToVideoPlaybackQuality,
        gTypeVideoPlaybackQuality, toVideoPlaybackQuality)
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

 
foreign import javascript unsafe "$1[\"creationTime\"]"
        ghcjs_dom_video_playback_quality_get_creation_time ::
        JSRef VideoPlaybackQuality -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.creationTime Mozilla VideoPlaybackQuality.creationTime documentation> 
videoPlaybackQualityGetCreationTime ::
                                    (IsVideoPlaybackQuality self) => self -> IO Double
videoPlaybackQualityGetCreationTime self
  = ghcjs_dom_video_playback_quality_get_creation_time
      (unVideoPlaybackQuality (toVideoPlaybackQuality self))
 
foreign import javascript unsafe "$1[\"totalVideoFrames\"]"
        ghcjs_dom_video_playback_quality_get_total_video_frames ::
        JSRef VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalVideoFrames Mozilla VideoPlaybackQuality.totalVideoFrames documentation> 
videoPlaybackQualityGetTotalVideoFrames ::
                                        (IsVideoPlaybackQuality self) => self -> IO Word
videoPlaybackQualityGetTotalVideoFrames self
  = ghcjs_dom_video_playback_quality_get_total_video_frames
      (unVideoPlaybackQuality (toVideoPlaybackQuality self))
 
foreign import javascript unsafe "$1[\"droppedVideoFrames\"]"
        ghcjs_dom_video_playback_quality_get_dropped_video_frames ::
        JSRef VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.droppedVideoFrames Mozilla VideoPlaybackQuality.droppedVideoFrames documentation> 
videoPlaybackQualityGetDroppedVideoFrames ::
                                          (IsVideoPlaybackQuality self) => self -> IO Word
videoPlaybackQualityGetDroppedVideoFrames self
  = ghcjs_dom_video_playback_quality_get_dropped_video_frames
      (unVideoPlaybackQuality (toVideoPlaybackQuality self))
 
foreign import javascript unsafe "$1[\"corruptedVideoFrames\"]"
        ghcjs_dom_video_playback_quality_get_corrupted_video_frames ::
        JSRef VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.corruptedVideoFrames Mozilla VideoPlaybackQuality.corruptedVideoFrames documentation> 
videoPlaybackQualityGetCorruptedVideoFrames ::
                                            (IsVideoPlaybackQuality self) => self -> IO Word
videoPlaybackQualityGetCorruptedVideoFrames self
  = ghcjs_dom_video_playback_quality_get_corrupted_video_frames
      (unVideoPlaybackQuality (toVideoPlaybackQuality self))
 
foreign import javascript unsafe "$1[\"totalFrameDelay\"]"
        ghcjs_dom_video_playback_quality_get_total_frame_delay ::
        JSRef VideoPlaybackQuality -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalFrameDelay Mozilla VideoPlaybackQuality.totalFrameDelay documentation> 
videoPlaybackQualityGetTotalFrameDelay ::
                                       (IsVideoPlaybackQuality self) => self -> IO Double
videoPlaybackQualityGetTotalFrameDelay self
  = ghcjs_dom_video_playback_quality_get_total_frame_delay
      (unVideoPlaybackQuality (toVideoPlaybackQuality self))
#else
module GHCJS.DOM.VideoPlaybackQuality (
  ) where
#endif
