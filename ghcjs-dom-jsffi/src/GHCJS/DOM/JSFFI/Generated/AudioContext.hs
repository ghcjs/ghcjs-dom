{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.AudioContext
       (js_newAudioContext, newAudioContext, js_createBuffer,
        createBuffer, createBuffer_, createBufferUnsafe,
        createBufferUnchecked, js_createBufferFromArrayBuffer,
        createBufferFromArrayBuffer, createBufferFromArrayBuffer_,
        createBufferFromArrayBufferUnsafe,
        createBufferFromArrayBufferUnchecked, js_decodeAudioData,
        decodeAudioData, js_createBufferSource, createBufferSource,
        createBufferSource_, createBufferSourceUnsafe,
        createBufferSourceUnchecked, js_createMediaElementSource,
        createMediaElementSource, createMediaElementSource_,
        createMediaElementSourceUnsafe, createMediaElementSourceUnchecked,
        js_createMediaStreamSource, createMediaStreamSource,
        createMediaStreamSource_, createMediaStreamSourceUnsafe,
        createMediaStreamSourceUnchecked, js_createMediaStreamDestination,
        createMediaStreamDestination, createMediaStreamDestination_,
        createMediaStreamDestinationUnsafe,
        createMediaStreamDestinationUnchecked, js_createGain, createGain,
        createGain_, createGainUnsafe, createGainUnchecked, js_createDelay,
        createDelay, createDelay_, createDelayUnsafe, createDelayUnchecked,
        js_createBiquadFilter, createBiquadFilter, createBiquadFilter_,
        createBiquadFilterUnsafe, createBiquadFilterUnchecked,
        js_createWaveShaper, createWaveShaper, createWaveShaper_,
        createWaveShaperUnsafe, createWaveShaperUnchecked, js_createPanner,
        createPanner, createPanner_, createPannerUnsafe,
        createPannerUnchecked, js_createConvolver, createConvolver,
        createConvolver_, createConvolverUnsafe, createConvolverUnchecked,
        js_createDynamicsCompressor, createDynamicsCompressor,
        createDynamicsCompressor_, createDynamicsCompressorUnsafe,
        createDynamicsCompressorUnchecked, js_createAnalyser,
        createAnalyser, createAnalyser_, createAnalyserUnsafe,
        createAnalyserUnchecked, js_createScriptProcessor,
        createScriptProcessor, createScriptProcessor_,
        createScriptProcessorUnsafe, createScriptProcessorUnchecked,
        js_createOscillator, createOscillator, createOscillator_,
        createOscillatorUnsafe, createOscillatorUnchecked,
        js_createPeriodicWave, createPeriodicWave, createPeriodicWave_,
        createPeriodicWaveUnsafe, createPeriodicWaveUnchecked,
        js_createChannelSplitter, createChannelSplitter,
        createChannelSplitter_, createChannelSplitterUnsafe,
        createChannelSplitterUnchecked, js_createChannelMerger,
        createChannelMerger, createChannelMerger_,
        createChannelMergerUnsafe, createChannelMergerUnchecked,
        js_startRendering, startRendering, js_createGainNode,
        createGainNode, createGainNode_, createGainNodeUnsafe,
        createGainNodeUnchecked, js_createDelayNode, createDelayNode,
        createDelayNode_, createDelayNodeUnsafe, createDelayNodeUnchecked,
        js_createJavaScriptNode, createJavaScriptNode,
        createJavaScriptNode_, createJavaScriptNodeUnsafe,
        createJavaScriptNodeUnchecked, js_getDestination, getDestination,
        getDestinationUnsafe, getDestinationUnchecked, js_getCurrentTime,
        getCurrentTime, js_getSampleRate, getSampleRate, js_getListener,
        getListener, getListenerUnsafe, getListenerUnchecked,
        js_getActiveSourceCount, getActiveSourceCount, complete,
        AudioContext(..), gTypeAudioContext, IsAudioContext,
        toAudioContext)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferUnsafe ::
                   (MonadIO m, IsAudioContext self, HasCallStack) =>
                     self -> Word -> Word -> Float -> m AudioBuffer
createBufferUnsafe self numberOfChannels numberOfFrames sampleRate
  = liftIO
      ((nullableToMaybe <$>
          (js_createBuffer (toAudioContext self) numberOfChannels
             numberOfFrames
             sampleRate))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferUnchecked ::
                      (MonadIO m, IsAudioContext self) =>
                        self -> Word -> Word -> Float -> m AudioBuffer
createBufferUnchecked self numberOfChannels numberOfFrames
  sampleRate
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBuffer_ ::
                             (MonadIO m, IsAudioContext self, IsArrayBuffer buffer) =>
                               self -> Maybe buffer -> Bool -> m ()
createBufferFromArrayBuffer_ self buffer mixToMono
  = liftIO
      (void
         (js_createBufferFromArrayBuffer (toAudioContext self)
            (maybeToNullable (fmap toArrayBuffer buffer))
            mixToMono))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBufferUnsafe ::
                                  (MonadIO m, IsAudioContext self, IsArrayBuffer buffer,
                                   HasCallStack) =>
                                    self -> Maybe buffer -> Bool -> m AudioBuffer
createBufferFromArrayBufferUnsafe self buffer mixToMono
  = liftIO
      ((nullableToMaybe <$>
          (js_createBufferFromArrayBuffer (toAudioContext self)
             (maybeToNullable (fmap toArrayBuffer buffer))
             mixToMono))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBuffer Mozilla AudioContext.createBuffer documentation> 
createBufferFromArrayBufferUnchecked ::
                                     (MonadIO m, IsAudioContext self, IsArrayBuffer buffer) =>
                                       self -> Maybe buffer -> Bool -> m AudioBuffer
createBufferFromArrayBufferUnchecked self buffer mixToMono
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSource_ ::
                    (MonadIO m, IsAudioContext self) => self -> m ()
createBufferSource_ self
  = liftIO (void (js_createBufferSource (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSourceUnsafe ::
                         (MonadIO m, IsAudioContext self, HasCallStack) =>
                           self -> m AudioBufferSourceNode
createBufferSourceUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_createBufferSource (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBufferSource Mozilla AudioContext.createBufferSource documentation> 
createBufferSourceUnchecked ::
                            (MonadIO m, IsAudioContext self) => self -> m AudioBufferSourceNode
createBufferSourceUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createBufferSource (toAudioContext self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSource_ ::
                          (MonadIO m, IsAudioContext self,
                           IsHTMLMediaElement mediaElement) =>
                            self -> Maybe mediaElement -> m ()
createMediaElementSource_ self mediaElement
  = liftIO
      (void
         (js_createMediaElementSource (toAudioContext self)
            (maybeToNullable (fmap toHTMLMediaElement mediaElement))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSourceUnsafe ::
                               (MonadIO m, IsAudioContext self, IsHTMLMediaElement mediaElement,
                                HasCallStack) =>
                                 self -> Maybe mediaElement -> m MediaElementAudioSourceNode
createMediaElementSourceUnsafe self mediaElement
  = liftIO
      ((nullableToMaybe <$>
          (js_createMediaElementSource (toAudioContext self)
             (maybeToNullable (fmap toHTMLMediaElement mediaElement))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaElementSource Mozilla AudioContext.createMediaElementSource documentation> 
createMediaElementSourceUnchecked ::
                                  (MonadIO m, IsAudioContext self,
                                   IsHTMLMediaElement mediaElement) =>
                                    self -> Maybe mediaElement -> m MediaElementAudioSourceNode
createMediaElementSourceUnchecked self mediaElement
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSource_ ::
                         (MonadIO m, IsAudioContext self) =>
                           self -> Maybe MediaStream -> m ()
createMediaStreamSource_ self mediaStream
  = liftIO
      (void
         (js_createMediaStreamSource (toAudioContext self)
            (maybeToNullable mediaStream)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSourceUnsafe ::
                              (MonadIO m, IsAudioContext self, HasCallStack) =>
                                self -> Maybe MediaStream -> m MediaStreamAudioSourceNode
createMediaStreamSourceUnsafe self mediaStream
  = liftIO
      ((nullableToMaybe <$>
          (js_createMediaStreamSource (toAudioContext self)
             (maybeToNullable mediaStream)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamSource Mozilla AudioContext.createMediaStreamSource documentation> 
createMediaStreamSourceUnchecked ::
                                 (MonadIO m, IsAudioContext self) =>
                                   self -> Maybe MediaStream -> m MediaStreamAudioSourceNode
createMediaStreamSourceUnchecked self mediaStream
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestination_ ::
                              (MonadIO m, IsAudioContext self) => self -> m ()
createMediaStreamDestination_ self
  = liftIO
      (void (js_createMediaStreamDestination (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestinationUnsafe ::
                                   (MonadIO m, IsAudioContext self, HasCallStack) =>
                                     self -> m MediaStreamAudioDestinationNode
createMediaStreamDestinationUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_createMediaStreamDestination (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createMediaStreamDestination Mozilla AudioContext.createMediaStreamDestination documentation> 
createMediaStreamDestinationUnchecked ::
                                      (MonadIO m, IsAudioContext self) =>
                                        self -> m MediaStreamAudioDestinationNode
createMediaStreamDestinationUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createMediaStreamDestination (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createGain\"]()"
        js_createGain :: AudioContext -> IO (Nullable GainNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain ::
           (MonadIO m, IsAudioContext self) => self -> m (Maybe GainNode)
createGain self
  = liftIO
      (nullableToMaybe <$> (js_createGain (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGain_ :: (MonadIO m, IsAudioContext self) => self -> m ()
createGain_ self
  = liftIO (void (js_createGain (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGainUnsafe ::
                 (MonadIO m, IsAudioContext self, HasCallStack) =>
                   self -> m GainNode
createGainUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createGain (toAudioContext self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGain Mozilla AudioContext.createGain documentation> 
createGainUnchecked ::
                    (MonadIO m, IsAudioContext self) => self -> m GainNode
createGainUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createGain (toAudioContext self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelay_ ::
             (MonadIO m, IsAudioContext self) => self -> Double -> m ()
createDelay_ self maxDelayTime
  = liftIO (void (js_createDelay (toAudioContext self) maxDelayTime))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelayUnsafe ::
                  (MonadIO m, IsAudioContext self, HasCallStack) =>
                    self -> Double -> m DelayNode
createDelayUnsafe self maxDelayTime
  = liftIO
      ((nullableToMaybe <$>
          (js_createDelay (toAudioContext self) maxDelayTime))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelay Mozilla AudioContext.createDelay documentation> 
createDelayUnchecked ::
                     (MonadIO m, IsAudioContext self) => self -> Double -> m DelayNode
createDelayUnchecked self maxDelayTime
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilter_ ::
                    (MonadIO m, IsAudioContext self) => self -> m ()
createBiquadFilter_ self
  = liftIO (void (js_createBiquadFilter (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilterUnsafe ::
                         (MonadIO m, IsAudioContext self, HasCallStack) =>
                           self -> m BiquadFilterNode
createBiquadFilterUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_createBiquadFilter (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createBiquadFilter Mozilla AudioContext.createBiquadFilter documentation> 
createBiquadFilterUnchecked ::
                            (MonadIO m, IsAudioContext self) => self -> m BiquadFilterNode
createBiquadFilterUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createBiquadFilter (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createWaveShaper\"]()"
        js_createWaveShaper :: AudioContext -> IO (Nullable WaveShaperNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper ::
                 (MonadIO m, IsAudioContext self) =>
                   self -> m (Maybe WaveShaperNode)
createWaveShaper self
  = liftIO
      (nullableToMaybe <$> (js_createWaveShaper (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaper_ ::
                  (MonadIO m, IsAudioContext self) => self -> m ()
createWaveShaper_ self
  = liftIO (void (js_createWaveShaper (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaperUnsafe ::
                       (MonadIO m, IsAudioContext self, HasCallStack) =>
                         self -> m WaveShaperNode
createWaveShaperUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createWaveShaper (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createWaveShaper Mozilla AudioContext.createWaveShaper documentation> 
createWaveShaperUnchecked ::
                          (MonadIO m, IsAudioContext self) => self -> m WaveShaperNode
createWaveShaperUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createWaveShaper (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createPanner\"]()"
        js_createPanner :: AudioContext -> IO (Nullable PannerNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner ::
             (MonadIO m, IsAudioContext self) => self -> m (Maybe PannerNode)
createPanner self
  = liftIO
      (nullableToMaybe <$> (js_createPanner (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPanner_ :: (MonadIO m, IsAudioContext self) => self -> m ()
createPanner_ self
  = liftIO (void (js_createPanner (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPannerUnsafe ::
                   (MonadIO m, IsAudioContext self, HasCallStack) =>
                     self -> m PannerNode
createPannerUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createPanner (toAudioContext self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPanner Mozilla AudioContext.createPanner documentation> 
createPannerUnchecked ::
                      (MonadIO m, IsAudioContext self) => self -> m PannerNode
createPannerUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createPanner (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createConvolver\"]()"
        js_createConvolver :: AudioContext -> IO (Nullable ConvolverNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver ::
                (MonadIO m, IsAudioContext self) => self -> m (Maybe ConvolverNode)
createConvolver self
  = liftIO
      (nullableToMaybe <$> (js_createConvolver (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolver_ ::
                 (MonadIO m, IsAudioContext self) => self -> m ()
createConvolver_ self
  = liftIO (void (js_createConvolver (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolverUnsafe ::
                      (MonadIO m, IsAudioContext self, HasCallStack) =>
                        self -> m ConvolverNode
createConvolverUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createConvolver (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createConvolver Mozilla AudioContext.createConvolver documentation> 
createConvolverUnchecked ::
                         (MonadIO m, IsAudioContext self) => self -> m ConvolverNode
createConvolverUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createConvolver (toAudioContext self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressor_ ::
                          (MonadIO m, IsAudioContext self) => self -> m ()
createDynamicsCompressor_ self
  = liftIO (void (js_createDynamicsCompressor (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressorUnsafe ::
                               (MonadIO m, IsAudioContext self, HasCallStack) =>
                                 self -> m DynamicsCompressorNode
createDynamicsCompressorUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_createDynamicsCompressor (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDynamicsCompressor Mozilla AudioContext.createDynamicsCompressor documentation> 
createDynamicsCompressorUnchecked ::
                                  (MonadIO m, IsAudioContext self) =>
                                    self -> m DynamicsCompressorNode
createDynamicsCompressorUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createDynamicsCompressor (toAudioContext self)))
 
foreign import javascript unsafe "$1[\"createAnalyser\"]()"
        js_createAnalyser :: AudioContext -> IO (Nullable AnalyserNode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser ::
               (MonadIO m, IsAudioContext self) => self -> m (Maybe AnalyserNode)
createAnalyser self
  = liftIO
      (nullableToMaybe <$> (js_createAnalyser (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyser_ :: (MonadIO m, IsAudioContext self) => self -> m ()
createAnalyser_ self
  = liftIO (void (js_createAnalyser (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyserUnsafe ::
                     (MonadIO m, IsAudioContext self, HasCallStack) =>
                       self -> m AnalyserNode
createAnalyserUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createAnalyser (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createAnalyser Mozilla AudioContext.createAnalyser documentation> 
createAnalyserUnchecked ::
                        (MonadIO m, IsAudioContext self) => self -> m AnalyserNode
createAnalyserUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createAnalyser (toAudioContext self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessor_ ::
                       (MonadIO m, IsAudioContext self) =>
                         self -> Word -> Word -> Word -> m ()
createScriptProcessor_ self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      (void
         (js_createScriptProcessor (toAudioContext self) bufferSize
            numberOfInputChannels
            numberOfOutputChannels))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessorUnsafe ::
                            (MonadIO m, IsAudioContext self, HasCallStack) =>
                              self -> Word -> Word -> Word -> m ScriptProcessorNode
createScriptProcessorUnsafe self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      ((nullableToMaybe <$>
          (js_createScriptProcessor (toAudioContext self) bufferSize
             numberOfInputChannels
             numberOfOutputChannels))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createScriptProcessor Mozilla AudioContext.createScriptProcessor documentation> 
createScriptProcessorUnchecked ::
                               (MonadIO m, IsAudioContext self) =>
                                 self -> Word -> Word -> Word -> m ScriptProcessorNode
createScriptProcessorUnchecked self bufferSize
  numberOfInputChannels numberOfOutputChannels
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillator_ ::
                  (MonadIO m, IsAudioContext self) => self -> m ()
createOscillator_ self
  = liftIO (void (js_createOscillator (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillatorUnsafe ::
                       (MonadIO m, IsAudioContext self, HasCallStack) =>
                         self -> m OscillatorNode
createOscillatorUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createOscillator (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createOscillator Mozilla AudioContext.createOscillator documentation> 
createOscillatorUnchecked ::
                          (MonadIO m, IsAudioContext self) => self -> m OscillatorNode
createOscillatorUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createOscillator (toAudioContext self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWave_ ::
                    (MonadIO m, IsAudioContext self, IsFloat32Array real,
                     IsFloat32Array imag) =>
                      self -> Maybe real -> Maybe imag -> m ()
createPeriodicWave_ self real imag
  = liftIO
      (void
         (js_createPeriodicWave (toAudioContext self)
            (maybeToNullable (fmap toFloat32Array real))
            (maybeToNullable (fmap toFloat32Array imag))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWaveUnsafe ::
                         (MonadIO m, IsAudioContext self, IsFloat32Array real,
                          IsFloat32Array imag, HasCallStack) =>
                           self -> Maybe real -> Maybe imag -> m PeriodicWave
createPeriodicWaveUnsafe self real imag
  = liftIO
      ((nullableToMaybe <$>
          (js_createPeriodicWave (toAudioContext self)
             (maybeToNullable (fmap toFloat32Array real))
             (maybeToNullable (fmap toFloat32Array imag))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createPeriodicWave Mozilla AudioContext.createPeriodicWave documentation> 
createPeriodicWaveUnchecked ::
                            (MonadIO m, IsAudioContext self, IsFloat32Array real,
                             IsFloat32Array imag) =>
                              self -> Maybe real -> Maybe imag -> m PeriodicWave
createPeriodicWaveUnchecked self real imag
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitter_ ::
                       (MonadIO m, IsAudioContext self) => self -> Word -> m ()
createChannelSplitter_ self numberOfOutputs
  = liftIO
      (void
         (js_createChannelSplitter (toAudioContext self) numberOfOutputs))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitterUnsafe ::
                            (MonadIO m, IsAudioContext self, HasCallStack) =>
                              self -> Word -> m ChannelSplitterNode
createChannelSplitterUnsafe self numberOfOutputs
  = liftIO
      ((nullableToMaybe <$>
          (js_createChannelSplitter (toAudioContext self) numberOfOutputs))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelSplitter Mozilla AudioContext.createChannelSplitter documentation> 
createChannelSplitterUnchecked ::
                               (MonadIO m, IsAudioContext self) =>
                                 self -> Word -> m ChannelSplitterNode
createChannelSplitterUnchecked self numberOfOutputs
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMerger_ ::
                     (MonadIO m, IsAudioContext self) => self -> Word -> m ()
createChannelMerger_ self numberOfInputs
  = liftIO
      (void
         (js_createChannelMerger (toAudioContext self) numberOfInputs))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMergerUnsafe ::
                          (MonadIO m, IsAudioContext self, HasCallStack) =>
                            self -> Word -> m ChannelMergerNode
createChannelMergerUnsafe self numberOfInputs
  = liftIO
      ((nullableToMaybe <$>
          (js_createChannelMerger (toAudioContext self) numberOfInputs))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createChannelMerger Mozilla AudioContext.createChannelMerger documentation> 
createChannelMergerUnchecked ::
                             (MonadIO m, IsAudioContext self) =>
                               self -> Word -> m ChannelMergerNode
createChannelMergerUnchecked self numberOfInputs
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNode_ :: (MonadIO m, IsAudioContext self) => self -> m ()
createGainNode_ self
  = liftIO (void (js_createGainNode (toAudioContext self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNodeUnsafe ::
                     (MonadIO m, IsAudioContext self, HasCallStack) =>
                       self -> m GainNode
createGainNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createGainNode (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createGainNode Mozilla AudioContext.createGainNode documentation> 
createGainNodeUnchecked ::
                        (MonadIO m, IsAudioContext self) => self -> m GainNode
createGainNodeUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createGainNode (toAudioContext self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNode_ ::
                 (MonadIO m, IsAudioContext self) => self -> Double -> m ()
createDelayNode_ self maxDelayTime
  = liftIO
      (void (js_createDelayNode (toAudioContext self) maxDelayTime))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNodeUnsafe ::
                      (MonadIO m, IsAudioContext self, HasCallStack) =>
                        self -> Double -> m DelayNode
createDelayNodeUnsafe self maxDelayTime
  = liftIO
      ((nullableToMaybe <$>
          (js_createDelayNode (toAudioContext self) maxDelayTime))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createDelayNode Mozilla AudioContext.createDelayNode documentation> 
createDelayNodeUnchecked ::
                         (MonadIO m, IsAudioContext self) => self -> Double -> m DelayNode
createDelayNodeUnchecked self maxDelayTime
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
createJavaScriptNode_ ::
                      (MonadIO m, IsAudioContext self) =>
                        self -> Word -> Word -> Word -> m ()
createJavaScriptNode_ self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      (void
         (js_createJavaScriptNode (toAudioContext self) bufferSize
            numberOfInputChannels
            numberOfOutputChannels))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
createJavaScriptNodeUnsafe ::
                           (MonadIO m, IsAudioContext self, HasCallStack) =>
                             self -> Word -> Word -> Word -> m ScriptProcessorNode
createJavaScriptNodeUnsafe self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      ((nullableToMaybe <$>
          (js_createJavaScriptNode (toAudioContext self) bufferSize
             numberOfInputChannels
             numberOfOutputChannels))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.createJavaScriptNode Mozilla AudioContext.createJavaScriptNode documentation> 
createJavaScriptNodeUnchecked ::
                              (MonadIO m, IsAudioContext self) =>
                                self -> Word -> Word -> Word -> m ScriptProcessorNode
createJavaScriptNodeUnchecked self bufferSize numberOfInputChannels
  numberOfOutputChannels
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestinationUnsafe ::
                     (MonadIO m, IsAudioContext self, HasCallStack) =>
                       self -> m AudioDestinationNode
getDestinationUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDestination (toAudioContext self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.destination Mozilla AudioContext.destination documentation> 
getDestinationUnchecked ::
                        (MonadIO m, IsAudioContext self) => self -> m AudioDestinationNode
getDestinationUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getDestination (toAudioContext self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.listener Mozilla AudioContext.listener documentation> 
getListenerUnsafe ::
                  (MonadIO m, IsAudioContext self, HasCallStack) =>
                    self -> m AudioListener
getListenerUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getListener (toAudioContext self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioContext.listener Mozilla AudioContext.listener documentation> 
getListenerUnchecked ::
                     (MonadIO m, IsAudioContext self) => self -> m AudioListener
getListenerUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getListener (toAudioContext self)))
 
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