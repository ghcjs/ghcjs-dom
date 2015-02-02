{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DynamicsCompressorNode
       (ghcjs_dom_dynamics_compressor_node_get_threshold,
        dynamicsCompressorNodeGetThreshold,
        ghcjs_dom_dynamics_compressor_node_get_knee,
        dynamicsCompressorNodeGetKnee,
        ghcjs_dom_dynamics_compressor_node_get_ratio,
        dynamicsCompressorNodeGetRatio,
        ghcjs_dom_dynamics_compressor_node_get_reduction,
        dynamicsCompressorNodeGetReduction,
        ghcjs_dom_dynamics_compressor_node_get_attack,
        dynamicsCompressorNodeGetAttack,
        ghcjs_dom_dynamics_compressor_node_get_release,
        dynamicsCompressorNodeGetRelease, DynamicsCompressorNode,
        IsDynamicsCompressorNode, castToDynamicsCompressorNode,
        gTypeDynamicsCompressorNode, toDynamicsCompressorNode)
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

 
foreign import javascript unsafe "$1[\"threshold\"]"
        ghcjs_dom_dynamics_compressor_node_get_threshold ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.threshold Mozilla DynamicsCompressorNode.threshold documentation> 
dynamicsCompressorNodeGetThreshold ::
                                   (IsDynamicsCompressorNode self) => self -> IO (Maybe AudioParam)
dynamicsCompressorNodeGetThreshold self
  = (ghcjs_dom_dynamics_compressor_node_get_threshold
       (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"knee\"]"
        ghcjs_dom_dynamics_compressor_node_get_knee ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.knee Mozilla DynamicsCompressorNode.knee documentation> 
dynamicsCompressorNodeGetKnee ::
                              (IsDynamicsCompressorNode self) => self -> IO (Maybe AudioParam)
dynamicsCompressorNodeGetKnee self
  = (ghcjs_dom_dynamics_compressor_node_get_knee
       (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"ratio\"]"
        ghcjs_dom_dynamics_compressor_node_get_ratio ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.ratio Mozilla DynamicsCompressorNode.ratio documentation> 
dynamicsCompressorNodeGetRatio ::
                               (IsDynamicsCompressorNode self) => self -> IO (Maybe AudioParam)
dynamicsCompressorNodeGetRatio self
  = (ghcjs_dom_dynamics_compressor_node_get_ratio
       (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"reduction\"]"
        ghcjs_dom_dynamics_compressor_node_get_reduction ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.reduction Mozilla DynamicsCompressorNode.reduction documentation> 
dynamicsCompressorNodeGetReduction ::
                                   (IsDynamicsCompressorNode self) => self -> IO (Maybe AudioParam)
dynamicsCompressorNodeGetReduction self
  = (ghcjs_dom_dynamics_compressor_node_get_reduction
       (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"attack\"]"
        ghcjs_dom_dynamics_compressor_node_get_attack ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.attack Mozilla DynamicsCompressorNode.attack documentation> 
dynamicsCompressorNodeGetAttack ::
                                (IsDynamicsCompressorNode self) => self -> IO (Maybe AudioParam)
dynamicsCompressorNodeGetAttack self
  = (ghcjs_dom_dynamics_compressor_node_get_attack
       (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"release\"]"
        ghcjs_dom_dynamics_compressor_node_get_release ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.release Mozilla DynamicsCompressorNode.release documentation> 
dynamicsCompressorNodeGetRelease ::
                                 (IsDynamicsCompressorNode self) => self -> IO (Maybe AudioParam)
dynamicsCompressorNodeGetRelease self
  = (ghcjs_dom_dynamics_compressor_node_get_release
       (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
      >>= fromJSRef
#else
module GHCJS.DOM.DynamicsCompressorNode (
  ) where
#endif
