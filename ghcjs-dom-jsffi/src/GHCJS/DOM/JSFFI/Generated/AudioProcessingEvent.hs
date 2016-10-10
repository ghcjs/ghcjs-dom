{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioProcessingEvent
       (js_getPlaybackTime, getPlaybackTime, js_getInputBuffer,
        getInputBuffer, getInputBufferUnchecked, js_getOutputBuffer,
        getOutputBuffer, getOutputBufferUnchecked, AudioProcessingEvent,
        castToAudioProcessingEvent, gTypeAudioProcessingEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"playbackTime\"]"
        js_getPlaybackTime :: AudioProcessingEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.playbackTime Mozilla AudioProcessingEvent.playbackTime documentation> 
getPlaybackTime :: (MonadIO m) => AudioProcessingEvent -> m Double
getPlaybackTime self = liftIO (js_getPlaybackTime (self))
 
foreign import javascript unsafe "$1[\"inputBuffer\"]"
        js_getInputBuffer ::
        AudioProcessingEvent -> IO (Nullable AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.inputBuffer Mozilla AudioProcessingEvent.inputBuffer documentation> 
getInputBuffer ::
               (MonadIO m) => AudioProcessingEvent -> m (Maybe AudioBuffer)
getInputBuffer self
  = liftIO (nullableToMaybe <$> (js_getInputBuffer (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.inputBuffer Mozilla AudioProcessingEvent.inputBuffer documentation> 
getInputBufferUnchecked ::
                        (MonadIO m) => AudioProcessingEvent -> m AudioBuffer
getInputBufferUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getInputBuffer (self)))
 
foreign import javascript unsafe "$1[\"outputBuffer\"]"
        js_getOutputBuffer ::
        AudioProcessingEvent -> IO (Nullable AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.outputBuffer Mozilla AudioProcessingEvent.outputBuffer documentation> 
getOutputBuffer ::
                (MonadIO m) => AudioProcessingEvent -> m (Maybe AudioBuffer)
getOutputBuffer self
  = liftIO (nullableToMaybe <$> (js_getOutputBuffer (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.outputBuffer Mozilla AudioProcessingEvent.outputBuffer documentation> 
getOutputBufferUnchecked ::
                         (MonadIO m) => AudioProcessingEvent -> m AudioBuffer
getOutputBufferUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getOutputBuffer (self)))