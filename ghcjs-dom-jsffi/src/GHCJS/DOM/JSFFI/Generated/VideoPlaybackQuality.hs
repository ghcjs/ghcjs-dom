{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.VideoPlaybackQuality
       (js_getCreationTime, getCreationTime, js_getTotalVideoFrames,
        getTotalVideoFrames, js_getDroppedVideoFrames,
        getDroppedVideoFrames, js_getCorruptedVideoFrames,
        getCorruptedVideoFrames, js_getTotalFrameDelay, getTotalFrameDelay,
        VideoPlaybackQuality, castToVideoPlaybackQuality,
        gTypeVideoPlaybackQuality)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"creationTime\"]"
        js_getCreationTime :: VideoPlaybackQuality -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.creationTime Mozilla VideoPlaybackQuality.creationTime documentation> 
getCreationTime :: (MonadIO m) => VideoPlaybackQuality -> m Double
getCreationTime self = liftIO (js_getCreationTime (self))
 
foreign import javascript unsafe "$1[\"totalVideoFrames\"]"
        js_getTotalVideoFrames :: VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalVideoFrames Mozilla VideoPlaybackQuality.totalVideoFrames documentation> 
getTotalVideoFrames ::
                    (MonadIO m) => VideoPlaybackQuality -> m Word
getTotalVideoFrames self = liftIO (js_getTotalVideoFrames (self))
 
foreign import javascript unsafe "$1[\"droppedVideoFrames\"]"
        js_getDroppedVideoFrames :: VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.droppedVideoFrames Mozilla VideoPlaybackQuality.droppedVideoFrames documentation> 
getDroppedVideoFrames ::
                      (MonadIO m) => VideoPlaybackQuality -> m Word
getDroppedVideoFrames self
  = liftIO (js_getDroppedVideoFrames (self))
 
foreign import javascript unsafe "$1[\"corruptedVideoFrames\"]"
        js_getCorruptedVideoFrames :: VideoPlaybackQuality -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.corruptedVideoFrames Mozilla VideoPlaybackQuality.corruptedVideoFrames documentation> 
getCorruptedVideoFrames ::
                        (MonadIO m) => VideoPlaybackQuality -> m Word
getCorruptedVideoFrames self
  = liftIO (js_getCorruptedVideoFrames (self))
 
foreign import javascript unsafe "$1[\"totalFrameDelay\"]"
        js_getTotalFrameDelay :: VideoPlaybackQuality -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalFrameDelay Mozilla VideoPlaybackQuality.totalFrameDelay documentation> 
getTotalFrameDelay ::
                   (MonadIO m) => VideoPlaybackQuality -> m Double
getTotalFrameDelay self = liftIO (js_getTotalFrameDelay (self))