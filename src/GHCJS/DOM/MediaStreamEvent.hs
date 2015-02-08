{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStreamEvent
       (ghcjs_dom_media_stream_event_get_stream,
        mediaStreamEventGetStream, MediaStreamEvent, IsMediaStreamEvent,
        castToMediaStreamEvent, gTypeMediaStreamEvent, toMediaStreamEvent)
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

 
foreign import javascript unsafe "$1[\"stream\"]"
        ghcjs_dom_media_stream_event_get_stream ::
        JSRef MediaStreamEvent -> IO (JSRef MediaStream)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamEvent.stream Mozilla MediaStreamEvent.stream documentation> 
mediaStreamEventGetStream ::
                          (MonadIO m, IsMediaStreamEvent self) =>
                            self -> m (Maybe MediaStream)
mediaStreamEventGetStream self
  = liftIO
      ((ghcjs_dom_media_stream_event_get_stream
          (unMediaStreamEvent (toMediaStreamEvent self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.MediaStreamEvent (
  ) where
#endif
