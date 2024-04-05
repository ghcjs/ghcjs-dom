{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PerformanceResourceTiming
       (js_getInitiatorType, getInitiatorType, js_getNextHopProtocol,
        getNextHopProtocol, js_getWorkerStart, getWorkerStart,
        js_getRedirectStart, getRedirectStart, js_getRedirectEnd,
        getRedirectEnd, js_getFetchStart, getFetchStart,
        js_getDomainLookupStart, getDomainLookupStart,
        js_getDomainLookupEnd, getDomainLookupEnd, js_getConnectStart,
        getConnectStart, js_getConnectEnd, getConnectEnd,
        js_getSecureConnectionStart, getSecureConnectionStart,
        js_getRequestStart, getRequestStart, js_getResponseStart,
        getResponseStart, js_getResponseEnd, getResponseEnd,
        PerformanceResourceTiming(..), gTypePerformanceResourceTiming)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"initiatorType\"]"
        js_getInitiatorType :: PerformanceResourceTiming -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.initiatorType Mozilla PerformanceResourceTiming.initiatorType documentation> 
getInitiatorType ::
                 (MonadIO m, FromJSString result) =>
                   PerformanceResourceTiming -> m result
getInitiatorType self
  = liftIO (fromJSString <$> (js_getInitiatorType self))
 
foreign import javascript unsafe "$1[\"nextHopProtocol\"]"
        js_getNextHopProtocol :: PerformanceResourceTiming -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.nextHopProtocol Mozilla PerformanceResourceTiming.nextHopProtocol documentation> 
getNextHopProtocol ::
                   (MonadIO m, FromJSString result) =>
                     PerformanceResourceTiming -> m result
getNextHopProtocol self
  = liftIO (fromJSString <$> (js_getNextHopProtocol self))
 
foreign import javascript unsafe "$1[\"workerStart\"]"
        js_getWorkerStart ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.workerStart Mozilla PerformanceResourceTiming.workerStart documentation> 
getWorkerStart ::
               (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getWorkerStart self = liftIO (js_getWorkerStart self)
 
foreign import javascript unsafe "$1[\"redirectStart\"]"
        js_getRedirectStart ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectStart Mozilla PerformanceResourceTiming.redirectStart documentation> 
getRedirectStart ::
                 (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getRedirectStart self = liftIO (js_getRedirectStart self)
 
foreign import javascript unsafe "$1[\"redirectEnd\"]"
        js_getRedirectEnd ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.redirectEnd Mozilla PerformanceResourceTiming.redirectEnd documentation> 
getRedirectEnd ::
               (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getRedirectEnd self = liftIO (js_getRedirectEnd self)
 
foreign import javascript unsafe "$1[\"fetchStart\"]"
        js_getFetchStart ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.fetchStart Mozilla PerformanceResourceTiming.fetchStart documentation> 
getFetchStart ::
              (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getFetchStart self = liftIO (js_getFetchStart self)
 
foreign import javascript unsafe "$1[\"domainLookupStart\"]"
        js_getDomainLookupStart ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupStart Mozilla PerformanceResourceTiming.domainLookupStart documentation> 
getDomainLookupStart ::
                     (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getDomainLookupStart self = liftIO (js_getDomainLookupStart self)
 
foreign import javascript unsafe "$1[\"domainLookupEnd\"]"
        js_getDomainLookupEnd ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.domainLookupEnd Mozilla PerformanceResourceTiming.domainLookupEnd documentation> 
getDomainLookupEnd ::
                   (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getDomainLookupEnd self = liftIO (js_getDomainLookupEnd self)
 
foreign import javascript unsafe "$1[\"connectStart\"]"
        js_getConnectStart ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectStart Mozilla PerformanceResourceTiming.connectStart documentation> 
getConnectStart ::
                (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getConnectStart self = liftIO (js_getConnectStart self)
 
foreign import javascript unsafe "$1[\"connectEnd\"]"
        js_getConnectEnd ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.connectEnd Mozilla PerformanceResourceTiming.connectEnd documentation> 
getConnectEnd ::
              (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getConnectEnd self = liftIO (js_getConnectEnd self)
 
foreign import javascript unsafe "$1[\"secureConnectionStart\"]"
        js_getSecureConnectionStart ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.secureConnectionStart Mozilla PerformanceResourceTiming.secureConnectionStart documentation> 
getSecureConnectionStart ::
                         (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getSecureConnectionStart self
  = liftIO (js_getSecureConnectionStart self)
 
foreign import javascript unsafe "$1[\"requestStart\"]"
        js_getRequestStart ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.requestStart Mozilla PerformanceResourceTiming.requestStart documentation> 
getRequestStart ::
                (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getRequestStart self = liftIO (js_getRequestStart self)
 
foreign import javascript unsafe "$1[\"responseStart\"]"
        js_getResponseStart ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.responseStart Mozilla PerformanceResourceTiming.responseStart documentation> 
getResponseStart ::
                 (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getResponseStart self = liftIO (js_getResponseStart self)
 
foreign import javascript unsafe "$1[\"responseEnd\"]"
        js_getResponseEnd ::
        PerformanceResourceTiming -> IO DOMHighResTimeStamp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming.responseEnd Mozilla PerformanceResourceTiming.responseEnd documentation> 
getResponseEnd ::
               (MonadIO m) => PerformanceResourceTiming -> m DOMHighResTimeStamp
getResponseEnd self = liftIO (js_getResponseEnd self)