{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SourceBuffer
       (js_appendBuffer, appendBuffer, js_appendBufferView,
        appendBufferView, js_abort, abort, js_remove, remove, js_setMode,
        setMode, js_getMode, getMode, js_getUpdating, getUpdating,
        js_getBuffered, getBuffered, js_setTimestampOffset,
        setTimestampOffset, js_getTimestampOffset, getTimestampOffset,
        js_getAudioTracks, getAudioTracks, js_getVideoTracks,
        getVideoTracks, js_getTextTracks, getTextTracks,
        js_setAppendWindowStart, setAppendWindowStart,
        js_getAppendWindowStart, getAppendWindowStart,
        js_setAppendWindowEnd, setAppendWindowEnd, js_getAppendWindowEnd,
        getAppendWindowEnd, SourceBuffer, castToSourceBuffer,
        gTypeSourceBuffer)
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

 
foreign import javascript unsafe "$1[\"appendBuffer\"]($2)"
        js_appendBuffer :: JSRef SourceBuffer -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendBuffer Mozilla SourceBuffer.appendBuffer documentation> 
appendBuffer ::
             (MonadIO m, IsArrayBuffer data') =>
               SourceBuffer -> Maybe data' -> m ()
appendBuffer self data'
  = liftIO
      (js_appendBuffer (unSourceBuffer self)
         (maybe jsNull (unArrayBuffer . toArrayBuffer) data'))
 
foreign import javascript unsafe "$1[\"appendBuffer\"]($2)"
        js_appendBufferView ::
        JSRef SourceBuffer -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendBuffer Mozilla SourceBuffer.appendBuffer documentation> 
appendBufferView ::
                 (MonadIO m, IsArrayBufferView data') =>
                   SourceBuffer -> Maybe data' -> m ()
appendBufferView self data'
  = liftIO
      (js_appendBufferView (unSourceBuffer self)
         (maybe jsNull (unArrayBufferView . toArrayBufferView) data'))
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        JSRef SourceBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.abort Mozilla SourceBuffer.abort documentation> 
abort :: (MonadIO m) => SourceBuffer -> m ()
abort self = liftIO (js_abort (unSourceBuffer self))
 
foreign import javascript unsafe "$1[\"remove\"]($2, $3)" js_remove
        :: JSRef SourceBuffer -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.remove Mozilla SourceBuffer.remove documentation> 
remove :: (MonadIO m) => SourceBuffer -> Double -> Double -> m ()
remove self start end
  = liftIO (js_remove (unSourceBuffer self) start end)
 
foreign import javascript unsafe "$1[\"mode\"] = $2;" js_setMode ::
        JSRef SourceBuffer -> JSRef AppendMode -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.mode Mozilla SourceBuffer.mode documentation> 
setMode :: (MonadIO m) => SourceBuffer -> AppendMode -> m ()
setMode self val
  = liftIO (js_setMode (unSourceBuffer self) (ptoJSRef val))
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        JSRef SourceBuffer -> IO (JSRef AppendMode)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.mode Mozilla SourceBuffer.mode documentation> 
getMode :: (MonadIO m) => SourceBuffer -> m AppendMode
getMode self
  = liftIO
      ((js_getMode (unSourceBuffer self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "($1[\"updating\"] ? 1 : 0)"
        js_getUpdating :: JSRef SourceBuffer -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.updating Mozilla SourceBuffer.updating documentation> 
getUpdating :: (MonadIO m) => SourceBuffer -> m Bool
getUpdating self = liftIO (js_getUpdating (unSourceBuffer self))
 
foreign import javascript unsafe "$1[\"buffered\"]" js_getBuffered
        :: JSRef SourceBuffer -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.buffered Mozilla SourceBuffer.buffered documentation> 
getBuffered :: (MonadIO m) => SourceBuffer -> m (Maybe TimeRanges)
getBuffered self
  = liftIO ((js_getBuffered (unSourceBuffer self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"timestampOffset\"] = $2;"
        js_setTimestampOffset :: JSRef SourceBuffer -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.timestampOffset Mozilla SourceBuffer.timestampOffset documentation> 
setTimestampOffset :: (MonadIO m) => SourceBuffer -> Double -> m ()
setTimestampOffset self val
  = liftIO (js_setTimestampOffset (unSourceBuffer self) val)
 
foreign import javascript unsafe "$1[\"timestampOffset\"]"
        js_getTimestampOffset :: JSRef SourceBuffer -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.timestampOffset Mozilla SourceBuffer.timestampOffset documentation> 
getTimestampOffset :: (MonadIO m) => SourceBuffer -> m Double
getTimestampOffset self
  = liftIO (js_getTimestampOffset (unSourceBuffer self))
 
foreign import javascript unsafe "$1[\"audioTracks\"]"
        js_getAudioTracks ::
        JSRef SourceBuffer -> IO (JSRef AudioTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.audioTracks Mozilla SourceBuffer.audioTracks documentation> 
getAudioTracks ::
               (MonadIO m) => SourceBuffer -> m (Maybe AudioTrackList)
getAudioTracks self
  = liftIO ((js_getAudioTracks (unSourceBuffer self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"videoTracks\"]"
        js_getVideoTracks ::
        JSRef SourceBuffer -> IO (JSRef VideoTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.videoTracks Mozilla SourceBuffer.videoTracks documentation> 
getVideoTracks ::
               (MonadIO m) => SourceBuffer -> m (Maybe VideoTrackList)
getVideoTracks self
  = liftIO ((js_getVideoTracks (unSourceBuffer self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"textTracks\"]"
        js_getTextTracks :: JSRef SourceBuffer -> IO (JSRef TextTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.textTracks Mozilla SourceBuffer.textTracks documentation> 
getTextTracks ::
              (MonadIO m) => SourceBuffer -> m (Maybe TextTrackList)
getTextTracks self
  = liftIO ((js_getTextTracks (unSourceBuffer self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendWindowStart\"] = $2;"
        js_setAppendWindowStart :: JSRef SourceBuffer -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowStart Mozilla SourceBuffer.appendWindowStart documentation> 
setAppendWindowStart ::
                     (MonadIO m) => SourceBuffer -> Double -> m ()
setAppendWindowStart self val
  = liftIO (js_setAppendWindowStart (unSourceBuffer self) val)
 
foreign import javascript unsafe "$1[\"appendWindowStart\"]"
        js_getAppendWindowStart :: JSRef SourceBuffer -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowStart Mozilla SourceBuffer.appendWindowStart documentation> 
getAppendWindowStart :: (MonadIO m) => SourceBuffer -> m Double
getAppendWindowStart self
  = liftIO (js_getAppendWindowStart (unSourceBuffer self))
 
foreign import javascript unsafe "$1[\"appendWindowEnd\"] = $2;"
        js_setAppendWindowEnd :: JSRef SourceBuffer -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowEnd Mozilla SourceBuffer.appendWindowEnd documentation> 
setAppendWindowEnd :: (MonadIO m) => SourceBuffer -> Double -> m ()
setAppendWindowEnd self val
  = liftIO (js_setAppendWindowEnd (unSourceBuffer self) val)
 
foreign import javascript unsafe "$1[\"appendWindowEnd\"]"
        js_getAppendWindowEnd :: JSRef SourceBuffer -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendWindowEnd Mozilla SourceBuffer.appendWindowEnd documentation> 
getAppendWindowEnd :: (MonadIO m) => SourceBuffer -> m Double
getAppendWindowEnd self
  = liftIO (js_getAppendWindowEnd (unSourceBuffer self))
#else
module GHCJS.DOM.SourceBuffer (
  ) where
#endif
