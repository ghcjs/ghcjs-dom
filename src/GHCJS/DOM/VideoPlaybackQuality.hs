{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VideoPlaybackQuality
       (js_getCreationTime, getCreationTime, js_getTotalVideoFrames,
        getTotalVideoFrames, js_getDroppedVideoFrames,
        getDroppedVideoFrames, js_getCorruptedVideoFrames,
        getCorruptedVideoFrames, js_getTotalFrameDelay, getTotalFrameDelay,
        VideoPlaybackQuality, castToVideoPlaybackQuality,
        gTypeVideoPlaybackQuality)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"creationTime\"]"
        js_getCreationTime :: JSRef VideoPlaybackQuality -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.creationTime Mozilla VideoPlaybackQuality.creationTime documentation> 
getCreationTime :: (MonadIO m) => VideoPlaybackQuality -> m Double
getCreationTime self
  = liftIO (js_getCreationTime (unVideoPlaybackQuality self))
 
foreign import javascript unsafe "$1[\"totalVideoFrames\"]"
        js_getTotalVideoFrames :: JSRef VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalVideoFrames Mozilla VideoPlaybackQuality.totalVideoFrames documentation> 
getTotalVideoFrames ::
                    (MonadIO m) => VideoPlaybackQuality -> m Word
getTotalVideoFrames self
  = liftIO (js_getTotalVideoFrames (unVideoPlaybackQuality self))
 
foreign import javascript unsafe "$1[\"droppedVideoFrames\"]"
        js_getDroppedVideoFrames :: JSRef VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.droppedVideoFrames Mozilla VideoPlaybackQuality.droppedVideoFrames documentation> 
getDroppedVideoFrames ::
                      (MonadIO m) => VideoPlaybackQuality -> m Word
getDroppedVideoFrames self
  = liftIO (js_getDroppedVideoFrames (unVideoPlaybackQuality self))
 
foreign import javascript unsafe "$1[\"corruptedVideoFrames\"]"
        js_getCorruptedVideoFrames :: JSRef VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.corruptedVideoFrames Mozilla VideoPlaybackQuality.corruptedVideoFrames documentation> 
getCorruptedVideoFrames ::
                        (MonadIO m) => VideoPlaybackQuality -> m Word
getCorruptedVideoFrames self
  = liftIO (js_getCorruptedVideoFrames (unVideoPlaybackQuality self))
 
foreign import javascript unsafe "$1[\"totalFrameDelay\"]"
        js_getTotalFrameDelay :: JSRef VideoPlaybackQuality -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalFrameDelay Mozilla VideoPlaybackQuality.totalFrameDelay documentation> 
getTotalFrameDelay ::
                   (MonadIO m) => VideoPlaybackQuality -> m Double
getTotalFrameDelay self
  = liftIO (js_getTotalFrameDelay (unVideoPlaybackQuality self))
#else
module GHCJS.DOM.VideoPlaybackQuality (
  ) where
#endif
