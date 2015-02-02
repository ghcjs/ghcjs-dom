{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TrackEvent
       (ghcjs_dom_track_event_get_track, trackEventGetTrack,
        TrackEvent(..), IsTrackEvent, castToTrackEvent, gTypeTrackEvent,
        toTrackEvent)
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

 
foreign import javascript unsafe "$1[\"track\"]"
        ghcjs_dom_track_event_get_track ::
        JSRef TrackEvent -> IO (JSRef GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TrackEvent.track Mozilla TrackEvent.track documentation> 
trackEventGetTrack ::
                   (IsTrackEvent self) => self -> IO (Maybe GObject)
trackEventGetTrack self
  = (ghcjs_dom_track_event_get_track
       (unTrackEvent (toTrackEvent self)))
      >>= fromJSRef
#else
module GHCJS.DOM.TrackEvent (
  ) where
#endif
