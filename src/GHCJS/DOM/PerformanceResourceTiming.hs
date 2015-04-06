{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PerformanceResourceTiming
       (js_getInitiatorType, getInitiatorType, js_getRedirectStart,
        getRedirectStart, js_getRedirectEnd, getRedirectEnd,
        js_getFetchStart, getFetchStart, js_getDomainLookupStart,
        getDomainLookupStart, js_getDomainLookupEnd, getDomainLookupEnd,
        js_getConnectStart, getConnectStart, js_getConnectEnd,
        getConnectEnd, js_getSecureConnectionStart,
        getSecureConnectionStart, js_getRequestStart, getRequestStart,
        js_getResponseEnd, getResponseEnd, PerformanceResourceTiming,
        castToPerformanceResourceTiming, gTypePerformanceResourceTiming)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"initiatorType\"]"
        js_getInitiatorType ::
        JSRef PerformanceResourceTiming -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.initiatorType Mozilla PerformanceResourceTiming.initiatorType documentation> 
getInitiatorType ::
                 (MonadIO m, FromJSString result) =>
                   PerformanceResourceTiming -> m result
getInitiatorType self
  = liftIO
      (fromJSString <$>
         (js_getInitiatorType (unPerformanceResourceTiming self)))
 
foreign import javascript unsafe "$1[\"redirectStart\"]"
        js_getRedirectStart :: JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectStart Mozilla PerformanceResourceTiming.redirectStart documentation> 
getRedirectStart ::
                 (MonadIO m) => PerformanceResourceTiming -> m Double
getRedirectStart self
  = liftIO (js_getRedirectStart (unPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"redirectEnd\"]"
        js_getRedirectEnd :: JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectEnd Mozilla PerformanceResourceTiming.redirectEnd documentation> 
getRedirectEnd ::
               (MonadIO m) => PerformanceResourceTiming -> m Double
getRedirectEnd self
  = liftIO (js_getRedirectEnd (unPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"fetchStart\"]"
        js_getFetchStart :: JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.fetchStart Mozilla PerformanceResourceTiming.fetchStart documentation> 
getFetchStart ::
              (MonadIO m) => PerformanceResourceTiming -> m Double
getFetchStart self
  = liftIO (js_getFetchStart (unPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"domainLookupStart\"]"
        js_getDomainLookupStart ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupStart Mozilla PerformanceResourceTiming.domainLookupStart documentation> 
getDomainLookupStart ::
                     (MonadIO m) => PerformanceResourceTiming -> m Double
getDomainLookupStart self
  = liftIO
      (js_getDomainLookupStart (unPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"domainLookupEnd\"]"
        js_getDomainLookupEnd ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupEnd Mozilla PerformanceResourceTiming.domainLookupEnd documentation> 
getDomainLookupEnd ::
                   (MonadIO m) => PerformanceResourceTiming -> m Double
getDomainLookupEnd self
  = liftIO (js_getDomainLookupEnd (unPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"connectStart\"]"
        js_getConnectStart :: JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectStart Mozilla PerformanceResourceTiming.connectStart documentation> 
getConnectStart ::
                (MonadIO m) => PerformanceResourceTiming -> m Double
getConnectStart self
  = liftIO (js_getConnectStart (unPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"connectEnd\"]"
        js_getConnectEnd :: JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectEnd Mozilla PerformanceResourceTiming.connectEnd documentation> 
getConnectEnd ::
              (MonadIO m) => PerformanceResourceTiming -> m Double
getConnectEnd self
  = liftIO (js_getConnectEnd (unPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"secureConnectionStart\"]"
        js_getSecureConnectionStart ::
        JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.secureConnectionStart Mozilla PerformanceResourceTiming.secureConnectionStart documentation> 
getSecureConnectionStart ::
                         (MonadIO m) => PerformanceResourceTiming -> m Double
getSecureConnectionStart self
  = liftIO
      (js_getSecureConnectionStart (unPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"requestStart\"]"
        js_getRequestStart :: JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.requestStart Mozilla PerformanceResourceTiming.requestStart documentation> 
getRequestStart ::
                (MonadIO m) => PerformanceResourceTiming -> m Double
getRequestStart self
  = liftIO (js_getRequestStart (unPerformanceResourceTiming self))
 
foreign import javascript unsafe "$1[\"responseEnd\"]"
        js_getResponseEnd :: JSRef PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.responseEnd Mozilla PerformanceResourceTiming.responseEnd documentation> 
getResponseEnd ::
               (MonadIO m) => PerformanceResourceTiming -> m Double
getResponseEnd self
  = liftIO (js_getResponseEnd (unPerformanceResourceTiming self))
#else
module GHCJS.DOM.PerformanceResourceTiming (
  ) where
#endif
