{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCPeerConnectionIceEvent
       (js_getCandidate, getCandidate, getCandidateUnsafe,
        getCandidateUnchecked, RTCPeerConnectionIceEvent(..),
        gTypeRTCPeerConnectionIceEvent)
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
 
foreign import javascript unsafe "$1[\"candidate\"]"
        js_getCandidate ::
        RTCPeerConnectionIceEvent -> IO (Nullable RTCIceCandidate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionIceEvent.candidate Mozilla RTCPeerConnectionIceEvent.candidate documentation> 
getCandidate ::
             (MonadIO m) =>
               RTCPeerConnectionIceEvent -> m (Maybe RTCIceCandidate)
getCandidate self
  = liftIO (nullableToMaybe <$> (js_getCandidate self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionIceEvent.candidate Mozilla RTCPeerConnectionIceEvent.candidate documentation> 
getCandidateUnsafe ::
                   (MonadIO m, HasCallStack) =>
                     RTCPeerConnectionIceEvent -> m RTCIceCandidate
getCandidateUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCandidate self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionIceEvent.candidate Mozilla RTCPeerConnectionIceEvent.candidate documentation> 
getCandidateUnchecked ::
                      (MonadIO m) => RTCPeerConnectionIceEvent -> m RTCIceCandidate
getCandidateUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCandidate self))