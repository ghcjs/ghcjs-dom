{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaKeySession
       (ghcjs_dom_media_key_session_update, mediaKeySessionUpdate,
        ghcjs_dom_media_key_session_close, mediaKeySessionClose,
        ghcjs_dom_media_key_session_get_error, mediaKeySessionGetError,
        ghcjs_dom_media_key_session_get_key_system,
        mediaKeySessionGetKeySystem,
        ghcjs_dom_media_key_session_get_session_id,
        mediaKeySessionGetSessionId, mediaKeySessionWebKitKeyAdded,
        mediaKeySessionWebKitKeyError, mediaKeySessionWebKitKeyMessage,
        MediaKeySession, IsMediaKeySession, castToMediaKeySession,
        gTypeMediaKeySession, toMediaKeySession)
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

 
foreign import javascript unsafe "$1[\"update\"]($2)"
        ghcjs_dom_media_key_session_update ::
        JSRef MediaKeySession -> JSRef Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.update Mozilla WebKitMediaKeySession.update documentation> 
mediaKeySessionUpdate ::
                      (MonadIO m, IsMediaKeySession self, IsUint8Array key) =>
                        self -> Maybe key -> m ()
mediaKeySessionUpdate self key
  = liftIO
      (ghcjs_dom_media_key_session_update
         (unMediaKeySession (toMediaKeySession self))
         (maybe jsNull (unUint8Array . toUint8Array) key))
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_media_key_session_close :: JSRef MediaKeySession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.close Mozilla WebKitMediaKeySession.close documentation> 
mediaKeySessionClose ::
                     (MonadIO m, IsMediaKeySession self) => self -> m ()
mediaKeySessionClose self
  = liftIO
      (ghcjs_dom_media_key_session_close
         (unMediaKeySession (toMediaKeySession self)))
 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_media_key_session_get_error ::
        JSRef MediaKeySession -> IO (JSRef MediaKeyError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.error Mozilla WebKitMediaKeySession.error documentation> 
mediaKeySessionGetError ::
                        (MonadIO m, IsMediaKeySession self) =>
                          self -> m (Maybe MediaKeyError)
mediaKeySessionGetError self
  = liftIO
      ((ghcjs_dom_media_key_session_get_error
          (unMediaKeySession (toMediaKeySession self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        ghcjs_dom_media_key_session_get_key_system ::
        JSRef MediaKeySession -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.keySystem Mozilla WebKitMediaKeySession.keySystem documentation> 
mediaKeySessionGetKeySystem ::
                            (MonadIO m, IsMediaKeySession self, FromJSString result) =>
                              self -> m result
mediaKeySessionGetKeySystem self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_key_session_get_key_system
            (unMediaKeySession (toMediaKeySession self))))
 
foreign import javascript unsafe "$1[\"sessionId\"]"
        ghcjs_dom_media_key_session_get_session_id ::
        JSRef MediaKeySession -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.sessionId Mozilla WebKitMediaKeySession.sessionId documentation> 
mediaKeySessionGetSessionId ::
                            (MonadIO m, IsMediaKeySession self, FromJSString result) =>
                              self -> m result
mediaKeySessionGetSessionId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_media_key_session_get_session_id
            (unMediaKeySession (toMediaKeySession self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.webKitKeyAdded Mozilla WebKitMediaKeySession.webKitKeyAdded documentation> 
mediaKeySessionWebKitKeyAdded ::
                              (IsMediaKeySession self, IsEventTarget self) =>
                                EventName self Event
mediaKeySessionWebKitKeyAdded
  = unsafeEventName (toJSString "webkitkeyadded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.webKitKeyError Mozilla WebKitMediaKeySession.webKitKeyError documentation> 
mediaKeySessionWebKitKeyError ::
                              (IsMediaKeySession self, IsEventTarget self) =>
                                EventName self Event
mediaKeySessionWebKitKeyError
  = unsafeEventName (toJSString "webkitkeyerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.webKitKeyMessage Mozilla WebKitMediaKeySession.webKitKeyMessage documentation> 
mediaKeySessionWebKitKeyMessage ::
                                (IsMediaKeySession self, IsEventTarget self) =>
                                  EventName self Event
mediaKeySessionWebKitKeyMessage
  = unsafeEventName (toJSString "webkitkeymessage")
#else
module GHCJS.DOM.MediaKeySession (
  ) where
#endif
