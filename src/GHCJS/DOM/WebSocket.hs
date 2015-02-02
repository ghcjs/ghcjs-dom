{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebSocket
       (ghcjs_dom_web_socket_new, webSocketNew, ghcjs_dom_web_socket_send,
        webSocketSend, ghcjs_dom_web_socket_sendView, webSocketSendView,
        ghcjs_dom_web_socket_sendBlob, webSocketSendBlob,
        ghcjs_dom_web_socket_sendString, webSocketSendString,
        ghcjs_dom_web_socket_close, webSocketClose,
        ghcjs_dom_web_socket_dispatch_event, webSocketDispatchEvent,
        cCONNECTING, cOPEN, cCLOSING, cCLOSED,
        ghcjs_dom_web_socket_get_url, webSocketGetUrl,
        ghcjs_dom_web_socket_get_ready_state, webSocketGetReadyState,
        ghcjs_dom_web_socket_get_buffered_amount,
        webSocketGetBufferedAmount, webSocketOnopen, webSocketOnmessage,
        webSocketOnerror, webSocketOnclose,
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
             (ToJSString url, ToJSString protocols) =>
               url -> Maybe [protocols] -> IO WebSocket
webSocketNew url protocols
  = toJSRef protocols >>=
      \ protocols' ->
        ghcjs_dom_web_socket_new (toJSString url) protocols'
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe
        "new window[\"WebSocket\"]($1, $2)" ghcjs_dom_web_socket_new' ::
        JSString -> JSString -> IO (JSRef WebSocket)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation> 
webSocketNew' ::
              (ToJSString url, ToJSString protocol) =>
                url -> protocol -> IO WebSocket
webSocketNew' url protocol
  = ghcjs_dom_web_socket_new' (toJSString url) (toJSString protocol)
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_web_socket_send ::
        JSRef WebSocket -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
webSocketSend ::
              (IsWebSocket self, IsArrayBuffer data') =>
                self -> Maybe data' -> IO ()
webSocketSend self data'
  = ghcjs_dom_web_socket_send (unWebSocket (toWebSocket self))
      (maybe jsNull (unArrayBuffer . toArrayBuffer) data')
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_web_socket_sendView ::
        JSRef WebSocket -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.sendView Mozilla WebSocket.sendView documentation> 
webSocketSendView ::
                  (IsWebSocket self, IsArrayBufferView data') =>
                    self -> Maybe data' -> IO ()
webSocketSendView self data'
  = ghcjs_dom_web_socket_sendView (unWebSocket (toWebSocket self))
      (maybe jsNull (unArrayBufferView . toArrayBufferView) data')
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_web_socket_sendBlob ::
        JSRef WebSocket -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.sendBlob Mozilla WebSocket.sendBlob documentation> 
webSocketSendBlob ::
                  (IsWebSocket self, IsBlob data') => self -> Maybe data' -> IO ()
webSocketSendBlob self data'
  = ghcjs_dom_web_socket_sendBlob (unWebSocket (toWebSocket self))
      (maybe jsNull (unBlob . toBlob) data')
 
foreign import javascript unsafe "$1[\"send\"]($2)"
        ghcjs_dom_web_socket_sendString ::
        JSRef WebSocket -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.sendString Mozilla WebSocket.sendString documentation> 
webSocketSendString ::
                    (IsWebSocket self, ToJSString data') => self -> data' -> IO ()
webSocketSendString self data'
  = ghcjs_dom_web_socket_sendString (unWebSocket (toWebSocket self))
      (toJSString data')
 
foreign import javascript unsafe "$1[\"close\"]($2, $3)"
        ghcjs_dom_web_socket_close ::
        JSRef WebSocket -> Word -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.close Mozilla WebSocket.close documentation> 
webSocketClose ::
               (IsWebSocket self, ToJSString reason) =>
                 self -> Word -> reason -> IO ()
webSocketClose self code reason
  = ghcjs_dom_web_socket_close (unWebSocket (toWebSocket self)) code
      (toJSString reason)
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_web_socket_dispatch_event ::
        JSRef WebSocket -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.dispatchEvent Mozilla WebSocket.dispatchEvent documentation> 
webSocketDispatchEvent ::
                       (IsWebSocket self, IsEvent evt) => self -> Maybe evt -> IO Bool
webSocketDispatchEvent self evt
  = ghcjs_dom_web_socket_dispatch_event
      (unWebSocket (toWebSocket self))
      (maybe jsNull (unEvent . toEvent) evt)
cCONNECTING = 0
cOPEN = 1
cCLOSING = 2
cCLOSED = 3
 
foreign import javascript unsafe "$1[\"url\"]"
        ghcjs_dom_web_socket_get_url :: JSRef WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.url Mozilla WebSocket.url documentation> 
webSocketGetUrl ::
                (IsWebSocket self, FromJSString result) => self -> IO result
webSocketGetUrl self
  = fromJSString <$>
      (ghcjs_dom_web_socket_get_url (unWebSocket (toWebSocket self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_web_socket_get_ready_state :: JSRef WebSocket -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.readyState Mozilla WebSocket.readyState documentation> 
webSocketGetReadyState :: (IsWebSocket self) => self -> IO Word
webSocketGetReadyState self
  = ghcjs_dom_web_socket_get_ready_state
      (unWebSocket (toWebSocket self))
 
foreign import javascript unsafe "$1[\"bufferedAmount\"]"
        ghcjs_dom_web_socket_get_buffered_amount ::
        JSRef WebSocket -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.bufferedAmount Mozilla WebSocket.bufferedAmount documentation> 
webSocketGetBufferedAmount :: (IsWebSocket self) => self -> IO Word
webSocketGetBufferedAmount self
  = ghcjs_dom_web_socket_get_buffered_amount
      (unWebSocket (toWebSocket self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onopen Mozilla WebSocket.onopen documentation> 
webSocketOnopen ::
                (IsWebSocket self) => Signal self (EventM UIEvent self ())
webSocketOnopen = (connect "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onmessage Mozilla WebSocket.onmessage documentation> 
webSocketOnmessage ::
                   (IsWebSocket self) => Signal self (EventM UIEvent self ())
webSocketOnmessage = (connect "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onerror Mozilla WebSocket.onerror documentation> 
webSocketOnerror ::
                 (IsWebSocket self) => Signal self (EventM UIEvent self ())
webSocketOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onclose Mozilla WebSocket.onclose documentation> 
webSocketOnclose ::
                 (IsWebSocket self) => Signal self (EventM UIEvent self ())
webSocketOnclose = (connect "close")
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_web_socket_get_protocol :: JSRef WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.protocol Mozilla WebSocket.protocol documentation> 
webSocketGetProtocol ::
                     (IsWebSocket self, FromJSString result) => self -> IO result
webSocketGetProtocol self
  = fromJSString <$>
      (ghcjs_dom_web_socket_get_protocol
         (unWebSocket (toWebSocket self)))
 
foreign import javascript unsafe "$1[\"extensions\"]"
        ghcjs_dom_web_socket_get_extensions ::
        JSRef WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.extensions Mozilla WebSocket.extensions documentation> 
webSocketGetExtensions ::
                       (IsWebSocket self, FromJSString result) => self -> IO result
webSocketGetExtensions self
  = fromJSString <$>
      (ghcjs_dom_web_socket_get_extensions
         (unWebSocket (toWebSocket self)))
 
foreign import javascript unsafe "$1[\"binaryType\"] = $2;"
        ghcjs_dom_web_socket_set_binary_type ::
        JSRef WebSocket -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.binaryType Mozilla WebSocket.binaryType documentation> 
webSocketSetBinaryType ::
                       (IsWebSocket self, ToJSString val) => self -> val -> IO ()
webSocketSetBinaryType self val
  = ghcjs_dom_web_socket_set_binary_type
      (unWebSocket (toWebSocket self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"binaryType\"]"
        ghcjs_dom_web_socket_get_binary_type ::
        JSRef WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.binaryType Mozilla WebSocket.binaryType documentation> 
webSocketGetBinaryType ::
                       (IsWebSocket self, FromJSString result) => self -> IO result
webSocketGetBinaryType self
  = fromJSString <$>
      (ghcjs_dom_web_socket_get_binary_type
         (unWebSocket (toWebSocket self)))
#else
module GHCJS.DOM.WebSocket (
  ) where
#endif
