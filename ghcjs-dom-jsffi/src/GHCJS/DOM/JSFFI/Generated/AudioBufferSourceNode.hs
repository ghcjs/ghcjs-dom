{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.AudioBufferSourceNode
       (js_start, start, js_stop, stop, pattern UNSCHEDULED_STATE,
        pattern SCHEDULED_STATE, pattern PLAYING_STATE,
        pattern FINISHED_STATE, js_setBuffer, setBuffer, js_getBuffer,
        getBuffer, getBufferUnsafe, getBufferUnchecked,
        js_getPlaybackState, getPlaybackState, js_getGain, getGain,
        js_getPlaybackRate, getPlaybackRate, js_setLoop, setLoop,
        js_getLoop, getLoop, js_setLoopStart, setLoopStart,
        js_getLoopStart, getLoopStart, js_setLoopEnd, setLoopEnd,
        js_getLoopEnd, getLoopEnd, ended, AudioBufferSourceNode(..),
        gTypeAudioBufferSourceNode)
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
 
foreign import javascript safe "$1[\"start\"]($2, $3, $4)" js_start
        ::
        AudioBufferSourceNode ->
          Optional Double -> Optional Double -> Optional Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.start Mozilla AudioBufferSourceNode.start documentation> 
start ::
      (MonadIO m) =>
        AudioBufferSourceNode ->
          Maybe Double -> Maybe Double -> Maybe Double -> m ()
start self when grainOffset grainDuration
  = liftIO
      (js_start self (maybeToOptional when) (maybeToOptional grainOffset)
         (maybeToOptional grainDuration))
 
foreign import javascript safe "$1[\"stop\"]($2)" js_stop ::
        AudioBufferSourceNode -> Optional Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.stop Mozilla AudioBufferSourceNode.stop documentation> 
stop ::
     (MonadIO m) => AudioBufferSourceNode -> Maybe Double -> m ()
stop self when = liftIO (js_stop self (maybeToOptional when))
pattern UNSCHEDULED_STATE = 0
pattern SCHEDULED_STATE = 1
pattern PLAYING_STATE = 2
pattern FINISHED_STATE = 3
 
foreign import javascript unsafe "$1[\"buffer\"] = $2;"
        js_setBuffer ::
        AudioBufferSourceNode -> Optional AudioBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
setBuffer ::
          (MonadIO m) => AudioBufferSourceNode -> Maybe AudioBuffer -> m ()
setBuffer self val
  = liftIO (js_setBuffer self (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"buffer\"]" js_getBuffer ::
        AudioBufferSourceNode -> IO (Nullable AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
getBuffer ::
          (MonadIO m) => AudioBufferSourceNode -> m (Maybe AudioBuffer)
getBuffer self = liftIO (nullableToMaybe <$> (js_getBuffer self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
getBufferUnsafe ::
                (MonadIO m, HasCallStack) => AudioBufferSourceNode -> m AudioBuffer
getBufferUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBuffer self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.buffer Mozilla AudioBufferSourceNode.buffer documentation> 
getBufferUnchecked ::
                   (MonadIO m) => AudioBufferSourceNode -> m AudioBuffer
getBufferUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBuffer self))
 
foreign import javascript unsafe "$1[\"playbackState\"]"
        js_getPlaybackState :: AudioBufferSourceNode -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackState Mozilla AudioBufferSourceNode.playbackState documentation> 
getPlaybackState :: (MonadIO m) => AudioBufferSourceNode -> m Word
getPlaybackState self = liftIO (js_getPlaybackState self)
 
foreign import javascript unsafe "$1[\"gain\"]" js_getGain ::
        AudioBufferSourceNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.gain Mozilla AudioBufferSourceNode.gain documentation> 
getGain :: (MonadIO m) => AudioBufferSourceNode -> m AudioParam
getGain self = liftIO (js_getGain self)
 
foreign import javascript unsafe "$1[\"playbackRate\"]"
        js_getPlaybackRate :: AudioBufferSourceNode -> IO AudioParam

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.playbackRate Mozilla AudioBufferSourceNode.playbackRate documentation> 
getPlaybackRate ::
                (MonadIO m) => AudioBufferSourceNode -> m AudioParam
getPlaybackRate self = liftIO (js_getPlaybackRate self)
 
foreign import javascript unsafe "$1[\"loop\"] = $2;" js_setLoop ::
        AudioBufferSourceNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
setLoop :: (MonadIO m) => AudioBufferSourceNode -> Bool -> m ()
setLoop self val = liftIO (js_setLoop self val)
 
foreign import javascript unsafe "($1[\"loop\"] ? 1 : 0)"
        js_getLoop :: AudioBufferSourceNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loop Mozilla AudioBufferSourceNode.loop documentation> 
getLoop :: (MonadIO m) => AudioBufferSourceNode -> m Bool
getLoop self = liftIO (js_getLoop self)
 
foreign import javascript unsafe "$1[\"loopStart\"] = $2;"
        js_setLoopStart :: AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
setLoopStart ::
             (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
setLoopStart self val = liftIO (js_setLoopStart self val)
 
foreign import javascript unsafe "$1[\"loopStart\"]"
        js_getLoopStart :: AudioBufferSourceNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopStart Mozilla AudioBufferSourceNode.loopStart documentation> 
getLoopStart :: (MonadIO m) => AudioBufferSourceNode -> m Double
getLoopStart self = liftIO (js_getLoopStart self)
 
foreign import javascript unsafe "$1[\"loopEnd\"] = $2;"
        js_setLoopEnd :: AudioBufferSourceNode -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
setLoopEnd ::
           (MonadIO m) => AudioBufferSourceNode -> Double -> m ()
setLoopEnd self val = liftIO (js_setLoopEnd self val)
 
foreign import javascript unsafe "$1[\"loopEnd\"]" js_getLoopEnd ::
        AudioBufferSourceNode -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.loopEnd Mozilla AudioBufferSourceNode.loopEnd documentation> 
getLoopEnd :: (MonadIO m) => AudioBufferSourceNode -> m Double
getLoopEnd self = liftIO (js_getLoopEnd self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioBufferSourceNode.onended Mozilla AudioBufferSourceNode.onended documentation> 
ended :: EventName AudioBufferSourceNode Event
ended = unsafeEventName (toJSString "ended")