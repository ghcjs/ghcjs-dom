{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SourceBuffer
       (ghcjs_dom_source_buffer_append_buffer, sourceBufferAppendBuffer,
        ghcjs_dom_source_buffer_append_bufferView,
        sourceBufferAppendBufferView, ghcjs_dom_source_buffer_abort,
        sourceBufferAbort, ghcjs_dom_source_buffer_remove,
        sourceBufferRemove, ghcjs_dom_source_buffer_get_updating,
        sourceBufferGetUpdating, ghcjs_dom_source_buffer_get_buffered,
        sourceBufferGetBuffered,
        ghcjs_dom_source_buffer_set_timestamp_offset,
        sourceBufferSetTimestampOffset,
        ghcjs_dom_source_buffer_get_timestamp_offset,
        sourceBufferGetTimestampOffset,
        ghcjs_dom_source_buffer_get_audio_tracks,
        sourceBufferGetAudioTracks,
        ghcjs_dom_source_buffer_get_video_tracks,
        sourceBufferGetVideoTracks,
        ghcjs_dom_source_buffer_get_text_tracks, sourceBufferGetTextTracks,
        SourceBuffer, IsSourceBuffer, castToSourceBuffer,
        gTypeSourceBuffer, toSourceBuffer)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"appendBuffer\"]($2)"
        ghcjs_dom_source_buffer_append_buffer ::
        JSRef SourceBuffer -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendBuffer Mozilla SourceBuffer.appendBuffer documentation> 
sourceBufferAppendBuffer ::
                         (IsSourceBuffer self, IsArrayBuffer data') =>
                           self -> Maybe data' -> IO ()
sourceBufferAppendBuffer self data'
  = ghcjs_dom_source_buffer_append_buffer
      (unSourceBuffer (toSourceBuffer self))
      (maybe jsNull (unArrayBuffer . toArrayBuffer) data')
 
foreign import javascript unsafe "$1[\"appendBuffer\"]($2)"
        ghcjs_dom_source_buffer_append_bufferView ::
        JSRef SourceBuffer -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.appendBufferView Mozilla SourceBuffer.appendBufferView documentation> 
sourceBufferAppendBufferView ::
                             (IsSourceBuffer self, IsArrayBufferView data') =>
                               self -> Maybe data' -> IO ()
sourceBufferAppendBufferView self data'
  = ghcjs_dom_source_buffer_append_bufferView
      (unSourceBuffer (toSourceBuffer self))
      (maybe jsNull (unArrayBufferView . toArrayBufferView) data')
 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_source_buffer_abort :: JSRef SourceBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.abort Mozilla SourceBuffer.abort documentation> 
sourceBufferAbort :: (IsSourceBuffer self) => self -> IO ()
sourceBufferAbort self
  = ghcjs_dom_source_buffer_abort
      (unSourceBuffer (toSourceBuffer self))
 
foreign import javascript unsafe "$1[\"remove\"]($2, $3)"
        ghcjs_dom_source_buffer_remove ::
        JSRef SourceBuffer -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.remove Mozilla SourceBuffer.remove documentation> 
sourceBufferRemove ::
                   (IsSourceBuffer self) => self -> Double -> Double -> IO ()
sourceBufferRemove self start end
  = ghcjs_dom_source_buffer_remove
      (unSourceBuffer (toSourceBuffer self))
      start
      end
 
foreign import javascript unsafe "($1[\"updating\"] ? 1 : 0)"
        ghcjs_dom_source_buffer_get_updating ::
        JSRef SourceBuffer -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.updating Mozilla SourceBuffer.updating documentation> 
sourceBufferGetUpdating :: (IsSourceBuffer self) => self -> IO Bool
sourceBufferGetUpdating self
  = ghcjs_dom_source_buffer_get_updating
      (unSourceBuffer (toSourceBuffer self))
 
foreign import javascript unsafe "$1[\"buffered\"]"
        ghcjs_dom_source_buffer_get_buffered ::
        JSRef SourceBuffer -> IO (JSRef TimeRanges)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.buffered Mozilla SourceBuffer.buffered documentation> 
sourceBufferGetBuffered ::
                        (IsSourceBuffer self) => self -> IO (Maybe TimeRanges)
sourceBufferGetBuffered self
  = (ghcjs_dom_source_buffer_get_buffered
       (unSourceBuffer (toSourceBuffer self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"timestampOffset\"] = $2;"
        ghcjs_dom_source_buffer_set_timestamp_offset ::
        JSRef SourceBuffer -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.timestampOffset Mozilla SourceBuffer.timestampOffset documentation> 
sourceBufferSetTimestampOffset ::
                               (IsSourceBuffer self) => self -> Double -> IO ()
sourceBufferSetTimestampOffset self val
  = ghcjs_dom_source_buffer_set_timestamp_offset
      (unSourceBuffer (toSourceBuffer self))
      val
 
foreign import javascript unsafe "$1[\"timestampOffset\"]"
        ghcjs_dom_source_buffer_get_timestamp_offset ::
        JSRef SourceBuffer -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.timestampOffset Mozilla SourceBuffer.timestampOffset documentation> 
sourceBufferGetTimestampOffset ::
                               (IsSourceBuffer self) => self -> IO Double
sourceBufferGetTimestampOffset self
  = ghcjs_dom_source_buffer_get_timestamp_offset
      (unSourceBuffer (toSourceBuffer self))
 
foreign import javascript unsafe "$1[\"audioTracks\"]"
        ghcjs_dom_source_buffer_get_audio_tracks ::
        JSRef SourceBuffer -> IO (JSRef AudioTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.audioTracks Mozilla SourceBuffer.audioTracks documentation> 
sourceBufferGetAudioTracks ::
                           (IsSourceBuffer self) => self -> IO (Maybe AudioTrackList)
sourceBufferGetAudioTracks self
  = (ghcjs_dom_source_buffer_get_audio_tracks
       (unSourceBuffer (toSourceBuffer self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"videoTracks\"]"
        ghcjs_dom_source_buffer_get_video_tracks ::
        JSRef SourceBuffer -> IO (JSRef VideoTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.videoTracks Mozilla SourceBuffer.videoTracks documentation> 
sourceBufferGetVideoTracks ::
                           (IsSourceBuffer self) => self -> IO (Maybe VideoTrackList)
sourceBufferGetVideoTracks self
  = (ghcjs_dom_source_buffer_get_video_tracks
       (unSourceBuffer (toSourceBuffer self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"textTracks\"]"
        ghcjs_dom_source_buffer_get_text_tracks ::
        JSRef SourceBuffer -> IO (JSRef TextTrackList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBuffer.textTracks Mozilla SourceBuffer.textTracks documentation> 
sourceBufferGetTextTracks ::
                          (IsSourceBuffer self) => self -> IO (Maybe TextTrackList)
sourceBufferGetTextTracks self
  = (ghcjs_dom_source_buffer_get_text_tracks
       (unSourceBuffer (toSourceBuffer self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SourceBuffer (
  ) where
#endif
