{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WaveShaperNode
       (ghcjs_dom_wave_shaper_node_set_curve, waveShaperNodeSetCurve,
        ghcjs_dom_wave_shaper_node_get_curve, waveShaperNodeGetCurve,
        ghcjs_dom_wave_shaper_node_set_oversample,
        waveShaperNodeSetOversample,
        ghcjs_dom_wave_shaper_node_get_oversample,
        waveShaperNodeGetOversample, WaveShaperNode, IsWaveShaperNode,
        castToWaveShaperNode, gTypeWaveShaperNode, toWaveShaperNode)
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

 
foreign import javascript unsafe "$1[\"curve\"] = $2;"
        ghcjs_dom_wave_shaper_node_set_curve ::
        JSRef WaveShaperNode -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.curve Mozilla WaveShaperNode.curve documentation> 
waveShaperNodeSetCurve ::
                       (MonadIO m, IsWaveShaperNode self, IsFloat32Array val) =>
                         self -> Maybe val -> m ()
waveShaperNodeSetCurve self val
  = liftIO
      (ghcjs_dom_wave_shaper_node_set_curve
         (unWaveShaperNode (toWaveShaperNode self))
         (maybe jsNull (unFloat32Array . toFloat32Array) val))
 
foreign import javascript unsafe "$1[\"curve\"]"
        ghcjs_dom_wave_shaper_node_get_curve ::
        JSRef WaveShaperNode -> IO (JSRef Float32Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.curve Mozilla WaveShaperNode.curve documentation> 
waveShaperNodeGetCurve ::
                       (MonadIO m, IsWaveShaperNode self) =>
                         self -> m (Maybe Float32Array)
waveShaperNodeGetCurve self
  = liftIO
      ((ghcjs_dom_wave_shaper_node_get_curve
          (unWaveShaperNode (toWaveShaperNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"oversample\"] = $2;"
        ghcjs_dom_wave_shaper_node_set_oversample ::
        JSRef WaveShaperNode -> JSRef OverSampleType -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.oversample Mozilla WaveShaperNode.oversample documentation> 
waveShaperNodeSetOversample ::
                            (MonadIO m, IsWaveShaperNode self) =>
                              self -> OverSampleType -> m ()
waveShaperNodeSetOversample self val
  = liftIO
      (ghcjs_dom_wave_shaper_node_set_oversample
         (unWaveShaperNode (toWaveShaperNode self))
         (ptoJSRef val))
 
foreign import javascript unsafe "$1[\"oversample\"]"
        ghcjs_dom_wave_shaper_node_get_oversample ::
        JSRef WaveShaperNode -> IO (JSRef OverSampleType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.oversample Mozilla WaveShaperNode.oversample documentation> 
waveShaperNodeGetOversample ::
                            (MonadIO m, IsWaveShaperNode self) => self -> m OverSampleType
waveShaperNodeGetOversample self
  = liftIO
      ((ghcjs_dom_wave_shaper_node_get_oversample
          (unWaveShaperNode (toWaveShaperNode self)))
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.WaveShaperNode (
  ) where
#endif
