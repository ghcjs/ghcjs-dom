{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioBufferSourceNode
       (js_start, start, js_stop, stop, js_noteOn, noteOn, js_noteGrainOn,
        noteGrainOn, js_noteOff, noteOff, pattern UNSCHEDULED_STATE,
        pattern SCHEDULED_STATE, pattern PLAYING_STATE,
        pattern FINISHED_STATE, js_setBuffer, setBuffer, js_getBuffer,
        getBuffer, js_getPlaybackState, getPlaybackState, js_getGain,
        getGain, js_getPlaybackRate, getPlaybackRate, js_setLoop, setLoop,
        js_getLoop, getLoop, js_setLoopStart, setLoopStart,
        js_getLoopStart, getLoopStart, js_setLoopEnd, setLoopEnd,
        js_getLoopEnd, getLoopEnd, js_setLooping, setLooping,
        js_getLooping, getLooping, ended, AudioBufferSourceNode,
        castToAudioBufferSourceNode, gTypeAudioBufferSourceNode)
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
 
foreign import javascript unsafe "$1[\"start\"]($2, $3, $4)"
        js_start ::
        AudioBufferSourceNode -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.start Mozilla AudioBufferSourceNode.start documentation> 
start ::
      (MonadIO m) =>
        AudioBufferSourceNode -> Double -> Double -> Double -> m ()
start self when grainOffset grainDuration
  = liftIO (js_start (self) when grainOffset grainDuration)
 
foreign import javascript unsafe "$1[\"stop\"]($2)" js_stop ::
        AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.stop Mozilla AudioBufferSourceNode.stop documentation> 
stop :: (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
stop self when = liftIO (js_stop (self) when)
 
foreign import javascript unsafe "$1[\"noteOn\"]($2)" js_noteOn ::
        AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteOn Mozilla AudioBufferSourceNode.noteOn documentation> 
noteOn :: (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
noteOn self when = liftIO (js_noteOn (self) when)
 
foreign import javascript unsafe "$1[\"noteGrainOn\"]($2, $3, $4)"
        js_noteGrainOn ::
        AudioBufferSourceNode -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteGrainOn Mozilla AudioBufferSourceNode.noteGrainOn documentation> 
noteGrainOn ::
            (MonadIO m) =>
              AudioBufferSourceNode -> Double -> Double -> Double -> m ()
noteGrainOn self when grainOffset grainDuration
  = liftIO (js_noteGrainOn (self) when grainOffset grainDuration)
 
foreign import javascript unsafe "$1[\"noteOff\"]($2)" js_noteOff
        :: AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteOff Mozilla AudioBufferSourceNode.noteOff documentation> 
noteOff :: (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
noteOff self when = liftIO (js_noteOff (self) when)
pattern UNSCHEDULED_STATE = 0
pattern SCHEDULED_STATE = 1
pattern PLAYING_STATE = 2
pattern FINISHED_STATE = 3
 
foreign import javascript unsafe "$1[\"buffer\"] = $2;"
        js_setBuffer ::
        AudioBufferSourceNode -> Nullable AudioBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
setBuffer ::
          (MonadIO m) => AudioBufferSourceNode -> Maybe AudioBuffer -> m ()
setBuffer self val
  = liftIO (js_setBuffer (self) (maybeToNullable val))
 
foreign import javascript unsafe "$1[\"buffer\"]" js_getBuffer ::
        AudioBufferSourceNode -> IO (Nullable AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
getBuffer ::
          (MonadIO m) => AudioBufferSourceNode -> m (Maybe AudioBuffer)
getBuffer self = liftIO (nullableToMaybe <$> (js_getBuffer (self)))
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        js_getPlaybackState :: AudioBufferSourceNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackState Mozilla AudioBufferSourceNode.playbackState documentation> 
getPlaybackState :: (MonadIO m) => AudioBufferSourceNode -> m Word
getPlaybackState self = liftIO (js_getPlaybackState (self))
 
foreign import javascript unsafe "$1[\"gain\"]" js_getGain ::
        AudioBufferSourceNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.gain Mozilla AudioBufferSourceNode.gain documentation> 
getGain ::
        (MonadIO m) => AudioBufferSourceNode -> m (Maybe AudioParam)
getGain self = liftIO (nullableToMaybe <$> (js_getGain (self)))
 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        js_getPlaybackRate ::
        AudioBufferSourceNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackRate Mozilla AudioBufferSourceNode.playbackRate documentation> 
getPlaybackRate ::
                (MonadIO m) => AudioBufferSourceNode -> m (Maybe AudioParam)
getPlaybackRate self
  = liftIO (nullableToMaybe <$> (js_getPlaybackRate (self)))
 
foreign import javascript unsafe "$1[\"loop\"] = $2;" js_setLoop ::
        AudioBufferSourceNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
setLoop :: (MonadIO m) => AudioBufferSourceNode -> Bool -> m ()
setLoop self val = liftIO (js_setLoop (self) val)
 
foreign import javascript unsafe "($1[\"loop\"] ? 1 : 0)"
        js_getLoop :: AudioBufferSourceNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
getLoop :: (MonadIO m) => AudioBufferSourceNode -> m Bool
getLoop self = liftIO (js_getLoop (self))
 
foreign import javascript unsafe "$1[\"loopStart\"] = $2;"
        js_setLoopStart :: AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
setLoopStart ::
             (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
setLoopStart self val = liftIO (js_setLoopStart (self) val)
 
foreign import javascript unsafe "$1[\"loopStart\"]"
        js_getLoopStart :: AudioBufferSourceNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
getLoopStart :: (MonadIO m) => AudioBufferSourceNode -> m Double
getLoopStart self = liftIO (js_getLoopStart (self))
 
foreign import javascript unsafe "$1[\"loopEnd\"] = $2;"
        js_setLoopEnd :: AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
setLoopEnd ::
           (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
setLoopEnd self val = liftIO (js_setLoopEnd (self) val)
 
foreign import javascript unsafe "$1[\"loopEnd\"]" js_getLoopEnd ::
        AudioBufferSourceNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
getLoopEnd :: (MonadIO m) => AudioBufferSourceNode -> m Double
getLoopEnd self = liftIO (js_getLoopEnd (self))
 
foreign import javascript unsafe "$1[\"looping\"] = $2;"
        js_setLooping :: AudioBufferSourceNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.looping Mozilla AudioBufferSourceNode.looping documentation> 
setLooping :: (MonadIO m) => AudioBufferSourceNode -> Bool -> m ()
setLooping self val = liftIO (js_setLooping (self) val)
 
foreign import javascript unsafe "($1[\"looping\"] ? 1 : 0)"
        js_getLooping :: AudioBufferSourceNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.looping Mozilla AudioBufferSourceNode.looping documentation> 
getLooping :: (MonadIO m) => AudioBufferSourceNode -> m Bool
getLooping self = liftIO (js_getLooping (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.onended Mozilla AudioBufferSourceNode.onended documentation> 
ended :: EventName AudioBufferSourceNode Event
ended = unsafeEventName (toJSString "ended")