{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DeviceProximityEvent
       (js_getValue, getValue, js_getMin, getMin, js_getMax, getMax,
        DeviceProximityEvent, castToDeviceProximityEvent,
        gTypeDeviceProximityEvent)
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

 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.value Mozilla DeviceProximityEvent.value documentation> 
getValue :: (MonadIO m) => DeviceProximityEvent -> m Double
getValue self = liftIO (js_getValue (unDeviceProximityEvent self))
 
foreign import javascript unsafe "$1[\"min\"]" js_getMin ::
        JSRef DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.min Mozilla DeviceProximityEvent.min documentation> 
getMin :: (MonadIO m) => DeviceProximityEvent -> m Double
getMin self = liftIO (js_getMin (unDeviceProximityEvent self))
 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        JSRef DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.max Mozilla DeviceProximityEvent.max documentation> 
getMax :: (MonadIO m) => DeviceProximityEvent -> m Double
getMax self = liftIO (js_getMax (unDeviceProximityEvent self))
#else
module GHCJS.DOM.DeviceProximityEvent (
  ) where
#endif
