{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AnalyserNode
       (ghcjs_dom_analyser_node_get_float_frequency_data,
        analyserNodeGetFloatFrequencyData,
        ghcjs_dom_analyser_node_get_byte_frequency_data,
        analyserNodeGetByteFrequencyData,
        ghcjs_dom_analyser_node_get_byte_time_domain_data,
        analyserNodeGetByteTimeDomainData,
        ghcjs_dom_analyser_node_set_fft_size, analyserNodeSetFftSize,
        ghcjs_dom_analyser_node_get_fft_size, analyserNodeGetFftSize,
        ghcjs_dom_analyser_node_get_frequency_bin_count,
        analyserNodeGetFrequencyBinCount,
        ghcjs_dom_analyser_node_set_min_decibels,
        analyserNodeSetMinDecibels,
        ghcjs_dom_analyser_node_get_min_decibels,
        analyserNodeGetMinDecibels,
        ghcjs_dom_analyser_node_set_max_decibels,
        analyserNodeSetMaxDecibels,
        ghcjs_dom_analyser_node_get_max_decibels,
        analyserNodeGetMaxDecibels,
        ghcjs_dom_analyser_node_set_smoothing_time_constant,
        analyserNodeSetSmoothingTimeConstant,
        ghcjs_dom_analyser_node_get_smoothing_time_constant,
        analyserNodeGetSmoothingTimeConstant, AnalyserNode, IsAnalyserNode,
        castToAnalyserNode, gTypeAnalyserNode, toAnalyserNode)
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

 
foreign import javascript unsafe
        "$1[\"getFloatFrequencyData\"]($2)"
        ghcjs_dom_analyser_node_get_float_frequency_data ::
        JSRef AnalyserNode -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.floatFrequencyData Mozilla AnalyserNode.floatFrequencyData documentation> 
analyserNodeGetFloatFrequencyData ::
                                  (IsAnalyserNode self, IsFloat32Array array) =>
                                    self -> Maybe array -> IO ()
analyserNodeGetFloatFrequencyData self array
  = ghcjs_dom_analyser_node_get_float_frequency_data
      (unAnalyserNode (toAnalyserNode self))
      (maybe jsNull (unFloat32Array . toFloat32Array) array)
 
foreign import javascript unsafe "$1[\"getByteFrequencyData\"]($2)"
        ghcjs_dom_analyser_node_get_byte_frequency_data ::
        JSRef AnalyserNode -> JSRef Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.byteFrequencyData Mozilla AnalyserNode.byteFrequencyData documentation> 
analyserNodeGetByteFrequencyData ::
                                 (IsAnalyserNode self, IsUint8Array array) =>
                                   self -> Maybe array -> IO ()
analyserNodeGetByteFrequencyData self array
  = ghcjs_dom_analyser_node_get_byte_frequency_data
      (unAnalyserNode (toAnalyserNode self))
      (maybe jsNull (unUint8Array . toUint8Array) array)
 
foreign import javascript unsafe
        "$1[\"getByteTimeDomainData\"]($2)"
        ghcjs_dom_analyser_node_get_byte_time_domain_data ::
        JSRef AnalyserNode -> JSRef Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.byteTimeDomainData Mozilla AnalyserNode.byteTimeDomainData documentation> 
analyserNodeGetByteTimeDomainData ::
                                  (IsAnalyserNode self, IsUint8Array array) =>
                                    self -> Maybe array -> IO ()
analyserNodeGetByteTimeDomainData self array
  = ghcjs_dom_analyser_node_get_byte_time_domain_data
      (unAnalyserNode (toAnalyserNode self))
      (maybe jsNull (unUint8Array . toUint8Array) array)
 
foreign import javascript unsafe "$1[\"fftSize\"] = $2;"
        ghcjs_dom_analyser_node_set_fft_size ::
        JSRef AnalyserNode -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.fftSize Mozilla AnalyserNode.fftSize documentation> 
analyserNodeSetFftSize ::
                       (IsAnalyserNode self) => self -> Word -> IO ()
analyserNodeSetFftSize self val
  = ghcjs_dom_analyser_node_set_fft_size
      (unAnalyserNode (toAnalyserNode self))
      val
 
foreign import javascript unsafe "$1[\"fftSize\"]"
        ghcjs_dom_analyser_node_get_fft_size ::
        JSRef AnalyserNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.fftSize Mozilla AnalyserNode.fftSize documentation> 
analyserNodeGetFftSize :: (IsAnalyserNode self) => self -> IO Word
analyserNodeGetFftSize self
  = ghcjs_dom_analyser_node_get_fft_size
      (unAnalyserNode (toAnalyserNode self))
 
foreign import javascript unsafe "$1[\"frequencyBinCount\"]"
        ghcjs_dom_analyser_node_get_frequency_bin_count ::
        JSRef AnalyserNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.frequencyBinCount Mozilla AnalyserNode.frequencyBinCount documentation> 
analyserNodeGetFrequencyBinCount ::
                                 (IsAnalyserNode self) => self -> IO Word
analyserNodeGetFrequencyBinCount self
  = ghcjs_dom_analyser_node_get_frequency_bin_count
      (unAnalyserNode (toAnalyserNode self))
 
foreign import javascript unsafe "$1[\"minDecibels\"] = $2;"
        ghcjs_dom_analyser_node_set_min_decibels ::
        JSRef AnalyserNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.minDecibels Mozilla AnalyserNode.minDecibels documentation> 
analyserNodeSetMinDecibels ::
                           (IsAnalyserNode self) => self -> Double -> IO ()
analyserNodeSetMinDecibels self val
  = ghcjs_dom_analyser_node_set_min_decibels
      (unAnalyserNode (toAnalyserNode self))
      val
 
foreign import javascript unsafe "$1[\"minDecibels\"]"
        ghcjs_dom_analyser_node_get_min_decibels ::
        JSRef AnalyserNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.minDecibels Mozilla AnalyserNode.minDecibels documentation> 
analyserNodeGetMinDecibels ::
                           (IsAnalyserNode self) => self -> IO Double
analyserNodeGetMinDecibels self
  = ghcjs_dom_analyser_node_get_min_decibels
      (unAnalyserNode (toAnalyserNode self))
 
foreign import javascript unsafe "$1[\"maxDecibels\"] = $2;"
        ghcjs_dom_analyser_node_set_max_decibels ::
        JSRef AnalyserNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.maxDecibels Mozilla AnalyserNode.maxDecibels documentation> 
analyserNodeSetMaxDecibels ::
                           (IsAnalyserNode self) => self -> Double -> IO ()
analyserNodeSetMaxDecibels self val
  = ghcjs_dom_analyser_node_set_max_decibels
      (unAnalyserNode (toAnalyserNode self))
      val
 
foreign import javascript unsafe "$1[\"maxDecibels\"]"
        ghcjs_dom_analyser_node_get_max_decibels ::
        JSRef AnalyserNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.maxDecibels Mozilla AnalyserNode.maxDecibels documentation> 
analyserNodeGetMaxDecibels ::
                           (IsAnalyserNode self) => self -> IO Double
analyserNodeGetMaxDecibels self
  = ghcjs_dom_analyser_node_get_max_decibels
      (unAnalyserNode (toAnalyserNode self))
 
foreign import javascript unsafe
        "$1[\"smoothingTimeConstant\"] = $2;"
        ghcjs_dom_analyser_node_set_smoothing_time_constant ::
        JSRef AnalyserNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.smoothingTimeConstant Mozilla AnalyserNode.smoothingTimeConstant documentation> 
analyserNodeSetSmoothingTimeConstant ::
                                     (IsAnalyserNode self) => self -> Double -> IO ()
analyserNodeSetSmoothingTimeConstant self val
  = ghcjs_dom_analyser_node_set_smoothing_time_constant
      (unAnalyserNode (toAnalyserNode self))
      val
 
foreign import javascript unsafe "$1[\"smoothingTimeConstant\"]"
        ghcjs_dom_analyser_node_get_smoothing_time_constant ::
        JSRef AnalyserNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnalyserNode.smoothingTimeConstant Mozilla AnalyserNode.smoothingTimeConstant documentation> 
analyserNodeGetSmoothingTimeConstant ::
                                     (IsAnalyserNode self) => self -> IO Double
analyserNodeGetSmoothingTimeConstant self
  = ghcjs_dom_analyser_node_get_smoothing_time_constant
      (unAnalyserNode (toAnalyserNode self))
#else
module GHCJS.DOM.AnalyserNode (
  ) where
#endif
