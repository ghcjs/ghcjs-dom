{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioProcessingEvent
       (js_getPlaybackTime, getPlaybackTime, js_getInputBuffer,
        getInputBuffer, js_getOutputBuffer, getOutputBuffer,
        AudioProcessingEvent, castToAudioProcessingEvent,
        gTypeAudioProcessingEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"playbackTime\"]"
        js_getPlaybackTime :: JSRef AudioProcessingEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.playbackTime Mozilla AudioProcessingEvent.playbackTime documentation> 
getPlaybackTime :: (MonadIO m) => AudioProcessingEvent -> m Double
getPlaybackTime self
  = liftIO (js_getPlaybackTime (unAudioProcessingEvent self))
 
foreign import javascript unsafe "$1[\"inputBuffer\"]"
        js_getInputBuffer ::
        JSRef AudioProcessingEvent -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.inputBuffer Mozilla AudioProcessingEvent.inputBuffer documentation> 
getInputBuffer ::
               (MonadIO m) => AudioProcessingEvent -> m (Maybe AudioBuffer)
getInputBuffer self
  = liftIO
      ((js_getInputBuffer (unAudioProcessingEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"outputBuffer\"]"
        js_getOutputBuffer ::
        JSRef AudioProcessingEvent -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.outputBuffer Mozilla AudioProcessingEvent.outputBuffer documentation> 
getOutputBuffer ::
                (MonadIO m) => AudioProcessingEvent -> m (Maybe AudioBuffer)
getOutputBuffer self
  = liftIO
      ((js_getOutputBuffer (unAudioProcessingEvent self)) >>= fromJSRef)