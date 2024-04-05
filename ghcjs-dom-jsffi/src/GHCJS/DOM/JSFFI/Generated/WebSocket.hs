{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebSocket
       (js_newWebSocket, newWebSocket, js_newWebSocket', newWebSocket',
        js_send, send, js_sendView, sendView, js_sendBlob, sendBlob,
        js_sendString, sendString, js_close, close, pattern CONNECTING,
        pattern OPEN, pattern CLOSING, pattern CLOSED, js_getUrl, getUrl,
        js_getReadyState, getReadyState, js_getBufferedAmount,
        getBufferedAmount, open, message, error, closeEvent,
        js_getProtocol, getProtocol, getProtocolUnsafe,
        getProtocolUnchecked, js_getExtensions, getExtensions,
        getExtensionsUnsafe, getExtensionsUnchecked, js_setBinaryType,
        setBinaryType, js_getBinaryType, getBinaryType, WebSocket(..),
        gTypeWebSocket)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe "new window[\"WebSocket\"]($1, $2)"
        js_newWebSocket :: JSString -> JSVal -> IO WebSocket

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation> 
newWebSocket ::
             (MonadIO m, ToJSString url, ToJSString protocols) =>
               url -> [protocols] -> m WebSocket
newWebSocket url protocols
  = liftIO
      (toJSVal protocols >>=
         \ protocols' -> js_newWebSocket (toJSString url) protocols')
 
foreign import javascript safe "new window[\"WebSocket\"]($1, $2)"
        js_newWebSocket' :: JSString -> JSString -> IO WebSocket

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket Mozilla WebSocket documentation> 
newWebSocket' ::
              (MonadIO m, ToJSString url, ToJSString protocol) =>
                url -> protocol -> m WebSocket
newWebSocket' url protocol
  = liftIO (js_newWebSocket' (toJSString url) (toJSString protocol))
 
foreign import javascript safe "$1[\"send\"]($2)" js_send ::
        WebSocket -> ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
send ::
     (MonadIO m, IsArrayBuffer data') => WebSocket -> data' -> m ()
send self data' = liftIO (js_send self (toArrayBuffer data'))
 
foreign import javascript safe "$1[\"send\"]($2)" js_sendView ::
        WebSocket -> ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
sendView ::
         (MonadIO m, IsArrayBufferView data') => WebSocket -> data' -> m ()
sendView self data'
  = liftIO (js_sendView self (toArrayBufferView data'))
 
foreign import javascript safe "$1[\"send\"]($2)" js_sendBlob ::
        WebSocket -> Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
sendBlob :: (MonadIO m, IsBlob data') => WebSocket -> data' -> m ()
sendBlob self data' = liftIO (js_sendBlob self (toBlob data'))
 
foreign import javascript safe "$1[\"send\"]($2)" js_sendString ::
        WebSocket -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.send Mozilla WebSocket.send documentation> 
sendString ::
           (MonadIO m, ToJSString data') => WebSocket -> data' -> m ()
sendString self data'
  = liftIO (js_sendString self (toJSString data'))
 
foreign import javascript safe "$1[\"close\"]($2, $3)" js_close ::
        WebSocket -> Optional Word -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.close Mozilla WebSocket.close documentation> 
close ::
      (MonadIO m, ToJSString reason) =>
        WebSocket -> Maybe Word -> Maybe reason -> m ()
close self code reason
  = liftIO
      (js_close self (maybeToOptional code) (toOptionalJSString reason))
pattern CONNECTING = 0
pattern OPEN = 1
pattern CLOSING = 2
pattern CLOSED = 3
 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.url Mozilla WebSocket.url documentation> 
getUrl :: (MonadIO m, FromJSString result) => WebSocket -> m result
getUrl self = liftIO (fromJSString <$> (js_getUrl self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: WebSocket -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.readyState Mozilla WebSocket.readyState documentation> 
getReadyState :: (MonadIO m) => WebSocket -> m Word
getReadyState self = liftIO (js_getReadyState self)
 
foreign import javascript unsafe "$1[\"bufferedAmount\"]"
        js_getBufferedAmount :: WebSocket -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.bufferedAmount Mozilla WebSocket.bufferedAmount documentation> 
getBufferedAmount :: (MonadIO m) => WebSocket -> m Word
getBufferedAmount self = liftIO (js_getBufferedAmount self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onopen Mozilla WebSocket.onopen documentation> 
open :: EventName WebSocket Event
open = unsafeEventNameAsync (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onmessage Mozilla WebSocket.onmessage documentation> 
message :: EventName WebSocket MessageEvent
message = unsafeEventNameAsync (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onerror Mozilla WebSocket.onerror documentation> 
error :: EventName WebSocket UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.onclose Mozilla WebSocket.onclose documentation> 
closeEvent :: EventName WebSocket CloseEvent
closeEvent = unsafeEventNameAsync (toJSString "close")
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: WebSocket -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.protocol Mozilla WebSocket.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => WebSocket -> m (Maybe result)
getProtocol self
  = liftIO (fromMaybeJSString <$> (js_getProtocol self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.protocol Mozilla WebSocket.protocol documentation> 
getProtocolUnsafe ::
                  (MonadIO m, HasCallStack, FromJSString result) =>
                    WebSocket -> m result
getProtocolUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getProtocol self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.protocol Mozilla WebSocket.protocol documentation> 
getProtocolUnchecked ::
                     (MonadIO m, FromJSString result) => WebSocket -> m result
getProtocolUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getProtocol self))
 
foreign import javascript unsafe "$1[\"extensions\"]"
        js_getExtensions :: WebSocket -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.extensions Mozilla WebSocket.extensions documentation> 
getExtensions ::
              (MonadIO m, FromJSString result) => WebSocket -> m (Maybe result)
getExtensions self
  = liftIO (fromMaybeJSString <$> (js_getExtensions self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.extensions Mozilla WebSocket.extensions documentation> 
getExtensionsUnsafe ::
                    (MonadIO m, HasCallStack, FromJSString result) =>
                      WebSocket -> m result
getExtensionsUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getExtensions self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.extensions Mozilla WebSocket.extensions documentation> 
getExtensionsUnchecked ::
                       (MonadIO m, FromJSString result) => WebSocket -> m result
getExtensionsUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getExtensions self))
 
foreign import javascript safe "$1[\"binaryType\"] = $2;"
        js_setBinaryType :: WebSocket -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.binaryType Mozilla WebSocket.binaryType documentation> 
setBinaryType ::
              (MonadIO m, ToJSString val) => WebSocket -> val -> m ()
setBinaryType self val
  = liftIO (js_setBinaryType self (toJSString val))
 
foreign import javascript unsafe "$1[\"binaryType\"]"
        js_getBinaryType :: WebSocket -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebSocket.binaryType Mozilla WebSocket.binaryType documentation> 
getBinaryType ::
              (MonadIO m, FromJSString result) => WebSocket -> m result
getBinaryType self
  = liftIO (fromJSString <$> (js_getBinaryType self))