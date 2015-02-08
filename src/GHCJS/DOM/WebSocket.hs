{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebSocket
       (ghcjs_dom_web_socket_new, webSocketNew, ghcjs_dom_web_socket_send,
        webSocketSend, ghcjs_dom_web_socket_sendView, webSocketSendView,
        ghcjs_dom_web_socket_sendBlob, webSocketSendBlob,
        ghcjs_dom_web_socket_sendString, webSocketSendString,
        ghcjs_dom_web_socket_close, webSocketClose, cCONNECTING, cOPEN,
        cCLOSING, cCLOSED, ghcjs_dom_web_socket_get_url, webSocketGetUrl,
        ghcjs_dom_web_socket_get_ready_state, webSocketGetReadyState,
        ghcjs_dom_web_socket_get_buffered_amount,
        webSocketGetBufferedAmount, webSocketOpen, webSocketMessage,
        webSocketError, webSocketCloseEvent,
        ghcjs_dom_web_socket_get_protocol, webSocketGetProtocol,
        ghcjs_dom_web_socket_get_extensions, webSocketGetExtensions,
        ghcjs_dom_web_socket_set_binary_type, webSocketSetBinaryType,
        ghcjs_dom_web_socket_get_binary_type, webSocketGetBinaryType,
        WebSocket, IsWebSocket, castToWebSocket, gTypeWebSocket,
        toWebSocket)
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

 
foreign import javascript unsafe
        "new window[\"WebSocket\"]($1, $2)" ghcjs_dom_web_socket_new ::
        JSString -> JSRef (Maybe [protocols]) -> IO (JSRef WebSocket)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation> 
webSocketNew ::
             (MonadIO m, ToJSString url, ToJSString protocols) =>
               url -> Maybe [protocols] -> m WebSocket
webSocketNew url protocols
  = liftIO
      (toJSRef protocols >>=
         \ protocols' ->
           ghcjs_dom_web_socket_new (toJSString url) protocols'
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"WebSocket\"]($1, $2)" ghcjs_dom_web_socket_new' ::
        JSString -> JSString -> IO (JSRef WebSocket)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation> 
webSocketNew' ::
              (MonadIO m, ToJSString url, ToJSString protocol) =>
                url -> protocol -> m WebSocket
webSocketNew' url protocol
  = liftIO
      (ghcjs_dom_web_socket_new' (toJSString url) (toJSString protocol)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_web_socket_send ::
        JSRef WebSocket -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
webSocketSend ::
              (MonadIO m, IsWebSocket self, IsArrayBuffer data') =>
                self -> Maybe data' -> m ()
webSocketSend self data'
  = liftIO
      (ghcjs_dom_web_socket_send (unWebSocket (toWebSocket self))
         (maybe jsNull (unArrayBuffer . toArrayBuffer) data'))
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_web_socket_sendView ::
        JSRef WebSocket -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.sendView Mozilla WebSocket.sendView documentation> 
webSocketSendView ::
                  (MonadIO m, IsWebSocket self, IsArrayBufferView data') =>
                    self -> Maybe data' -> m ()
webSocketSendView self data'
  = liftIO
      (ghcjs_dom_web_socket_sendView (unWebSocket (toWebSocket self))
         (maybe jsNull (unArrayBufferView . toArrayBufferView) data'))
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_web_socket_sendBlob ::
        JSRef WebSocket -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.sendBlob Mozilla WebSocket.sendBlob documentation> 
webSocketSendBlob ::
                  (MonadIO m, IsWebSocket self, IsBlob data') =>
                    self -> Maybe data' -> m ()
webSocketSendBlob self data'
  = liftIO
      (ghcjs_dom_web_socket_sendBlob (unWebSocket (toWebSocket self))
         (maybe jsNull (unBlob . toBlob) data'))
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_web_socket_sendString ::
        JSRef WebSocket -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.sendString Mozilla WebSocket.sendString documentation> 
webSocketSendString ::
                    (MonadIO m, IsWebSocket self, ToJSString data') =>
                      self -> data' -> m ()
webSocketSendString self data'
  = liftIO
      (ghcjs_dom_web_socket_sendString (unWebSocket (toWebSocket self))
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"close\"]($2, $3)"
        ghcjs_dom_web_socket_close ::
        JSRef WebSocket -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.close Mozilla WebSocket.close documentation> 
webSocketClose ::
               (MonadIO m, IsWebSocket self, ToJSString reason) =>
                 self -> Word -> reason -> m ()
webSocketClose self code reason
  = liftIO
      (ghcjs_dom_web_socket_close (unWebSocket (toWebSocket self)) code
         (toJSString reason))
cCONNECTING = 0
cOPEN = 1
cCLOSING = 2
cCLOSED = 3
 
foreign import javascript unsafe "$1[\"url\"]"
        ghcjs_dom_web_socket_get_url :: JSRef WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.url Mozilla WebSocket.url documentation> 
webSocketGetUrl ::
                (MonadIO m, IsWebSocket self, FromJSString result) =>
                  self -> m result
webSocketGetUrl self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_web_socket_get_url (unWebSocket (toWebSocket self))))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_web_socket_get_ready_state :: JSRef WebSocket -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.readyState Mozilla WebSocket.readyState documentation> 
webSocketGetReadyState ::
                       (MonadIO m, IsWebSocket self) => self -> m Word
webSocketGetReadyState self
  = liftIO
      (ghcjs_dom_web_socket_get_ready_state
         (unWebSocket (toWebSocket self)))
 
foreign import javascript unsafe "$1[\"bufferedAmount\"]"
        ghcjs_dom_web_socket_get_buffered_amount ::
        JSRef WebSocket -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.bufferedAmount Mozilla WebSocket.bufferedAmount documentation> 
webSocketGetBufferedAmount ::
                           (MonadIO m, IsWebSocket self) => self -> m Word
webSocketGetBufferedAmount self
  = liftIO
      (ghcjs_dom_web_socket_get_buffered_amount
         (unWebSocket (toWebSocket self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.open Mozilla WebSocket.open documentation> 
webSocketOpen ::
              (IsWebSocket self, IsEventTarget self) => EventName self Event
webSocketOpen = unsafeEventName (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.message Mozilla WebSocket.message documentation> 
webSocketMessage ::
                 (IsWebSocket self, IsEventTarget self) =>
                   EventName self MessageEvent
webSocketMessage = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.error Mozilla WebSocket.error documentation> 
webSocketError ::
               (IsWebSocket self, IsEventTarget self) => EventName self UIEvent
webSocketError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.closeEvent Mozilla WebSocket.closeEvent documentation> 
webSocketCloseEvent ::
                    (IsWebSocket self, IsEventTarget self) => EventName self Event
webSocketCloseEvent = unsafeEventName (toJSString "close")
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_web_socket_get_protocol :: JSRef WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.protocol Mozilla WebSocket.protocol documentation> 
webSocketGetProtocol ::
                     (MonadIO m, IsWebSocket self, FromJSString result) =>
                       self -> m result
webSocketGetProtocol self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_web_socket_get_protocol
            (unWebSocket (toWebSocket self))))
 
foreign import javascript unsafe "$1[\"extensions\"]"
        ghcjs_dom_web_socket_get_extensions ::
        JSRef WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.extensions Mozilla WebSocket.extensions documentation> 
webSocketGetExtensions ::
                       (MonadIO m, IsWebSocket self, FromJSString result) =>
                         self -> m result
webSocketGetExtensions self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_web_socket_get_extensions
            (unWebSocket (toWebSocket self))))
 
foreign import javascript unsafe "$1[\"binaryType\"] = $2;"
        ghcjs_dom_web_socket_set_binary_type ::
        JSRef WebSocket -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.binaryType Mozilla WebSocket.binaryType documentation> 
webSocketSetBinaryType ::
                       (MonadIO m, IsWebSocket self, ToJSString val) =>
                         self -> val -> m ()
webSocketSetBinaryType self val
  = liftIO
      (ghcjs_dom_web_socket_set_binary_type
         (unWebSocket (toWebSocket self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"binaryType\"]"
        ghcjs_dom_web_socket_get_binary_type ::
        JSRef WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.binaryType Mozilla WebSocket.binaryType documentation> 
webSocketGetBinaryType ::
                       (MonadIO m, IsWebSocket self, FromJSString result) =>
                         self -> m result
webSocketGetBinaryType self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_web_socket_get_binary_type
            (unWebSocket (toWebSocket self))))
#else
module GHCJS.DOM.WebSocket (
  ) where
#endif
