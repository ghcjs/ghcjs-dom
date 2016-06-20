{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AnalyserNode
       (js_getFloatFrequencyData, getFloatFrequencyData,
        js_getByteFrequencyData, getByteFrequencyData,
        js_getByteTimeDomainData, getByteTimeDomainData, js_setFftSize,
        setFftSize, js_getFftSize, getFftSize, js_getFrequencyBinCount,
        getFrequencyBinCount, js_setMinDecibels, setMinDecibels,
        js_getMinDecibels, getMinDecibels, js_setMaxDecibels,
        setMaxDecibels, js_getMaxDecibels, getMaxDecibels,
        js_setSmoothingTimeConstant, setSmoothingTimeConstant,
        js_getSmoothingTimeConstant, getSmoothingTimeConstant,
        AnalyserNode, castToAnalyserNode, gTypeAnalyserNode)
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
        "$1[\"getFloatFrequencyData\"]($2)" js_getFloatFrequencyData ::
        AnalyserNode -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.getFloatFrequencyData Mozilla AnalyserNode.getFloatFrequencyData documentation> 
getFloatFrequencyData ::
                      (MonadIO m, IsFloat32Array array) =>
                        AnalyserNode -> Maybe array -> m ()
getFloatFrequencyData self array
  = liftIO
      (js_getFloatFrequencyData (self)
         (maybeToNullable (fmap toFloat32Array array)))
 
foreign import javascript unsafe "$1[\"getByteFrequencyData\"]($2)"
        js_getByteFrequencyData ::
        AnalyserNode -> Nullable Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.getByteFrequencyData Mozilla AnalyserNode.getByteFrequencyData documentation> 
getByteFrequencyData ::
                     (MonadIO m, IsUint8Array array) =>
                       AnalyserNode -> Maybe array -> m ()
getByteFrequencyData self array
  = liftIO
      (js_getByteFrequencyData (self)
         (maybeToNullable (fmap toUint8Array array)))
 
foreign import javascript unsafe
        "$1[\"getByteTimeDomainData\"]($2)" js_getByteTimeDomainData ::
        AnalyserNode -> Nullable Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.getByteTimeDomainData Mozilla AnalyserNode.getByteTimeDomainData documentation> 
getByteTimeDomainData ::
                      (MonadIO m, IsUint8Array array) =>
                        AnalyserNode -> Maybe array -> m ()
getByteTimeDomainData self array
  = liftIO
      (js_getByteTimeDomainData (self)
         (maybeToNullable (fmap toUint8Array array)))
 
foreign import javascript unsafe "$1[\"fftSize\"] = $2;"
        js_setFftSize :: AnalyserNode -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.fftSize Mozilla AnalyserNode.fftSize documentation> 
setFftSize :: (MonadIO m) => AnalyserNode -> Word -> m ()
setFftSize self val = liftIO (js_setFftSize (self) val)
 
foreign import javascript unsafe "$1[\"fftSize\"]" js_getFftSize ::
        AnalyserNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.fftSize Mozilla AnalyserNode.fftSize documentation> 
getFftSize :: (MonadIO m) => AnalyserNode -> m Word
getFftSize self = liftIO (js_getFftSize (self))
 
foreign import javascript unsafe "$1[\"frequencyBinCount\"]"
        js_getFrequencyBinCount :: AnalyserNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.frequencyBinCount Mozilla AnalyserNode.frequencyBinCount documentation> 
getFrequencyBinCount :: (MonadIO m) => AnalyserNode -> m Word
getFrequencyBinCount self = liftIO (js_getFrequencyBinCount (self))
 
foreign import javascript unsafe "$1[\"minDecibels\"] = $2;"
        js_setMinDecibels :: AnalyserNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.minDecibels Mozilla AnalyserNode.minDecibels documentation> 
setMinDecibels :: (MonadIO m) => AnalyserNode -> Double -> m ()
setMinDecibels self val = liftIO (js_setMinDecibels (self) val)
 
foreign import javascript unsafe "$1[\"minDecibels\"]"
        js_getMinDecibels :: AnalyserNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.minDecibels Mozilla AnalyserNode.minDecibels documentation> 
getMinDecibels :: (MonadIO m) => AnalyserNode -> m Double
getMinDecibels self = liftIO (js_getMinDecibels (self))
 
foreign import javascript unsafe "$1[\"maxDecibels\"] = $2;"
        js_setMaxDecibels :: AnalyserNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.maxDecibels Mozilla AnalyserNode.maxDecibels documentation> 
setMaxDecibels :: (MonadIO m) => AnalyserNode -> Double -> m ()
setMaxDecibels self val = liftIO (js_setMaxDecibels (self) val)
 
foreign import javascript unsafe "$1[\"maxDecibels\"]"
        js_getMaxDecibels :: AnalyserNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.maxDecibels Mozilla AnalyserNode.maxDecibels documentation> 
getMaxDecibels :: (MonadIO m) => AnalyserNode -> m Double
getMaxDecibels self = liftIO (js_getMaxDecibels (self))
 
foreign import javascript unsafe
        "$1[\"smoothingTimeConstant\"] = $2;" js_setSmoothingTimeConstant
        :: AnalyserNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.smoothingTimeConstant Mozilla AnalyserNode.smoothingTimeConstant documentation> 
setSmoothingTimeConstant ::
                         (MonadIO m) => AnalyserNode -> Double -> m ()
setSmoothingTimeConstant self val
  = liftIO (js_setSmoothingTimeConstant (self) val)
 
foreign import javascript unsafe "$1[\"smoothingTimeConstant\"]"
        js_getSmoothingTimeConstant :: AnalyserNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.smoothingTimeConstant Mozilla AnalyserNode.smoothingTimeConstant documentation> 
getSmoothingTimeConstant :: (MonadIO m) => AnalyserNode -> m Double
getSmoothingTimeConstant self
  = liftIO (js_getSmoothingTimeConstant (self))