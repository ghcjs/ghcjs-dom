{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DeviceOrientationEvent
       (ghcjs_dom_device_orientation_event_init_device_orientation_event,
        deviceOrientationEventInitDeviceOrientationEvent,
        ghcjs_dom_device_orientation_event_get_alpha,
        deviceOrientationEventGetAlpha,
        ghcjs_dom_device_orientation_event_get_beta,
        deviceOrientationEventGetBeta,
        ghcjs_dom_device_orientation_event_get_gamma,
        deviceOrientationEventGetGamma,
        ghcjs_dom_device_orientation_event_get_absolute,
        deviceOrientationEventGetAbsolute, DeviceOrientationEvent,
        IsDeviceOrientationEvent, castToDeviceOrientationEvent,
        gTypeDeviceOrientationEvent, toDeviceOrientationEvent)
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

 
foreign import javascript unsafe
        "$1[\"initDeviceOrientationEvent\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_device_orientation_event_init_device_orientation_event ::
        JSRef DeviceOrientationEvent ->
          JSString ->
            Bool -> Bool -> Double -> Double -> Double -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.initDeviceOrientationEvent Mozilla DeviceOrientationEvent.initDeviceOrientationEvent documentation> 
deviceOrientationEventInitDeviceOrientationEvent ::
                                                 (IsDeviceOrientationEvent self,
                                                  ToJSString type') =>
                                                   self ->
                                                     type' ->
                                                       Bool ->
                                                         Bool ->
                                                           Double ->
                                                             Double -> Double -> Bool -> IO ()
deviceOrientationEventInitDeviceOrientationEvent self type' bubbles
  cancelable alpha beta gamma absolute
  = ghcjs_dom_device_orientation_event_init_device_orientation_event
      (unDeviceOrientationEvent (toDeviceOrientationEvent self))
      (toJSString type')
      bubbles
      cancelable
      alpha
      beta
      gamma
      absolute
 
foreign import javascript unsafe "$1[\"alpha\"]"
        ghcjs_dom_device_orientation_event_get_alpha ::
        JSRef DeviceOrientationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
deviceOrientationEventGetAlpha ::
                               (IsDeviceOrientationEvent self) => self -> IO Double
deviceOrientationEventGetAlpha self
  = ghcjs_dom_device_orientation_event_get_alpha
      (unDeviceOrientationEvent (toDeviceOrientationEvent self))
 
foreign import javascript unsafe "$1[\"beta\"]"
        ghcjs_dom_device_orientation_event_get_beta ::
        JSRef DeviceOrientationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
deviceOrientationEventGetBeta ::
                              (IsDeviceOrientationEvent self) => self -> IO Double
deviceOrientationEventGetBeta self
  = ghcjs_dom_device_orientation_event_get_beta
      (unDeviceOrientationEvent (toDeviceOrientationEvent self))
 
foreign import javascript unsafe "$1[\"gamma\"]"
        ghcjs_dom_device_orientation_event_get_gamma ::
        JSRef DeviceOrientationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
deviceOrientationEventGetGamma ::
                               (IsDeviceOrientationEvent self) => self -> IO Double
deviceOrientationEventGetGamma self
  = ghcjs_dom_device_orientation_event_get_gamma
      (unDeviceOrientationEvent (toDeviceOrientationEvent self))
 
foreign import javascript unsafe "($1[\"absolute\"] ? 1 : 0)"
        ghcjs_dom_device_orientation_event_get_absolute ::
        JSRef DeviceOrientationEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
deviceOrientationEventGetAbsolute ::
                                  (IsDeviceOrientationEvent self) => self -> IO Bool
deviceOrientationEventGetAbsolute self
  = ghcjs_dom_device_orientation_event_get_absolute
      (unDeviceOrientationEvent (toDeviceOrientationEvent self))
#else
module GHCJS.DOM.DeviceOrientationEvent (
  ) where
#endif
