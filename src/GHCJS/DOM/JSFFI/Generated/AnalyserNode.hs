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
 
foreign import javascript unsafe
        "$1[\"getFloatFrequencyData\"]($2)" js_getFloatFrequencyData ::
        JSRef AnalyserNode -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.getFloatFrequencyData Mozilla AnalyserNode.getFloatFrequencyData documentation> 
getFloatFrequencyData ::
                      (MonadIO m, IsFloat32Array array) =>
                        AnalyserNode -> Maybe array -> m ()
getFloatFrequencyData self array
  = liftIO
      (js_getFloatFrequencyData (unAnalyserNode self)
         (maybe jsNull (unFloat32Array . toFloat32Array) array))
 
foreign import javascript unsafe "$1[\"getByteFrequencyData\"]($2)"
        js_getByteFrequencyData ::
        JSRef AnalyserNode -> JSRef Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.getByteFrequencyData Mozilla AnalyserNode.getByteFrequencyData documentation> 
getByteFrequencyData ::
                     (MonadIO m, IsUint8Array array) =>
                       AnalyserNode -> Maybe array -> m ()
getByteFrequencyData self array
  = liftIO
      (js_getByteFrequencyData (unAnalyserNode self)
         (maybe jsNull (unUint8Array . toUint8Array) array))
 
foreign import javascript unsafe
        "$1[\"getByteTimeDomainData\"]($2)" js_getByteTimeDomainData ::
        JSRef AnalyserNode -> JSRef Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.getByteTimeDomainData Mozilla AnalyserNode.getByteTimeDomainData documentation> 
getByteTimeDomainData ::
                      (MonadIO m, IsUint8Array array) =>
                        AnalyserNode -> Maybe array -> m ()
getByteTimeDomainData self array
  = liftIO
      (js_getByteTimeDomainData (unAnalyserNode self)
         (maybe jsNull (unUint8Array . toUint8Array) array))
 
foreign import javascript unsafe "$1[\"fftSize\"] = $2;"
        js_setFftSize :: JSRef AnalyserNode -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.fftSize Mozilla AnalyserNode.fftSize documentation> 
setFftSize :: (MonadIO m) => AnalyserNode -> Word -> m ()
setFftSize self val
  = liftIO (js_setFftSize (unAnalyserNode self) val)
 
foreign import javascript unsafe "$1[\"fftSize\"]" js_getFftSize ::
        JSRef AnalyserNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.fftSize Mozilla AnalyserNode.fftSize documentation> 
getFftSize :: (MonadIO m) => AnalyserNode -> m Word
getFftSize self = liftIO (js_getFftSize (unAnalyserNode self))
 
foreign import javascript unsafe "$1[\"frequencyBinCount\"]"
        js_getFrequencyBinCount :: JSRef AnalyserNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.frequencyBinCount Mozilla AnalyserNode.frequencyBinCount documentation> 
getFrequencyBinCount :: (MonadIO m) => AnalyserNode -> m Word
getFrequencyBinCount self
  = liftIO (js_getFrequencyBinCount (unAnalyserNode self))
 
foreign import javascript unsafe "$1[\"minDecibels\"] = $2;"
        js_setMinDecibels :: JSRef AnalyserNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.minDecibels Mozilla AnalyserNode.minDecibels documentation> 
setMinDecibels :: (MonadIO m) => AnalyserNode -> Double -> m ()
setMinDecibels self val
  = liftIO (js_setMinDecibels (unAnalyserNode self) val)
 
foreign import javascript unsafe "$1[\"minDecibels\"]"
        js_getMinDecibels :: JSRef AnalyserNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.minDecibels Mozilla AnalyserNode.minDecibels documentation> 
getMinDecibels :: (MonadIO m) => AnalyserNode -> m Double
getMinDecibels self
  = liftIO (js_getMinDecibels (unAnalyserNode self))
 
foreign import javascript unsafe "$1[\"maxDecibels\"] = $2;"
        js_setMaxDecibels :: JSRef AnalyserNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.maxDecibels Mozilla AnalyserNode.maxDecibels documentation> 
setMaxDecibels :: (MonadIO m) => AnalyserNode -> Double -> m ()
setMaxDecibels self val
  = liftIO (js_setMaxDecibels (unAnalyserNode self) val)
 
foreign import javascript unsafe "$1[\"maxDecibels\"]"
        js_getMaxDecibels :: JSRef AnalyserNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.maxDecibels Mozilla AnalyserNode.maxDecibels documentation> 
getMaxDecibels :: (MonadIO m) => AnalyserNode -> m Double
getMaxDecibels self
  = liftIO (js_getMaxDecibels (unAnalyserNode self))
 
foreign import javascript unsafe
        "$1[\"smoothingTimeConstant\"] = $2;" js_setSmoothingTimeConstant
        :: JSRef AnalyserNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.smoothingTimeConstant Mozilla AnalyserNode.smoothingTimeConstant documentation> 
setSmoothingTimeConstant ::
                         (MonadIO m) => AnalyserNode -> Double -> m ()
setSmoothingTimeConstant self val
  = liftIO (js_setSmoothingTimeConstant (unAnalyserNode self) val)
 
foreign import javascript unsafe "$1[\"smoothingTimeConstant\"]"
        js_getSmoothingTimeConstant :: JSRef AnalyserNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.smoothingTimeConstant Mozilla AnalyserNode.smoothingTimeConstant documentation> 
getSmoothingTimeConstant :: (MonadIO m) => AnalyserNode -> m Double
getSmoothingTimeConstant self
  = liftIO (js_getSmoothingTimeConstant (unAnalyserNode self))