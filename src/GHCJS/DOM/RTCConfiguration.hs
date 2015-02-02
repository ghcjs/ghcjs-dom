{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCConfiguration
       (ghcjs_dom_rtc_configuration_get_ice_servers,
        rtcConfigurationGetIceServers,
        ghcjs_dom_rtc_configuration_get_ice_transports,
        rtcConfigurationGetIceTransports,
        ghcjs_dom_rtc_configuration_get_request_identity,
        rtcConfigurationGetRequestIdentity, RTCConfiguration,
        IsRTCConfiguration, castToRTCConfiguration, gTypeRTCConfiguration,
        toRTCConfiguration)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"iceServers\"]"
        ghcjs_dom_rtc_configuration_get_ice_servers ::
        JSRef RTCConfiguration -> IO (JSRef [Maybe RTCIceServer])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration.iceServers Mozilla RTCConfiguration.iceServers documentation> 
rtcConfigurationGetIceServers ::
                              (IsRTCConfiguration self) => self -> IO [Maybe RTCIceServer]
rtcConfigurationGetIceServers self
  = (ghcjs_dom_rtc_configuration_get_ice_servers
       (unRTCConfiguration (toRTCConfiguration self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"iceTransports\"]"
        ghcjs_dom_rtc_configuration_get_ice_transports ::
        JSRef RTCConfiguration -> IO (JSRef RTCIceTransportsEnum)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration.iceTransports Mozilla RTCConfiguration.iceTransports documentation> 
rtcConfigurationGetIceTransports ::
                                 (IsRTCConfiguration self) => self -> IO RTCIceTransportsEnum
rtcConfigurationGetIceTransports self
  = (ghcjs_dom_rtc_configuration_get_ice_transports
       (unRTCConfiguration (toRTCConfiguration self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"requestIdentity\"]"
        ghcjs_dom_rtc_configuration_get_request_identity ::
        JSRef RTCConfiguration -> IO (JSRef RTCIdentityOptionEnum)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCConfiguration.requestIdentity Mozilla RTCConfiguration.requestIdentity documentation> 
rtcConfigurationGetRequestIdentity ::
                                   (IsRTCConfiguration self) => self -> IO RTCIdentityOptionEnum
rtcConfigurationGetRequestIdentity self
  = (ghcjs_dom_rtc_configuration_get_request_identity
       (unRTCConfiguration (toRTCConfiguration self)))
      >>= fromJSRefUnchecked
#else
module GHCJS.DOM.RTCConfiguration (
  ) where
#endif
