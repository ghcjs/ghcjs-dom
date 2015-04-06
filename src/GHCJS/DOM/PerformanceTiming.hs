{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PerformanceTiming
       (js_getNavigationStart, getNavigationStart, js_getUnloadEventStart,
        getUnloadEventStart, js_getUnloadEventEnd, getUnloadEventEnd,
        js_getRedirectStart, getRedirectStart, js_getRedirectEnd,
        getRedirectEnd, js_getFetchStart, getFetchStart,
        js_getDomainLookupStart, getDomainLookupStart,
        js_getDomainLookupEnd, getDomainLookupEnd, js_getConnectStart,
        getConnectStart, js_getConnectEnd, getConnectEnd,
        js_getSecureConnectionStart, getSecureConnectionStart,
        js_getRequestStart, getRequestStart, js_getResponseStart,
        getResponseStart, js_getResponseEnd, getResponseEnd,
        js_getDomLoading, getDomLoading, js_getDomInteractive,
        getDomInteractive, js_getDomContentLoadedEventStart,
        getDomContentLoadedEventStart, js_getDomContentLoadedEventEnd,
        getDomContentLoadedEventEnd, js_getDomComplete, getDomComplete,
        js_getLoadEventStart, getLoadEventStart, js_getLoadEventEnd,
        getLoadEventEnd, PerformanceTiming, castToPerformanceTiming,
        gTypePerformanceTiming)
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

 
foreign import javascript unsafe "$1[\"navigationStart\"]"
        js_getNavigationStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.navigationStart Mozilla PerformanceTiming.navigationStart documentation> 
getNavigationStart :: (MonadIO m) => PerformanceTiming -> m Word64
getNavigationStart self
  = liftIO
      (round <$> (js_getNavigationStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"unloadEventStart\"]"
        js_getUnloadEventStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.unloadEventStart Mozilla PerformanceTiming.unloadEventStart documentation> 
getUnloadEventStart :: (MonadIO m) => PerformanceTiming -> m Word64
getUnloadEventStart self
  = liftIO
      (round <$> (js_getUnloadEventStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"unloadEventEnd\"]"
        js_getUnloadEventEnd :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.unloadEventEnd Mozilla PerformanceTiming.unloadEventEnd documentation> 
getUnloadEventEnd :: (MonadIO m) => PerformanceTiming -> m Word64
getUnloadEventEnd self
  = liftIO
      (round <$> (js_getUnloadEventEnd (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"redirectStart\"]"
        js_getRedirectStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.redirectStart Mozilla PerformanceTiming.redirectStart documentation> 
getRedirectStart :: (MonadIO m) => PerformanceTiming -> m Word64
getRedirectStart self
  = liftIO
      (round <$> (js_getRedirectStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"redirectEnd\"]"
        js_getRedirectEnd :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.redirectEnd Mozilla PerformanceTiming.redirectEnd documentation> 
getRedirectEnd :: (MonadIO m) => PerformanceTiming -> m Word64
getRedirectEnd self
  = liftIO (round <$> (js_getRedirectEnd (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"fetchStart\"]"
        js_getFetchStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.fetchStart Mozilla PerformanceTiming.fetchStart documentation> 
getFetchStart :: (MonadIO m) => PerformanceTiming -> m Word64
getFetchStart self
  = liftIO (round <$> (js_getFetchStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domainLookupStart\"]"
        js_getDomainLookupStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domainLookupStart Mozilla PerformanceTiming.domainLookupStart documentation> 
getDomainLookupStart ::
                     (MonadIO m) => PerformanceTiming -> m Word64
getDomainLookupStart self
  = liftIO
      (round <$> (js_getDomainLookupStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domainLookupEnd\"]"
        js_getDomainLookupEnd :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domainLookupEnd Mozilla PerformanceTiming.domainLookupEnd documentation> 
getDomainLookupEnd :: (MonadIO m) => PerformanceTiming -> m Word64
getDomainLookupEnd self
  = liftIO
      (round <$> (js_getDomainLookupEnd (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"connectStart\"]"
        js_getConnectStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.connectStart Mozilla PerformanceTiming.connectStart documentation> 
getConnectStart :: (MonadIO m) => PerformanceTiming -> m Word64
getConnectStart self
  = liftIO
      (round <$> (js_getConnectStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"connectEnd\"]"
        js_getConnectEnd :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.connectEnd Mozilla PerformanceTiming.connectEnd documentation> 
getConnectEnd :: (MonadIO m) => PerformanceTiming -> m Word64
getConnectEnd self
  = liftIO (round <$> (js_getConnectEnd (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"secureConnectionStart\"]"
        js_getSecureConnectionStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.secureConnectionStart Mozilla PerformanceTiming.secureConnectionStart documentation> 
getSecureConnectionStart ::
                         (MonadIO m) => PerformanceTiming -> m Word64
getSecureConnectionStart self
  = liftIO
      (round <$>
         (js_getSecureConnectionStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"requestStart\"]"
        js_getRequestStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.requestStart Mozilla PerformanceTiming.requestStart documentation> 
getRequestStart :: (MonadIO m) => PerformanceTiming -> m Word64
getRequestStart self
  = liftIO
      (round <$> (js_getRequestStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"responseStart\"]"
        js_getResponseStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.responseStart Mozilla PerformanceTiming.responseStart documentation> 
getResponseStart :: (MonadIO m) => PerformanceTiming -> m Word64
getResponseStart self
  = liftIO
      (round <$> (js_getResponseStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"responseEnd\"]"
        js_getResponseEnd :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.responseEnd Mozilla PerformanceTiming.responseEnd documentation> 
getResponseEnd :: (MonadIO m) => PerformanceTiming -> m Word64
getResponseEnd self
  = liftIO (round <$> (js_getResponseEnd (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domLoading\"]"
        js_getDomLoading :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domLoading Mozilla PerformanceTiming.domLoading documentation> 
getDomLoading :: (MonadIO m) => PerformanceTiming -> m Word64
getDomLoading self
  = liftIO (round <$> (js_getDomLoading (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domInteractive\"]"
        js_getDomInteractive :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domInteractive Mozilla PerformanceTiming.domInteractive documentation> 
getDomInteractive :: (MonadIO m) => PerformanceTiming -> m Word64
getDomInteractive self
  = liftIO
      (round <$> (js_getDomInteractive (unPerformanceTiming self)))
 
foreign import javascript unsafe
        "$1[\"domContentLoadedEventStart\"]"
        js_getDomContentLoadedEventStart ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domContentLoadedEventStart Mozilla PerformanceTiming.domContentLoadedEventStart documentation> 
getDomContentLoadedEventStart ::
                              (MonadIO m) => PerformanceTiming -> m Word64
getDomContentLoadedEventStart self
  = liftIO
      (round <$>
         (js_getDomContentLoadedEventStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domContentLoadedEventEnd\"]"
        js_getDomContentLoadedEventEnd ::
        JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domContentLoadedEventEnd Mozilla PerformanceTiming.domContentLoadedEventEnd documentation> 
getDomContentLoadedEventEnd ::
                            (MonadIO m) => PerformanceTiming -> m Word64
getDomContentLoadedEventEnd self
  = liftIO
      (round <$>
         (js_getDomContentLoadedEventEnd (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"domComplete\"]"
        js_getDomComplete :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.domComplete Mozilla PerformanceTiming.domComplete documentation> 
getDomComplete :: (MonadIO m) => PerformanceTiming -> m Word64
getDomComplete self
  = liftIO (round <$> (js_getDomComplete (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"loadEventStart\"]"
        js_getLoadEventStart :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.loadEventStart Mozilla PerformanceTiming.loadEventStart documentation> 
getLoadEventStart :: (MonadIO m) => PerformanceTiming -> m Word64
getLoadEventStart self
  = liftIO
      (round <$> (js_getLoadEventStart (unPerformanceTiming self)))
 
foreign import javascript unsafe "$1[\"loadEventEnd\"]"
        js_getLoadEventEnd :: JSRef PerformanceTiming -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming.loadEventEnd Mozilla PerformanceTiming.loadEventEnd documentation> 
getLoadEventEnd :: (MonadIO m) => PerformanceTiming -> m Word64
getLoadEventEnd self
  = liftIO
      (round <$> (js_getLoadEventEnd (unPerformanceTiming self)))
#else
module GHCJS.DOM.PerformanceTiming (
  module Graphics.UI.Gtk.WebKit.DOM.PerformanceTiming
  ) where
import Graphics.UI.Gtk.WebKit.DOM.PerformanceTiming
#endif
