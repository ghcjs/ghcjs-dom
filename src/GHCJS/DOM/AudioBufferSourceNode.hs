{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioBufferSourceNode
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

 
foreign import javascript unsafe "$1[\"start\"]($2, $3, $4)"
        js_start ::
        JSRef AudioBufferSourceNode -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.start Mozilla AudioBufferSourceNode.start documentation> 
start ::
      (MonadIO m) =>
        AudioBufferSourceNode -> Double -> Double -> Double -> m ()
start self when grainOffset grainDuration
  = liftIO
      (js_start (unAudioBufferSourceNode self) when grainOffset
         grainDuration)
 
foreign import javascript unsafe "$1[\"stop\"]($2)" js_stop ::
        JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.stop Mozilla AudioBufferSourceNode.stop documentation> 
stop :: (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
stop self when
  = liftIO (js_stop (unAudioBufferSourceNode self) when)
 
foreign import javascript unsafe "$1[\"noteOn\"]($2)" js_noteOn ::
        JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteOn Mozilla AudioBufferSourceNode.noteOn documentation> 
noteOn :: (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
noteOn self when
  = liftIO (js_noteOn (unAudioBufferSourceNode self) when)
 
foreign import javascript unsafe "$1[\"noteGrainOn\"]($2, $3, $4)"
        js_noteGrainOn ::
        JSRef AudioBufferSourceNode -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteGrainOn Mozilla AudioBufferSourceNode.noteGrainOn documentation> 
noteGrainOn ::
            (MonadIO m) =>
              AudioBufferSourceNode -> Double -> Double -> Double -> m ()
noteGrainOn self when grainOffset grainDuration
  = liftIO
      (js_noteGrainOn (unAudioBufferSourceNode self) when grainOffset
         grainDuration)
 
foreign import javascript unsafe "$1[\"noteOff\"]($2)" js_noteOff
        :: JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.noteOff Mozilla AudioBufferSourceNode.noteOff documentation> 
noteOff :: (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
noteOff self when
  = liftIO (js_noteOff (unAudioBufferSourceNode self) when)
pattern UNSCHEDULED_STATE = 0
pattern SCHEDULED_STATE = 1
pattern PLAYING_STATE = 2
pattern FINISHED_STATE = 3
 
foreign import javascript unsafe "$1[\"buffer\"] = $2;"
        js_setBuffer ::
        JSRef AudioBufferSourceNode -> JSRef AudioBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
setBuffer ::
          (MonadIO m) => AudioBufferSourceNode -> Maybe AudioBuffer -> m ()
setBuffer self val
  = liftIO
      (js_setBuffer (unAudioBufferSourceNode self)
         (maybe jsNull unAudioBuffer val))
 
foreign import javascript unsafe "$1[\"buffer\"]" js_getBuffer ::
        JSRef AudioBufferSourceNode -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
getBuffer ::
          (MonadIO m) => AudioBufferSourceNode -> m (Maybe AudioBuffer)
getBuffer self
  = liftIO
      ((js_getBuffer (unAudioBufferSourceNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        js_getPlaybackState :: JSRef AudioBufferSourceNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackState Mozilla AudioBufferSourceNode.playbackState documentation> 
getPlaybackState :: (MonadIO m) => AudioBufferSourceNode -> m Word
getPlaybackState self
  = liftIO (js_getPlaybackState (unAudioBufferSourceNode self))
 
foreign import javascript unsafe "$1[\"gain\"]" js_getGain ::
        JSRef AudioBufferSourceNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.gain Mozilla AudioBufferSourceNode.gain documentation> 
getGain ::
        (MonadIO m) => AudioBufferSourceNode -> m (Maybe AudioParam)
getGain self
  = liftIO
      ((js_getGain (unAudioBufferSourceNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        js_getPlaybackRate ::
        JSRef AudioBufferSourceNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackRate Mozilla AudioBufferSourceNode.playbackRate documentation> 
getPlaybackRate ::
                (MonadIO m) => AudioBufferSourceNode -> m (Maybe AudioParam)
getPlaybackRate self
  = liftIO
      ((js_getPlaybackRate (unAudioBufferSourceNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"loop\"] = $2;" js_setLoop ::
        JSRef AudioBufferSourceNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
setLoop :: (MonadIO m) => AudioBufferSourceNode -> Bool -> m ()
setLoop self val
  = liftIO (js_setLoop (unAudioBufferSourceNode self) val)
 
foreign import javascript unsafe "($1[\"loop\"] ? 1 : 0)"
        js_getLoop :: JSRef AudioBufferSourceNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
getLoop :: (MonadIO m) => AudioBufferSourceNode -> m Bool
getLoop self = liftIO (js_getLoop (unAudioBufferSourceNode self))
 
foreign import javascript unsafe "$1[\"loopStart\"] = $2;"
        js_setLoopStart :: JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
setLoopStart ::
             (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
setLoopStart self val
  = liftIO (js_setLoopStart (unAudioBufferSourceNode self) val)
 
foreign import javascript unsafe "$1[\"loopStart\"]"
        js_getLoopStart :: JSRef AudioBufferSourceNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
getLoopStart :: (MonadIO m) => AudioBufferSourceNode -> m Double
getLoopStart self
  = liftIO (js_getLoopStart (unAudioBufferSourceNode self))
 
foreign import javascript unsafe "$1[\"loopEnd\"] = $2;"
        js_setLoopEnd :: JSRef AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
setLoopEnd ::
           (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
setLoopEnd self val
  = liftIO (js_setLoopEnd (unAudioBufferSourceNode self) val)
 
foreign import javascript unsafe "$1[\"loopEnd\"]" js_getLoopEnd ::
        JSRef AudioBufferSourceNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
getLoopEnd :: (MonadIO m) => AudioBufferSourceNode -> m Double
getLoopEnd self
  = liftIO (js_getLoopEnd (unAudioBufferSourceNode self))
 
foreign import javascript unsafe "$1[\"looping\"] = $2;"
        js_setLooping :: JSRef AudioBufferSourceNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.looping Mozilla AudioBufferSourceNode.looping documentation> 
setLooping :: (MonadIO m) => AudioBufferSourceNode -> Bool -> m ()
setLooping self val
  = liftIO (js_setLooping (unAudioBufferSourceNode self) val)
 
foreign import javascript unsafe "($1[\"looping\"] ? 1 : 0)"
        js_getLooping :: JSRef AudioBufferSourceNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.looping Mozilla AudioBufferSourceNode.looping documentation> 
getLooping :: (MonadIO m) => AudioBufferSourceNode -> m Bool
getLooping self
  = liftIO (js_getLooping (unAudioBufferSourceNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.onended Mozilla AudioBufferSourceNode.onended documentation> 
ended :: EventName AudioBufferSourceNode Event
ended = unsafeEventName (toJSString "ended")
#else
module GHCJS.DOM.AudioBufferSourceNode (
  ) where
#endif
