{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PerformanceResourceTiming
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
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"initiatorType\"]"
        js_getInitiatorType :: PerformanceResourceTiming -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.initiatorType Mozilla PerformanceResourceTiming.initiatorType documentation> 
getInitiatorType ::
                 (MonadIO m, FromJSString result) =>
                   PerformanceResourceTiming -> m result
getInitiatorType self
  = liftIO (fromJSString <$> (js_getInitiatorType (self)))
 
foreign import javascript unsafe "$1[\"redirectStart\"]"
        js_getRedirectStart :: PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectStart Mozilla PerformanceResourceTiming.redirectStart documentation> 
getRedirectStart ::
                 (MonadIO m) => PerformanceResourceTiming -> m Double
getRedirectStart self = liftIO (js_getRedirectStart (self))
 
foreign import javascript unsafe "$1[\"redirectEnd\"]"
        js_getRedirectEnd :: PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectEnd Mozilla PerformanceResourceTiming.redirectEnd documentation> 
getRedirectEnd ::
               (MonadIO m) => PerformanceResourceTiming -> m Double
getRedirectEnd self = liftIO (js_getRedirectEnd (self))
 
foreign import javascript unsafe "$1[\"fetchStart\"]"
        js_getFetchStart :: PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.fetchStart Mozilla PerformanceResourceTiming.fetchStart documentation> 
getFetchStart ::
              (MonadIO m) => PerformanceResourceTiming -> m Double
getFetchStart self = liftIO (js_getFetchStart (self))
 
foreign import javascript unsafe "$1[\"domainLookupStart\"]"
        js_getDomainLookupStart :: PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupStart Mozilla PerformanceResourceTiming.domainLookupStart documentation> 
getDomainLookupStart ::
                     (MonadIO m) => PerformanceResourceTiming -> m Double
getDomainLookupStart self = liftIO (js_getDomainLookupStart (self))
 
foreign import javascript unsafe "$1[\"domainLookupEnd\"]"
        js_getDomainLookupEnd :: PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupEnd Mozilla PerformanceResourceTiming.domainLookupEnd documentation> 
getDomainLookupEnd ::
                   (MonadIO m) => PerformanceResourceTiming -> m Double
getDomainLookupEnd self = liftIO (js_getDomainLookupEnd (self))
 
foreign import javascript unsafe "$1[\"connectStart\"]"
        js_getConnectStart :: PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectStart Mozilla PerformanceResourceTiming.connectStart documentation> 
getConnectStart ::
                (MonadIO m) => PerformanceResourceTiming -> m Double
getConnectStart self = liftIO (js_getConnectStart (self))
 
foreign import javascript unsafe "$1[\"connectEnd\"]"
        js_getConnectEnd :: PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectEnd Mozilla PerformanceResourceTiming.connectEnd documentation> 
getConnectEnd ::
              (MonadIO m) => PerformanceResourceTiming -> m Double
getConnectEnd self = liftIO (js_getConnectEnd (self))
 
foreign import javascript unsafe "$1[\"secureConnectionStart\"]"
        js_getSecureConnectionStart ::
        PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.secureConnectionStart Mozilla PerformanceResourceTiming.secureConnectionStart documentation> 
getSecureConnectionStart ::
                         (MonadIO m) => PerformanceResourceTiming -> m Double
getSecureConnectionStart self
  = liftIO (js_getSecureConnectionStart (self))
 
foreign import javascript unsafe "$1[\"requestStart\"]"
        js_getRequestStart :: PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.requestStart Mozilla PerformanceResourceTiming.requestStart documentation> 
getRequestStart ::
                (MonadIO m) => PerformanceResourceTiming -> m Double
getRequestStart self = liftIO (js_getRequestStart (self))
 
foreign import javascript unsafe "$1[\"responseEnd\"]"
        js_getResponseEnd :: PerformanceResourceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.responseEnd Mozilla PerformanceResourceTiming.responseEnd documentation> 
getResponseEnd ::
               (MonadIO m) => PerformanceResourceTiming -> m Double
getResponseEnd self = liftIO (js_getResponseEnd (self))