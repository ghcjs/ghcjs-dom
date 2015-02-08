{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioProcessingEvent
       (ghcjs_dom_audio_processing_event_get_playback_time,
        audioProcessingEventGetPlaybackTime,
        ghcjs_dom_audio_processing_event_get_input_buffer,
        audioProcessingEventGetInputBuffer,
        ghcjs_dom_audio_processing_event_get_output_buffer,
        audioProcessingEventGetOutputBuffer, AudioProcessingEvent,
        IsAudioProcessingEvent, castToAudioProcessingEvent,
        gTypeAudioProcessingEvent, toAudioProcessingEvent)
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

 
foreign import javascript unsafe "$1[\"playbackTime\"]"
        ghcjs_dom_audio_processing_event_get_playback_time ::
        JSRef AudioProcessingEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.playbackTime Mozilla AudioProcessingEvent.playbackTime documentation> 
audioProcessingEventGetPlaybackTime ::
                                    (MonadIO m, IsAudioProcessingEvent self) => self -> m Double
audioProcessingEventGetPlaybackTime self
  = liftIO
      (ghcjs_dom_audio_processing_event_get_playback_time
         (unAudioProcessingEvent (toAudioProcessingEvent self)))
 
foreign import javascript unsafe "$1[\"inputBuffer\"]"
        ghcjs_dom_audio_processing_event_get_input_buffer ::
        JSRef AudioProcessingEvent -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.inputBuffer Mozilla AudioProcessingEvent.inputBuffer documentation> 
audioProcessingEventGetInputBuffer ::
                                   (MonadIO m, IsAudioProcessingEvent self) =>
                                     self -> m (Maybe AudioBuffer)
audioProcessingEventGetInputBuffer self
  = liftIO
      ((ghcjs_dom_audio_processing_event_get_input_buffer
          (unAudioProcessingEvent (toAudioProcessingEvent self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"outputBuffer\"]"
        ghcjs_dom_audio_processing_event_get_output_buffer ::
        JSRef AudioProcessingEvent -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioProcessingEvent.outputBuffer Mozilla AudioProcessingEvent.outputBuffer documentation> 
audioProcessingEventGetOutputBuffer ::
                                    (MonadIO m, IsAudioProcessingEvent self) =>
                                      self -> m (Maybe AudioBuffer)
audioProcessingEventGetOutputBuffer self
  = liftIO
      ((ghcjs_dom_audio_processing_event_get_output_buffer
          (unAudioProcessingEvent (toAudioProcessingEvent self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.AudioProcessingEvent (
  ) where
#endif
