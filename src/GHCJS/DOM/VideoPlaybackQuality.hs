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
import Control.Monad.IO.Class (MonadIO(..))
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
                                    (MonadIO m, IsVideoPlaybackQuality self) => self -> m Double
videoPlaybackQualityGetCreationTime self
  = liftIO
      (ghcjs_dom_video_playback_quality_get_creation_time
         (unVideoPlaybackQuality (toVideoPlaybackQuality self)))
 
foreign import javascript unsafe "$1[\"totalVideoFrames\"]"
        ghcjs_dom_video_playback_quality_get_total_video_frames ::
        JSRef VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalVideoFrames Mozilla VideoPlaybackQuality.totalVideoFrames documentation> 
videoPlaybackQualityGetTotalVideoFrames ::
                                        (MonadIO m, IsVideoPlaybackQuality self) => self -> m Word
videoPlaybackQualityGetTotalVideoFrames self
  = liftIO
      (ghcjs_dom_video_playback_quality_get_total_video_frames
         (unVideoPlaybackQuality (toVideoPlaybackQuality self)))
 
foreign import javascript unsafe "$1[\"droppedVideoFrames\"]"
        ghcjs_dom_video_playback_quality_get_dropped_video_frames ::
        JSRef VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.droppedVideoFrames Mozilla VideoPlaybackQuality.droppedVideoFrames documentation> 
videoPlaybackQualityGetDroppedVideoFrames ::
                                          (MonadIO m, IsVideoPlaybackQuality self) => self -> m Word
videoPlaybackQualityGetDroppedVideoFrames self
  = liftIO
      (ghcjs_dom_video_playback_quality_get_dropped_video_frames
         (unVideoPlaybackQuality (toVideoPlaybackQuality self)))
 
foreign import javascript unsafe "$1[\"corruptedVideoFrames\"]"
        ghcjs_dom_video_playback_quality_get_corrupted_video_frames ::
        JSRef VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.corruptedVideoFrames Mozilla VideoPlaybackQuality.corruptedVideoFrames documentation> 
videoPlaybackQualityGetCorruptedVideoFrames ::
                                            (MonadIO m, IsVideoPlaybackQuality self) =>
                                              self -> m Word
videoPlaybackQualityGetCorruptedVideoFrames self
  = liftIO
      (ghcjs_dom_video_playback_quality_get_corrupted_video_frames
         (unVideoPlaybackQuality (toVideoPlaybackQuality self)))
 
foreign import javascript unsafe "$1[\"totalFrameDelay\"]"
        ghcjs_dom_video_playback_quality_get_total_frame_delay ::
        JSRef VideoPlaybackQuality -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalFrameDelay Mozilla VideoPlaybackQuality.totalFrameDelay documentation> 
videoPlaybackQualityGetTotalFrameDelay ::
                                       (MonadIO m, IsVideoPlaybackQuality self) => self -> m Double
videoPlaybackQualityGetTotalFrameDelay self
  = liftIO
      (ghcjs_dom_video_playback_quality_get_total_frame_delay
         (unVideoPlaybackQuality (toVideoPlaybackQuality self)))
#else
module GHCJS.DOM.VideoPlaybackQuality (
  ) where
#endif
