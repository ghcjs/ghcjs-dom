{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCRtpReceiver
       (js_getParameters, getParameters, getParameters_, js_getTrack,
        getTrack, RTCRtpReceiver(..), gTypeRTCRtpReceiver)
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
        js_getParameters :: RTCRtpReceiver -> IO RTCRtpParameters

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpReceiver.getParameters Mozilla RTCRtpReceiver.getParameters documentation> 
getParameters ::
              (MonadIO m) => RTCRtpReceiver -> m RTCRtpParameters
getParameters self = liftIO (js_getParameters self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpReceiver.getParameters Mozilla RTCRtpReceiver.getParameters documentation> 
getParameters_ :: (MonadIO m) => RTCRtpReceiver -> m ()
getParameters_ self = liftIO (void (js_getParameters self))
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        RTCRtpReceiver -> IO MediaStreamTrack

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpReceiver.track Mozilla RTCRtpReceiver.track documentation> 
getTrack :: (MonadIO m) => RTCRtpReceiver -> m MediaStreamTrack
getTrack self = liftIO (js_getTrack self)