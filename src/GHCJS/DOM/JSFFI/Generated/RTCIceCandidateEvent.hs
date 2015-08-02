{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCIceCandidateEvent
       (js_getCandidate, getCandidate, RTCIceCandidateEvent,
        castToRTCIceCandidateEvent, gTypeRTCIceCandidateEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"candidate\"]"
        js_getCandidate ::
        JSRef RTCIceCandidateEvent -> IO (JSRef RTCIceCandidate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidateEvent.candidate Mozilla RTCIceCandidateEvent.candidate documentation> 
getCandidate ::
             (MonadIO m) => RTCIceCandidateEvent -> m (Maybe RTCIceCandidate)
getCandidate self
  = liftIO
      ((js_getCandidate (unRTCIceCandidateEvent self)) >>= fromJSRef)