{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.BiquadFilterNode
       (js_getFrequencyResponse, getFrequencyResponse, js_setType,
        setType, js_getType, getType, js_getFrequency, getFrequency,
        js_getDetune, getDetune, js_getQ, getQ, js_getGain, getGain,
        BiquadFilterNode(..), gTypeBiquadFilterNode)
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
 
foreign import javascript unsafe
        "$1[\"getFrequencyResponse\"]($2,\n$3, $4)" js_getFrequencyResponse
        ::
        BiquadFilterNode ->
          Optional Float32Array ->
            Optional Float32Array -> Optional Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.getFrequencyResponse Mozilla BiquadFilterNode.getFrequencyResponse documentation> 
getFrequencyResponse ::
                     (MonadIO m, IsFloat32Array frequencyHz, IsFloat32Array magResponse,
                      IsFloat32Array phaseResponse) =>
                       BiquadFilterNode ->
                         Maybe frequencyHz ->
                           Maybe magResponse -> Maybe phaseResponse -> m ()
getFrequencyResponse self frequencyHz magResponse phaseResponse
  = liftIO
      (js_getFrequencyResponse self
         (maybeToOptional (fmap toFloat32Array frequencyHz))
         (maybeToOptional (fmap toFloat32Array magResponse))
         (maybeToOptional (fmap toFloat32Array phaseResponse)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        BiquadFilterNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.type Mozilla BiquadFilterNode.type documentation> 
setType ::
        (MonadIO m) => BiquadFilterNode -> BiquadFilterType -> m ()
setType self val = liftIO (js_setType self (pToJSVal val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        BiquadFilterNode -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.type Mozilla BiquadFilterNode.type documentation> 
getType :: (MonadIO m) => BiquadFilterNode -> m BiquadFilterType
getType self = liftIO ((js_getType self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"frequency\"]"
        js_getFrequency :: BiquadFilterNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.frequency Mozilla BiquadFilterNode.frequency documentation> 
getFrequency :: (MonadIO m) => BiquadFilterNode -> m AudioParam
getFrequency self = liftIO (js_getFrequency self)
 
foreign import javascript unsafe "$1[\"detune\"]" js_getDetune ::
        BiquadFilterNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.detune Mozilla BiquadFilterNode.detune documentation> 
getDetune :: (MonadIO m) => BiquadFilterNode -> m AudioParam
getDetune self = liftIO (js_getDetune self)
 
foreign import javascript unsafe "$1[\"Q\"]" js_getQ ::
        BiquadFilterNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.Q Mozilla BiquadFilterNode.Q documentation> 
getQ :: (MonadIO m) => BiquadFilterNode -> m AudioParam
getQ self = liftIO (js_getQ self)
 
foreign import javascript unsafe "$1[\"gain\"]" js_getGain ::
        BiquadFilterNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BiquadFilterNode.gain Mozilla BiquadFilterNode.gain documentation> 
getGain :: (MonadIO m) => BiquadFilterNode -> m AudioParam
getGain self = liftIO (js_getGain self)