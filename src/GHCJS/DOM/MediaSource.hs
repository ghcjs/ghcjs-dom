{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaSource
       (ghcjs_dom_media_source_new, mediaSourceNew,
        ghcjs_dom_media_source_add_source_buffer,
        mediaSourceAddSourceBuffer,
        ghcjs_dom_media_source_remove_source_buffer,
        mediaSourceRemoveSourceBuffer,
        ghcjs_dom_media_source_end_of_stream, mediaSourceEndOfStream,
        ghcjs_dom_media_source_is_type_supported,
        mediaSourceIsTypeSupported,
        ghcjs_dom_media_source_get_source_buffers,
        mediaSourceGetSourceBuffers,
        ghcjs_dom_media_source_get_active_source_buffers,
        mediaSourceGetActiveSourceBuffers,
        ghcjs_dom_media_source_set_duration, mediaSourceSetDuration,
        ghcjs_dom_media_source_get_duration, mediaSourceGetDuration,
        ghcjs_dom_media_source_get_ready_state, mediaSourceGetReadyState,
        MediaSource, IsMediaSource, castToMediaSource, gTypeMediaSource,
        toMediaSource)
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

 
foreign import javascript unsafe "new window[\"MediaSource\"]()"
        ghcjs_dom_media_source_new :: IO (JSRef MediaSource)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource Mozilla MediaSource documentation> 
mediaSourceNew :: IO MediaSource
mediaSourceNew = ghcjs_dom_media_source_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"addSourceBuffer\"]($2)"
        ghcjs_dom_media_source_add_source_buffer ::
        JSRef MediaSource -> JSString -> IO (JSRef SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
mediaSourceAddSourceBuffer ::
                           (IsMediaSource self, ToJSString type') =>
                             self -> type' -> IO (Maybe SourceBuffer)
mediaSourceAddSourceBuffer self type'
  = (ghcjs_dom_media_source_add_source_buffer
       (unMediaSource (toMediaSource self))
       (toJSString type'))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"removeSourceBuffer\"]($2)"
        ghcjs_dom_media_source_remove_source_buffer ::
        JSRef MediaSource -> JSRef SourceBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.removeSourceBuffer Mozilla MediaSource.removeSourceBuffer documentation> 
mediaSourceRemoveSourceBuffer ::
                              (IsMediaSource self, IsSourceBuffer buffer) =>
                                self -> Maybe buffer -> IO ()
mediaSourceRemoveSourceBuffer self buffer
  = ghcjs_dom_media_source_remove_source_buffer
      (unMediaSource (toMediaSource self))
      (maybe jsNull (unSourceBuffer . toSourceBuffer) buffer)
 
foreign import javascript unsafe "$1[\"endOfStream\"]($2)"
        ghcjs_dom_media_source_end_of_stream ::
        JSRef MediaSource -> JSRef EndOfStreamError -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.endOfStream Mozilla MediaSource.endOfStream documentation> 
mediaSourceEndOfStream ::
                       (IsMediaSource self) => self -> EndOfStreamError -> IO ()
mediaSourceEndOfStream self error
  = ghcjs_dom_media_source_end_of_stream
      (unMediaSource (toMediaSource self))
      (ptoJSRef error)
 
foreign import javascript unsafe
        "($1[\"isTypeSupported\"]($2) ? 1 : 0)"
        ghcjs_dom_media_source_is_type_supported ::
        JSRef MediaSource -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.isTypeSupported Mozilla MediaSource.isTypeSupported documentation> 
mediaSourceIsTypeSupported ::
                           (IsMediaSource self, ToJSString type') => self -> type' -> IO Bool
mediaSourceIsTypeSupported self type'
  = ghcjs_dom_media_source_is_type_supported
      (unMediaSource (toMediaSource self))
      (toJSString type')
 
foreign import javascript unsafe "$1[\"sourceBuffers\"]"
        ghcjs_dom_media_source_get_source_buffers ::
        JSRef MediaSource -> IO (JSRef SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.sourceBuffers Mozilla MediaSource.sourceBuffers documentation> 
mediaSourceGetSourceBuffers ::
                            (IsMediaSource self) => self -> IO (Maybe SourceBufferList)
mediaSourceGetSourceBuffers self
  = (ghcjs_dom_media_source_get_source_buffers
       (unMediaSource (toMediaSource self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"activeSourceBuffers\"]"
        ghcjs_dom_media_source_get_active_source_buffers ::
        JSRef MediaSource -> IO (JSRef SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.activeSourceBuffers Mozilla MediaSource.activeSourceBuffers documentation> 
mediaSourceGetActiveSourceBuffers ::
                                  (IsMediaSource self) => self -> IO (Maybe SourceBufferList)
mediaSourceGetActiveSourceBuffers self
  = (ghcjs_dom_media_source_get_active_source_buffers
       (unMediaSource (toMediaSource self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"duration\"] = $2;"
        ghcjs_dom_media_source_set_duration ::
        JSRef MediaSource -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
mediaSourceSetDuration ::
                       (IsMediaSource self) => self -> Double -> IO ()
mediaSourceSetDuration self val
  = ghcjs_dom_media_source_set_duration
      (unMediaSource (toMediaSource self))
      val
 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_media_source_get_duration ::
        JSRef MediaSource -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
mediaSourceGetDuration :: (IsMediaSource self) => self -> IO Double
mediaSourceGetDuration self
  = ghcjs_dom_media_source_get_duration
      (unMediaSource (toMediaSource self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_media_source_get_ready_state ::
        JSRef MediaSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.readyState Mozilla MediaSource.readyState documentation> 
mediaSourceGetReadyState ::
                         (IsMediaSource self, FromJSString result) => self -> IO result
mediaSourceGetReadyState self
  = fromJSString <$>
      (ghcjs_dom_media_source_get_ready_state
         (unMediaSource (toMediaSource self)))
#else
module GHCJS.DOM.MediaSource (
  ) where
#endif
