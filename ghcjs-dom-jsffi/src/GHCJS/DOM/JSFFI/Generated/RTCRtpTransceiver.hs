{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCRtpTransceiver
       (js_setDirection, setDirection, js_stop, stop, js_getMid, getMid,
        getMidUnsafe, getMidUnchecked, js_getSender, getSender,
        js_getReceiver, getReceiver, js_getStopped, getStopped,
        js_getDirection, getDirection, RTCRtpTransceiver(..),
        gTypeRTCRtpTransceiver)
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
 
foreign import javascript unsafe "$1[\"setDirection\"]($2)"
        js_setDirection :: RTCRtpTransceiver -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.setDirection Mozilla RTCRtpTransceiver.setDirection documentation> 
setDirection ::
             (MonadIO m) =>
               RTCRtpTransceiver -> RTCRtpTransceiverDirection -> m ()
setDirection self direction
  = liftIO (js_setDirection self (pToJSVal direction))
 
foreign import javascript unsafe "$1[\"stop\"]()" js_stop ::
        RTCRtpTransceiver -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.stop Mozilla RTCRtpTransceiver.stop documentation> 
stop :: (MonadIO m) => RTCRtpTransceiver -> m ()
stop self = liftIO (js_stop self)
 
foreign import javascript unsafe "$1[\"mid\"]" js_getMid ::
        RTCRtpTransceiver -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.mid Mozilla RTCRtpTransceiver.mid documentation> 
getMid ::
       (MonadIO m, FromJSString result) =>
         RTCRtpTransceiver -> m (Maybe result)
getMid self = liftIO (fromMaybeJSString <$> (js_getMid self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.mid Mozilla RTCRtpTransceiver.mid documentation> 
getMidUnsafe ::
             (MonadIO m, HasCallStack, FromJSString result) =>
               RTCRtpTransceiver -> m result
getMidUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getMid self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.mid Mozilla RTCRtpTransceiver.mid documentation> 
getMidUnchecked ::
                (MonadIO m, FromJSString result) => RTCRtpTransceiver -> m result
getMidUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getMid self))
 
foreign import javascript unsafe "$1[\"sender\"]" js_getSender ::
        RTCRtpTransceiver -> IO RTCRtpSender

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.sender Mozilla RTCRtpTransceiver.sender documentation> 
getSender :: (MonadIO m) => RTCRtpTransceiver -> m RTCRtpSender
getSender self = liftIO (js_getSender self)
 
foreign import javascript unsafe "$1[\"receiver\"]" js_getReceiver
        :: RTCRtpTransceiver -> IO RTCRtpReceiver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.receiver Mozilla RTCRtpTransceiver.receiver documentation> 
getReceiver :: (MonadIO m) => RTCRtpTransceiver -> m RTCRtpReceiver
getReceiver self = liftIO (js_getReceiver self)
 
foreign import javascript unsafe "($1[\"stopped\"] ? 1 : 0)"
        js_getStopped :: RTCRtpTransceiver -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.stopped Mozilla RTCRtpTransceiver.stopped documentation> 
getStopped :: (MonadIO m) => RTCRtpTransceiver -> m Bool
getStopped self = liftIO (js_getStopped self)
 
foreign import javascript unsafe "$1[\"direction\"]"
        js_getDirection :: RTCRtpTransceiver -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver.direction Mozilla RTCRtpTransceiver.direction documentation> 
getDirection ::
             (MonadIO m) => RTCRtpTransceiver -> m RTCRtpTransceiverDirection
getDirection self
  = liftIO ((js_getDirection self) >>= fromJSValUnchecked)