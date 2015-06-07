{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DynamicsCompressorNode
       (js_getThreshold, getThreshold, js_getKnee, getKnee, js_getRatio,
        getRatio, js_getReduction, getReduction, js_getAttack, getAttack,
        js_getRelease, getRelease, DynamicsCompressorNode,
        castToDynamicsCompressorNode, gTypeDynamicsCompressorNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe "$1[\"threshold\"]"
        js_getThreshold ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.threshold Mozilla DynamicsCompressorNode.threshold documentation> 
getThreshold ::
             (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getThreshold self
  = liftIO
      ((js_getThreshold (unDynamicsCompressorNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"knee\"]" js_getKnee ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.knee Mozilla DynamicsCompressorNode.knee documentation> 
getKnee ::
        (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getKnee self
  = liftIO
      ((js_getKnee (unDynamicsCompressorNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"ratio\"]" js_getRatio ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.ratio Mozilla DynamicsCompressorNode.ratio documentation> 
getRatio ::
         (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getRatio self
  = liftIO
      ((js_getRatio (unDynamicsCompressorNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"reduction\"]"
        js_getReduction ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.reduction Mozilla DynamicsCompressorNode.reduction documentation> 
getReduction ::
             (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getReduction self
  = liftIO
      ((js_getReduction (unDynamicsCompressorNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"attack\"]" js_getAttack ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.attack Mozilla DynamicsCompressorNode.attack documentation> 
getAttack ::
          (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getAttack self
  = liftIO
      ((js_getAttack (unDynamicsCompressorNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"release\"]" js_getRelease ::
        JSRef DynamicsCompressorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.release Mozilla DynamicsCompressorNode.release documentation> 
getRelease ::
           (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getRelease self
  = liftIO
      ((js_getRelease (unDynamicsCompressorNode self)) >>= fromJSRef)