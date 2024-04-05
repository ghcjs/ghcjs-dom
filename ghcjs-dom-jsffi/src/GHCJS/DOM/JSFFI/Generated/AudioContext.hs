{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.AudioContext
       (js_newAudioContext, newAudioContext, js_suspend, suspend,
        js_resume, resume, js_close, close, js_createBuffer, createBuffer,
        createBuffer_, js_createBufferFromArrayBuffer,
        createBufferFromArrayBuffer, createBufferFromArrayBuffer_,
        js_decodeAudioData, decodeAudioData, js_createBufferSource,
        createBufferSource, createBufferSource_,
        js_createMediaElementSource, createMediaElementSource,
        createMediaElementSource_, js_createMediaStreamSource,
        createMediaStreamSource, createMediaStreamSource_,
        js_createMediaStreamDestination, createMediaStreamDestination,
        createMediaStreamDestination_, js_createGain, createGain,
        createGain_, js_createDelay, createDelay, createDelay_,
        js_createBiquadFilter, createBiquadFilter, createBiquadFilter_,
        js_createWaveShaper, createWaveShaper, createWaveShaper_,
        js_createPanner, createPanner, createPanner_, js_createConvolver,
        createConvolver, createConvolver_, js_createDynamicsCompressor,
        createDynamicsCompressor, createDynamicsCompressor_,
        js_createAnalyser, createAnalyser, createAnalyser_,
        js_createScriptProcessor, createScriptProcessor,
        createScriptProcessor_, js_createOscillator, createOscillator,
        createOscillator_, js_createPeriodicWave, createPeriodicWave,
        createPeriodicWave_, js_createChannelSplitter,
        createChannelSplitter, createChannelSplitter_,
        js_createChannelMerger, createChannelMerger, createChannelMerger_,
        js_startRendering, startRendering, js_getDestination,
        getDestination, js_getCurrentTime, getCurrentTime,
        js_getSampleRate, getSampleRate, js_getListener, getListener,
        js_getState, getState, statechange, js_getActiveSourceCount,
        getActiveSourceCount, complete, AudioContext(..),
        gTypeAudioContext, IsAudioContext, toAudioContext)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "new (window[\"AudioContext\"]\n||\nwindow[\"webkitAudioContext\"])()"
        js_newAudioContext :: IO AudioContext

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext Mozilla AudioContext documentation> 
newAudioContext :: (MonadIO m) => m AudioContext
newAudioContext = liftIO (js_newAudioContext)
 
foreign import javascript interruptible
        "$1[\"suspend\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_suspend :: AudioContext -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.suspend Mozilla AudioContext.suspend documentation> 
suspend :: (MonadIO m, IsAudioContext self) => self -> m ()
suspend self
  = liftIO
      ((js_suspend (toAudioContext self)) >>= maybeThrowPromiseRejected)
 
foreign import javascript interruptible
        "$1[\"resume\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_resume :: AudioContext -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.resume Mozilla AudioContext.resume documentation> 
resume :: (MonadIO m, IsAudioContext self) => self -> m ()
resume self
  = liftIO
      ((js_resume (toAudioContext self)) >>= maybeThrowPromiseRejected)
 
foreign import javascript interruptible
        "$1[\"close\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_close :: AudioContext -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.close Mozilla AudioContext.close documentation> 
close :: (MonadIO m, IsAudioContext self) => self -> m ()
close self
  = liftIO
      ((js_close (toAudioContext self)) >>= maybeThrowPromiseRejected)
 
foreign import javascript safe "$1[\"createBuffer\"]($2, $3, $4)"
        js_createBuffer ::
        AudioContext -> Word -> Word -> Float -> IO AudioBuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBuffer ::
             (MonadIO m, IsAudioContext self) =>
               self -> Word -> Word -> Float -> m AudioBuffer
createBuffer self numberOfChannels numberOfFrames sampleRate
  = liftIO
      (js_createBuffer (toAudioContext self) numberOfChannels
         numberOfFrames
         sampleRate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBuffer_ ::
              (MonadIO m, IsAudioContext self) =>
                self -> Word -> Word -> Float -> m ()
createBuffer_ self numberOfChannels numberOfFrames sampleRate
  = liftIO
      (void
         (js_createBuffer (toAudioContext self) numberOfChannels
            numberOfFrames
            sampleRate))
 
foreign import javascript safe "$1[\"createBuffer\"]($2, $3)"
        js_createBufferFromArrayBuffer ::
        AudioContext -> ArrayBuffer -> Bool -> IO AudioBuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBuffer ::
                            (MonadIO m, IsAudioContext self, IsArrayBuffer buffer) =>
                              self -> buffer -> Bool -> m AudioBuffer
createBufferFromArrayBuffer self buffer mixToMono
  = liftIO
      (js_createBufferFromArrayBuffer (toAudioContext self)
         (toArrayBuffer buffer)
         mixToMono)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBuffer_ ::
                             (MonadIO m, IsAudioContext self, IsArrayBuffer buffer) =>
                               self -> buffer -> Bool -> m ()
createBufferFromArrayBuffer_ self buffer mixToMono
  = liftIO
      (void
         (js_createBufferFromArrayBuffer (toAudioContext self)
            (toArrayBuffer buffer)
            mixToMono))
 
foreign import javascript unsafe
        "$1[\"decodeAudioData\"]($2, $3,\n$4)" js_decodeAudioData ::
        AudioContext ->
          ArrayBuffer ->
            Optional AudioBufferCallback ->
              Optional AudioBufferCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.decodeAudioData Mozilla AudioContext.decodeAudioData documentation> 
decodeAudioData ::
                (MonadIO m, IsAudioContext self, IsArrayBuffer audioData) =>
                  self ->
                    audioData ->
                      Maybe AudioBufferCallback -> Maybe AudioBufferCallback -> m ()
decodeAudioData self audioData successCallback errorCallback
  = liftIO
      (js_decodeAudioData (toAudioContext self) (toArrayBuffer audioData)
         (maybeToOptional successCallback)
         (maybeToOptional errorCallback))
 
foreign import javascript unsafe "$1[\"createBufferSource\"]()"
        js_createBufferSource :: AudioContext -> IO AudioBufferSourceNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSource ::
                   (MonadIO m, IsAudioContext self) => self -> m AudioBufferSourceNode
createBufferSource self
  = liftIO (js_createBufferSource (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSource_ ::
                    (MonadIO m, IsAudioContext self) => self -> m ()
createBufferSource_ self
  = liftIO (void (js_createBufferSource (toAudioContext self)))
 
foreign import javascript safe
        "$1[\"createMediaElementSource\"]($2)" js_createMediaElementSource
        ::
        AudioContext -> HTMLMediaElement -> IO MediaElementAudioSourceNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSource ::
                         (MonadIO m, IsAudioContext self,
                          IsHTMLMediaElement mediaElement) =>
                           self -> mediaElement -> m MediaElementAudioSourceNode
createMediaElementSource self mediaElement
  = liftIO
      (js_createMediaElementSource (toAudioContext self)
         (toHTMLMediaElement mediaElement))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSource_ ::
                          (MonadIO m, IsAudioContext self,
                           IsHTMLMediaElement mediaElement) =>
                            self -> mediaElement -> m ()
createMediaElementSource_ self mediaElement
  = liftIO
      (void
         (js_createMediaElementSource (toAudioContext self)
            (toHTMLMediaElement mediaElement)))
 
foreign import javascript safe
        "$1[\"createMediaStreamSource\"]($2)" js_createMediaStreamSource ::
        AudioContext -> MediaStream -> IO MediaStreamAudioSourceNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource ::
                        (MonadIO m, IsAudioContext self) =>
                          self -> MediaStream -> m MediaStreamAudioSourceNode
createMediaStreamSource self mediaStream
  = liftIO
      (js_createMediaStreamSource (toAudioContext self) mediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource_ ::
                         (MonadIO m, IsAudioContext self) => self -> MediaStream -> m ()
createMediaStreamSource_ self mediaStream
  = liftIO
      (void
         (js_createMediaStreamSource (toAudioContext self) mediaStream))
 
foreign import javascript unsafe
        "$1[\"createMediaStreamDestination\"]()"
        js_createMediaStreamDestination ::
        AudioContext -> IO MediaStreamAudioDestinationNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination ::
                             (MonadIO m, IsAudioContext self) =>
                               self -> m MediaStreamAudioDestinationNode
createMediaStreamDestination self
  = liftIO (js_createMediaStreamDestination (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination_ ::
                              (MonadIO m, IsAudioContext self) => self -> m ()
createMediaStreamDestination_ self
  = liftIO
      (void (js_createMediaStreamDestination (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createGain\"]()"
        js_createGain :: AudioContext -> IO GainNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain ::
           (MonadIO m, IsAudioContext self) => self -> m GainNode
createGain self = liftIO (js_createGain (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain_ :: (MonadIO m, IsAudioContext self) => self -> m ()
createGain_ self
  = liftIO (void (js_createGain (toAudioContext self)))
 
foreign import javascript safe "$1[\"createDelay\"]($2)"
        js_createDelay :: AudioContext -> Optional Double -> IO DelayNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay ::
            (MonadIO m, IsAudioContext self) =>
              self -> Maybe Double -> m DelayNode
createDelay self maxDelayTime
  = liftIO
      (js_createDelay (toAudioContext self)
         (maybeToOptional maxDelayTime))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay_ ::
             (MonadIO m, IsAudioContext self) => self -> Maybe Double -> m ()
createDelay_ self maxDelayTime
  = liftIO
      (void
         (js_createDelay (toAudioContext self)
            (maybeToOptional maxDelayTime)))
 
foreign import javascript unsafe "$1[\"createBiquadFilter\"]()"
        js_createBiquadFilter :: AudioContext -> IO BiquadFilterNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter ::
                   (MonadIO m, IsAudioContext self) => self -> m BiquadFilterNode
createBiquadFilter self
  = liftIO (js_createBiquadFilter (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter_ ::
                    (MonadIO m, IsAudioContext self) => self -> m ()
createBiquadFilter_ self
  = liftIO (void (js_createBiquadFilter (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createWaveShaper\"]()"
        js_createWaveShaper :: AudioContext -> IO WaveShaperNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper ::
                 (MonadIO m, IsAudioContext self) => self -> m WaveShaperNode
createWaveShaper self
  = liftIO (js_createWaveShaper (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper_ ::
                  (MonadIO m, IsAudioContext self) => self -> m ()
createWaveShaper_ self
  = liftIO (void (js_createWaveShaper (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createPanner\"]()"
        js_createPanner :: AudioContext -> IO PannerNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner ::
             (MonadIO m, IsAudioContext self) => self -> m PannerNode
createPanner self = liftIO (js_createPanner (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner_ :: (MonadIO m, IsAudioContext self) => self -> m ()
createPanner_ self
  = liftIO (void (js_createPanner (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createConvolver\"]()"
        js_createConvolver :: AudioContext -> IO ConvolverNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver ::
                (MonadIO m, IsAudioContext self) => self -> m ConvolverNode
createConvolver self
  = liftIO (js_createConvolver (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver_ ::
                 (MonadIO m, IsAudioContext self) => self -> m ()
createConvolver_ self
  = liftIO (void (js_createConvolver (toAudioContext self)))
 
foreign import javascript unsafe
        "$1[\"createDynamicsCompressor\"]()" js_createDynamicsCompressor ::
        AudioContext -> IO DynamicsCompressorNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor ::
                         (MonadIO m, IsAudioContext self) =>
                           self -> m DynamicsCompressorNode
createDynamicsCompressor self
  = liftIO (js_createDynamicsCompressor (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor_ ::
                          (MonadIO m, IsAudioContext self) => self -> m ()
createDynamicsCompressor_ self
  = liftIO (void (js_createDynamicsCompressor (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createAnalyser\"]()"
        js_createAnalyser :: AudioContext -> IO AnalyserNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser ::
               (MonadIO m, IsAudioContext self) => self -> m AnalyserNode
createAnalyser self
  = liftIO (js_createAnalyser (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser_ :: (MonadIO m, IsAudioContext self) => self -> m ()
createAnalyser_ self
  = liftIO (void (js_createAnalyser (toAudioContext self)))
 
foreign import javascript safe
        "$1[\"createScriptProcessor\"]($2,\n$3, $4)"
        js_createScriptProcessor ::
        AudioContext ->
          Word -> Optional Word -> Optional Word -> IO ScriptProcessorNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessor ::
                      (MonadIO m, IsAudioContext self) =>
                        self -> Word -> Maybe Word -> Maybe Word -> m ScriptProcessorNode
createScriptProcessor self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      (js_createScriptProcessor (toAudioContext self) bufferSize
         (maybeToOptional numberOfInputChannels)
         (maybeToOptional numberOfOutputChannels))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessor_ ::
                       (MonadIO m, IsAudioContext self) =>
                         self -> Word -> Maybe Word -> Maybe Word -> m ()
createScriptProcessor_ self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      (void
         (js_createScriptProcessor (toAudioContext self) bufferSize
            (maybeToOptional numberOfInputChannels)
            (maybeToOptional numberOfOutputChannels)))
 
foreign import javascript unsafe "$1[\"createOscillator\"]()"
        js_createOscillator :: AudioContext -> IO OscillatorNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator ::
                 (MonadIO m, IsAudioContext self) => self -> m OscillatorNode
createOscillator self
  = liftIO (js_createOscillator (toAudioContext self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator_ ::
                  (MonadIO m, IsAudioContext self) => self -> m ()
createOscillator_ self
  = liftIO (void (js_createOscillator (toAudioContext self)))
 
foreign import javascript safe "$1[\"createPeriodicWave\"]($2, $3)"
        js_createPeriodicWave ::
        AudioContext -> Float32Array -> Float32Array -> IO PeriodicWave

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWave ::
                   (MonadIO m, IsAudioContext self, IsFloat32Array real,
                    IsFloat32Array imag) =>
                     self -> real -> imag -> m PeriodicWave
createPeriodicWave self real imag
  = liftIO
      (js_createPeriodicWave (toAudioContext self) (toFloat32Array real)
         (toFloat32Array imag))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWave_ ::
                    (MonadIO m, IsAudioContext self, IsFloat32Array real,
                     IsFloat32Array imag) =>
                      self -> real -> imag -> m ()
createPeriodicWave_ self real imag
  = liftIO
      (void
         (js_createPeriodicWave (toAudioContext self) (toFloat32Array real)
            (toFloat32Array imag)))
 
foreign import javascript safe "$1[\"createChannelSplitter\"]($2)"
        js_createChannelSplitter ::
        AudioContext -> Optional Word -> IO ChannelSplitterNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter ::
                      (MonadIO m, IsAudioContext self) =>
                        self -> Maybe Word -> m ChannelSplitterNode
createChannelSplitter self numberOfOutputs
  = liftIO
      (js_createChannelSplitter (toAudioContext self)
         (maybeToOptional numberOfOutputs))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter_ ::
                       (MonadIO m, IsAudioContext self) => self -> Maybe Word -> m ()
createChannelSplitter_ self numberOfOutputs
  = liftIO
      (void
         (js_createChannelSplitter (toAudioContext self)
            (maybeToOptional numberOfOutputs)))
 
foreign import javascript safe "$1[\"createChannelMerger\"]($2)"
        js_createChannelMerger ::
        AudioContext -> Optional Word -> IO ChannelMergerNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger ::
                    (MonadIO m, IsAudioContext self) =>
                      self -> Maybe Word -> m ChannelMergerNode
createChannelMerger self numberOfInputs
  = liftIO
      (js_createChannelMerger (toAudioContext self)
         (maybeToOptional numberOfInputs))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger_ ::
                     (MonadIO m, IsAudioContext self) => self -> Maybe Word -> m ()
createChannelMerger_ self numberOfInputs
  = liftIO
      (void
         (js_createChannelMerger (toAudioContext self)
            (maybeToOptional numberOfInputs)))
 
foreign import javascript unsafe "$1[\"startRendering\"]()"
        js_startRendering :: AudioContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.startRendering Mozilla AudioContext.startRendering documentation> 
startRendering :: (MonadIO m, IsAudioContext self) => self -> m ()
startRendering self
  = liftIO (js_startRendering (toAudioContext self))
 
foreign import javascript unsafe "$1[\"destination\"]"
        js_getDestination :: AudioContext -> IO AudioDestinationNode

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestination ::
               (MonadIO m, IsAudioContext self) => self -> m AudioDestinationNode
getDestination self
  = liftIO (js_getDestination (toAudioContext self))
 
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
        :: AudioContext -> IO AudioListener

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.listener Mozilla AudioContext.listener documentation> 
getListener ::
            (MonadIO m, IsAudioContext self) => self -> m AudioListener
getListener self = liftIO (js_getListener (toAudioContext self))
 
foreign import javascript unsafe "$1[\"state\"]" js_getState ::
        AudioContext -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.state Mozilla AudioContext.state documentation> 
getState ::
         (MonadIO m, IsAudioContext self) => self -> m AudioContextState
getState self
  = liftIO
      ((js_getState (toAudioContext self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.onstatechange Mozilla AudioContext.onstatechange documentation> 
statechange ::
            (IsAudioContext self, IsEventTarget self) =>
              EventName self onstatechange
statechange = unsafeEventName (toJSString "statechange")
 
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