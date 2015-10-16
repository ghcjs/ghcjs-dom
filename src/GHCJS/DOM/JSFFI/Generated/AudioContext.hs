{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioContext
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
 
foreign import javascript unsafe
        "new (window[\"AudioContext\"]\n||\nwindow[\"webkitAudioContext\"])()"
        js_newAudioContext :: IO AudioContext

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext Mozilla AudioContext documentation> 
newAudioContext :: (MonadIO m) => m AudioContext
newAudioContext = liftIO (js_newAudioContext)
 
foreign import javascript unsafe "$1[\"createBuffer\"]($2, $3, $4)"
        js_createBuffer ::
        AudioContext -> Word -> Word -> Float -> IO (Nullable AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBuffer ::
             (MonadIO m, IsAudioContext self) =>
               self -> Word -> Word -> Float -> m (Maybe AudioBuffer)
createBuffer self numberOfChannels numberOfFrames sampleRate
  = liftIO
      (nullableToMaybe <$>
         (js_createBuffer (toAudioContext self) numberOfChannels
            numberOfFrames
            sampleRate))
 
foreign import javascript unsafe "$1[\"createBuffer\"]($2, $3)"
        js_createBufferFromArrayBuffer ::
        AudioContext ->
          Nullable ArrayBuffer -> Bool -> IO (Nullable AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBuffer ::
                            (MonadIO m, IsAudioContext self, IsArrayBuffer buffer) =>
                              self -> Maybe buffer -> Bool -> m (Maybe AudioBuffer)
createBufferFromArrayBuffer self buffer mixToMono
  = liftIO
      (nullableToMaybe <$>
         (js_createBufferFromArrayBuffer (toAudioContext self)
            (maybeToNullable (fmap toArrayBuffer buffer))
            mixToMono))
 
foreign import javascript unsafe
        "$1[\"decodeAudioData\"]($2, $3,\n$4)" js_decodeAudioData ::
        AudioContext ->
          Nullable ArrayBuffer ->
            Nullable AudioBufferCallback ->
              Nullable AudioBufferCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation> 
decodeAudioData ::
                (MonadIO m, IsAudioContext self, IsArrayBuffer audioData) =>
                  self ->
                    Maybe audioData ->
                      Maybe AudioBufferCallback -> Maybe AudioBufferCallback -> m ()
decodeAudioData self audioData successCallback errorCallback
  = liftIO
      (js_decodeAudioData (toAudioContext self)
         (maybeToNullable (fmap toArrayBuffer audioData))
         (maybeToNullable successCallback)
         (maybeToNullable errorCallback))
 
foreign import javascript unsafe "$1[\"createBufferSource\"]()"
        js_createBufferSource ::
        AudioContext -> IO (Nullable AudioBufferSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSource ::
                   (MonadIO m, IsAudioContext self) =>
                     self -> m (Maybe AudioBufferSourceNode)
createBufferSource self
  = liftIO
      (nullableToMaybe <$> (js_createBufferSource (toAudioContext self)))
 
foreign import javascript unsafe
        "$1[\"createMediaElementSource\"]($2)" js_createMediaElementSource
        ::
        AudioContext ->
          Nullable HTMLMediaElement ->
            IO (Nullable MediaElementAudioSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSource ::
                         (MonadIO m, IsAudioContext self,
                          IsHTMLMediaElement mediaElement) =>
                           self -> Maybe mediaElement -> m (Maybe MediaElementAudioSourceNode)
createMediaElementSource self mediaElement
  = liftIO
      (nullableToMaybe <$>
         (js_createMediaElementSource (toAudioContext self)
            (maybeToNullable (fmap toHTMLMediaElement mediaElement))))
 
foreign import javascript unsafe
        "$1[\"createMediaStreamSource\"]($2)" js_createMediaStreamSource ::
        AudioContext ->
          Nullable MediaStream -> IO (Nullable MediaStreamAudioSourceNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource ::
                        (MonadIO m, IsAudioContext self) =>
                          self -> Maybe MediaStream -> m (Maybe MediaStreamAudioSourceNode)
createMediaStreamSource self mediaStream
  = liftIO
      (nullableToMaybe <$>
         (js_createMediaStreamSource (toAudioContext self)
            (maybeToNullable mediaStream)))
 
foreign import javascript unsafe
        "$1[\"createMediaStreamDestination\"]()"
        js_createMediaStreamDestination ::
        AudioContext -> IO (Nullable MediaStreamAudioDestinationNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination ::
                             (MonadIO m, IsAudioContext self) =>
                               self -> m (Maybe MediaStreamAudioDestinationNode)
createMediaStreamDestination self
  = liftIO
      (nullableToMaybe <$>
         (js_createMediaStreamDestination (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createGain\"]()"
        js_createGain :: AudioContext -> IO (Nullable GainNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain ::
           (MonadIO m, IsAudioContext self) => self -> m (Maybe GainNode)
createGain self
  = liftIO
      (nullableToMaybe <$> (js_createGain (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createDelay\"]($2)"
        js_createDelay :: AudioContext -> Double -> IO (Nullable DelayNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay ::
            (MonadIO m, IsAudioContext self) =>
              self -> Double -> m (Maybe DelayNode)
createDelay self maxDelayTime
  = liftIO
      (nullableToMaybe <$>
         (js_createDelay (toAudioContext self) maxDelayTime))
 
foreign import javascript unsafe "$1[\"createBiquadFilter\"]()"
        js_createBiquadFilter ::
        AudioContext -> IO (Nullable BiquadFilterNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter ::
                   (MonadIO m, IsAudioContext self) =>
                     self -> m (Maybe BiquadFilterNode)
createBiquadFilter self
  = liftIO
      (nullableToMaybe <$> (js_createBiquadFilter (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createWaveShaper\"]()"
        js_createWaveShaper :: AudioContext -> IO (Nullable WaveShaperNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper ::
                 (MonadIO m, IsAudioContext self) =>
                   self -> m (Maybe WaveShaperNode)
createWaveShaper self
  = liftIO
      (nullableToMaybe <$> (js_createWaveShaper (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createPanner\"]()"
        js_createPanner :: AudioContext -> IO (Nullable PannerNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner ::
             (MonadIO m, IsAudioContext self) => self -> m (Maybe PannerNode)
createPanner self
  = liftIO
      (nullableToMaybe <$> (js_createPanner (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createConvolver\"]()"
        js_createConvolver :: AudioContext -> IO (Nullable ConvolverNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver ::
                (MonadIO m, IsAudioContext self) => self -> m (Maybe ConvolverNode)
createConvolver self
  = liftIO
      (nullableToMaybe <$> (js_createConvolver (toAudioContext self)))
 
foreign import javascript unsafe
        "$1[\"createDynamicsCompressor\"]()" js_createDynamicsCompressor ::
        AudioContext -> IO (Nullable DynamicsCompressorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor ::
                         (MonadIO m, IsAudioContext self) =>
                           self -> m (Maybe DynamicsCompressorNode)
createDynamicsCompressor self
  = liftIO
      (nullableToMaybe <$>
         (js_createDynamicsCompressor (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createAnalyser\"]()"
        js_createAnalyser :: AudioContext -> IO (Nullable AnalyserNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser ::
               (MonadIO m, IsAudioContext self) => self -> m (Maybe AnalyserNode)
createAnalyser self
  = liftIO
      (nullableToMaybe <$> (js_createAnalyser (toAudioContext self)))
 
foreign import javascript unsafe
        "$1[\"createScriptProcessor\"]($2,\n$3, $4)"
        js_createScriptProcessor ::
        AudioContext ->
          Word -> Word -> Word -> IO (Nullable ScriptProcessorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessor ::
                      (MonadIO m, IsAudioContext self) =>
                        self -> Word -> Word -> Word -> m (Maybe ScriptProcessorNode)
createScriptProcessor self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      (nullableToMaybe <$>
         (js_createScriptProcessor (toAudioContext self) bufferSize
            numberOfInputChannels
            numberOfOutputChannels))
 
foreign import javascript unsafe "$1[\"createOscillator\"]()"
        js_createOscillator :: AudioContext -> IO (Nullable OscillatorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator ::
                 (MonadIO m, IsAudioContext self) =>
                   self -> m (Maybe OscillatorNode)
createOscillator self
  = liftIO
      (nullableToMaybe <$> (js_createOscillator (toAudioContext self)))
 
foreign import javascript unsafe
        "$1[\"createPeriodicWave\"]($2, $3)" js_createPeriodicWave ::
        AudioContext ->
          Nullable Float32Array ->
            Nullable Float32Array -> IO (Nullable PeriodicWave)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWave ::
                   (MonadIO m, IsAudioContext self, IsFloat32Array real,
                    IsFloat32Array imag) =>
                     self -> Maybe real -> Maybe imag -> m (Maybe PeriodicWave)
createPeriodicWave self real imag
  = liftIO
      (nullableToMaybe <$>
         (js_createPeriodicWave (toAudioContext self)
            (maybeToNullable (fmap toFloat32Array real))
            (maybeToNullable (fmap toFloat32Array imag))))
 
foreign import javascript unsafe
        "$1[\"createChannelSplitter\"]($2)" js_createChannelSplitter ::
        AudioContext -> Word -> IO (Nullable ChannelSplitterNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter ::
                      (MonadIO m, IsAudioContext self) =>
                        self -> Word -> m (Maybe ChannelSplitterNode)
createChannelSplitter self numberOfOutputs
  = liftIO
      (nullableToMaybe <$>
         (js_createChannelSplitter (toAudioContext self) numberOfOutputs))
 
foreign import javascript unsafe "$1[\"createChannelMerger\"]($2)"
        js_createChannelMerger ::
        AudioContext -> Word -> IO (Nullable ChannelMergerNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger ::
                    (MonadIO m, IsAudioContext self) =>
                      self -> Word -> m (Maybe ChannelMergerNode)
createChannelMerger self numberOfInputs
  = liftIO
      (nullableToMaybe <$>
         (js_createChannelMerger (toAudioContext self) numberOfInputs))
 
foreign import javascript unsafe "$1[\"startRendering\"]()"
        js_startRendering :: AudioContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.startRendering Mozilla AudioContext.startRendering documentation> 
startRendering :: (MonadIO m, IsAudioContext self) => self -> m ()
startRendering self
  = liftIO (js_startRendering (toAudioContext self))
 
foreign import javascript unsafe "$1[\"createGainNode\"]()"
        js_createGainNode :: AudioContext -> IO (Nullable GainNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNode ::
               (MonadIO m, IsAudioContext self) => self -> m (Maybe GainNode)
createGainNode self
  = liftIO
      (nullableToMaybe <$> (js_createGainNode (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createDelayNode\"]($2)"
        js_createDelayNode ::
        AudioContext -> Double -> IO (Nullable DelayNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNode ::
                (MonadIO m, IsAudioContext self) =>
                  self -> Double -> m (Maybe DelayNode)
createDelayNode self maxDelayTime
  = liftIO
      (nullableToMaybe <$>
         (js_createDelayNode (toAudioContext self) maxDelayTime))
 
foreign import javascript unsafe
        "$1[\"createJavaScriptNode\"]($2,\n$3, $4)" js_createJavaScriptNode
        ::
        AudioContext ->
          Word -> Word -> Word -> IO (Nullable ScriptProcessorNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
createJavaScriptNode ::
                     (MonadIO m, IsAudioContext self) =>
                       self -> Word -> Word -> Word -> m (Maybe ScriptProcessorNode)
createJavaScriptNode self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      (nullableToMaybe <$>
         (js_createJavaScriptNode (toAudioContext self) bufferSize
            numberOfInputChannels
            numberOfOutputChannels))
 
foreign import javascript unsafe "$1[\"destination\"]"
        js_getDestination ::
        AudioContext -> IO (Nullable AudioDestinationNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestination ::
               (MonadIO m, IsAudioContext self) =>
                 self -> m (Maybe AudioDestinationNode)
getDestination self
  = liftIO
      (nullableToMaybe <$> (js_getDestination (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"currentTime\"]"
        js_getCurrentTime :: AudioContext -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.currentTime Mozilla AudioContext.currentTime documentation> 
getCurrentTime ::
               (MonadIO m, IsAudioContext self) => self -> m Double
getCurrentTime self
  = liftIO (js_getCurrentTime (toAudioContext self))
 
foreign import javascript unsafe "$1[\"sampleRate\"]"
        js_getSampleRate :: AudioContext -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.sampleRate Mozilla AudioContext.sampleRate documentation> 
getSampleRate ::
              (MonadIO m, IsAudioContext self) => self -> m Float
getSampleRate self
  = liftIO (js_getSampleRate (toAudioContext self))
 
foreign import javascript unsafe "$1[\"listener\"]" js_getListener
        :: AudioContext -> IO (Nullable AudioListener)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.listener Mozilla AudioContext.listener documentation> 
getListener ::
            (MonadIO m, IsAudioContext self) => self -> m (Maybe AudioListener)
getListener self
  = liftIO
      (nullableToMaybe <$> (js_getListener (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"activeSourceCount\"]"
        js_getActiveSourceCount :: AudioContext -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.activeSourceCount Mozilla AudioContext.activeSourceCount documentation> 
getActiveSourceCount ::
                     (MonadIO m, IsAudioContext self) => self -> m Word
getActiveSourceCount self
  = liftIO (js_getActiveSourceCount (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.oncomplete Mozilla AudioContext.oncomplete documentation> 
complete ::
         (IsAudioContext self, IsEventTarget self) =>
           EventName self OfflineAudioCompletionEvent
complete = unsafeEventName (toJSString "complete")