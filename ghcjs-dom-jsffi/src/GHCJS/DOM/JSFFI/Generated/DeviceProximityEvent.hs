{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DeviceProximityEvent
       (js_getValue, getValue, js_getMin, getMin, js_getMax, getMax,
        DeviceProximityEvent, castToDeviceProximityEvent,
        gTypeDeviceProximityEvent)
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
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.value Mozilla DeviceProximityEvent.value documentation> 
getValue :: (MonadIO m) => DeviceProximityEvent -> m Double
getValue self = liftIO (js_getValue (self))
 
foreign import javascript unsafe "$1[\"min\"]" js_getMin ::
        DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.min Mozilla DeviceProximityEvent.min documentation> 
getMin :: (MonadIO m) => DeviceProximityEvent -> m Double
getMin self = liftIO (js_getMin (self))
 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.max Mozilla DeviceProximityEvent.max documentation> 
getMax :: (MonadIO m) => DeviceProximityEvent -> m Double
getMax self = liftIO (js_getMax (self))