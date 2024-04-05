{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DynamicsCompressorNode
       (js_getThreshold, getThreshold, js_getKnee, getKnee, js_getRatio,
        getRatio, js_getReduction, getReduction, js_getAttack, getAttack,
        js_getRelease, getRelease, DynamicsCompressorNode(..),
        gTypeDynamicsCompressorNode)
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
 
foreign import javascript unsafe "$1[\"threshold\"]"
        js_getThreshold :: DynamicsCompressorNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.threshold Mozilla DynamicsCompressorNode.threshold documentation> 
getThreshold ::
             (MonadIO m) => DynamicsCompressorNode -> m AudioParam
getThreshold self = liftIO (js_getThreshold self)
 
foreign import javascript unsafe "$1[\"knee\"]" js_getKnee ::
        DynamicsCompressorNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.knee Mozilla DynamicsCompressorNode.knee documentation> 
getKnee :: (MonadIO m) => DynamicsCompressorNode -> m AudioParam
getKnee self = liftIO (js_getKnee self)
 
foreign import javascript unsafe "$1[\"ratio\"]" js_getRatio ::
        DynamicsCompressorNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.ratio Mozilla DynamicsCompressorNode.ratio documentation> 
getRatio :: (MonadIO m) => DynamicsCompressorNode -> m AudioParam
getRatio self = liftIO (js_getRatio self)
 
foreign import javascript unsafe "$1[\"reduction\"]"
        js_getReduction :: DynamicsCompressorNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.reduction Mozilla DynamicsCompressorNode.reduction documentation> 
getReduction ::
             (MonadIO m) => DynamicsCompressorNode -> m AudioParam
getReduction self = liftIO (js_getReduction self)
 
foreign import javascript unsafe "$1[\"attack\"]" js_getAttack ::
        DynamicsCompressorNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.attack Mozilla DynamicsCompressorNode.attack documentation> 
getAttack :: (MonadIO m) => DynamicsCompressorNode -> m AudioParam
getAttack self = liftIO (js_getAttack self)
 
foreign import javascript unsafe "$1[\"release\"]" js_getRelease ::
        DynamicsCompressorNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.release Mozilla DynamicsCompressorNode.release documentation> 
getRelease :: (MonadIO m) => DynamicsCompressorNode -> m AudioParam
getRelease self = liftIO (js_getRelease self)