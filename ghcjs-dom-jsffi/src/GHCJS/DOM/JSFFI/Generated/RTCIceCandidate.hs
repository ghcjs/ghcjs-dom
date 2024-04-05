{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCIceCandidate
       (js_newRTCIceCandidate, newRTCIceCandidate, js_getCandidate,
        getCandidate, js_getSdpMid, getSdpMid, getSdpMidUnsafe,
        getSdpMidUnchecked, js_getSdpMLineIndex, getSdpMLineIndex,
        getSdpMLineIndexUnsafe, getSdpMLineIndexUnchecked,
        RTCIceCandidate(..), gTypeRTCIceCandidate)
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
 
foreign import javascript safe
        "new window[\"RTCIceCandidate\"]($1)" js_newRTCIceCandidate ::
        RTCIceCandidateInit -> IO RTCIceCandidate

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate Mozilla RTCIceCandidate documentation> 
newRTCIceCandidate ::
                   (MonadIO m) => RTCIceCandidateInit -> m RTCIceCandidate
newRTCIceCandidate candidateInitDict
  = liftIO (js_newRTCIceCandidate candidateInitDict)
 
foreign import javascript unsafe "$1[\"candidate\"]"
        js_getCandidate :: RTCIceCandidate -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.candidate Mozilla RTCIceCandidate.candidate documentation> 
getCandidate ::
             (MonadIO m, FromJSString result) => RTCIceCandidate -> m result
getCandidate self
  = liftIO (fromJSString <$> (js_getCandidate self))
 
foreign import javascript unsafe "$1[\"sdpMid\"]" js_getSdpMid ::
        RTCIceCandidate -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
getSdpMid ::
          (MonadIO m, FromJSString result) =>
            RTCIceCandidate -> m (Maybe result)
getSdpMid self = liftIO (fromMaybeJSString <$> (js_getSdpMid self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
getSdpMidUnsafe ::
                (MonadIO m, HasCallStack, FromJSString result) =>
                  RTCIceCandidate -> m result
getSdpMidUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getSdpMid self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMid Mozilla RTCIceCandidate.sdpMid documentation> 
getSdpMidUnchecked ::
                   (MonadIO m, FromJSString result) => RTCIceCandidate -> m result
getSdpMidUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getSdpMid self))
 
foreign import javascript unsafe "$1[\"sdpMLineIndex\"]"
        js_getSdpMLineIndex :: RTCIceCandidate -> IO (Nullable Word)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
getSdpMLineIndex ::
                 (MonadIO m) => RTCIceCandidate -> m (Maybe Word)
getSdpMLineIndex self
  = liftIO (nullableToMaybe <$> (js_getSdpMLineIndex self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
getSdpMLineIndexUnsafe ::
                       (MonadIO m, HasCallStack) => RTCIceCandidate -> m Word
getSdpMLineIndexUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSdpMLineIndex self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate.sdpMLineIndex Mozilla RTCIceCandidate.sdpMLineIndex documentation> 
getSdpMLineIndexUnchecked ::
                          (MonadIO m) => RTCIceCandidate -> m Word
getSdpMLineIndexUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSdpMLineIndex self))