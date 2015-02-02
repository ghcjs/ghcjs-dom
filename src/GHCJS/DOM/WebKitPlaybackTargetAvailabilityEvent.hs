{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitPlaybackTargetAvailabilityEvent
       (ghcjs_dom_webkit_playback_target_availability_event_get_availability,
        webKitPlaybackTargetAvailabilityEventGetAvailability,
        WebKitPlaybackTargetAvailabilityEvent,
        IsWebKitPlaybackTargetAvailabilityEvent,
        castToWebKitPlaybackTargetAvailabilityEvent,
        gTypeWebKitPlaybackTargetAvailabilityEvent,
        toWebKitPlaybackTargetAvailabilityEvent)
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

 
foreign import javascript unsafe "$1[\"availability\"]"
        ghcjs_dom_webkit_playback_target_availability_event_get_availability
        :: JSRef WebKitPlaybackTargetAvailabilityEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPlaybackTargetAvailabilityEvent.availability Mozilla WebKitPlaybackTargetAvailabilityEvent.availability documentation> 
webKitPlaybackTargetAvailabilityEventGetAvailability ::
                                                     (IsWebKitPlaybackTargetAvailabilityEvent self,
                                                      FromJSString result) =>
                                                       self -> IO result
webKitPlaybackTargetAvailabilityEventGetAvailability self
  = fromJSString <$>
      (ghcjs_dom_webkit_playback_target_availability_event_get_availability
         (unWebKitPlaybackTargetAvailabilityEvent
            (toWebKitPlaybackTargetAvailabilityEvent self)))
#else
module GHCJS.DOM.WebKitPlaybackTargetAvailabilityEvent (
  ) where
#endif
