{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DeviceProximityEvent
       (ghcjs_dom_device_proximity_event_get_value,
        deviceProximityEventGetValue,
        ghcjs_dom_device_proximity_event_get_min,
        deviceProximityEventGetMin,
        ghcjs_dom_device_proximity_event_get_max,
        deviceProximityEventGetMax, DeviceProximityEvent,
        IsDeviceProximityEvent, castToDeviceProximityEvent,
        gTypeDeviceProximityEvent, toDeviceProximityEvent)
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

 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_device_proximity_event_get_value ::
        JSRef DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.value Mozilla DeviceProximityEvent.value documentation> 
deviceProximityEventGetValue ::
                             (IsDeviceProximityEvent self) => self -> IO Double
deviceProximityEventGetValue self
  = ghcjs_dom_device_proximity_event_get_value
      (unDeviceProximityEvent (toDeviceProximityEvent self))
 
foreign import javascript unsafe "$1[\"min\"]"
        ghcjs_dom_device_proximity_event_get_min ::
        JSRef DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.min Mozilla DeviceProximityEvent.min documentation> 
deviceProximityEventGetMin ::
                           (IsDeviceProximityEvent self) => self -> IO Double
deviceProximityEventGetMin self
  = ghcjs_dom_device_proximity_event_get_min
      (unDeviceProximityEvent (toDeviceProximityEvent self))
 
foreign import javascript unsafe "$1[\"max\"]"
        ghcjs_dom_device_proximity_event_get_max ::
        JSRef DeviceProximityEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceProximityEvent.max Mozilla DeviceProximityEvent.max documentation> 
deviceProximityEventGetMax ::
                           (IsDeviceProximityEvent self) => self -> IO Double
deviceProximityEventGetMax self
  = ghcjs_dom_device_proximity_event_get_max
      (unDeviceProximityEvent (toDeviceProximityEvent self))
#else
module GHCJS.DOM.DeviceProximityEvent (
  ) where
#endif
