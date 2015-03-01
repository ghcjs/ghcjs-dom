{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMeterElement
       (js_setValue, setValue, js_getValue, getValue, js_setMin, setMin,
        js_getMin, getMin, js_setMax, setMax, js_getMax, getMax, js_setLow,
        setLow, js_getLow, getLow, js_setHigh, setHigh, js_getHigh,
        getHigh, js_setOptimum, setOptimum, js_getOptimum, getOptimum,
        js_getLabels, getLabels, HTMLMeterElement, castToHTMLMeterElement,
        gTypeHTMLMeterElement)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.value Mozilla HTMLMeterElement.value documentation> 
setValue :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setValue self val
  = liftIO (js_setValue (unHTMLMeterElement self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.value Mozilla HTMLMeterElement.value documentation> 
getValue :: (MonadIO m) => HTMLMeterElement -> m Double
getValue self = liftIO (js_getValue (unHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"min\"] = $2;" js_setMin ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.min Mozilla HTMLMeterElement.min documentation> 
setMin :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setMin self val = liftIO (js_setMin (unHTMLMeterElement self) val)
 
foreign import javascript unsafe "$1[\"min\"]" js_getMin ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.min Mozilla HTMLMeterElement.min documentation> 
getMin :: (MonadIO m) => HTMLMeterElement -> m Double
getMin self = liftIO (js_getMin (unHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"max\"] = $2;" js_setMax ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.max Mozilla HTMLMeterElement.max documentation> 
setMax :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setMax self val = liftIO (js_setMax (unHTMLMeterElement self) val)
 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.max Mozilla HTMLMeterElement.max documentation> 
getMax :: (MonadIO m) => HTMLMeterElement -> m Double
getMax self = liftIO (js_getMax (unHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"low\"] = $2;" js_setLow ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.low Mozilla HTMLMeterElement.low documentation> 
setLow :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setLow self val = liftIO (js_setLow (unHTMLMeterElement self) val)
 
foreign import javascript unsafe "$1[\"low\"]" js_getLow ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.low Mozilla HTMLMeterElement.low documentation> 
getLow :: (MonadIO m) => HTMLMeterElement -> m Double
getLow self = liftIO (js_getLow (unHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"high\"] = $2;" js_setHigh ::
        JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.high Mozilla HTMLMeterElement.high documentation> 
setHigh :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setHigh self val
  = liftIO (js_setHigh (unHTMLMeterElement self) val)
 
foreign import javascript unsafe "$1[\"high\"]" js_getHigh ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.high Mozilla HTMLMeterElement.high documentation> 
getHigh :: (MonadIO m) => HTMLMeterElement -> m Double
getHigh self = liftIO (js_getHigh (unHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"optimum\"] = $2;"
        js_setOptimum :: JSRef HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.optimum Mozilla HTMLMeterElement.optimum documentation> 
setOptimum :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setOptimum self val
  = liftIO (js_setOptimum (unHTMLMeterElement self) val)
 
foreign import javascript unsafe "$1[\"optimum\"]" js_getOptimum ::
        JSRef HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.optimum Mozilla HTMLMeterElement.optimum documentation> 
getOptimum :: (MonadIO m) => HTMLMeterElement -> m Double
getOptimum self = liftIO (js_getOptimum (unHTMLMeterElement self))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        JSRef HTMLMeterElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.labels Mozilla HTMLMeterElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLMeterElement -> m (Maybe NodeList)
getLabels self
  = liftIO ((js_getLabels (unHTMLMeterElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLMeterElement (
  ) where
#endif
