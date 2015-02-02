{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeySession
       (ghcjs_dom_media_key_session_update, mediaKeySessionUpdate,
        ghcjs_dom_media_key_session_close, mediaKeySessionClose,
        ghcjs_dom_media_key_session_dispatch_event,
        mediaKeySessionDispatchEvent,
        ghcjs_dom_media_key_session_get_error, mediaKeySessionGetError,
        ghcjs_dom_media_key_session_get_key_system,
        mediaKeySessionGetKeySystem,
        ghcjs_dom_media_key_session_get_session_id,
        mediaKeySessionGetSessionId, mediaKeySessionOnwebkitkeyadded,
        mediaKeySessionOnwebkitkeyerror, mediaKeySessionOnwebkitkeymessage,
        MediaKeySession, IsMediaKeySession, castToMediaKeySession,
        gTypeMediaKeySession, toMediaKeySession)
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

 
foreign import javascript unsafe "$1[\"update\"]($2)"
        ghcjs_dom_media_key_session_update ::
        JSRef MediaKeySession -> JSRef Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.update Mozilla WebKitMediaKeySession.update documentation> 
mediaKeySessionUpdate ::
                      (IsMediaKeySession self, IsUint8Array key) =>
                        self -> Maybe key -> IO ()
mediaKeySessionUpdate self key
  = ghcjs_dom_media_key_session_update
      (unMediaKeySession (toMediaKeySession self))
      (maybe jsNull (unUint8Array . toUint8Array) key)
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_media_key_session_close :: JSRef MediaKeySession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.close Mozilla WebKitMediaKeySession.close documentation> 
mediaKeySessionClose :: (IsMediaKeySession self) => self -> IO ()
mediaKeySessionClose self
  = ghcjs_dom_media_key_session_close
      (unMediaKeySession (toMediaKeySession self))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_media_key_session_dispatch_event ::
        JSRef MediaKeySession -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.dispatchEvent Mozilla WebKitMediaKeySession.dispatchEvent documentation> 
mediaKeySessionDispatchEvent ::
                             (IsMediaKeySession self, IsEvent evt) =>
                               self -> Maybe evt -> IO Bool
mediaKeySessionDispatchEvent self evt
  = ghcjs_dom_media_key_session_dispatch_event
      (unMediaKeySession (toMediaKeySession self))
      (maybe jsNull (unEvent . toEvent) evt)
 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_media_key_session_get_error ::
        JSRef MediaKeySession -> IO (JSRef MediaKeyError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.error Mozilla WebKitMediaKeySession.error documentation> 
mediaKeySessionGetError ::
                        (IsMediaKeySession self) => self -> IO (Maybe MediaKeyError)
mediaKeySessionGetError self
  = (ghcjs_dom_media_key_session_get_error
       (unMediaKeySession (toMediaKeySession self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        ghcjs_dom_media_key_session_get_key_system ::
        JSRef MediaKeySession -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.keySystem Mozilla WebKitMediaKeySession.keySystem documentation> 
mediaKeySessionGetKeySystem ::
                            (IsMediaKeySession self, FromJSString result) => self -> IO result
mediaKeySessionGetKeySystem self
  = fromJSString <$>
      (ghcjs_dom_media_key_session_get_key_system
         (unMediaKeySession (toMediaKeySession self)))
 
foreign import javascript unsafe "$1[\"sessionId\"]"
        ghcjs_dom_media_key_session_get_session_id ::
        JSRef MediaKeySession -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.sessionId Mozilla WebKitMediaKeySession.sessionId documentation> 
mediaKeySessionGetSessionId ::
                            (IsMediaKeySession self, FromJSString result) => self -> IO result
mediaKeySessionGetSessionId self
  = fromJSString <$>
      (ghcjs_dom_media_key_session_get_session_id
         (unMediaKeySession (toMediaKeySession self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeyadded Mozilla WebKitMediaKeySession.onwebkitkeyadded documentation> 
mediaKeySessionOnwebkitkeyadded ::
                                (IsMediaKeySession self) => Signal self (EventM UIEvent self ())
mediaKeySessionOnwebkitkeyadded = (connect "webkitkeyadded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeyerror Mozilla WebKitMediaKeySession.onwebkitkeyerror documentation> 
mediaKeySessionOnwebkitkeyerror ::
                                (IsMediaKeySession self) => Signal self (EventM UIEvent self ())
mediaKeySessionOnwebkitkeyerror = (connect "webkitkeyerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeymessage Mozilla WebKitMediaKeySession.onwebkitkeymessage documentation> 
mediaKeySessionOnwebkitkeymessage ::
                                  (IsMediaKeySession self) => Signal self (EventM UIEvent self ())
mediaKeySessionOnwebkitkeymessage = (connect "webkitkeymessage")
#else
module GHCJS.DOM.MediaKeySession (
  ) where
#endif
