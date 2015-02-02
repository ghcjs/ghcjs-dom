{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeyNeededEvent
       (ghcjs_dom_media_key_needed_event_get_init_data,
        mediaKeyNeededEventGetInitData, MediaKeyNeededEvent,
        IsMediaKeyNeededEvent, castToMediaKeyNeededEvent,
        gTypeMediaKeyNeededEvent, toMediaKeyNeededEvent)
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

 
foreign import javascript unsafe "$1[\"initData\"]"
        ghcjs_dom_media_key_needed_event_get_init_data ::
        JSRef MediaKeyNeededEvent -> IO (JSRef Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent.initData Mozilla MediaKeyNeededEvent.initData documentation> 
mediaKeyNeededEventGetInitData ::
                               (IsMediaKeyNeededEvent self) => self -> IO (Maybe Uint8Array)
mediaKeyNeededEventGetInitData self
  = (ghcjs_dom_media_key_needed_event_get_init_data
       (unMediaKeyNeededEvent (toMediaKeyNeededEvent self)))
      >>= fromJSRef
#else
module GHCJS.DOM.MediaKeyNeededEvent (
  ) where
#endif
