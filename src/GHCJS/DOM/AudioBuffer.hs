{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioBuffer
       (ghcjs_dom_audio_buffer_get_channel_data,
        audioBufferGetChannelData, ghcjs_dom_audio_buffer_get_length,
        audioBufferGetLength, ghcjs_dom_audio_buffer_get_duration,
        audioBufferGetDuration, ghcjs_dom_audio_buffer_get_sample_rate,
        audioBufferGetSampleRate, ghcjs_dom_audio_buffer_set_gain,
        audioBufferSetGain, ghcjs_dom_audio_buffer_get_gain,
        audioBufferGetGain, ghcjs_dom_audio_buffer_get_number_of_channels,
        audioBufferGetNumberOfChannels, AudioBuffer, IsAudioBuffer,
        castToAudioBuffer, gTypeAudioBuffer, toAudioBuffer)
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

 
foreign import javascript unsafe "$1[\"getChannelData\"]($2)"
        ghcjs_dom_audio_buffer_get_channel_data ::
        JSRef AudioBuffer -> Word -> IO (JSRef Float32Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.channelData Mozilla AudioBuffer.channelData documentation> 
audioBufferGetChannelData ::
                          (IsAudioBuffer self) => self -> Word -> IO (Maybe Float32Array)
audioBufferGetChannelData self channelIndex
  = (ghcjs_dom_audio_buffer_get_channel_data
       (unAudioBuffer (toAudioBuffer self))
       channelIndex)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_audio_buffer_get_length :: JSRef AudioBuffer -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.length Mozilla AudioBuffer.length documentation> 
audioBufferGetLength :: (IsAudioBuffer self) => self -> IO Int
audioBufferGetLength self
  = ghcjs_dom_audio_buffer_get_length
      (unAudioBuffer (toAudioBuffer self))
 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_audio_buffer_get_duration ::
        JSRef AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.duration Mozilla AudioBuffer.duration documentation> 
audioBufferGetDuration :: (IsAudioBuffer self) => self -> IO Float
audioBufferGetDuration self
  = ghcjs_dom_audio_buffer_get_duration
      (unAudioBuffer (toAudioBuffer self))
 
foreign import javascript unsafe "$1[\"sampleRate\"]"
        ghcjs_dom_audio_buffer_get_sample_rate ::
        JSRef AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.sampleRate Mozilla AudioBuffer.sampleRate documentation> 
audioBufferGetSampleRate ::
                         (IsAudioBuffer self) => self -> IO Float
audioBufferGetSampleRate self
  = ghcjs_dom_audio_buffer_get_sample_rate
      (unAudioBuffer (toAudioBuffer self))
 
foreign import javascript unsafe "$1[\"gain\"] = $2;"
        ghcjs_dom_audio_buffer_set_gain ::
        JSRef AudioBuffer -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
audioBufferSetGain ::
                   (IsAudioBuffer self) => self -> Float -> IO ()
audioBufferSetGain self val
  = ghcjs_dom_audio_buffer_set_gain
      (unAudioBuffer (toAudioBuffer self))
      val
 
foreign import javascript unsafe "$1[\"gain\"]"
        ghcjs_dom_audio_buffer_get_gain :: JSRef AudioBuffer -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.gain Mozilla AudioBuffer.gain documentation> 
audioBufferGetGain :: (IsAudioBuffer self) => self -> IO Float
audioBufferGetGain self
  = ghcjs_dom_audio_buffer_get_gain
      (unAudioBuffer (toAudioBuffer self))
 
foreign import javascript unsafe "$1[\"numberOfChannels\"]"
        ghcjs_dom_audio_buffer_get_number_of_channels ::
        JSRef AudioBuffer -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBuffer.numberOfChannels Mozilla AudioBuffer.numberOfChannels documentation> 
audioBufferGetNumberOfChannels ::
                               (IsAudioBuffer self) => self -> IO Word
audioBufferGetNumberOfChannels self
  = ghcjs_dom_audio_buffer_get_number_of_channels
      (unAudioBuffer (toAudioBuffer self))
#else
module GHCJS.DOM.AudioBuffer (
  ) where
#endif
