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
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"MediaSource\"]()"
        ghcjs_dom_media_source_new :: IO (JSRef MediaSource)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource Mozilla MediaSource documentation> 
mediaSourceNew :: (MonadIO m) => m MediaSource
mediaSourceNew
  = liftIO (ghcjs_dom_media_source_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"addSourceBuffer\"]($2)"
        ghcjs_dom_media_source_add_source_buffer ::
        JSRef MediaSource -> JSString -> IO (JSRef SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.addSourceBuffer Mozilla MediaSource.addSourceBuffer documentation> 
mediaSourceAddSourceBuffer ::
                           (MonadIO m, IsMediaSource self, ToJSString type') =>
                             self -> type' -> m (Maybe SourceBuffer)
mediaSourceAddSourceBuffer self type'
  = liftIO
      ((ghcjs_dom_media_source_add_source_buffer
          (unMediaSource (toMediaSource self))
          (toJSString type'))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeSourceBuffer\"]($2)"
        ghcjs_dom_media_source_remove_source_buffer ::
        JSRef MediaSource -> JSRef SourceBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.removeSourceBuffer Mozilla MediaSource.removeSourceBuffer documentation> 
mediaSourceRemoveSourceBuffer ::
                              (MonadIO m, IsMediaSource self, IsSourceBuffer buffer) =>
                                self -> Maybe buffer -> m ()
mediaSourceRemoveSourceBuffer self buffer
  = liftIO
      (ghcjs_dom_media_source_remove_source_buffer
         (unMediaSource (toMediaSource self))
         (maybe jsNull (unSourceBuffer . toSourceBuffer) buffer))
 
foreign import javascript unsafe "$1[\"endOfStream\"]($2)"
        ghcjs_dom_media_source_end_of_stream ::
        JSRef MediaSource -> JSRef EndOfStreamError -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.endOfStream Mozilla MediaSource.endOfStream documentation> 
mediaSourceEndOfStream ::
                       (MonadIO m, IsMediaSource self) => self -> EndOfStreamError -> m ()
mediaSourceEndOfStream self error
  = liftIO
      (ghcjs_dom_media_source_end_of_stream
         (unMediaSource (toMediaSource self))
         (ptoJSRef error))
 
foreign import javascript unsafe
        "($1[\"isTypeSupported\"]($2) ? 1 : 0)"
        ghcjs_dom_media_source_is_type_supported ::
        JSRef MediaSource -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.isTypeSupported Mozilla MediaSource.isTypeSupported documentation> 
mediaSourceIsTypeSupported ::
                           (MonadIO m, IsMediaSource self, ToJSString type') =>
                             self -> type' -> m Bool
mediaSourceIsTypeSupported self type'
  = liftIO
      (ghcjs_dom_media_source_is_type_supported
         (unMediaSource (toMediaSource self))
         (toJSString type'))
 
foreign import javascript unsafe "$1[\"sourceBuffers\"]"
        ghcjs_dom_media_source_get_source_buffers ::
        JSRef MediaSource -> IO (JSRef SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.sourceBuffers Mozilla MediaSource.sourceBuffers documentation> 
mediaSourceGetSourceBuffers ::
                            (MonadIO m, IsMediaSource self) =>
                              self -> m (Maybe SourceBufferList)
mediaSourceGetSourceBuffers self
  = liftIO
      ((ghcjs_dom_media_source_get_source_buffers
          (unMediaSource (toMediaSource self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"activeSourceBuffers\"]"
        ghcjs_dom_media_source_get_active_source_buffers ::
        JSRef MediaSource -> IO (JSRef SourceBufferList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.activeSourceBuffers Mozilla MediaSource.activeSourceBuffers documentation> 
mediaSourceGetActiveSourceBuffers ::
                                  (MonadIO m, IsMediaSource self) =>
                                    self -> m (Maybe SourceBufferList)
mediaSourceGetActiveSourceBuffers self
  = liftIO
      ((ghcjs_dom_media_source_get_active_source_buffers
          (unMediaSource (toMediaSource self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"duration\"] = $2;"
        ghcjs_dom_media_source_set_duration ::
        JSRef MediaSource -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
mediaSourceSetDuration ::
                       (MonadIO m, IsMediaSource self) => self -> Double -> m ()
mediaSourceSetDuration self val
  = liftIO
      (ghcjs_dom_media_source_set_duration
         (unMediaSource (toMediaSource self))
         val)
 
foreign import javascript unsafe "$1[\"duration\"]"
        ghcjs_dom_media_source_get_duration ::
        JSRef MediaSource -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.duration Mozilla MediaSource.duration documentation> 
mediaSourceGetDuration ::
                       (MonadIO m, IsMediaSource self) => self -> m Double
mediaSourceGetDuration self
  = liftIO
      (ghcjs_dom_media_source_get_duration
         (unMediaSource (toMediaSource self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_media_source_get_ready_state ::
        JSRef MediaSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaSource.readyState Mozilla MediaSource.readyState documentation> 
mediaSourceGetReadyState ::
                         (MonadIO m, IsMediaSource self, FromJSString result) =>
                           self -> m result
mediaSourceGetReadyState self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_source_get_ready_state
            (unMediaSource (toMediaSource self))))
#else
module GHCJS.DOM.MediaSource (
  ) where
#endif
