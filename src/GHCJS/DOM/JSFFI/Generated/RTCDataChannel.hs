{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCDataChannel
       (js_send, send, js_sendView, sendView, js_sendBlob, sendBlob,
        js_sendString, sendString, js_close, close, js_getLabel, getLabel,
        js_getOrdered, getOrdered, js_getMaxRetransmitTime,
        getMaxRetransmitTime, js_getMaxRetransmits, getMaxRetransmits,
        js_getProtocol, getProtocol, js_getNegotiated, getNegotiated,
        js_getId, getId, js_getReadyState, getReadyState,
        js_getBufferedAmount, getBufferedAmount, js_setBinaryType,
        setBinaryType, js_getBinaryType, getBinaryType, open, error,
        closeEvent, message, RTCDataChannel, castToRTCDataChannel,
        gTypeRTCDataChannel)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"send\"]($2)" js_send ::
        RTCDataChannel -> Nullable ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
send ::
     (MonadIO m, IsArrayBuffer data') =>
       RTCDataChannel -> Maybe data' -> m ()
send self data'
  = liftIO
      (js_send (self) (maybeToNullable (fmap toArrayBuffer data')))
 
foreign import javascript unsafe "$1[\"send\"]($2)" js_sendView ::
        RTCDataChannel -> Nullable ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendView ::
         (MonadIO m, IsArrayBufferView data') =>
           RTCDataChannel -> Maybe data' -> m ()
sendView self data'
  = liftIO
      (js_sendView (self)
         (maybeToNullable (fmap toArrayBufferView data')))
 
foreign import javascript unsafe "$1[\"send\"]($2)" js_sendBlob ::
        RTCDataChannel -> Nullable Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendBlob ::
         (MonadIO m, IsBlob data') => RTCDataChannel -> Maybe data' -> m ()
sendBlob self data'
  = liftIO (js_sendBlob (self) (maybeToNullable (fmap toBlob data')))
 
foreign import javascript unsafe "$1[\"send\"]($2)" js_sendString
        :: RTCDataChannel -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendString ::
           (MonadIO m, ToJSString data') => RTCDataChannel -> data' -> m ()
sendString self data'
  = liftIO (js_sendString (self) (toJSString data'))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        RTCDataChannel -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.close Mozilla RTCDataChannel.close documentation> 
close :: (MonadIO m) => RTCDataChannel -> m ()
close self = liftIO (js_close (self))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.label Mozilla RTCDataChannel.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => RTCDataChannel -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel (self)))
 
foreign import javascript unsafe "($1[\"ordered\"] ? 1 : 0)"
        js_getOrdered :: RTCDataChannel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.ordered Mozilla RTCDataChannel.ordered documentation> 
getOrdered :: (MonadIO m) => RTCDataChannel -> m Bool
getOrdered self = liftIO (js_getOrdered (self))
 
foreign import javascript unsafe "$1[\"maxRetransmitTime\"]"
        js_getMaxRetransmitTime :: RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmitTime Mozilla RTCDataChannel.maxRetransmitTime documentation> 
getMaxRetransmitTime :: (MonadIO m) => RTCDataChannel -> m Word
getMaxRetransmitTime self = liftIO (js_getMaxRetransmitTime (self))
 
foreign import javascript unsafe "$1[\"maxRetransmits\"]"
        js_getMaxRetransmits :: RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
getMaxRetransmits :: (MonadIO m) => RTCDataChannel -> m Word
getMaxRetransmits self = liftIO (js_getMaxRetransmits (self))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.protocol Mozilla RTCDataChannel.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => RTCDataChannel -> m result
getProtocol self
  = liftIO (fromJSString <$> (js_getProtocol (self)))
 
foreign import javascript unsafe "($1[\"negotiated\"] ? 1 : 0)"
        js_getNegotiated :: RTCDataChannel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.negotiated Mozilla RTCDataChannel.negotiated documentation> 
getNegotiated :: (MonadIO m) => RTCDataChannel -> m Bool
getNegotiated self = liftIO (js_getNegotiated (self))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.id Mozilla RTCDataChannel.id documentation> 
getId :: (MonadIO m) => RTCDataChannel -> m Word
getId self = liftIO (js_getId (self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.readyState Mozilla RTCDataChannel.readyState documentation> 
getReadyState ::
              (MonadIO m, FromJSString result) => RTCDataChannel -> m result
getReadyState self
  = liftIO (fromJSString <$> (js_getReadyState (self)))
 
foreign import javascript unsafe "$1[\"bufferedAmount\"]"
        js_getBufferedAmount :: RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmount Mozilla RTCDataChannel.bufferedAmount documentation> 
getBufferedAmount :: (MonadIO m) => RTCDataChannel -> m Word
getBufferedAmount self = liftIO (js_getBufferedAmount (self))
 
foreign import javascript unsafe "$1[\"binaryType\"] = $2;"
        js_setBinaryType :: RTCDataChannel -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
setBinaryType ::
              (MonadIO m, ToJSString val) => RTCDataChannel -> val -> m ()
setBinaryType self val
  = liftIO (js_setBinaryType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"binaryType\"]"
        js_getBinaryType :: RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
getBinaryType ::
              (MonadIO m, FromJSString result) => RTCDataChannel -> m result
getBinaryType self
  = liftIO (fromJSString <$> (js_getBinaryType (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onopen Mozilla RTCDataChannel.onopen documentation> 
open :: EventName RTCDataChannel Event
open = unsafeEventName (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onerror Mozilla RTCDataChannel.onerror documentation> 
error :: EventName RTCDataChannel UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onclose Mozilla RTCDataChannel.onclose documentation> 
closeEvent :: EventName RTCDataChannel Event
closeEvent = unsafeEventName (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onmessage Mozilla RTCDataChannel.onmessage documentation> 
message :: EventName RTCDataChannel MessageEvent
message = unsafeEventName (toJSString "message")