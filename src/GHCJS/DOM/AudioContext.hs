{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioContext
       (ghcjs_dom_audio_context_new, audioContextNew,
        ghcjs_dom_audio_context_create_buffer, audioContextCreateBuffer,
        ghcjs_dom_audio_context_create_bufferFromArrayBuffer,
        audioContextCreateBufferFromArrayBuffer,
        ghcjs_dom_audio_context_decode_audio_data,
        audioContextDecodeAudioData,
        ghcjs_dom_audio_context_create_buffer_source,
        audioContextCreateBufferSource,
        ghcjs_dom_audio_context_create_media_element_source,
        audioContextCreateMediaElementSource,
        ghcjs_dom_audio_context_create_media_stream_source,
        audioContextCreateMediaStreamSource,
        ghcjs_dom_audio_context_create_media_stream_destination,
        audioContextCreateMediaStreamDestination,
        ghcjs_dom_audio_context_create_gain, audioContextCreateGain,
        ghcjs_dom_audio_context_create_delay, audioContextCreateDelay,
        ghcjs_dom_audio_context_create_biquad_filter,
        audioContextCreateBiquadFilter,
        ghcjs_dom_audio_context_create_wave_shaper,
        audioContextCreateWaveShaper,
        ghcjs_dom_audio_context_create_panner, audioContextCreatePanner,
        ghcjs_dom_audio_context_create_convolver,
        audioContextCreateConvolver,
        ghcjs_dom_audio_context_create_dynamics_compressor,
        audioContextCreateDynamicsCompressor,
        ghcjs_dom_audio_context_create_analyser,
        audioContextCreateAnalyser,
        ghcjs_dom_audio_context_create_script_processor,
        audioContextCreateScriptProcessor,
        ghcjs_dom_audio_context_create_oscillator,
        audioContextCreateOscillator,
        ghcjs_dom_audio_context_create_periodic_wave,
        audioContextCreatePeriodicWave,
        ghcjs_dom_audio_context_create_channel_splitter,
        audioContextCreateChannelSplitter,
        ghcjs_dom_audio_context_create_channel_merger,
        audioContextCreateChannelMerger,
        ghcjs_dom_audio_context_start_rendering,
        audioContextStartRendering,
        ghcjs_dom_audio_context_create_gain_node,
        audioContextCreateGainNode,
        ghcjs_dom_audio_context_create_delay_node,
        audioContextCreateDelayNode,
        ghcjs_dom_audio_context_create_java_script_node,
        audioContextCreateJavaScriptNode,
        ghcjs_dom_audio_context_get_destination,
        audioContextGetDestination,
        ghcjs_dom_audio_context_get_current_time,
        audioContextGetCurrentTime,
        ghcjs_dom_audio_context_get_sample_rate, audioContextGetSampleRate,
        ghcjs_dom_audio_context_get_listener, audioContextGetListener,
        ghcjs_dom_audio_context_get_active_source_count,
        audioContextGetActiveSourceCount, audioContextComplete,
        AudioContext, IsAudioContext, castToAudioContext,
        gTypeAudioContext, toAudioContext)
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

 
foreign import javascript unsafe
        "new (window[\"AudioContext\"]\n||\nwindow[\"webkitAudioContext\"])()"
        ghcjs_dom_audio_context_new :: IO (JSRef AudioContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext Mozilla AudioContext documentation> 
audioContextNew :: (MonadIO m) => m AudioContext
audioContextNew
  = liftIO (ghcjs_dom_audio_context_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"createBuffer\"]($2, $3, $4)"
        ghcjs_dom_audio_context_create_buffer ::
        JSRef AudioContext ->
          Word -> Word -> Float -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
audioContextCreateBuffer ::
                         (MonadIO m, IsAudioContext self) =>
                           self -> Word -> Word -> Float -> m (Maybe AudioBuffer)
audioContextCreateBuffer self numberOfChannels numberOfFrames
  sampleRate
  = liftIO
      ((ghcjs_dom_audio_context_create_buffer
          (unAudioContext (toAudioContext self))
          numberOfChannels
          numberOfFrames
          sampleRate)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createBuffer\"]($2, $3)"
        ghcjs_dom_audio_context_create_bufferFromArrayBuffer ::
        JSRef AudioContext ->
          JSRef ArrayBuffer -> Bool -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferFromArrayBuffer Mozilla AudioContext.createBufferFromArrayBuffer documentation> 
audioContextCreateBufferFromArrayBuffer ::
                                        (MonadIO m, IsAudioContext self, IsArrayBuffer buffer) =>
                                          self -> Maybe buffer -> Bool -> m (Maybe AudioBuffer)
audioContextCreateBufferFromArrayBuffer self buffer mixToMono
  = liftIO
      ((ghcjs_dom_audio_context_create_bufferFromArrayBuffer
          (unAudioContext (toAudioContext self))
          (maybe jsNull (unArrayBuffer . toArrayBuffer) buffer)
          mixToMono)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"decodeAudioData\"]($2, $3,\n$4)"
        ghcjs_dom_audio_context_decode_audio_data ::
        JSRef AudioContext ->
          JSRef ArrayBuffer ->
            JSRef AudioBufferCallback -> JSRef AudioBufferCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation> 
audioContextDecodeAudioData ::
                            (MonadIO m, IsAudioContext self, IsArrayBuffer audioData,
                             IsAudioBufferCallback successCallback,
                             IsAudioBufferCallback errorCallback) =>
                              self ->
                                Maybe audioData ->
                                  Maybe successCallback -> Maybe errorCallback -> m ()
audioContextDecodeAudioData self audioData successCallback
  errorCallback
  = liftIO
      (ghcjs_dom_audio_context_decode_audio_data
         (unAudioContext (toAudioContext self))
         (maybe jsNull (unArrayBuffer . toArrayBuffer) audioData)
         (maybe jsNull (unAudioBufferCallback . toAudioBufferCallback)
            successCallback)
         (maybe jsNull (unAudioBufferCallback . toAudioBufferCallback)
            errorCallback))
 
foreign import javascript unsafe "$1[\"createBufferSource\"]()"
        ghcjs_dom_audio_context_create_buffer_source ::
        JSRef AudioContext -> IO (JSRef AudioBufferSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
audioContextCreateBufferSource ::
                               (MonadIO m, IsAudioContext self) =>
                                 self -> m (Maybe AudioBufferSourceNode)
audioContextCreateBufferSource self
  = liftIO
      ((ghcjs_dom_audio_context_create_buffer_source
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createMediaElementSource\"]($2)"
        ghcjs_dom_audio_context_create_media_element_source ::
        JSRef AudioContext ->
          JSRef HTMLMediaElement -> IO (JSRef MediaElementAudioSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
audioContextCreateMediaElementSource ::
                                     (MonadIO m, IsAudioContext self,
                                      IsHTMLMediaElement mediaElement) =>
                                       self ->
                                         Maybe mediaElement -> m (Maybe MediaElementAudioSourceNode)
audioContextCreateMediaElementSource self mediaElement
  = liftIO
      ((ghcjs_dom_audio_context_create_media_element_source
          (unAudioContext (toAudioContext self))
          (maybe jsNull (unHTMLMediaElement . toHTMLMediaElement)
             mediaElement))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createMediaStreamSource\"]($2)"
        ghcjs_dom_audio_context_create_media_stream_source ::
        JSRef AudioContext ->
          JSRef MediaStream -> IO (JSRef MediaStreamAudioSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
audioContextCreateMediaStreamSource ::
                                    (MonadIO m, IsAudioContext self, IsMediaStream mediaStream) =>
                                      self ->
                                        Maybe mediaStream -> m (Maybe MediaStreamAudioSourceNode)
audioContextCreateMediaStreamSource self mediaStream
  = liftIO
      ((ghcjs_dom_audio_context_create_media_stream_source
          (unAudioContext (toAudioContext self))
          (maybe jsNull (unMediaStream . toMediaStream) mediaStream))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createMediaStreamDestination\"]()"
        ghcjs_dom_audio_context_create_media_stream_destination ::
        JSRef AudioContext -> IO (JSRef MediaStreamAudioDestinationNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
audioContextCreateMediaStreamDestination ::
                                         (MonadIO m, IsAudioContext self) =>
                                           self -> m (Maybe MediaStreamAudioDestinationNode)
audioContextCreateMediaStreamDestination self
  = liftIO
      ((ghcjs_dom_audio_context_create_media_stream_destination
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createGain\"]()"
        ghcjs_dom_audio_context_create_gain ::
        JSRef AudioContext -> IO (JSRef GainNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
audioContextCreateGain ::
                       (MonadIO m, IsAudioContext self) => self -> m (Maybe GainNode)
audioContextCreateGain self
  = liftIO
      ((ghcjs_dom_audio_context_create_gain
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createDelay\"]($2)"
        ghcjs_dom_audio_context_create_delay ::
        JSRef AudioContext -> Double -> IO (JSRef DelayNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
audioContextCreateDelay ::
                        (MonadIO m, IsAudioContext self) =>
                          self -> Double -> m (Maybe DelayNode)
audioContextCreateDelay self maxDelayTime
  = liftIO
      ((ghcjs_dom_audio_context_create_delay
          (unAudioContext (toAudioContext self))
          maxDelayTime)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createBiquadFilter\"]()"
        ghcjs_dom_audio_context_create_biquad_filter ::
        JSRef AudioContext -> IO (JSRef BiquadFilterNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
audioContextCreateBiquadFilter ::
                               (MonadIO m, IsAudioContext self) =>
                                 self -> m (Maybe BiquadFilterNode)
audioContextCreateBiquadFilter self
  = liftIO
      ((ghcjs_dom_audio_context_create_biquad_filter
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createWaveShaper\"]()"
        ghcjs_dom_audio_context_create_wave_shaper ::
        JSRef AudioContext -> IO (JSRef WaveShaperNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
audioContextCreateWaveShaper ::
                             (MonadIO m, IsAudioContext self) =>
                               self -> m (Maybe WaveShaperNode)
audioContextCreateWaveShaper self
  = liftIO
      ((ghcjs_dom_audio_context_create_wave_shaper
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createPanner\"]()"
        ghcjs_dom_audio_context_create_panner ::
        JSRef AudioContext -> IO (JSRef PannerNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
audioContextCreatePanner ::
                         (MonadIO m, IsAudioContext self) => self -> m (Maybe PannerNode)
audioContextCreatePanner self
  = liftIO
      ((ghcjs_dom_audio_context_create_panner
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createConvolver\"]()"
        ghcjs_dom_audio_context_create_convolver ::
        JSRef AudioContext -> IO (JSRef ConvolverNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
audioContextCreateConvolver ::
                            (MonadIO m, IsAudioContext self) => self -> m (Maybe ConvolverNode)
audioContextCreateConvolver self
  = liftIO
      ((ghcjs_dom_audio_context_create_convolver
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createDynamicsCompressor\"]()"
        ghcjs_dom_audio_context_create_dynamics_compressor ::
        JSRef AudioContext -> IO (JSRef DynamicsCompressorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
audioContextCreateDynamicsCompressor ::
                                     (MonadIO m, IsAudioContext self) =>
                                       self -> m (Maybe DynamicsCompressorNode)
audioContextCreateDynamicsCompressor self
  = liftIO
      ((ghcjs_dom_audio_context_create_dynamics_compressor
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createAnalyser\"]()"
        ghcjs_dom_audio_context_create_analyser ::
        JSRef AudioContext -> IO (JSRef AnalyserNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
audioContextCreateAnalyser ::
                           (MonadIO m, IsAudioContext self) => self -> m (Maybe AnalyserNode)
audioContextCreateAnalyser self
  = liftIO
      ((ghcjs_dom_audio_context_create_analyser
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createScriptProcessor\"]($2,\n$3, $4)"
        ghcjs_dom_audio_context_create_script_processor ::
        JSRef AudioContext ->
          Word -> Word -> Word -> IO (JSRef ScriptProcessorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
audioContextCreateScriptProcessor ::
                                  (MonadIO m, IsAudioContext self) =>
                                    self -> Word -> Word -> Word -> m (Maybe ScriptProcessorNode)
audioContextCreateScriptProcessor self bufferSize
  numberOfInputChannels numberOfOutputChannels
  = liftIO
      ((ghcjs_dom_audio_context_create_script_processor
          (unAudioContext (toAudioContext self))
          bufferSize
          numberOfInputChannels
          numberOfOutputChannels)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createOscillator\"]()"
        ghcjs_dom_audio_context_create_oscillator ::
        JSRef AudioContext -> IO (JSRef OscillatorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
audioContextCreateOscillator ::
                             (MonadIO m, IsAudioContext self) =>
                               self -> m (Maybe OscillatorNode)
audioContextCreateOscillator self
  = liftIO
      ((ghcjs_dom_audio_context_create_oscillator
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createPeriodicWave\"]($2, $3)"
        ghcjs_dom_audio_context_create_periodic_wave ::
        JSRef AudioContext ->
          JSRef Float32Array -> JSRef Float32Array -> IO (JSRef PeriodicWave)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
audioContextCreatePeriodicWave ::
                               (MonadIO m, IsAudioContext self, IsFloat32Array real,
                                IsFloat32Array imag) =>
                                 self -> Maybe real -> Maybe imag -> m (Maybe PeriodicWave)
audioContextCreatePeriodicWave self real imag
  = liftIO
      ((ghcjs_dom_audio_context_create_periodic_wave
          (unAudioContext (toAudioContext self))
          (maybe jsNull (unFloat32Array . toFloat32Array) real)
          (maybe jsNull (unFloat32Array . toFloat32Array) imag))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createChannelSplitter\"]($2)"
        ghcjs_dom_audio_context_create_channel_splitter ::
        JSRef AudioContext -> Word -> IO (JSRef ChannelSplitterNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
audioContextCreateChannelSplitter ::
                                  (MonadIO m, IsAudioContext self) =>
                                    self -> Word -> m (Maybe ChannelSplitterNode)
audioContextCreateChannelSplitter self numberOfOutputs
  = liftIO
      ((ghcjs_dom_audio_context_create_channel_splitter
          (unAudioContext (toAudioContext self))
          numberOfOutputs)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createChannelMerger\"]($2)"
        ghcjs_dom_audio_context_create_channel_merger ::
        JSRef AudioContext -> Word -> IO (JSRef ChannelMergerNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
audioContextCreateChannelMerger ::
                                (MonadIO m, IsAudioContext self) =>
                                  self -> Word -> m (Maybe ChannelMergerNode)
audioContextCreateChannelMerger self numberOfInputs
  = liftIO
      ((ghcjs_dom_audio_context_create_channel_merger
          (unAudioContext (toAudioContext self))
          numberOfInputs)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"startRendering\"]()"
        ghcjs_dom_audio_context_start_rendering ::
        JSRef AudioContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.startRendering Mozilla AudioContext.startRendering documentation> 
audioContextStartRendering ::
                           (MonadIO m, IsAudioContext self) => self -> m ()
audioContextStartRendering self
  = liftIO
      (ghcjs_dom_audio_context_start_rendering
         (unAudioContext (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createGainNode\"]()"
        ghcjs_dom_audio_context_create_gain_node ::
        JSRef AudioContext -> IO (JSRef GainNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
audioContextCreateGainNode ::
                           (MonadIO m, IsAudioContext self) => self -> m (Maybe GainNode)
audioContextCreateGainNode self
  = liftIO
      ((ghcjs_dom_audio_context_create_gain_node
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createDelayNode\"]($2)"
        ghcjs_dom_audio_context_create_delay_node ::
        JSRef AudioContext -> Double -> IO (JSRef DelayNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
audioContextCreateDelayNode ::
                            (MonadIO m, IsAudioContext self) =>
                              self -> Double -> m (Maybe DelayNode)
audioContextCreateDelayNode self maxDelayTime
  = liftIO
      ((ghcjs_dom_audio_context_create_delay_node
          (unAudioContext (toAudioContext self))
          maxDelayTime)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createJavaScriptNode\"]($2,\n$3, $4)"
        ghcjs_dom_audio_context_create_java_script_node ::
        JSRef AudioContext ->
          Word -> Word -> Word -> IO (JSRef ScriptProcessorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
audioContextCreateJavaScriptNode ::
                                 (MonadIO m, IsAudioContext self) =>
                                   self -> Word -> Word -> Word -> m (Maybe ScriptProcessorNode)
audioContextCreateJavaScriptNode self bufferSize
  numberOfInputChannels numberOfOutputChannels
  = liftIO
      ((ghcjs_dom_audio_context_create_java_script_node
          (unAudioContext (toAudioContext self))
          bufferSize
          numberOfInputChannels
          numberOfOutputChannels)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"destination\"]"
        ghcjs_dom_audio_context_get_destination ::
        JSRef AudioContext -> IO (JSRef AudioDestinationNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
audioContextGetDestination ::
                           (MonadIO m, IsAudioContext self) =>
                             self -> m (Maybe AudioDestinationNode)
audioContextGetDestination self
  = liftIO
      ((ghcjs_dom_audio_context_get_destination
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"currentTime\"]"
        ghcjs_dom_audio_context_get_current_time ::
        JSRef AudioContext -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.currentTime Mozilla AudioContext.currentTime documentation> 
audioContextGetCurrentTime ::
                           (MonadIO m, IsAudioContext self) => self -> m Double
audioContextGetCurrentTime self
  = liftIO
      (ghcjs_dom_audio_context_get_current_time
         (unAudioContext (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"sampleRate\"]"
        ghcjs_dom_audio_context_get_sample_rate ::
        JSRef AudioContext -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.sampleRate Mozilla AudioContext.sampleRate documentation> 
audioContextGetSampleRate ::
                          (MonadIO m, IsAudioContext self) => self -> m Float
audioContextGetSampleRate self
  = liftIO
      (ghcjs_dom_audio_context_get_sample_rate
         (unAudioContext (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"listener\"]"
        ghcjs_dom_audio_context_get_listener ::
        JSRef AudioContext -> IO (JSRef AudioListener)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.listener Mozilla AudioContext.listener documentation> 
audioContextGetListener ::
                        (MonadIO m, IsAudioContext self) => self -> m (Maybe AudioListener)
audioContextGetListener self
  = liftIO
      ((ghcjs_dom_audio_context_get_listener
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"activeSourceCount\"]"
        ghcjs_dom_audio_context_get_active_source_count ::
        JSRef AudioContext -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.activeSourceCount Mozilla AudioContext.activeSourceCount documentation> 
audioContextGetActiveSourceCount ::
                                 (MonadIO m, IsAudioContext self) => self -> m Word
audioContextGetActiveSourceCount self
  = liftIO
      (ghcjs_dom_audio_context_get_active_source_count
         (unAudioContext (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.complete Mozilla AudioContext.complete documentation> 
audioContextComplete ::
                     (IsAudioContext self, IsEventTarget self) =>
                       EventName self OfflineAudioCompletionEvent
audioContextComplete = unsafeEventName (toJSString "complete")
#else
module GHCJS.DOM.AudioContext (
  ) where
#endif
