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
                                    (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetNavigationStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_navigation_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"unloadEventStart\"]"
        ghcjs_dom_performance_timing_get_unload_event_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.unloadEventStart Mozilla PerformanceTiming.unloadEventStart documentation> 
performanceTimingGetUnloadEventStart ::
                                     (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetUnloadEventStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_unload_event_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"unloadEventEnd\"]"
        ghcjs_dom_performance_timing_get_unload_event_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.unloadEventEnd Mozilla PerformanceTiming.unloadEventEnd documentation> 
performanceTimingGetUnloadEventEnd ::
                                   (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetUnloadEventEnd self
  = round <$>
      (ghcjs_dom_performance_timing_get_unload_event_end
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"redirectStart\"]"
        ghcjs_dom_performance_timing_get_redirect_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.redirectStart Mozilla PerformanceTiming.redirectStart documentation> 
performanceTimingGetRedirectStart ::
                                  (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetRedirectStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_redirect_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"redirectEnd\"]"
        ghcjs_dom_performance_timing_get_redirect_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.redirectEnd Mozilla PerformanceTiming.redirectEnd documentation> 
performanceTimingGetRedirectEnd ::
                                (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetRedirectEnd self
  = round <$>
      (ghcjs_dom_performance_timing_get_redirect_end
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"fetchStart\"]"
        ghcjs_dom_performance_timing_get_fetch_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.fetchStart Mozilla PerformanceTiming.fetchStart documentation> 
performanceTimingGetFetchStart ::
                               (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetFetchStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_fetch_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domainLookupStart\"]"
        ghcjs_dom_performance_timing_get_domain_lookup_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domainLookupStart Mozilla PerformanceTiming.domainLookupStart documentation> 
performanceTimingGetDomainLookupStart ::
                                      (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetDomainLookupStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_domain_lookup_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domainLookupEnd\"]"
        ghcjs_dom_performance_timing_get_domain_lookup_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domainLookupEnd Mozilla PerformanceTiming.domainLookupEnd documentation> 
performanceTimingGetDomainLookupEnd ::
                                    (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetDomainLookupEnd self
  = round <$>
      (ghcjs_dom_performance_timing_get_domain_lookup_end
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"connectStart\"]"
        ghcjs_dom_performance_timing_get_connect_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.connectStart Mozilla PerformanceTiming.connectStart documentation> 
performanceTimingGetConnectStart ::
                                 (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetConnectStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_connect_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"connectEnd\"]"
        ghcjs_dom_performance_timing_get_connect_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.connectEnd Mozilla PerformanceTiming.connectEnd documentation> 
performanceTimingGetConnectEnd ::
                               (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetConnectEnd self
  = round <$>
      (ghcjs_dom_performance_timing_get_connect_end
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"secureConnectionStart\"]"
        ghcjs_dom_performance_timing_get_secure_connection_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.secureConnectionStart Mozilla PerformanceTiming.secureConnectionStart documentation> 
performanceTimingGetSecureConnectionStart ::
                                          (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetSecureConnectionStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_secure_connection_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"requestStart\"]"
        ghcjs_dom_performance_timing_get_request_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.requestStart Mozilla PerformanceTiming.requestStart documentation> 
performanceTimingGetRequestStart ::
                                 (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetRequestStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_request_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"responseStart\"]"
        ghcjs_dom_performance_timing_get_response_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.responseStart Mozilla PerformanceTiming.responseStart documentation> 
performanceTimingGetResponseStart ::
                                  (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetResponseStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_response_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"responseEnd\"]"
        ghcjs_dom_performance_timing_get_response_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.responseEnd Mozilla PerformanceTiming.responseEnd documentation> 
performanceTimingGetResponseEnd ::
                                (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetResponseEnd self
  = round <$>
      (ghcjs_dom_performance_timing_get_response_end
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domLoading\"]"
        ghcjs_dom_performance_timing_get_dom_loading ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domLoading Mozilla PerformanceTiming.domLoading documentation> 
performanceTimingGetDomLoading ::
                               (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetDomLoading self
  = round <$>
      (ghcjs_dom_performance_timing_get_dom_loading
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domInteractive\"]"
        ghcjs_dom_performance_timing_get_dom_interactive ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domInteractive Mozilla PerformanceTiming.domInteractive documentation> 
performanceTimingGetDomInteractive ::
                                   (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetDomInteractive self
  = round <$>
      (ghcjs_dom_performance_timing_get_dom_interactive
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe
        "$1[\"domContentLoadedEventStart\"]"
        ghcjs_dom_performance_timing_get_dom_content_loaded_event_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domContentLoadedEventStart Mozilla PerformanceTiming.domContentLoadedEventStart documentation> 
performanceTimingGetDomContentLoadedEventStart ::
                                               (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetDomContentLoadedEventStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_dom_content_loaded_event_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domContentLoadedEventEnd\"]"
        ghcjs_dom_performance_timing_get_dom_content_loaded_event_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domContentLoadedEventEnd Mozilla PerformanceTiming.domContentLoadedEventEnd documentation> 
performanceTimingGetDomContentLoadedEventEnd ::
                                             (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetDomContentLoadedEventEnd self
  = round <$>
      (ghcjs_dom_performance_timing_get_dom_content_loaded_event_end
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domComplete\"]"
        ghcjs_dom_performance_timing_get_dom_complete ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domComplete Mozilla PerformanceTiming.domComplete documentation> 
performanceTimingGetDomComplete ::
                                (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetDomComplete self
  = round <$>
      (ghcjs_dom_performance_timing_get_dom_complete
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"loadEventStart\"]"
        ghcjs_dom_performance_timing_get_load_event_start ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.loadEventStart Mozilla PerformanceTiming.loadEventStart documentation> 
performanceTimingGetLoadEventStart ::
                                   (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetLoadEventStart self
  = round <$>
      (ghcjs_dom_performance_timing_get_load_event_start
         (unPerformanceTiming (toPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"loadEventEnd\"]"
        ghcjs_dom_performance_timing_get_load_event_end ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.loadEventEnd Mozilla PerformanceTiming.loadEventEnd documentation> 
performanceTimingGetLoadEventEnd ::
                                 (IsPerformanceTiming self) => self -> IO Word64
performanceTimingGetLoadEventEnd self
  = round <$>
      (ghcjs_dom_performance_timing_get_load_event_end
         (unPerformanceTiming (toPerformanceTiming self)))
#else
module GHCJS.DOM.PerformanceTiming (
  ) where
#endif
