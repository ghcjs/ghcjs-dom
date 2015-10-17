{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.OscillatorNode
       (js_start, start, js_stop, stop, js_noteOn, noteOn, js_noteOff,
        noteOff, js_setPeriodicWave, setPeriodicWave, pattern SINE,
        pattern SQUARE, pattern SAWTOOTH, pattern TRIANGLE, pattern CUSTOM,
        pattern UNSCHEDULED_STATE, pattern SCHEDULED_STATE,
        pattern PLAYING_STATE, pattern FINISHED_STATE, js_setType, setType,
        js_getType, getType, js_getPlaybackState, getPlaybackState,
        js_getFrequency, getFrequency, js_getDetune, getDetune, ended,
        OscillatorNode, castToOscillatorNode, gTypeOscillatorNode)
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
 
foreign import javascript unsafe "$1[\"start\"]($2)" js_start ::
        OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.start Mozilla OscillatorNode.start documentation> 
start :: (MonadIO m) => OscillatorNode -> Double -> m ()
start self when = liftIO (js_start (self) when)
 
foreign import javascript unsafe "$1[\"stop\"]($2)" js_stop ::
        OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.stop Mozilla OscillatorNode.stop documentation> 
stop :: (MonadIO m) => OscillatorNode -> Double -> m ()
stop self when = liftIO (js_stop (self) when)
 
foreign import javascript unsafe "$1[\"noteOn\"]($2)" js_noteOn ::
        OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.noteOn Mozilla OscillatorNode.noteOn documentation> 
noteOn :: (MonadIO m) => OscillatorNode -> Double -> m ()
noteOn self when = liftIO (js_noteOn (self) when)
 
foreign import javascript unsafe "$1[\"noteOff\"]($2)" js_noteOff
        :: OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.noteOff Mozilla OscillatorNode.noteOff documentation> 
noteOff :: (MonadIO m) => OscillatorNode -> Double -> m ()
noteOff self when = liftIO (js_noteOff (self) when)
 
foreign import javascript unsafe "$1[\"setPeriodicWave\"]($2)"
        js_setPeriodicWave ::
        OscillatorNode -> Nullable PeriodicWave -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.setPeriodicWave Mozilla OscillatorNode.setPeriodicWave documentation> 
setPeriodicWave ::
                (MonadIO m) => OscillatorNode -> Maybe PeriodicWave -> m ()
setPeriodicWave self wave
  = liftIO (js_setPeriodicWave (self) (maybeToNullable wave))
pattern SINE = 0
pattern SQUARE = 1
pattern SAWTOOTH = 2
pattern TRIANGLE = 3
pattern CUSTOM = 4
pattern UNSCHEDULED_STATE = 0
pattern SCHEDULED_STATE = 1
pattern PLAYING_STATE = 2
pattern FINISHED_STATE = 3
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        OscillatorNode -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.type Mozilla OscillatorNode.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => OscillatorNode -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        OscillatorNode -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.type Mozilla OscillatorNode.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => OscillatorNode -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        js_getPlaybackState :: OscillatorNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.playbackState Mozilla OscillatorNode.playbackState documentation> 
getPlaybackState :: (MonadIO m) => OscillatorNode -> m Word
getPlaybackState self = liftIO (js_getPlaybackState (self))
 
foreign import javascript unsafe "$1[\"frequency\"]"
        js_getFrequency :: OscillatorNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.frequency Mozilla OscillatorNode.frequency documentation> 
getFrequency ::
             (MonadIO m) => OscillatorNode -> m (Maybe AudioParam)
getFrequency self
  = liftIO (nullableToMaybe <$> (js_getFrequency (self)))
 
foreign import javascript unsafe "$1[\"detune\"]" js_getDetune ::
        OscillatorNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.detune Mozilla OscillatorNode.detune documentation> 
getDetune :: (MonadIO m) => OscillatorNode -> m (Maybe AudioParam)
getDetune self = liftIO (nullableToMaybe <$> (js_getDetune (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.onended Mozilla OscillatorNode.onended documentation> 
ended :: EventName OscillatorNode Event
ended = unsafeEventName (toJSString "ended")