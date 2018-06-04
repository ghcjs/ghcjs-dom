{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCRtpSender
       (js_getParameters, getParameters, getParameters_, js_replaceTrack,
        replaceTrack, js_getTrack, getTrack, getTrackUnsafe,
        getTrackUnchecked, RTCRtpSender(..), gTypeRTCRtpSender)
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
 
foreign import javascript unsafe "$1[\"getParameters\"]()"
        js_getParameters :: RTCRtpSender -> IO RTCRtpParameters

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.getParameters Mozilla RTCRtpSender.getParameters documentation> 
getParameters :: (MonadIO m) => RTCRtpSender -> m RTCRtpParameters
getParameters self = liftIO (js_getParameters self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.getParameters Mozilla RTCRtpSender.getParameters documentation> 
getParameters_ :: (MonadIO m) => RTCRtpSender -> m ()
getParameters_ self = liftIO (void (js_getParameters self))
 
foreign import javascript interruptible
        "$1[\"replaceTrack\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_replaceTrack ::
        RTCRtpSender -> Optional MediaStreamTrack -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.replaceTrack Mozilla RTCRtpSender.replaceTrack documentation> 
replaceTrack ::
             (MonadIO m, IsMediaStreamTrack withTrack) =>
               RTCRtpSender -> Maybe withTrack -> m ()
replaceTrack self withTrack
  = liftIO
      ((js_replaceTrack self
          (maybeToOptional (fmap toMediaStreamTrack withTrack)))
         >>= maybeThrowPromiseRejected)
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        RTCRtpSender -> IO (Nullable MediaStreamTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.track Mozilla RTCRtpSender.track documentation> 
getTrack ::
         (MonadIO m) => RTCRtpSender -> m (Maybe MediaStreamTrack)
getTrack self = liftIO (nullableToMaybe <$> (js_getTrack self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.track Mozilla RTCRtpSender.track documentation> 
getTrackUnsafe ::
               (MonadIO m, HasCallStack) => RTCRtpSender -> m MediaStreamTrack
getTrackUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTrack self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender.track Mozilla RTCRtpSender.track documentation> 
getTrackUnchecked ::
                  (MonadIO m) => RTCRtpSender -> m MediaStreamTrack
getTrackUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTrack self))