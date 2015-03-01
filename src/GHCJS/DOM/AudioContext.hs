{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioContext
       (js_newAudioContext, newAudioContext, js_createBuffer,
        createBuffer, js_createBufferFromArrayBuffer,
        createBufferFromArrayBuffer, js_decodeAudioData, decodeAudioData,
        js_createBufferSource, createBufferSource,
        js_createMediaElementSource, createMediaElementSource,
        js_createMediaStreamSource, createMediaStreamSource,
        js_createMediaStreamDestination, createMediaStreamDestination,
        js_createGain, createGain, js_createDelay, createDelay,
        js_createBiquadFilter, createBiquadFilter, js_createWaveShaper,
        createWaveShaper, js_createPanner, createPanner,
        js_createConvolver, createConvolver, js_createDynamicsCompressor,
        createDynamicsCompressor, js_createAnalyser, createAnalyser,
        js_createScriptProcessor, createScriptProcessor,
        js_createOscillator, createOscillator, js_createPeriodicWave,
        createPeriodicWave, js_createChannelSplitter,
        createChannelSplitter, js_createChannelMerger, createChannelMerger,
        js_startRendering, startRendering, js_createGainNode,
        createGainNode, js_createDelayNode, createDelayNode,
        js_createJavaScriptNode, createJavaScriptNode, js_getDestination,
        getDestination, js_getCurrentTime, getCurrentTime,
        js_getSampleRate, getSampleRate, js_getListener, getListener,
        js_getActiveSourceCount, getActiveSourceCount, complete,
        AudioContext, castToAudioContext, gTypeAudioContext,
        IsAudioContext, toAudioContext)
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

 
foreign import javascript unsafe
        "new (window[\"AudioContext\"]\n||\nwindow[\"webkitAudioContext\"])()"
        js_newAudioContext :: IO (JSRef AudioContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext Mozilla AudioContext documentation> 
newAudioContext :: (MonadIO m) => m AudioContext
newAudioContext
  = liftIO (js_newAudioContext >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"createBuffer\"]($2, $3, $4)"
        js_createBuffer ::
        JSRef AudioContext ->
          Word -> Word -> Float -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBuffer ::
             (MonadIO m, IsAudioContext self) =>
               self -> Word -> Word -> Float -> m (Maybe AudioBuffer)
createBuffer self numberOfChannels numberOfFrames sampleRate
  = liftIO
      ((js_createBuffer (unAudioContext (toAudioContext self))
          numberOfChannels
          numberOfFrames
          sampleRate)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createBuffer\"]($2, $3)"
        js_createBufferFromArrayBuffer ::
        JSRef AudioContext ->
          JSRef ArrayBuffer -> Bool -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBuffer ::
                            (MonadIO m, IsAudioContext self, IsArrayBuffer buffer) =>
                              self -> Maybe buffer -> Bool -> m (Maybe AudioBuffer)
createBufferFromArrayBuffer self buffer mixToMono
  = liftIO
      ((js_createBufferFromArrayBuffer
          (unAudioContext (toAudioContext self))
          (maybe jsNull (unArrayBuffer . toArrayBuffer) buffer)
          mixToMono)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"decodeAudioData\"]($2, $3,\n$4)" js_decodeAudioData ::
        JSRef AudioContext ->
          JSRef ArrayBuffer ->
            JSRef AudioBufferCallback -> JSRef AudioBufferCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation> 
decodeAudioData ::
                (MonadIO m, IsAudioContext self, IsArrayBuffer audioData) =>
                  self ->
                    Maybe audioData ->
                      Maybe AudioBufferCallback -> Maybe AudioBufferCallback -> m ()
decodeAudioData self audioData successCallback errorCallback
  = liftIO
      (js_decodeAudioData (unAudioContext (toAudioContext self))
         (maybe jsNull (unArrayBuffer . toArrayBuffer) audioData)
         (maybe jsNull unAudioBufferCallback successCallback)
         (maybe jsNull unAudioBufferCallback errorCallback))
 
foreign import javascript unsafe "$1[\"createBufferSource\"]()"
        js_createBufferSource ::
        JSRef AudioContext -> IO (JSRef AudioBufferSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSource ::
                   (MonadIO m, IsAudioContext self) =>
                     self -> m (Maybe AudioBufferSourceNode)
createBufferSource self
  = liftIO
      ((js_createBufferSource (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createMediaElementSource\"]($2)" js_createMediaElementSource
        ::
        JSRef AudioContext ->
          JSRef HTMLMediaElement -> IO (JSRef MediaElementAudioSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSource ::
                         (MonadIO m, IsAudioContext self,
                          IsHTMLMediaElement mediaElement) =>
                           self -> Maybe mediaElement -> m (Maybe MediaElementAudioSourceNode)
createMediaElementSource self mediaElement
  = liftIO
      ((js_createMediaElementSource
          (unAudioContext (toAudioContext self))
          (maybe jsNull (unHTMLMediaElement . toHTMLMediaElement)
             mediaElement))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createMediaStreamSource\"]($2)" js_createMediaStreamSource ::
        JSRef AudioContext ->
          JSRef MediaStream -> IO (JSRef MediaStreamAudioSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource ::
                        (MonadIO m, IsAudioContext self) =>
                          self -> Maybe MediaStream -> m (Maybe MediaStreamAudioSourceNode)
createMediaStreamSource self mediaStream
  = liftIO
      ((js_createMediaStreamSource (unAudioContext (toAudioContext self))
          (maybe jsNull unMediaStream mediaStream))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createMediaStreamDestination\"]()"
        js_createMediaStreamDestination ::
        JSRef AudioContext -> IO (JSRef MediaStreamAudioDestinationNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination ::
                             (MonadIO m, IsAudioContext self) =>
                               self -> m (Maybe MediaStreamAudioDestinationNode)
createMediaStreamDestination self
  = liftIO
      ((js_createMediaStreamDestination
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createGain\"]()"
        js_createGain :: JSRef AudioContext -> IO (JSRef GainNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain ::
           (MonadIO m, IsAudioContext self) => self -> m (Maybe GainNode)
createGain self
  = liftIO
      ((js_createGain (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"createDelay\"]($2)"
        js_createDelay ::
        JSRef AudioContext -> Double -> IO (JSRef DelayNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay ::
            (MonadIO m, IsAudioContext self) =>
              self -> Double -> m (Maybe DelayNode)
createDelay self maxDelayTime
  = liftIO
      ((js_createDelay (unAudioContext (toAudioContext self))
          maxDelayTime)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createBiquadFilter\"]()"
        js_createBiquadFilter ::
        JSRef AudioContext -> IO (JSRef BiquadFilterNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter ::
                   (MonadIO m, IsAudioContext self) =>
                     self -> m (Maybe BiquadFilterNode)
createBiquadFilter self
  = liftIO
      ((js_createBiquadFilter (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"createWaveShaper\"]()"
        js_createWaveShaper ::
        JSRef AudioContext -> IO (JSRef WaveShaperNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper ::
                 (MonadIO m, IsAudioContext self) =>
                   self -> m (Maybe WaveShaperNode)
createWaveShaper self
  = liftIO
      ((js_createWaveShaper (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"createPanner\"]()"
        js_createPanner :: JSRef AudioContext -> IO (JSRef PannerNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner ::
             (MonadIO m, IsAudioContext self) => self -> m (Maybe PannerNode)
createPanner self
  = liftIO
      ((js_createPanner (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"createConvolver\"]()"
        js_createConvolver ::
        JSRef AudioContext -> IO (JSRef ConvolverNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver ::
                (MonadIO m, IsAudioContext self) => self -> m (Maybe ConvolverNode)
createConvolver self
  = liftIO
      ((js_createConvolver (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createDynamicsCompressor\"]()" js_createDynamicsCompressor ::
        JSRef AudioContext -> IO (JSRef DynamicsCompressorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor ::
                         (MonadIO m, IsAudioContext self) =>
                           self -> m (Maybe DynamicsCompressorNode)
createDynamicsCompressor self
  = liftIO
      ((js_createDynamicsCompressor
          (unAudioContext (toAudioContext self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createAnalyser\"]()"
        js_createAnalyser :: JSRef AudioContext -> IO (JSRef AnalyserNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser ::
               (MonadIO m, IsAudioContext self) => self -> m (Maybe AnalyserNode)
createAnalyser self
  = liftIO
      ((js_createAnalyser (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createScriptProcessor\"]($2,\n$3, $4)"
        js_createScriptProcessor ::
        JSRef AudioContext ->
          Word -> Word -> Word -> IO (JSRef ScriptProcessorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessor ::
                      (MonadIO m, IsAudioContext self) =>
                        self -> Word -> Word -> Word -> m (Maybe ScriptProcessorNode)
createScriptProcessor self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      ((js_createScriptProcessor (unAudioContext (toAudioContext self))
          bufferSize
          numberOfInputChannels
          numberOfOutputChannels)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createOscillator\"]()"
        js_createOscillator ::
        JSRef AudioContext -> IO (JSRef OscillatorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator ::
                 (MonadIO m, IsAudioContext self) =>
                   self -> m (Maybe OscillatorNode)
createOscillator self
  = liftIO
      ((js_createOscillator (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createPeriodicWave\"]($2, $3)" js_createPeriodicWave ::
        JSRef AudioContext ->
          JSRef Float32Array -> JSRef Float32Array -> IO (JSRef PeriodicWave)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWave ::
                   (MonadIO m, IsAudioContext self, IsFloat32Array real,
                    IsFloat32Array imag) =>
                     self -> Maybe real -> Maybe imag -> m (Maybe PeriodicWave)
createPeriodicWave self real imag
  = liftIO
      ((js_createPeriodicWave (unAudioContext (toAudioContext self))
          (maybe jsNull (unFloat32Array . toFloat32Array) real)
          (maybe jsNull (unFloat32Array . toFloat32Array) imag))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createChannelSplitter\"]($2)" js_createChannelSplitter ::
        JSRef AudioContext -> Word -> IO (JSRef ChannelSplitterNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter ::
                      (MonadIO m, IsAudioContext self) =>
                        self -> Word -> m (Maybe ChannelSplitterNode)
createChannelSplitter self numberOfOutputs
  = liftIO
      ((js_createChannelSplitter (unAudioContext (toAudioContext self))
          numberOfOutputs)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createChannelMerger\"]($2)"
        js_createChannelMerger ::
        JSRef AudioContext -> Word -> IO (JSRef ChannelMergerNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger ::
                    (MonadIO m, IsAudioContext self) =>
                      self -> Word -> m (Maybe ChannelMergerNode)
createChannelMerger self numberOfInputs
  = liftIO
      ((js_createChannelMerger (unAudioContext (toAudioContext self))
          numberOfInputs)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"startRendering\"]()"
        js_startRendering :: JSRef AudioContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.startRendering Mozilla AudioContext.startRendering documentation> 
startRendering :: (MonadIO m, IsAudioContext self) => self -> m ()
startRendering self
  = liftIO (js_startRendering (unAudioContext (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createGainNode\"]()"
        js_createGainNode :: JSRef AudioContext -> IO (JSRef GainNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNode ::
               (MonadIO m, IsAudioContext self) => self -> m (Maybe GainNode)
createGainNode self
  = liftIO
      ((js_createGainNode (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"createDelayNode\"]($2)"
        js_createDelayNode ::
        JSRef AudioContext -> Double -> IO (JSRef DelayNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNode ::
                (MonadIO m, IsAudioContext self) =>
                  self -> Double -> m (Maybe DelayNode)
createDelayNode self maxDelayTime
  = liftIO
      ((js_createDelayNode (unAudioContext (toAudioContext self))
          maxDelayTime)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createJavaScriptNode\"]($2,\n$3, $4)" js_createJavaScriptNode
        ::
        JSRef AudioContext ->
          Word -> Word -> Word -> IO (JSRef ScriptProcessorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
createJavaScriptNode ::
                     (MonadIO m, IsAudioContext self) =>
                       self -> Word -> Word -> Word -> m (Maybe ScriptProcessorNode)
createJavaScriptNode self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      ((js_createJavaScriptNode (unAudioContext (toAudioContext self))
          bufferSize
          numberOfInputChannels
          numberOfOutputChannels)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"destination\"]"
        js_getDestination ::
        JSRef AudioContext -> IO (JSRef AudioDestinationNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestination ::
               (MonadIO m, IsAudioContext self) =>
                 self -> m (Maybe AudioDestinationNode)
getDestination self
  = liftIO
      ((js_getDestination (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"currentTime\"]"
        js_getCurrentTime :: JSRef AudioContext -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.currentTime Mozilla AudioContext.currentTime documentation> 
getCurrentTime ::
               (MonadIO m, IsAudioContext self) => self -> m Double
getCurrentTime self
  = liftIO (js_getCurrentTime (unAudioContext (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"sampleRate\"]"
        js_getSampleRate :: JSRef AudioContext -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.sampleRate Mozilla AudioContext.sampleRate documentation> 
getSampleRate ::
              (MonadIO m, IsAudioContext self) => self -> m Float
getSampleRate self
  = liftIO (js_getSampleRate (unAudioContext (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"listener\"]" js_getListener
        :: JSRef AudioContext -> IO (JSRef AudioListener)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.listener Mozilla AudioContext.listener documentation> 
getListener ::
            (MonadIO m, IsAudioContext self) => self -> m (Maybe AudioListener)
getListener self
  = liftIO
      ((js_getListener (unAudioContext (toAudioContext self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"activeSourceCount\"]"
        js_getActiveSourceCount :: JSRef AudioContext -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.activeSourceCount Mozilla AudioContext.activeSourceCount documentation> 
getActiveSourceCount ::
                     (MonadIO m, IsAudioContext self) => self -> m Word
getActiveSourceCount self
  = liftIO
      (js_getActiveSourceCount (unAudioContext (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.oncomplete Mozilla AudioContext.oncomplete documentation> 
complete ::
         (IsAudioContext self, IsEventTarget self) =>
           EventName self OfflineAudioCompletionEvent
complete = unsafeEventName (toJSString "complete")
#else
module GHCJS.DOM.AudioContext (
  ) where
#endif
