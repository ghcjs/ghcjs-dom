{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCTrackEvent
       (js_newRTCTrackEvent, newRTCTrackEvent, js_getReceiver,
        getReceiver, js_getTrack, getTrack, js_getStreams, getStreams,
        js_getTransceiver, getTransceiver, RTCTrackEvent(..),
        gTypeRTCTrackEvent)
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
 
foreign import javascript unsafe
        "new window[\"RTCTrackEvent\"]($1,\n$2)" js_newRTCTrackEvent ::
        JSString -> RTCTrackEventInit -> IO RTCTrackEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent Mozilla RTCTrackEvent documentation> 
newRTCTrackEvent ::
                 (MonadIO m, ToJSString type') =>
                   type' -> RTCTrackEventInit -> m RTCTrackEvent
newRTCTrackEvent type' eventInitDict
  = liftIO (js_newRTCTrackEvent (toJSString type') eventInitDict)
 
foreign import javascript unsafe "$1[\"receiver\"]" js_getReceiver
        :: RTCTrackEvent -> IO RTCRtpReceiver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent.receiver Mozilla RTCTrackEvent.receiver documentation> 
getReceiver :: (MonadIO m) => RTCTrackEvent -> m RTCRtpReceiver
getReceiver self = liftIO (js_getReceiver self)
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        RTCTrackEvent -> IO MediaStreamTrack

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent.track Mozilla RTCTrackEvent.track documentation> 
getTrack :: (MonadIO m) => RTCTrackEvent -> m MediaStreamTrack
getTrack self = liftIO (js_getTrack self)
 
foreign import javascript unsafe "$1[\"streams\"]" js_getStreams ::
        RTCTrackEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent.streams Mozilla RTCTrackEvent.streams documentation> 
getStreams :: (MonadIO m) => RTCTrackEvent -> m [MediaStream]
getStreams self
  = liftIO ((js_getStreams self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"transceiver\"]"
        js_getTransceiver :: RTCTrackEvent -> IO RTCRtpTransceiver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent.transceiver Mozilla RTCTrackEvent.transceiver documentation> 
getTransceiver ::
               (MonadIO m) => RTCTrackEvent -> m RTCRtpTransceiver
getTransceiver self = liftIO (js_getTransceiver self)