{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCDataChannel
       (js_send, send, js_sendView, sendView, js_sendBlob, sendBlob,
        js_sendString, sendString, js_close, close, js_getLabel, getLabel,
        js_getOrdered, getOrdered, js_getMaxPacketLifeTime,
        getMaxPacketLifeTime, getMaxPacketLifeTimeUnsafe,
        getMaxPacketLifeTimeUnchecked, js_getMaxRetransmits,
        getMaxRetransmits, getMaxRetransmitsUnsafe,
        getMaxRetransmitsUnchecked, js_getProtocol, getProtocol,
        js_getNegotiated, getNegotiated, js_getId, getId, getIdUnsafe,
        getIdUnchecked, js_getReadyState, getReadyState,
        js_getBufferedAmount, getBufferedAmount,
        js_setBufferedAmountLowThreshold, setBufferedAmountLowThreshold,
        js_getBufferedAmountLowThreshold, getBufferedAmountLowThreshold,
        js_setBinaryType, setBinaryType, js_getBinaryType, getBinaryType,
        open, error, closeEvent, message, bufferedamountlow,
        RTCDataChannel(..), gTypeRTCDataChannel)
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
 
foreign import javascript safe "$1[\"send\"]($2)" js_send ::
        RTCDataChannel -> ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
send ::
     (MonadIO m, IsArrayBuffer data') => RTCDataChannel -> data' -> m ()
send self data' = liftIO (js_send self (toArrayBuffer data'))
 
foreign import javascript safe "$1[\"send\"]($2)" js_sendView ::
        RTCDataChannel -> ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendView ::
         (MonadIO m, IsArrayBufferView data') =>
           RTCDataChannel -> data' -> m ()
sendView self data'
  = liftIO (js_sendView self (toArrayBufferView data'))
 
foreign import javascript safe "$1[\"send\"]($2)" js_sendBlob ::
        RTCDataChannel -> Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendBlob ::
         (MonadIO m, IsBlob data') => RTCDataChannel -> data' -> m ()
sendBlob self data' = liftIO (js_sendBlob self (toBlob data'))
 
foreign import javascript safe "$1[\"send\"]($2)" js_sendString ::
        RTCDataChannel -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.send Mozilla RTCDataChannel.send documentation> 
sendString ::
           (MonadIO m, ToJSString data') => RTCDataChannel -> data' -> m ()
sendString self data'
  = liftIO (js_sendString self (toJSString data'))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        RTCDataChannel -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.close Mozilla RTCDataChannel.close documentation> 
close :: (MonadIO m) => RTCDataChannel -> m ()
close self = liftIO (js_close self)
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.label Mozilla RTCDataChannel.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => RTCDataChannel -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel self))
 
foreign import javascript unsafe "($1[\"ordered\"] ? 1 : 0)"
        js_getOrdered :: RTCDataChannel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.ordered Mozilla RTCDataChannel.ordered documentation> 
getOrdered :: (MonadIO m) => RTCDataChannel -> m Bool
getOrdered self = liftIO (js_getOrdered self)
 
foreign import javascript unsafe "$1[\"maxPacketLifeTime\"]"
        js_getMaxPacketLifeTime :: RTCDataChannel -> IO (Nullable Word)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxPacketLifeTime Mozilla RTCDataChannel.maxPacketLifeTime documentation> 
getMaxPacketLifeTime ::
                     (MonadIO m) => RTCDataChannel -> m (Maybe Word)
getMaxPacketLifeTime self
  = liftIO (nullableToMaybe <$> (js_getMaxPacketLifeTime self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxPacketLifeTime Mozilla RTCDataChannel.maxPacketLifeTime documentation> 
getMaxPacketLifeTimeUnsafe ::
                           (MonadIO m, HasCallStack) => RTCDataChannel -> m Word
getMaxPacketLifeTimeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMaxPacketLifeTime self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxPacketLifeTime Mozilla RTCDataChannel.maxPacketLifeTime documentation> 
getMaxPacketLifeTimeUnchecked ::
                              (MonadIO m) => RTCDataChannel -> m Word
getMaxPacketLifeTimeUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getMaxPacketLifeTime self))
 
foreign import javascript unsafe "$1[\"maxRetransmits\"]"
        js_getMaxRetransmits :: RTCDataChannel -> IO (Nullable Word)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
getMaxRetransmits ::
                  (MonadIO m) => RTCDataChannel -> m (Maybe Word)
getMaxRetransmits self
  = liftIO (nullableToMaybe <$> (js_getMaxRetransmits self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
getMaxRetransmitsUnsafe ::
                        (MonadIO m, HasCallStack) => RTCDataChannel -> m Word
getMaxRetransmitsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMaxRetransmits self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.maxRetransmits Mozilla RTCDataChannel.maxRetransmits documentation> 
getMaxRetransmitsUnchecked ::
                           (MonadIO m) => RTCDataChannel -> m Word
getMaxRetransmitsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getMaxRetransmits self))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.protocol Mozilla RTCDataChannel.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => RTCDataChannel -> m result
getProtocol self = liftIO (fromJSString <$> (js_getProtocol self))
 
foreign import javascript unsafe "($1[\"negotiated\"] ? 1 : 0)"
        js_getNegotiated :: RTCDataChannel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.negotiated Mozilla RTCDataChannel.negotiated documentation> 
getNegotiated :: (MonadIO m) => RTCDataChannel -> m Bool
getNegotiated self = liftIO (js_getNegotiated self)
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        RTCDataChannel -> IO (Nullable Word)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.id Mozilla RTCDataChannel.id documentation> 
getId :: (MonadIO m) => RTCDataChannel -> m (Maybe Word)
getId self = liftIO (nullableToMaybe <$> (js_getId self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.id Mozilla RTCDataChannel.id documentation> 
getIdUnsafe ::
            (MonadIO m, HasCallStack) => RTCDataChannel -> m Word
getIdUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getId self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.id Mozilla RTCDataChannel.id documentation> 
getIdUnchecked :: (MonadIO m) => RTCDataChannel -> m Word
getIdUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getId self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: RTCDataChannel -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.readyState Mozilla RTCDataChannel.readyState documentation> 
getReadyState ::
              (MonadIO m) => RTCDataChannel -> m RTCDataChannelState
getReadyState self
  = liftIO ((js_getReadyState self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"bufferedAmount\"]"
        js_getBufferedAmount :: RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmount Mozilla RTCDataChannel.bufferedAmount documentation> 
getBufferedAmount :: (MonadIO m) => RTCDataChannel -> m Word
getBufferedAmount self = liftIO (js_getBufferedAmount self)
 
foreign import javascript unsafe
        "$1[\"bufferedAmountLowThreshold\"] = $2;"
        js_setBufferedAmountLowThreshold :: RTCDataChannel -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmountLowThreshold Mozilla RTCDataChannel.bufferedAmountLowThreshold documentation> 
setBufferedAmountLowThreshold ::
                              (MonadIO m) => RTCDataChannel -> Word -> m ()
setBufferedAmountLowThreshold self val
  = liftIO (js_setBufferedAmountLowThreshold self val)
 
foreign import javascript unsafe
        "$1[\"bufferedAmountLowThreshold\"]"
        js_getBufferedAmountLowThreshold :: RTCDataChannel -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.bufferedAmountLowThreshold Mozilla RTCDataChannel.bufferedAmountLowThreshold documentation> 
getBufferedAmountLowThreshold ::
                              (MonadIO m) => RTCDataChannel -> m Word
getBufferedAmountLowThreshold self
  = liftIO (js_getBufferedAmountLowThreshold self)
 
foreign import javascript safe "$1[\"binaryType\"] = $2;"
        js_setBinaryType :: RTCDataChannel -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
setBinaryType ::
              (MonadIO m, ToJSString val) => RTCDataChannel -> val -> m ()
setBinaryType self val
  = liftIO (js_setBinaryType self (toJSString val))
 
foreign import javascript unsafe "$1[\"binaryType\"]"
        js_getBinaryType :: RTCDataChannel -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.binaryType Mozilla RTCDataChannel.binaryType documentation> 
getBinaryType ::
              (MonadIO m, FromJSString result) => RTCDataChannel -> m result
getBinaryType self
  = liftIO (fromJSString <$> (js_getBinaryType self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onopen Mozilla RTCDataChannel.onopen documentation> 
open :: EventName RTCDataChannel Event
open = unsafeEventNameAsync (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onerror Mozilla RTCDataChannel.onerror documentation> 
error :: EventName RTCDataChannel UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onclose Mozilla RTCDataChannel.onclose documentation> 
closeEvent :: EventName RTCDataChannel CloseEvent
closeEvent = unsafeEventNameAsync (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onmessage Mozilla RTCDataChannel.onmessage documentation> 
message :: EventName RTCDataChannel MessageEvent
message = unsafeEventNameAsync (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel.onbufferedamountlow Mozilla RTCDataChannel.onbufferedamountlow documentation> 
bufferedamountlow :: EventName RTCDataChannel onbufferedamountlow
bufferedamountlow
  = unsafeEventName (toJSString "bufferedamountlow")