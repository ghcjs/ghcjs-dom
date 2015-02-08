{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaStreamTrackEvent
       (ghcjs_dom_media_stream_track_event_get_track,
        mediaStreamTrackEventGetTrack, MediaStreamTrackEvent,
        IsMediaStreamTrackEvent, castToMediaStreamTrackEvent,
        gTypeMediaStreamTrackEvent, toMediaStreamTrackEvent)
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

 
foreign import javascript unsafe "$1[\"track\"]"
        ghcjs_dom_media_stream_track_event_get_track ::
        JSRef MediaStreamTrackEvent -> IO (JSRef MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent.track Mozilla MediaStreamTrackEvent.track documentation> 
mediaStreamTrackEventGetTrack ::
                              (MonadIO m, IsMediaStreamTrackEvent self) =>
                                self -> m (Maybe MediaStreamTrack)
mediaStreamTrackEventGetTrack self
  = liftIO
      ((ghcjs_dom_media_stream_track_event_get_track
          (unMediaStreamTrackEvent (toMediaStreamTrackEvent self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.MediaStreamTrackEvent (
  ) where
#endif
