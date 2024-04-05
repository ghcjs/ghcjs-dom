{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SourceBuffer
       (js_appendBuffer, appendBuffer, js_abort, abort, js_remove, remove,
        js_setMode, setMode, js_getMode, getMode, js_getUpdating,
        getUpdating, js_getBuffered, getBuffered, js_setTimestampOffset,
        setTimestampOffset, js_getTimestampOffset, getTimestampOffset,
        js_getAudioTracks, getAudioTracks, js_getVideoTracks,
        getVideoTracks, js_getTextTracks, getTextTracks,
        js_setAppendWindowStart, setAppendWindowStart,
        js_getAppendWindowStart, getAppendWindowStart,
        js_setAppendWindowEnd, setAppendWindowEnd, js_getAppendWindowEnd,
        getAppendWindowEnd, updatestart, update, updateend, error,
        abortEvent, SourceBuffer(..), gTypeSourceBuffer)
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
 
foreign import javascript safe "$1[\"appendBuffer\"]($2)"
        js_appendBuffer :: SourceBuffer -> BufferSource -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendBuffer Mozilla SourceBuffer.appendBuffer documentation> 
appendBuffer ::
             (MonadIO m, IsBufferSource data') => SourceBuffer -> data' -> m ()
appendBuffer self data'
  = liftIO (js_appendBuffer self (toBufferSource data'))
 
foreign import javascript safe "$1[\"abort\"]()" js_abort ::
        SourceBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.abort Mozilla SourceBuffer.abort documentation> 
abort :: (MonadIO m) => SourceBuffer -> m ()
abort self = liftIO (js_abort self)
 
foreign import javascript safe "$1[\"remove\"]($2, $3)" js_remove
        :: SourceBuffer -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.remove Mozilla SourceBuffer.remove documentation> 
remove :: (MonadIO m) => SourceBuffer -> Double -> Double -> m ()
remove self start end = liftIO (js_remove self start end)
 
foreign import javascript safe "$1[\"mode\"] = $2;" js_setMode ::
        SourceBuffer -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.mode Mozilla SourceBuffer.mode documentation> 
setMode :: (MonadIO m) => SourceBuffer -> AppendMode -> m ()
setMode self val = liftIO (js_setMode self (pToJSVal val))
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        SourceBuffer -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.mode Mozilla SourceBuffer.mode documentation> 
getMode :: (MonadIO m) => SourceBuffer -> m AppendMode
getMode self = liftIO ((js_getMode self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "($1[\"updating\"] ? 1 : 0)"
        js_getUpdating :: SourceBuffer -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.updating Mozilla SourceBuffer.updating documentation> 
getUpdating :: (MonadIO m) => SourceBuffer -> m Bool
getUpdating self = liftIO (js_getUpdating self)
 
foreign import javascript safe "$1[\"buffered\"]" js_getBuffered ::
        SourceBuffer -> IO TimeRanges

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.buffered Mozilla SourceBuffer.buffered documentation> 
getBuffered :: (MonadIO m) => SourceBuffer -> m TimeRanges
getBuffered self = liftIO (js_getBuffered self)
 
foreign import javascript safe "$1[\"timestampOffset\"] = $2;"
        js_setTimestampOffset :: SourceBuffer -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.timestampOffset Mozilla SourceBuffer.timestampOffset documentation> 
setTimestampOffset :: (MonadIO m) => SourceBuffer -> Double -> m ()
setTimestampOffset self val
  = liftIO (js_setTimestampOffset self val)
 
foreign import javascript unsafe "$1[\"timestampOffset\"]"
        js_getTimestampOffset :: SourceBuffer -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.timestampOffset Mozilla SourceBuffer.timestampOffset documentation> 
getTimestampOffset :: (MonadIO m) => SourceBuffer -> m Double
getTimestampOffset self = liftIO (js_getTimestampOffset self)
 
foreign import javascript unsafe "$1[\"audioTracks\"]"
        js_getAudioTracks :: SourceBuffer -> IO AudioTrackList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.audioTracks Mozilla SourceBuffer.audioTracks documentation> 
getAudioTracks :: (MonadIO m) => SourceBuffer -> m AudioTrackList
getAudioTracks self = liftIO (js_getAudioTracks self)
 
foreign import javascript unsafe "$1[\"videoTracks\"]"
        js_getVideoTracks :: SourceBuffer -> IO VideoTrackList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.videoTracks Mozilla SourceBuffer.videoTracks documentation> 
getVideoTracks :: (MonadIO m) => SourceBuffer -> m VideoTrackList
getVideoTracks self = liftIO (js_getVideoTracks self)
 
foreign import javascript unsafe "$1[\"textTracks\"]"
        js_getTextTracks :: SourceBuffer -> IO TextTrackList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.textTracks Mozilla SourceBuffer.textTracks documentation> 
getTextTracks :: (MonadIO m) => SourceBuffer -> m TextTrackList
getTextTracks self = liftIO (js_getTextTracks self)
 
foreign import javascript safe "$1[\"appendWindowStart\"] = $2;"
        js_setAppendWindowStart :: SourceBuffer -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowStart Mozilla SourceBuffer.appendWindowStart documentation> 
setAppendWindowStart ::
                     (MonadIO m) => SourceBuffer -> Double -> m ()
setAppendWindowStart self val
  = liftIO (js_setAppendWindowStart self val)
 
foreign import javascript unsafe "$1[\"appendWindowStart\"]"
        js_getAppendWindowStart :: SourceBuffer -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowStart Mozilla SourceBuffer.appendWindowStart documentation> 
getAppendWindowStart :: (MonadIO m) => SourceBuffer -> m Double
getAppendWindowStart self = liftIO (js_getAppendWindowStart self)
 
foreign import javascript safe "$1[\"appendWindowEnd\"] = $2;"
        js_setAppendWindowEnd :: SourceBuffer -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowEnd Mozilla SourceBuffer.appendWindowEnd documentation> 
setAppendWindowEnd :: (MonadIO m) => SourceBuffer -> Double -> m ()
setAppendWindowEnd self val
  = liftIO (js_setAppendWindowEnd self val)
 
foreign import javascript unsafe "$1[\"appendWindowEnd\"]"
        js_getAppendWindowEnd :: SourceBuffer -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowEnd Mozilla SourceBuffer.appendWindowEnd documentation> 
getAppendWindowEnd :: (MonadIO m) => SourceBuffer -> m Double
getAppendWindowEnd self = liftIO (js_getAppendWindowEnd self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.onupdatestart Mozilla SourceBuffer.onupdatestart documentation> 
updatestart :: EventName SourceBuffer onupdatestart
updatestart = unsafeEventName (toJSString "updatestart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.onupdate Mozilla SourceBuffer.onupdate documentation> 
update :: EventName SourceBuffer onupdate
update = unsafeEventName (toJSString "update")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.onupdateend Mozilla SourceBuffer.onupdateend documentation> 
updateend :: EventName SourceBuffer onupdateend
updateend = unsafeEventName (toJSString "updateend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.onerror Mozilla SourceBuffer.onerror documentation> 
error :: EventName SourceBuffer UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.onabort Mozilla SourceBuffer.onabort documentation> 
abortEvent :: EventName SourceBuffer UIEvent
abortEvent = unsafeEventNameAsync (toJSString "abort")