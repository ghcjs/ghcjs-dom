{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.OscillatorNode
       (js_start, start, js_stop, stop, js_setPeriodicWave,
        setPeriodicWave, pattern UNSCHEDULED_STATE,
        pattern SCHEDULED_STATE, pattern PLAYING_STATE,
        pattern FINISHED_STATE, js_setType, setType, js_getType, getType,
        js_getPlaybackState, getPlaybackState, js_getFrequency,
        getFrequency, js_getDetune, getDetune, ended, OscillatorNode(..),
        gTypeOscillatorNode)
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
 
foreign import javascript safe "$1[\"start\"]($2)" js_start ::
        OscillatorNode -> Optional Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.start Mozilla OscillatorNode.start documentation> 
start :: (MonadIO m) => OscillatorNode -> Maybe Double -> m ()
start self when = liftIO (js_start self (maybeToOptional when))
 
foreign import javascript safe "$1[\"stop\"]($2)" js_stop ::
        OscillatorNode -> Optional Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.stop Mozilla OscillatorNode.stop documentation> 
stop :: (MonadIO m) => OscillatorNode -> Maybe Double -> m ()
stop self when = liftIO (js_stop self (maybeToOptional when))
 
foreign import javascript unsafe "$1[\"setPeriodicWave\"]($2)"
        js_setPeriodicWave ::
        OscillatorNode -> Optional PeriodicWave -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.setPeriodicWave Mozilla OscillatorNode.setPeriodicWave documentation> 
setPeriodicWave ::
                (MonadIO m) => OscillatorNode -> Maybe PeriodicWave -> m ()
setPeriodicWave self wave
  = liftIO (js_setPeriodicWave self (maybeToOptional wave))
pattern UNSCHEDULED_STATE = 0
pattern SCHEDULED_STATE = 1
pattern PLAYING_STATE = 2
pattern FINISHED_STATE = 3
 
foreign import javascript safe "$1[\"type\"] = $2;" js_setType ::
        OscillatorNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.type Mozilla OscillatorNode.type documentation> 
setType :: (MonadIO m) => OscillatorNode -> OscillatorType -> m ()
setType self val = liftIO (js_setType self (pToJSVal val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        OscillatorNode -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.type Mozilla OscillatorNode.type documentation> 
getType :: (MonadIO m) => OscillatorNode -> m OscillatorType
getType self = liftIO ((js_getType self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        js_getPlaybackState :: OscillatorNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.playbackState Mozilla OscillatorNode.playbackState documentation> 
getPlaybackState :: (MonadIO m) => OscillatorNode -> m Word
getPlaybackState self = liftIO (js_getPlaybackState self)
 
foreign import javascript unsafe "$1[\"frequency\"]"
        js_getFrequency :: OscillatorNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.frequency Mozilla OscillatorNode.frequency documentation> 
getFrequency :: (MonadIO m) => OscillatorNode -> m AudioParam
getFrequency self = liftIO (js_getFrequency self)
 
foreign import javascript unsafe "$1[\"detune\"]" js_getDetune ::
        OscillatorNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.detune Mozilla OscillatorNode.detune documentation> 
getDetune :: (MonadIO m) => OscillatorNode -> m AudioParam
getDetune self = liftIO (js_getDetune self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.onended Mozilla OscillatorNode.onended documentation> 
ended :: EventName OscillatorNode Event
ended = unsafeEventName (toJSString "ended")