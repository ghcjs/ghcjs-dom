{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLMeterElement
       (js_setValue, setValue, js_getValue, getValue, js_setMin, setMin,
        js_getMin, getMin, js_setMax, setMax, js_getMax, getMax, js_setLow,
        setLow, js_getLow, getLow, js_setHigh, setHigh, js_getHigh,
        getHigh, js_setOptimum, setOptimum, js_getOptimum, getOptimum,
        js_getLabels, getLabels, HTMLMeterElement, castToHTMLMeterElement,
        gTypeHTMLMeterElement)
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
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.value Mozilla HTMLMeterElement.value documentation> 
setValue :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setValue self val = liftIO (js_setValue (self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.value Mozilla HTMLMeterElement.value documentation> 
getValue :: (MonadIO m) => HTMLMeterElement -> m Double
getValue self = liftIO (js_getValue (self))
 
foreign import javascript unsafe "$1[\"min\"] = $2;" js_setMin ::
        HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.min Mozilla HTMLMeterElement.min documentation> 
setMin :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setMin self val = liftIO (js_setMin (self) val)
 
foreign import javascript unsafe "$1[\"min\"]" js_getMin ::
        HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.min Mozilla HTMLMeterElement.min documentation> 
getMin :: (MonadIO m) => HTMLMeterElement -> m Double
getMin self = liftIO (js_getMin (self))
 
foreign import javascript unsafe "$1[\"max\"] = $2;" js_setMax ::
        HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.max Mozilla HTMLMeterElement.max documentation> 
setMax :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setMax self val = liftIO (js_setMax (self) val)
 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.max Mozilla HTMLMeterElement.max documentation> 
getMax :: (MonadIO m) => HTMLMeterElement -> m Double
getMax self = liftIO (js_getMax (self))
 
foreign import javascript unsafe "$1[\"low\"] = $2;" js_setLow ::
        HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.low Mozilla HTMLMeterElement.low documentation> 
setLow :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setLow self val = liftIO (js_setLow (self) val)
 
foreign import javascript unsafe "$1[\"low\"]" js_getLow ::
        HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.low Mozilla HTMLMeterElement.low documentation> 
getLow :: (MonadIO m) => HTMLMeterElement -> m Double
getLow self = liftIO (js_getLow (self))
 
foreign import javascript unsafe "$1[\"high\"] = $2;" js_setHigh ::
        HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.high Mozilla HTMLMeterElement.high documentation> 
setHigh :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setHigh self val = liftIO (js_setHigh (self) val)
 
foreign import javascript unsafe "$1[\"high\"]" js_getHigh ::
        HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.high Mozilla HTMLMeterElement.high documentation> 
getHigh :: (MonadIO m) => HTMLMeterElement -> m Double
getHigh self = liftIO (js_getHigh (self))
 
foreign import javascript unsafe "$1[\"optimum\"] = $2;"
        js_setOptimum :: HTMLMeterElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.optimum Mozilla HTMLMeterElement.optimum documentation> 
setOptimum :: (MonadIO m) => HTMLMeterElement -> Double -> m ()
setOptimum self val = liftIO (js_setOptimum (self) val)
 
foreign import javascript unsafe "$1[\"optimum\"]" js_getOptimum ::
        HTMLMeterElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.optimum Mozilla HTMLMeterElement.optimum documentation> 
getOptimum :: (MonadIO m) => HTMLMeterElement -> m Double
getOptimum self = liftIO (js_getOptimum (self))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        HTMLMeterElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.labels Mozilla HTMLMeterElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLMeterElement -> m (Maybe NodeList)
getLabels self = liftIO (nullableToMaybe <$> (js_getLabels (self)))