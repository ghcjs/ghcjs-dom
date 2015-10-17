{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DynamicsCompressorNode
       (js_getThreshold, getThreshold, js_getKnee, getKnee, js_getRatio,
        getRatio, js_getReduction, getReduction, js_getAttack, getAttack,
        js_getRelease, getRelease, DynamicsCompressorNode,
        castToDynamicsCompressorNode, gTypeDynamicsCompressorNode)
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
 
foreign import javascript unsafe "$1[\"threshold\"]"
        js_getThreshold ::
        DynamicsCompressorNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.threshold Mozilla DynamicsCompressorNode.threshold documentation> 
getThreshold ::
             (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getThreshold self
  = liftIO (nullableToMaybe <$> (js_getThreshold (self)))
 
foreign import javascript unsafe "$1[\"knee\"]" js_getKnee ::
        DynamicsCompressorNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.knee Mozilla DynamicsCompressorNode.knee documentation> 
getKnee ::
        (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getKnee self = liftIO (nullableToMaybe <$> (js_getKnee (self)))
 
foreign import javascript unsafe "$1[\"ratio\"]" js_getRatio ::
        DynamicsCompressorNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.ratio Mozilla DynamicsCompressorNode.ratio documentation> 
getRatio ::
         (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getRatio self = liftIO (nullableToMaybe <$> (js_getRatio (self)))
 
foreign import javascript unsafe "$1[\"reduction\"]"
        js_getReduction ::
        DynamicsCompressorNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.reduction Mozilla DynamicsCompressorNode.reduction documentation> 
getReduction ::
             (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getReduction self
  = liftIO (nullableToMaybe <$> (js_getReduction (self)))
 
foreign import javascript unsafe "$1[\"attack\"]" js_getAttack ::
        DynamicsCompressorNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.attack Mozilla DynamicsCompressorNode.attack documentation> 
getAttack ::
          (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getAttack self = liftIO (nullableToMaybe <$> (js_getAttack (self)))
 
foreign import javascript unsafe "$1[\"release\"]" js_getRelease ::
        DynamicsCompressorNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.release Mozilla DynamicsCompressorNode.release documentation> 
getRelease ::
           (MonadIO m) => DynamicsCompressorNode -> m (Maybe AudioParam)
getRelease self
  = liftIO (nullableToMaybe <$> (js_getRelease (self)))