{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeyEvent
       (ghcjs_dom_media_key_event_get_key_system,
        mediaKeyEventGetKeySystem,
        ghcjs_dom_media_key_event_get_session_id,
        mediaKeyEventGetSessionId, ghcjs_dom_media_key_event_get_init_data,
        mediaKeyEventGetInitData, ghcjs_dom_media_key_event_get_message,
        mediaKeyEventGetMessage, ghcjs_dom_media_key_event_get_default_url,
        mediaKeyEventGetDefaultURL,
        ghcjs_dom_media_key_event_get_error_code,
        mediaKeyEventGetErrorCode,
        ghcjs_dom_media_key_event_get_system_code,
        mediaKeyEventGetSystemCode, MediaKeyEvent, IsMediaKeyEvent,
        castToMediaKeyEvent, gTypeMediaKeyEvent, toMediaKeyEvent)
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

 
foreign import javascript unsafe "$1[\"keySystem\"]"
        ghcjs_dom_media_key_event_get_key_system ::
        JSRef MediaKeyEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.keySystem Mozilla MediaKeyEvent.keySystem documentation> 
mediaKeyEventGetKeySystem ::
                          (IsMediaKeyEvent self, FromJSString result) => self -> IO result
mediaKeyEventGetKeySystem self
  = fromJSString <$>
      (ghcjs_dom_media_key_event_get_key_system
         (unMediaKeyEvent (toMediaKeyEvent self)))
 
foreign import javascript unsafe "$1[\"sessionId\"]"
        ghcjs_dom_media_key_event_get_session_id ::
        JSRef MediaKeyEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.sessionId Mozilla MediaKeyEvent.sessionId documentation> 
mediaKeyEventGetSessionId ::
                          (IsMediaKeyEvent self, FromJSString result) => self -> IO result
mediaKeyEventGetSessionId self
  = fromJSString <$>
      (ghcjs_dom_media_key_event_get_session_id
         (unMediaKeyEvent (toMediaKeyEvent self)))
 
foreign import javascript unsafe "$1[\"initData\"]"
        ghcjs_dom_media_key_event_get_init_data ::
        JSRef MediaKeyEvent -> IO (JSRef Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.initData Mozilla MediaKeyEvent.initData documentation> 
mediaKeyEventGetInitData ::
                         (IsMediaKeyEvent self) => self -> IO (Maybe Uint8Array)
mediaKeyEventGetInitData self
  = (ghcjs_dom_media_key_event_get_init_data
       (unMediaKeyEvent (toMediaKeyEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"message\"]"
        ghcjs_dom_media_key_event_get_message ::
        JSRef MediaKeyEvent -> IO (JSRef Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.message Mozilla MediaKeyEvent.message documentation> 
mediaKeyEventGetMessage ::
                        (IsMediaKeyEvent self) => self -> IO (Maybe Uint8Array)
mediaKeyEventGetMessage self
  = (ghcjs_dom_media_key_event_get_message
       (unMediaKeyEvent (toMediaKeyEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"defaultURL\"]"
        ghcjs_dom_media_key_event_get_default_url ::
        JSRef MediaKeyEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.defaultURL Mozilla MediaKeyEvent.defaultURL documentation> 
mediaKeyEventGetDefaultURL ::
                           (IsMediaKeyEvent self, FromJSString result) => self -> IO result
mediaKeyEventGetDefaultURL self
  = fromJSString <$>
      (ghcjs_dom_media_key_event_get_default_url
         (unMediaKeyEvent (toMediaKeyEvent self)))
 
foreign import javascript unsafe "$1[\"errorCode\"]"
        ghcjs_dom_media_key_event_get_error_code ::
        JSRef MediaKeyEvent -> IO (JSRef MediaKeyError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.errorCode Mozilla MediaKeyEvent.errorCode documentation> 
mediaKeyEventGetErrorCode ::
                          (IsMediaKeyEvent self) => self -> IO (Maybe MediaKeyError)
mediaKeyEventGetErrorCode self
  = (ghcjs_dom_media_key_event_get_error_code
       (unMediaKeyEvent (toMediaKeyEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"systemCode\"]"
        ghcjs_dom_media_key_event_get_system_code ::
        JSRef MediaKeyEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyEvent.systemCode Mozilla MediaKeyEvent.systemCode documentation> 
mediaKeyEventGetSystemCode ::
                           (IsMediaKeyEvent self) => self -> IO Word
mediaKeyEventGetSystemCode self
  = ghcjs_dom_media_key_event_get_system_code
      (unMediaKeyEvent (toMediaKeyEvent self))
#else
module GHCJS.DOM.MediaKeyEvent (
  ) where
#endif
