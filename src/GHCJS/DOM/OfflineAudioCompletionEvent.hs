{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.OfflineAudioCompletionEvent
       (ghcjs_dom_offline_audio_completion_event_get_rendered_buffer,
        offlineAudioCompletionEventGetRenderedBuffer,
        OfflineAudioCompletionEvent, IsOfflineAudioCompletionEvent,
        castToOfflineAudioCompletionEvent,
        gTypeOfflineAudioCompletionEvent, toOfflineAudioCompletionEvent)
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

 
foreign import javascript unsafe "$1[\"renderedBuffer\"]"
        ghcjs_dom_offline_audio_completion_event_get_rendered_buffer ::
        JSRef OfflineAudioCompletionEvent -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioCompletionEvent.renderedBuffer Mozilla OfflineAudioCompletionEvent.renderedBuffer documentation> 
offlineAudioCompletionEventGetRenderedBuffer ::
                                             (MonadIO m, IsOfflineAudioCompletionEvent self) =>
                                               self -> m (Maybe AudioBuffer)
offlineAudioCompletionEventGetRenderedBuffer self
  = liftIO
      ((ghcjs_dom_offline_audio_completion_event_get_rendered_buffer
          (unOfflineAudioCompletionEvent
             (toOfflineAudioCompletionEvent self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.OfflineAudioCompletionEvent (
  ) where
#endif
