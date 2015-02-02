{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeyMessageEvent
       (ghcjs_dom_media_key_message_event_get_message,
        mediaKeyMessageEventGetMessage,
        ghcjs_dom_media_key_message_event_get_destination_url,
        mediaKeyMessageEventGetDestinationURL, MediaKeyMessageEvent,
        IsMediaKeyMessageEvent, castToMediaKeyMessageEvent,
        gTypeMediaKeyMessageEvent, toMediaKeyMessageEvent)
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

 
foreign import javascript unsafe "$1[\"message\"]"
        ghcjs_dom_media_key_message_event_get_message ::
        JSRef MediaKeyMessageEvent -> IO (JSRef Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
mediaKeyMessageEventGetMessage ::
                               (IsMediaKeyMessageEvent self) => self -> IO (Maybe Uint8Array)
mediaKeyMessageEventGetMessage self
  = (ghcjs_dom_media_key_message_event_get_message
       (unMediaKeyMessageEvent (toMediaKeyMessageEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"destinationURL\"]"
        ghcjs_dom_media_key_message_event_get_destination_url ::
        JSRef MediaKeyMessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.destinationURL Mozilla WebKitMediaKeyMessageEvent.destinationURL documentation> 
mediaKeyMessageEventGetDestinationURL ::
                                      (IsMediaKeyMessageEvent self, FromJSString result) =>
                                        self -> IO result
mediaKeyMessageEventGetDestinationURL self
  = fromJSString <$>
      (ghcjs_dom_media_key_message_event_get_destination_url
         (unMediaKeyMessageEvent (toMediaKeyMessageEvent self)))
#else
module GHCJS.DOM.MediaKeyMessageEvent (
  ) where
#endif
