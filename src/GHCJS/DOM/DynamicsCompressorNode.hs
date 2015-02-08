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
import Control.Monad.IO.Class (MonadIO(..))
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
                                   (MonadIO m, IsDynamicsCompressorNode self) =>
                                     self -> m (Maybe AudioParam)
dynamicsCompressorNodeGetThreshold self
  = liftIO
      ((ghcjs_dom_dynamics_compressor_node_get_threshold
          (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"knee\"]"
        ghcjs_dom_dynamics_compressor_node_get_knee ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.knee Mozilla DynamicsCompressorNode.knee documentation> 
dynamicsCompressorNodeGetKnee ::
                              (MonadIO m, IsDynamicsCompressorNode self) =>
                                self -> m (Maybe AudioParam)
dynamicsCompressorNodeGetKnee self
  = liftIO
      ((ghcjs_dom_dynamics_compressor_node_get_knee
          (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"ratio\"]"
        ghcjs_dom_dynamics_compressor_node_get_ratio ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.ratio Mozilla DynamicsCompressorNode.ratio documentation> 
dynamicsCompressorNodeGetRatio ::
                               (MonadIO m, IsDynamicsCompressorNode self) =>
                                 self -> m (Maybe AudioParam)
dynamicsCompressorNodeGetRatio self
  = liftIO
      ((ghcjs_dom_dynamics_compressor_node_get_ratio
          (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"reduction\"]"
        ghcjs_dom_dynamics_compressor_node_get_reduction ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.reduction Mozilla DynamicsCompressorNode.reduction documentation> 
dynamicsCompressorNodeGetReduction ::
                                   (MonadIO m, IsDynamicsCompressorNode self) =>
                                     self -> m (Maybe AudioParam)
dynamicsCompressorNodeGetReduction self
  = liftIO
      ((ghcjs_dom_dynamics_compressor_node_get_reduction
          (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"attack\"]"
        ghcjs_dom_dynamics_compressor_node_get_attack ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.attack Mozilla DynamicsCompressorNode.attack documentation> 
dynamicsCompressorNodeGetAttack ::
                                (MonadIO m, IsDynamicsCompressorNode self) =>
                                  self -> m (Maybe AudioParam)
dynamicsCompressorNodeGetAttack self
  = liftIO
      ((ghcjs_dom_dynamics_compressor_node_get_attack
          (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"release\"]"
        ghcjs_dom_dynamics_compressor_node_get_release ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.release Mozilla DynamicsCompressorNode.release documentation> 
dynamicsCompressorNodeGetRelease ::
                                 (MonadIO m, IsDynamicsCompressorNode self) =>
                                   self -> m (Maybe AudioParam)
dynamicsCompressorNodeGetRelease self
  = liftIO
      ((ghcjs_dom_dynamics_compressor_node_get_release
          (unDynamicsCompressorNode (toDynamicsCompressorNode self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.DynamicsCompressorNode (
  ) where
#endif
