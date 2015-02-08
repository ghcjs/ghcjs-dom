{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCStatsResponse
       (ghcjs_dom_rtc_stats_response_result, rtcStatsResponseResult,
        ghcjs_dom_rtc_stats_response_named_item, rtcStatsResponseNamedItem,
        RTCStatsResponse, IsRTCStatsResponse, castToRTCStatsResponse,
        gTypeRTCStatsResponse, toRTCStatsResponse)
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

 
foreign import javascript unsafe "$1[\"result\"]()"
        ghcjs_dom_rtc_stats_response_result ::
        JSRef RTCStatsResponse -> IO (JSRef [Maybe RTCStatsReport])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse.result Mozilla RTCStatsResponse.result documentation> 
rtcStatsResponseResult ::
                       (MonadIO m, IsRTCStatsResponse self) =>
                         self -> m [Maybe RTCStatsReport]
rtcStatsResponseResult self
  = liftIO
      ((ghcjs_dom_rtc_stats_response_result
          (unRTCStatsResponse (toRTCStatsResponse self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_rtc_stats_response_named_item ::
        JSRef RTCStatsResponse -> JSString -> IO (JSRef RTCStatsReport)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsResponse.namedItem Mozilla RTCStatsResponse.namedItem documentation> 
rtcStatsResponseNamedItem ::
                          (MonadIO m, IsRTCStatsResponse self, ToJSString name) =>
                            self -> name -> m (Maybe RTCStatsReport)
rtcStatsResponseNamedItem self name
  = liftIO
      ((ghcjs_dom_rtc_stats_response_named_item
          (unRTCStatsResponse (toRTCStatsResponse self))
          (toJSString name))
         >>= fromJSRef)
#else
module GHCJS.DOM.RTCStatsResponse (
  ) where
#endif
