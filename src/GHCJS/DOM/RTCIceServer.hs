{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCIceServer
       (ghcjs_dom_rtc_ice_server_get_urls, rtcIceServerGetUrls,
        ghcjs_dom_rtc_ice_server_get_username, rtcIceServerGetUsername,
        ghcjs_dom_rtc_ice_server_get_credential, rtcIceServerGetCredential,
        RTCIceServer, IsRTCIceServer, castToRTCIceServer,
        gTypeRTCIceServer, toRTCIceServer)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"urls\"]"
        ghcjs_dom_rtc_ice_server_get_urls ::
        JSRef RTCIceServer -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceServer.urls Mozilla RTCIceServer.urls documentation> 
rtcIceServerGetUrls ::
                    (MonadIO m, IsRTCIceServer self, FromJSString result) =>
                      self -> m [result]
rtcIceServerGetUrls self
  = liftIO
      ((ghcjs_dom_rtc_ice_server_get_urls
          (unRTCIceServer (toRTCIceServer self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"username\"]"
        ghcjs_dom_rtc_ice_server_get_username ::
        JSRef RTCIceServer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceServer.username Mozilla RTCIceServer.username documentation> 
rtcIceServerGetUsername ::
                        (MonadIO m, IsRTCIceServer self, FromJSString result) =>
                          self -> m result
rtcIceServerGetUsername self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_ice_server_get_username
            (unRTCIceServer (toRTCIceServer self))))
 
foreign import javascript unsafe "$1[\"credential\"]"
        ghcjs_dom_rtc_ice_server_get_credential ::
        JSRef RTCIceServer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCIceServer.credential Mozilla RTCIceServer.credential documentation> 
rtcIceServerGetCredential ::
                          (MonadIO m, IsRTCIceServer self, FromJSString result) =>
                            self -> m result
rtcIceServerGetCredential self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_ice_server_get_credential
            (unRTCIceServer (toRTCIceServer self))))
#else
module GHCJS.DOM.RTCIceServer (
  ) where
#endif
