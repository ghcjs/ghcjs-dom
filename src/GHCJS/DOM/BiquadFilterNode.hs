{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BiquadFilterNode
       (ghcjs_dom_biquad_filter_node_get_frequency_response,
        biquadFilterNodeGetFrequencyResponse, cLOWPASS, cHIGHPASS,
        cBANDPASS, cLOWSHELF, cHIGHSHELF, cPEAKING, cNOTCH, cALLPASS,
        ghcjs_dom_biquad_filter_node_get_frequency,
        biquadFilterNodeGetFrequency,
        ghcjs_dom_biquad_filter_node_get_detune, biquadFilterNodeGetDetune,
        ghcjs_dom_biquad_filter_node_get_q, biquadFilterNodeGetQ,
        ghcjs_dom_biquad_filter_node_get_gain, biquadFilterNodeGetGain,
        BiquadFilterNode, IsBiquadFilterNode, castToBiquadFilterNode,
        gTypeBiquadFilterNode, toBiquadFilterNode)
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
        "$1[\"getFrequencyResponse\"]($2,\n$3, $4)"
        ghcjs_dom_biquad_filter_node_get_frequency_response ::
        JSRef BiquadFilterNode ->
          JSRef Float32Array ->
            JSRef Float32Array -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.frequencyResponse Mozilla BiquadFilterNode.frequencyResponse documentation> 
biquadFilterNodeGetFrequencyResponse ::
                                     (MonadIO m, IsBiquadFilterNode self,
                                      IsFloat32Array frequencyHz, IsFloat32Array magResponse,
                                      IsFloat32Array phaseResponse) =>
                                       self ->
                                         Maybe frequencyHz ->
                                           Maybe magResponse -> Maybe phaseResponse -> m ()
biquadFilterNodeGetFrequencyResponse self frequencyHz magResponse
  phaseResponse
  = liftIO
      (ghcjs_dom_biquad_filter_node_get_frequency_response
         (unBiquadFilterNode (toBiquadFilterNode self))
         (maybe jsNull (unFloat32Array . toFloat32Array) frequencyHz)
         (maybe jsNull (unFloat32Array . toFloat32Array) magResponse)
         (maybe jsNull (unFloat32Array . toFloat32Array) phaseResponse))
cLOWPASS = 0
cHIGHPASS = 1
cBANDPASS = 2
cLOWSHELF = 3
cHIGHSHELF = 4
cPEAKING = 5
cNOTCH = 6
cALLPASS = 7
 
foreign import javascript unsafe "$1[\"frequency\"]"
        ghcjs_dom_biquad_filter_node_get_frequency ::
        JSRef BiquadFilterNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.frequency Mozilla BiquadFilterNode.frequency documentation> 
biquadFilterNodeGetFrequency ::
                             (MonadIO m, IsBiquadFilterNode self) =>
                               self -> m (Maybe AudioParam)
biquadFilterNodeGetFrequency self
  = liftIO
      ((ghcjs_dom_biquad_filter_node_get_frequency
          (unBiquadFilterNode (toBiquadFilterNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"detune\"]"
        ghcjs_dom_biquad_filter_node_get_detune ::
        JSRef BiquadFilterNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.detune Mozilla BiquadFilterNode.detune documentation> 
biquadFilterNodeGetDetune ::
                          (MonadIO m, IsBiquadFilterNode self) =>
                            self -> m (Maybe AudioParam)
biquadFilterNodeGetDetune self
  = liftIO
      ((ghcjs_dom_biquad_filter_node_get_detune
          (unBiquadFilterNode (toBiquadFilterNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"Q\"]"
        ghcjs_dom_biquad_filter_node_get_q ::
        JSRef BiquadFilterNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.q Mozilla BiquadFilterNode.q documentation> 
biquadFilterNodeGetQ ::
                     (MonadIO m, IsBiquadFilterNode self) =>
                       self -> m (Maybe AudioParam)
biquadFilterNodeGetQ self
  = liftIO
      ((ghcjs_dom_biquad_filter_node_get_q
          (unBiquadFilterNode (toBiquadFilterNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"gain\"]"
        ghcjs_dom_biquad_filter_node_get_gain ::
        JSRef BiquadFilterNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.gain Mozilla BiquadFilterNode.gain documentation> 
biquadFilterNodeGetGain ::
                        (MonadIO m, IsBiquadFilterNode self) =>
                          self -> m (Maybe AudioParam)
biquadFilterNodeGetGain self
  = liftIO
      ((ghcjs_dom_biquad_filter_node_get_gain
          (unBiquadFilterNode (toBiquadFilterNode self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.BiquadFilterNode (
  ) where
#endif
