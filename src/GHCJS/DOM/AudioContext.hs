{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioContext
       (ghcjs_dom_audio_context_create_buffer, audioContextCreateBuffer,
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
        audioContextGetActiveSourceCount, audioContextOncomplete,
        AudioContext, IsAudioContext, castToAudioContext,
        gTypeAudioContext, toAudioContext)
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

 
foreign import javascript unsafe "$1[\"createBuffer\"]($2, $3, $4)"
        ghcjs_dom_audio_context_create_buffer ::
        JSRef AudioContext ->
          Word -> Word -> Float -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createBuffer Mozilla webkitAudioContext.createBuffer documentation> 
audioContextCreateBuffer ::
                         (IsAudioContext self) =>
                           self -> Word -> Word -> Float -> IO (Maybe AudioBuffer)
audioContextCreateBuffer self numberOfChannels numberOfFrames
  sampleRate
  = (ghcjs_dom_audio_context_create_buffer
       (unAudioContext (toAudioContext self))
       numberOfChannels
       numberOfFrames
       sampleRate)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createBuffer\"]($2, $3)"
        ghcjs_dom_audio_context_create_bufferFromArrayBuffer ::
        JSRef AudioContext ->
          JSRef ArrayBuffer -> Bool -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createBufferFromArrayBuffer Mozilla webkitAudioContext.createBufferFromArrayBuffer documentation> 
audioContextCreateBufferFromArrayBuffer ::
                                        (IsAudioContext self, IsArrayBuffer buffer) =>
                                          self -> Maybe buffer -> Bool -> IO (Maybe AudioBuffer)
audioContextCreateBufferFromArrayBuffer self buffer mixToMono
  = (ghcjs_dom_audio_context_create_bufferFromArrayBuffer
       (unAudioContext (toAudioContext self))
       (maybe jsNull (unArrayBuffer . toArrayBuffer) buffer)
       mixToMono)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"decodeAudioData\"]($2, $3,\n$4)"
        ghcjs_dom_audio_context_decode_audio_data ::
        JSRef AudioContext ->
          JSRef ArrayBuffer ->
            JSRef AudioBufferCallback -> JSRef AudioBufferCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.decodeAudioData Mozilla webkitAudioContext.decodeAudioData documentation> 
audioContextDecodeAudioData ::
                            (IsAudioContext self, IsArrayBuffer audioData,
                             IsAudioBufferCallback successCallback,
                             IsAudioBufferCallback errorCallback) =>
                              self ->
                                Maybe audioData ->
                                  Maybe successCallback -> Maybe errorCallback -> IO ()
audioContextDecodeAudioData self audioData successCallback
  errorCallback
  = ghcjs_dom_audio_context_decode_audio_data
      (unAudioContext (toAudioContext self))
      (maybe jsNull (unArrayBuffer . toArrayBuffer) audioData)
      (maybe jsNull (unAudioBufferCallback . toAudioBufferCallback)
         successCallback)
      (maybe jsNull (unAudioBufferCallback . toAudioBufferCallback)
         errorCallback)
 
foreign import javascript unsafe "$1[\"createBufferSource\"]()"
        ghcjs_dom_audio_context_create_buffer_source ::
        JSRef AudioContext -> IO (JSRef AudioBufferSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createBufferSource Mozilla webkitAudioContext.createBufferSource documentation> 
audioContextCreateBufferSource ::
                               (IsAudioContext self) => self -> IO (Maybe AudioBufferSourceNode)
audioContextCreateBufferSource self
  = (ghcjs_dom_audio_context_create_buffer_source
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createMediaElementSource\"]($2)"
        ghcjs_dom_audio_context_create_media_element_source ::
        JSRef AudioContext ->
          JSRef HTMLMediaElement -> IO (JSRef MediaElementAudioSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createMediaElementSource Mozilla webkitAudioContext.createMediaElementSource documentation> 
audioContextCreateMediaElementSource ::
                                     (IsAudioContext self, IsHTMLMediaElement mediaElement) =>
                                       self ->
                                         Maybe mediaElement ->
                                           IO (Maybe MediaElementAudioSourceNode)
audioContextCreateMediaElementSource self mediaElement
  = (ghcjs_dom_audio_context_create_media_element_source
       (unAudioContext (toAudioContext self))
       (maybe jsNull (unHTMLMediaElement . toHTMLMediaElement)
          mediaElement))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createMediaStreamSource\"]($2)"
        ghcjs_dom_audio_context_create_media_stream_source ::
        JSRef AudioContext ->
          JSRef MediaStream -> IO (JSRef MediaStreamAudioSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createMediaStreamSource Mozilla webkitAudioContext.createMediaStreamSource documentation> 
audioContextCreateMediaStreamSource ::
                                    (IsAudioContext self, IsMediaStream mediaStream) =>
                                      self ->
                                        Maybe mediaStream -> IO (Maybe MediaStreamAudioSourceNode)
audioContextCreateMediaStreamSource self mediaStream
  = (ghcjs_dom_audio_context_create_media_stream_source
       (unAudioContext (toAudioContext self))
       (maybe jsNull (unMediaStream . toMediaStream) mediaStream))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createMediaStreamDestination\"]()"
        ghcjs_dom_audio_context_create_media_stream_destination ::
        JSRef AudioContext -> IO (JSRef MediaStreamAudioDestinationNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createMediaStreamDestination Mozilla webkitAudioContext.createMediaStreamDestination documentation> 
audioContextCreateMediaStreamDestination ::
                                         (IsAudioContext self) =>
                                           self -> IO (Maybe MediaStreamAudioDestinationNode)
audioContextCreateMediaStreamDestination self
  = (ghcjs_dom_audio_context_create_media_stream_destination
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createGain\"]()"
        ghcjs_dom_audio_context_create_gain ::
        JSRef AudioContext -> IO (JSRef GainNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createGain Mozilla webkitAudioContext.createGain documentation> 
audioContextCreateGain ::
                       (IsAudioContext self) => self -> IO (Maybe GainNode)
audioContextCreateGain self
  = (ghcjs_dom_audio_context_create_gain
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createDelay\"]($2)"
        ghcjs_dom_audio_context_create_delay ::
        JSRef AudioContext -> Double -> IO (JSRef DelayNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createDelay Mozilla webkitAudioContext.createDelay documentation> 
audioContextCreateDelay ::
                        (IsAudioContext self) => self -> Double -> IO (Maybe DelayNode)
audioContextCreateDelay self maxDelayTime
  = (ghcjs_dom_audio_context_create_delay
       (unAudioContext (toAudioContext self))
       maxDelayTime)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createBiquadFilter\"]()"
        ghcjs_dom_audio_context_create_biquad_filter ::
        JSRef AudioContext -> IO (JSRef BiquadFilterNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createBiquadFilter Mozilla webkitAudioContext.createBiquadFilter documentation> 
audioContextCreateBiquadFilter ::
                               (IsAudioContext self) => self -> IO (Maybe BiquadFilterNode)
audioContextCreateBiquadFilter self
  = (ghcjs_dom_audio_context_create_biquad_filter
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createWaveShaper\"]()"
        ghcjs_dom_audio_context_create_wave_shaper ::
        JSRef AudioContext -> IO (JSRef WaveShaperNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createWaveShaper Mozilla webkitAudioContext.createWaveShaper documentation> 
audioContextCreateWaveShaper ::
                             (IsAudioContext self) => self -> IO (Maybe WaveShaperNode)
audioContextCreateWaveShaper self
  = (ghcjs_dom_audio_context_create_wave_shaper
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createPanner\"]()"
        ghcjs_dom_audio_context_create_panner ::
        JSRef AudioContext -> IO (JSRef PannerNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createPanner Mozilla webkitAudioContext.createPanner documentation> 
audioContextCreatePanner ::
                         (IsAudioContext self) => self -> IO (Maybe PannerNode)
audioContextCreatePanner self
  = (ghcjs_dom_audio_context_create_panner
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createConvolver\"]()"
        ghcjs_dom_audio_context_create_convolver ::
        JSRef AudioContext -> IO (JSRef ConvolverNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createConvolver Mozilla webkitAudioContext.createConvolver documentation> 
audioContextCreateConvolver ::
                            (IsAudioContext self) => self -> IO (Maybe ConvolverNode)
audioContextCreateConvolver self
  = (ghcjs_dom_audio_context_create_convolver
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createDynamicsCompressor\"]()"
        ghcjs_dom_audio_context_create_dynamics_compressor ::
        JSRef AudioContext -> IO (JSRef DynamicsCompressorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createDynamicsCompressor Mozilla webkitAudioContext.createDynamicsCompressor documentation> 
audioContextCreateDynamicsCompressor ::
                                     (IsAudioContext self) =>
                                       self -> IO (Maybe DynamicsCompressorNode)
audioContextCreateDynamicsCompressor self
  = (ghcjs_dom_audio_context_create_dynamics_compressor
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createAnalyser\"]()"
        ghcjs_dom_audio_context_create_analyser ::
        JSRef AudioContext -> IO (JSRef AnalyserNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createAnalyser Mozilla webkitAudioContext.createAnalyser documentation> 
audioContextCreateAnalyser ::
                           (IsAudioContext self) => self -> IO (Maybe AnalyserNode)
audioContextCreateAnalyser self
  = (ghcjs_dom_audio_context_create_analyser
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createScriptProcessor\"]($2,\n$3, $4)"
        ghcjs_dom_audio_context_create_script_processor ::
        JSRef AudioContext ->
          Word -> Word -> Word -> IO (JSRef ScriptProcessorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createScriptProcessor Mozilla webkitAudioContext.createScriptProcessor documentation> 
audioContextCreateScriptProcessor ::
                                  (IsAudioContext self) =>
                                    self -> Word -> Word -> Word -> IO (Maybe ScriptProcessorNode)
audioContextCreateScriptProcessor self bufferSize
  numberOfInputChannels numberOfOutputChannels
  = (ghcjs_dom_audio_context_create_script_processor
       (unAudioContext (toAudioContext self))
       bufferSize
       numberOfInputChannels
       numberOfOutputChannels)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createOscillator\"]()"
        ghcjs_dom_audio_context_create_oscillator ::
        JSRef AudioContext -> IO (JSRef OscillatorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createOscillator Mozilla webkitAudioContext.createOscillator documentation> 
audioContextCreateOscillator ::
                             (IsAudioContext self) => self -> IO (Maybe OscillatorNode)
audioContextCreateOscillator self
  = (ghcjs_dom_audio_context_create_oscillator
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createPeriodicWave\"]($2, $3)"
        ghcjs_dom_audio_context_create_periodic_wave ::
        JSRef AudioContext ->
          JSRef Float32Array -> JSRef Float32Array -> IO (JSRef PeriodicWave)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createPeriodicWave Mozilla webkitAudioContext.createPeriodicWave documentation> 
audioContextCreatePeriodicWave ::
                               (IsAudioContext self, IsFloat32Array real, IsFloat32Array imag) =>
                                 self -> Maybe real -> Maybe imag -> IO (Maybe PeriodicWave)
audioContextCreatePeriodicWave self real imag
  = (ghcjs_dom_audio_context_create_periodic_wave
       (unAudioContext (toAudioContext self))
       (maybe jsNull (unFloat32Array . toFloat32Array) real)
       (maybe jsNull (unFloat32Array . toFloat32Array) imag))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createChannelSplitter\"]($2)"
        ghcjs_dom_audio_context_create_channel_splitter ::
        JSRef AudioContext -> Word -> IO (JSRef ChannelSplitterNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createChannelSplitter Mozilla webkitAudioContext.createChannelSplitter documentation> 
audioContextCreateChannelSplitter ::
                                  (IsAudioContext self) =>
                                    self -> Word -> IO (Maybe ChannelSplitterNode)
audioContextCreateChannelSplitter self numberOfOutputs
  = (ghcjs_dom_audio_context_create_channel_splitter
       (unAudioContext (toAudioContext self))
       numberOfOutputs)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createChannelMerger\"]($2)"
        ghcjs_dom_audio_context_create_channel_merger ::
        JSRef AudioContext -> Word -> IO (JSRef ChannelMergerNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createChannelMerger Mozilla webkitAudioContext.createChannelMerger documentation> 
audioContextCreateChannelMerger ::
                                (IsAudioContext self) =>
                                  self -> Word -> IO (Maybe ChannelMergerNode)
audioContextCreateChannelMerger self numberOfInputs
  = (ghcjs_dom_audio_context_create_channel_merger
       (unAudioContext (toAudioContext self))
       numberOfInputs)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"startRendering\"]()"
        ghcjs_dom_audio_context_start_rendering ::
        JSRef AudioContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.startRendering Mozilla webkitAudioContext.startRendering documentation> 
audioContextStartRendering ::
                           (IsAudioContext self) => self -> IO ()
audioContextStartRendering self
  = ghcjs_dom_audio_context_start_rendering
      (unAudioContext (toAudioContext self))
 
foreign import javascript unsafe "$1[\"createGainNode\"]()"
        ghcjs_dom_audio_context_create_gain_node ::
        JSRef AudioContext -> IO (JSRef GainNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createGainNode Mozilla webkitAudioContext.createGainNode documentation> 
audioContextCreateGainNode ::
                           (IsAudioContext self) => self -> IO (Maybe GainNode)
audioContextCreateGainNode self
  = (ghcjs_dom_audio_context_create_gain_node
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createDelayNode\"]($2)"
        ghcjs_dom_audio_context_create_delay_node ::
        JSRef AudioContext -> Double -> IO (JSRef DelayNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createDelayNode Mozilla webkitAudioContext.createDelayNode documentation> 
audioContextCreateDelayNode ::
                            (IsAudioContext self) => self -> Double -> IO (Maybe DelayNode)
audioContextCreateDelayNode self maxDelayTime
  = (ghcjs_dom_audio_context_create_delay_node
       (unAudioContext (toAudioContext self))
       maxDelayTime)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createJavaScriptNode\"]($2,\n$3, $4)"
        ghcjs_dom_audio_context_create_java_script_node ::
        JSRef AudioContext ->
          Word -> Word -> Word -> IO (JSRef ScriptProcessorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.createJavaScriptNode Mozilla webkitAudioContext.createJavaScriptNode documentation> 
audioContextCreateJavaScriptNode ::
                                 (IsAudioContext self) =>
                                   self -> Word -> Word -> Word -> IO (Maybe ScriptProcessorNode)
audioContextCreateJavaScriptNode self bufferSize
  numberOfInputChannels numberOfOutputChannels
  = (ghcjs_dom_audio_context_create_java_script_node
       (unAudioContext (toAudioContext self))
       bufferSize
       numberOfInputChannels
       numberOfOutputChannels)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"destination\"]"
        ghcjs_dom_audio_context_get_destination ::
        JSRef AudioContext -> IO (JSRef AudioDestinationNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.destination Mozilla webkitAudioContext.destination documentation> 
audioContextGetDestination ::
                           (IsAudioContext self) => self -> IO (Maybe AudioDestinationNode)
audioContextGetDestination self
  = (ghcjs_dom_audio_context_get_destination
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"currentTime\"]"
        ghcjs_dom_audio_context_get_current_time ::
        JSRef AudioContext -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.currentTime Mozilla webkitAudioContext.currentTime documentation> 
audioContextGetCurrentTime ::
                           (IsAudioContext self) => self -> IO Double
audioContextGetCurrentTime self
  = ghcjs_dom_audio_context_get_current_time
      (unAudioContext (toAudioContext self))
 
foreign import javascript unsafe "$1[\"sampleRate\"]"
        ghcjs_dom_audio_context_get_sample_rate ::
        JSRef AudioContext -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.sampleRate Mozilla webkitAudioContext.sampleRate documentation> 
audioContextGetSampleRate ::
                          (IsAudioContext self) => self -> IO Float
audioContextGetSampleRate self
  = ghcjs_dom_audio_context_get_sample_rate
      (unAudioContext (toAudioContext self))
 
foreign import javascript unsafe "$1[\"listener\"]"
        ghcjs_dom_audio_context_get_listener ::
        JSRef AudioContext -> IO (JSRef AudioListener)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.listener Mozilla webkitAudioContext.listener documentation> 
audioContextGetListener ::
                        (IsAudioContext self) => self -> IO (Maybe AudioListener)
audioContextGetListener self
  = (ghcjs_dom_audio_context_get_listener
       (unAudioContext (toAudioContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"activeSourceCount\"]"
        ghcjs_dom_audio_context_get_active_source_count ::
        JSRef AudioContext -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.activeSourceCount Mozilla webkitAudioContext.activeSourceCount documentation> 
audioContextGetActiveSourceCount ::
                                 (IsAudioContext self) => self -> IO Word
audioContextGetActiveSourceCount self
  = ghcjs_dom_audio_context_get_active_source_count
      (unAudioContext (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitAudioContext.oncomplete Mozilla webkitAudioContext.oncomplete documentation> 
audioContextOncomplete ::
                       (IsAudioContext self) => Signal self (EventM UIEvent self ())
audioContextOncomplete = (connect "complete")
#else
module GHCJS.DOM.AudioContext (
  ) where
#endif
