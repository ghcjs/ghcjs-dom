{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.OscillatorNode
       (js_start, start, js_stop, stop, js_noteOn, noteOn, js_noteOff,
        noteOff, js_setPeriodicWave, setPeriodicWave, pattern SINE,
        pattern SQUARE, pattern SAWTOOTH, pattern TRIANGLE, pattern CUSTOM,
        pattern UNSCHEDULED_STATE, pattern SCHEDULED_STATE,
        pattern PLAYING_STATE, pattern FINISHED_STATE, js_getPlaybackState,
        getPlaybackState, js_getFrequency, getFrequency, js_getDetune,
        getDetune, ended, OscillatorNode, castToOscillatorNode,
        gTypeOscillatorNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"start\"]($2)" js_start ::
        JSRef OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.start Mozilla OscillatorNode.start documentation> 
start :: (MonadIO m) => OscillatorNode -> Double -> m ()
start self when = liftIO (js_start (unOscillatorNode self) when)
 
foreign import javascript unsafe "$1[\"stop\"]($2)" js_stop ::
        JSRef OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.stop Mozilla OscillatorNode.stop documentation> 
stop :: (MonadIO m) => OscillatorNode -> Double -> m ()
stop self when = liftIO (js_stop (unOscillatorNode self) when)
 
foreign import javascript unsafe "$1[\"noteOn\"]($2)" js_noteOn ::
        JSRef OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.noteOn Mozilla OscillatorNode.noteOn documentation> 
noteOn :: (MonadIO m) => OscillatorNode -> Double -> m ()
noteOn self when = liftIO (js_noteOn (unOscillatorNode self) when)
 
foreign import javascript unsafe "$1[\"noteOff\"]($2)" js_noteOff
        :: JSRef OscillatorNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.noteOff Mozilla OscillatorNode.noteOff documentation> 
noteOff :: (MonadIO m) => OscillatorNode -> Double -> m ()
noteOff self when
  = liftIO (js_noteOff (unOscillatorNode self) when)
 
foreign import javascript unsafe "$1[\"setPeriodicWave\"]($2)"
        js_setPeriodicWave ::
        JSRef OscillatorNode -> JSRef PeriodicWave -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.setPeriodicWave Mozilla OscillatorNode.setPeriodicWave documentation> 
setPeriodicWave ::
                (MonadIO m) => OscillatorNode -> Maybe PeriodicWave -> m ()
setPeriodicWave self wave
  = liftIO
      (js_setPeriodicWave (unOscillatorNode self)
         (maybe jsNull unPeriodicWave wave))
pattern SINE = 0
pattern SQUARE = 1
pattern SAWTOOTH = 2
pattern TRIANGLE = 3
pattern CUSTOM = 4
pattern UNSCHEDULED_STATE = 0
pattern SCHEDULED_STATE = 1
pattern PLAYING_STATE = 2
pattern FINISHED_STATE = 3
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        js_getPlaybackState :: JSRef OscillatorNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.playbackState Mozilla OscillatorNode.playbackState documentation> 
getPlaybackState :: (MonadIO m) => OscillatorNode -> m Word
getPlaybackState self
  = liftIO (js_getPlaybackState (unOscillatorNode self))
 
foreign import javascript unsafe "$1[\"frequency\"]"
        js_getFrequency :: JSRef OscillatorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.frequency Mozilla OscillatorNode.frequency documentation> 
getFrequency ::
             (MonadIO m) => OscillatorNode -> m (Maybe AudioParam)
getFrequency self
  = liftIO ((js_getFrequency (unOscillatorNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"detune\"]" js_getDetune ::
        JSRef OscillatorNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.detune Mozilla OscillatorNode.detune documentation> 
getDetune :: (MonadIO m) => OscillatorNode -> m (Maybe AudioParam)
getDetune self
  = liftIO ((js_getDetune (unOscillatorNode self)) >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OscillatorNode.onended Mozilla OscillatorNode.onended documentation> 
ended :: EventName OscillatorNode Event
ended = unsafeEventName (toJSString "ended")
#else
module GHCJS.DOM.OscillatorNode (
  ) where
#endif
