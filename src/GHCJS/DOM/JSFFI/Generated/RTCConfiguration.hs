{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCConfiguration
       (js_getIceServers, getIceServers, js_getIceTransports,
        getIceTransports, js_getRequestIdentity, getRequestIdentity,
        RTCConfiguration, castToRTCConfiguration, gTypeRTCConfiguration)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe "$1[\"iceServers\"]"
        js_getIceServers ::
        JSRef RTCConfiguration -> IO (JSRef [Maybe RTCIceServer])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration.iceServers Mozilla RTCConfiguration.iceServers documentation> 
getIceServers ::
              (MonadIO m) => RTCConfiguration -> m [Maybe RTCIceServer]
getIceServers self
  = liftIO
      ((js_getIceServers (unRTCConfiguration self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"iceTransports\"]"
        js_getIceTransports ::
        JSRef RTCConfiguration -> IO (JSRef RTCIceTransportsEnum)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration.iceTransports Mozilla RTCConfiguration.iceTransports documentation> 
getIceTransports ::
                 (MonadIO m) => RTCConfiguration -> m RTCIceTransportsEnum
getIceTransports self
  = liftIO
      ((js_getIceTransports (unRTCConfiguration self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"requestIdentity\"]"
        js_getRequestIdentity ::
        JSRef RTCConfiguration -> IO (JSRef RTCIdentityOptionEnum)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration.requestIdentity Mozilla RTCConfiguration.requestIdentity documentation> 
getRequestIdentity ::
                   (MonadIO m) => RTCConfiguration -> m RTCIdentityOptionEnum
getRequestIdentity self
  = liftIO
      ((js_getRequestIdentity (unRTCConfiguration self)) >>=
         fromJSRefUnchecked)