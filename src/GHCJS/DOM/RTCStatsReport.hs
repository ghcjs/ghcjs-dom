{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RTCStatsReport
       (ghcjs_dom_rtc_stats_report_stat, rtcStatsReportStat,
        ghcjs_dom_rtc_stats_report_names, rtcStatsReportNames,
        ghcjs_dom_rtc_stats_report_get_timestamp,
        rtcStatsReportGetTimestamp, ghcjs_dom_rtc_stats_report_get_id,
        rtcStatsReportGetId, ghcjs_dom_rtc_stats_report_get_local,
        rtcStatsReportGetLocal, ghcjs_dom_rtc_stats_report_get_remote,
        rtcStatsReportGetRemote, RTCStatsReport, IsRTCStatsReport,
        castToRTCStatsReport, gTypeRTCStatsReport, toRTCStatsReport)
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

 
foreign import javascript unsafe "$1[\"stat\"]($2)"
        ghcjs_dom_rtc_stats_report_stat ::
        JSRef RTCStatsReport -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.stat Mozilla RTCStatsReport.stat documentation> 
rtcStatsReportStat ::
                   (MonadIO m, IsRTCStatsReport self, ToJSString name,
                    FromJSString result) =>
                     self -> name -> m result
rtcStatsReportStat self name
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_stats_report_stat
            (unRTCStatsReport (toRTCStatsReport self))
            (toJSString name)))
 
foreign import javascript unsafe "$1[\"names\"]()"
        ghcjs_dom_rtc_stats_report_names ::
        JSRef RTCStatsReport -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.names Mozilla RTCStatsReport.names documentation> 
rtcStatsReportNames ::
                    (MonadIO m, IsRTCStatsReport self, FromJSString result) =>
                      self -> m [result]
rtcStatsReportNames self
  = liftIO
      ((ghcjs_dom_rtc_stats_report_names
          (unRTCStatsReport (toRTCStatsReport self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"timestamp\"]"
        ghcjs_dom_rtc_stats_report_get_timestamp ::
        JSRef RTCStatsReport -> IO (JSRef Date)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.timestamp Mozilla RTCStatsReport.timestamp documentation> 
rtcStatsReportGetTimestamp ::
                           (MonadIO m, IsRTCStatsReport self) => self -> m (Maybe Date)
rtcStatsReportGetTimestamp self
  = liftIO
      ((ghcjs_dom_rtc_stats_report_get_timestamp
          (unRTCStatsReport (toRTCStatsReport self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_rtc_stats_report_get_id ::
        JSRef RTCStatsReport -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.id Mozilla RTCStatsReport.id documentation> 
rtcStatsReportGetId ::
                    (MonadIO m, IsRTCStatsReport self, FromJSString result) =>
                      self -> m result
rtcStatsReportGetId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_rtc_stats_report_get_id
            (unRTCStatsReport (toRTCStatsReport self))))
 
foreign import javascript unsafe "$1[\"local\"]"
        ghcjs_dom_rtc_stats_report_get_local ::
        JSRef RTCStatsReport -> IO (JSRef RTCStatsReport)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.local Mozilla RTCStatsReport.local documentation> 
rtcStatsReportGetLocal ::
                       (MonadIO m, IsRTCStatsReport self) =>
                         self -> m (Maybe RTCStatsReport)
rtcStatsReportGetLocal self
  = liftIO
      ((ghcjs_dom_rtc_stats_report_get_local
          (unRTCStatsReport (toRTCStatsReport self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"remote\"]"
        ghcjs_dom_rtc_stats_report_get_remote ::
        JSRef RTCStatsReport -> IO (JSRef RTCStatsReport)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport.remote Mozilla RTCStatsReport.remote documentation> 
rtcStatsReportGetRemote ::
                        (MonadIO m, IsRTCStatsReport self) =>
                          self -> m (Maybe RTCStatsReport)
rtcStatsReportGetRemote self
  = liftIO
      ((ghcjs_dom_rtc_stats_report_get_remote
          (unRTCStatsReport (toRTCStatsReport self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.RTCStatsReport (
  ) where
#endif
