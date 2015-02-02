{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PerformanceResourceTiming
       (ghcjs_dom_performance_resource_timing_get_initiator_type,
        performanceResourceTimingGetInitiatorType,
        ghcjs_dom_performance_resource_timing_get_redirect_start,
        performanceResourceTimingGetRedirectStart,
        ghcjs_dom_performance_resource_timing_get_redirect_end,
        performanceResourceTimingGetRedirectEnd,
        ghcjs_dom_performance_resource_timing_get_fetch_start,
        performanceResourceTimingGetFetchStart,
        ghcjs_dom_performance_resource_timing_get_domain_lookup_start,
        performanceResourceTimingGetDomainLookupStart,
        ghcjs_dom_performance_resource_timing_get_domain_lookup_end,
        performanceResourceTimingGetDomainLookupEnd,
        ghcjs_dom_performance_resource_timing_get_connect_start,
        performanceResourceTimingGetConnectStart,
        ghcjs_dom_performance_resource_timing_get_connect_end,
        performanceResourceTimingGetConnectEnd,
        ghcjs_dom_performance_resource_timing_get_secure_connection_start,
        performanceResourceTimingGetSecureConnectionStart,
        ghcjs_dom_performance_resource_timing_get_request_start,
        performanceResourceTimingGetRequestStart,
        ghcjs_dom_performance_resource_timing_get_response_end,
        performanceResourceTimingGetResponseEnd, PerformanceResourceTiming,
        IsPerformanceResourceTiming, castToPerformanceResourceTiming,
        gTypePerformanceResourceTiming, toPerformanceResourceTiming)
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

 
foreign import javascript unsafe "$1[\"initiatorType\"]"
        ghcjs_dom_performance_resource_timing_get_initiator_type ::
        JSRef PerformanceResourceTiming -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.initiatorType Mozilla PerformanceResourceTiming.initiatorType documentation> 
performanceResourceTimingGetInitiatorType ::
                                          (IsPerformanceResourceTiming self, FromJSString result) =>
                                            self -> IO result
performanceResourceTimingGetInitiatorType self
  = fromJSString <$>
      (ghcjs_dom_performance_resource_timing_get_initiator_type
         (unPerformanceResourceTiming (toPerformanceResourceTiming self)))
 
foreign import javascript unsafe "$1[\"redirectStart\"]"
        ghcjs_dom_performance_resource_timing_get_redirect_start ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectStart Mozilla PerformanceResourceTiming.redirectStart documentation> 
performanceResourceTimingGetRedirectStart ::
                                          (IsPerformanceResourceTiming self) => self -> IO Double
performanceResourceTimingGetRedirectStart self
  = ghcjs_dom_performance_resource_timing_get_redirect_start
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"redirectEnd\"]"
        ghcjs_dom_performance_resource_timing_get_redirect_end ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectEnd Mozilla PerformanceResourceTiming.redirectEnd documentation> 
performanceResourceTimingGetRedirectEnd ::
                                        (IsPerformanceResourceTiming self) => self -> IO Double
performanceResourceTimingGetRedirectEnd self
  = ghcjs_dom_performance_resource_timing_get_redirect_end
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"fetchStart\"]"
        ghcjs_dom_performance_resource_timing_get_fetch_start ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.fetchStart Mozilla PerformanceResourceTiming.fetchStart documentation> 
performanceResourceTimingGetFetchStart ::
                                       (IsPerformanceResourceTiming self) => self -> IO Double
performanceResourceTimingGetFetchStart self
  = ghcjs_dom_performance_resource_timing_get_fetch_start
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"domainLookupStart\"]"
        ghcjs_dom_performance_resource_timing_get_domain_lookup_start ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupStart Mozilla PerformanceResourceTiming.domainLookupStart documentation> 
performanceResourceTimingGetDomainLookupStart ::
                                              (IsPerformanceResourceTiming self) =>
                                                self -> IO Double
performanceResourceTimingGetDomainLookupStart self
  = ghcjs_dom_performance_resource_timing_get_domain_lookup_start
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"domainLookupEnd\"]"
        ghcjs_dom_performance_resource_timing_get_domain_lookup_end ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupEnd Mozilla PerformanceResourceTiming.domainLookupEnd documentation> 
performanceResourceTimingGetDomainLookupEnd ::
                                            (IsPerformanceResourceTiming self) => self -> IO Double
performanceResourceTimingGetDomainLookupEnd self
  = ghcjs_dom_performance_resource_timing_get_domain_lookup_end
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"connectStart\"]"
        ghcjs_dom_performance_resource_timing_get_connect_start ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectStart Mozilla PerformanceResourceTiming.connectStart documentation> 
performanceResourceTimingGetConnectStart ::
                                         (IsPerformanceResourceTiming self) => self -> IO Double
performanceResourceTimingGetConnectStart self
  = ghcjs_dom_performance_resource_timing_get_connect_start
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"connectEnd\"]"
        ghcjs_dom_performance_resource_timing_get_connect_end ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectEnd Mozilla PerformanceResourceTiming.connectEnd documentation> 
performanceResourceTimingGetConnectEnd ::
                                       (IsPerformanceResourceTiming self) => self -> IO Double
performanceResourceTimingGetConnectEnd self
  = ghcjs_dom_performance_resource_timing_get_connect_end
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"secureConnectionStart\"]"
        ghcjs_dom_performance_resource_timing_get_secure_connection_start
        :: JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.secureConnectionStart Mozilla PerformanceResourceTiming.secureConnectionStart documentation> 
performanceResourceTimingGetSecureConnectionStart ::
                                                  (IsPerformanceResourceTiming self) =>
                                                    self -> IO Double
performanceResourceTimingGetSecureConnectionStart self
  = ghcjs_dom_performance_resource_timing_get_secure_connection_start
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"requestStart\"]"
        ghcjs_dom_performance_resource_timing_get_request_start ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.requestStart Mozilla PerformanceResourceTiming.requestStart documentation> 
performanceResourceTimingGetRequestStart ::
                                         (IsPerformanceResourceTiming self) => self -> IO Double
performanceResourceTimingGetRequestStart self
  = ghcjs_dom_performance_resource_timing_get_request_start
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"responseEnd\"]"
        ghcjs_dom_performance_resource_timing_get_response_end ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.responseEnd Mozilla PerformanceResourceTiming.responseEnd documentation> 
performanceResourceTimingGetResponseEnd ::
                                        (IsPerformanceResourceTiming self) => self -> IO Double
performanceResourceTimingGetResponseEnd self
  = ghcjs_dom_performance_resource_timing_get_response_end
      (unPerformanceResourceTiming (toPerformanceResourceTiming self))
#else
module GHCJS.DOM.PerformanceResourceTiming (
  ) where
#endif
