{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PerformanceTiming
       (ghcjs_dom_performance_timing_get_navigation_start,
        performanceTimingGetNavigationStart,
        ghcjs_dom_performance_timing_get_unload_event_start,
        performanceTimingGetUnloadEventStart,
        ghcjs_dom_performance_timing_get_unload_event_end,
        performanceTimingGetUnloadEventEnd,
        ghcjs_dom_performance_timing_get_redirect_start,
        performanceTimingGetRedirectStart,
        ghcjs_dom_performance_timing_get_redirect_end,
        performanceTimingGetRedirectEnd,
        ghcjs_dom_performance_timing_get_fetch_start,
        performanceTimingGetFetchStart,
        ghcjs_dom_performance_timing_get_domain_lookup_start,
        performanceTimingGetDomainLookupStart,
        ghcjs_dom_performance_timing_get_domain_lookup_end,
        performanceTimingGetDomainLookupEnd,
        ghcjs_dom_performance_timing_get_connect_start,
        performanceTimingGetConnectStart,
        ghcjs_dom_performance_timing_get_connect_end,
        performanceTimingGetConnectEnd,
        ghcjs_dom_performance_timing_get_secure_connection_start,
        performanceTimingGetSecureConnectionStart,
        ghcjs_dom_performance_timing_get_request_start,
        performanceTimingGetRequestStart,
        ghcjs_dom_performance_timing_get_response_start,
        performanceTimingGetResponseStart,
        ghcjs_dom_performance_timing_get_response_end,
        performanceTimingGetResponseEnd,
        ghcjs_dom_performance_timing_get_dom_loading,
        performanceTimingGetDomLoading,
        ghcjs_dom_performance_timing_get_dom_interactive,
        performanceTimingGetDomInteractive,
        ghcjs_dom_performance_timing_get_dom_content_loaded_event_start,
        performanceTimingGetDomContentLoadedEventStart,
        ghcjs_dom_performance_timing_get_dom_content_loaded_event_end,
        performanceTimingGetDomContentLoadedEventEnd,
        ghcjs_dom_performance_timing_get_dom_complete,
        performanceTimingGetDomComplete,
        ghcjs_dom_performance_timing_get_load_event_start,
        performanceTimingGetLoadEventStart,
        ghcjs_dom_performance_timing_get_load_event_end,
        performanceTimingGetLoadEventEnd, PerformanceTiming,
        IsPerformanceTiming, castToPerformanceTiming,
        gTypePerformanceTiming, toPerformanceTiming)
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

 
foreign import javascript unsafe "$1[\"navigationStart\"]"
        ghcjs_dom_performance_timing_get_navigation_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.navigationStart Mozilla PerformanceTiming.navigationStart documentation> 
performanceTimingGetNavigationStart ::
                                    (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetNavigationStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_navigation_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"unloadEventStart\"]"
        ghcjs_dom_performance_timing_get_unload_event_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.unloadEventStart Mozilla PerformanceTiming.unloadEventStart documentation> 
performanceTimingGetUnloadEventStart ::
                                     (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetUnloadEventStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_unload_event_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"unloadEventEnd\"]"
        ghcjs_dom_performance_timing_get_unload_event_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.unloadEventEnd Mozilla PerformanceTiming.unloadEventEnd documentation> 
performanceTimingGetUnloadEventEnd ::
                                   (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetUnloadEventEnd self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_unload_event_end
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"redirectStart\"]"
        ghcjs_dom_performance_timing_get_redirect_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.redirectStart Mozilla PerformanceTiming.redirectStart documentation> 
performanceTimingGetRedirectStart ::
                                  (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetRedirectStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_redirect_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"redirectEnd\"]"
        ghcjs_dom_performance_timing_get_redirect_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.redirectEnd Mozilla PerformanceTiming.redirectEnd documentation> 
performanceTimingGetRedirectEnd ::
                                (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetRedirectEnd self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_redirect_end
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"fetchStart\"]"
        ghcjs_dom_performance_timing_get_fetch_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.fetchStart Mozilla PerformanceTiming.fetchStart documentation> 
performanceTimingGetFetchStart ::
                               (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetFetchStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_fetch_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"domainLookupStart\"]"
        ghcjs_dom_performance_timing_get_domain_lookup_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domainLookupStart Mozilla PerformanceTiming.domainLookupStart documentation> 
performanceTimingGetDomainLookupStart ::
                                      (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetDomainLookupStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_domain_lookup_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"domainLookupEnd\"]"
        ghcjs_dom_performance_timing_get_domain_lookup_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domainLookupEnd Mozilla PerformanceTiming.domainLookupEnd documentation> 
performanceTimingGetDomainLookupEnd ::
                                    (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetDomainLookupEnd self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_domain_lookup_end
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"connectStart\"]"
        ghcjs_dom_performance_timing_get_connect_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.connectStart Mozilla PerformanceTiming.connectStart documentation> 
performanceTimingGetConnectStart ::
                                 (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetConnectStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_connect_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"connectEnd\"]"
        ghcjs_dom_performance_timing_get_connect_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.connectEnd Mozilla PerformanceTiming.connectEnd documentation> 
performanceTimingGetConnectEnd ::
                               (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetConnectEnd self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_connect_end
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"secureConnectionStart\"]"
        ghcjs_dom_performance_timing_get_secure_connection_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.secureConnectionStart Mozilla PerformanceTiming.secureConnectionStart documentation> 
performanceTimingGetSecureConnectionStart ::
                                          (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetSecureConnectionStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_secure_connection_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"requestStart\"]"
        ghcjs_dom_performance_timing_get_request_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.requestStart Mozilla PerformanceTiming.requestStart documentation> 
performanceTimingGetRequestStart ::
                                 (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetRequestStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_request_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"responseStart\"]"
        ghcjs_dom_performance_timing_get_response_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.responseStart Mozilla PerformanceTiming.responseStart documentation> 
performanceTimingGetResponseStart ::
                                  (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetResponseStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_response_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"responseEnd\"]"
        ghcjs_dom_performance_timing_get_response_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.responseEnd Mozilla PerformanceTiming.responseEnd documentation> 
performanceTimingGetResponseEnd ::
                                (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetResponseEnd self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_response_end
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"domLoading\"]"
        ghcjs_dom_performance_timing_get_dom_loading ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domLoading Mozilla PerformanceTiming.domLoading documentation> 
performanceTimingGetDomLoading ::
                               (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetDomLoading self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_dom_loading
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"domInteractive\"]"
        ghcjs_dom_performance_timing_get_dom_interactive ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domInteractive Mozilla PerformanceTiming.domInteractive documentation> 
performanceTimingGetDomInteractive ::
                                   (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetDomInteractive self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_dom_interactive
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe
        "$1[\"domContentLoadedEventStart\"]"
        ghcjs_dom_performance_timing_get_dom_content_loaded_event_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domContentLoadedEventStart Mozilla PerformanceTiming.domContentLoadedEventStart documentation> 
performanceTimingGetDomContentLoadedEventStart ::
                                               (MonadIO m, IsPerformanceTiming self) =>
                                                 self -> m Word64
performanceTimingGetDomContentLoadedEventStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_dom_content_loaded_event_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"domContentLoadedEventEnd\"]"
        ghcjs_dom_performance_timing_get_dom_content_loaded_event_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domContentLoadedEventEnd Mozilla PerformanceTiming.domContentLoadedEventEnd documentation> 
performanceTimingGetDomContentLoadedEventEnd ::
                                             (MonadIO m, IsPerformanceTiming self) =>
                                               self -> m Word64
performanceTimingGetDomContentLoadedEventEnd self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_dom_content_loaded_event_end
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"domComplete\"]"
        ghcjs_dom_performance_timing_get_dom_complete ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domComplete Mozilla PerformanceTiming.domComplete documentation> 
performanceTimingGetDomComplete ::
                                (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetDomComplete self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_dom_complete
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"loadEventStart\"]"
        ghcjs_dom_performance_timing_get_load_event_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.loadEventStart Mozilla PerformanceTiming.loadEventStart documentation> 
performanceTimingGetLoadEventStart ::
                                   (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetLoadEventStart self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_load_event_start
            (unPerformanceTiming (toPerformanceTiming self))))
 
foreign import javascript unsafe "$1[\"loadEventEnd\"]"
        ghcjs_dom_performance_timing_get_load_event_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.loadEventEnd Mozilla PerformanceTiming.loadEventEnd documentation> 
performanceTimingGetLoadEventEnd ::
                                 (MonadIO m, IsPerformanceTiming self) => self -> m Word64
performanceTimingGetLoadEventEnd self
  = liftIO
      (round <$>
         (ghcjs_dom_performance_timing_get_load_event_end
            (unPerformanceTiming (toPerformanceTiming self))))
#else
module GHCJS.DOM.PerformanceTiming (
  ) where
#endif
