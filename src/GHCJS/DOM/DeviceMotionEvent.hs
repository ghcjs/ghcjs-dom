{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DeviceMotionEvent
       (ghcjs_dom_device_motion_event_init_device_motion_event,
        deviceMotionEventInitDeviceMotionEvent,
        ghcjs_dom_device_motion_event_get_acceleration,
        deviceMotionEventGetAcceleration,
        ghcjs_dom_device_motion_event_get_acceleration_including_gravity,
        deviceMotionEventGetAccelerationIncludingGravity,
        ghcjs_dom_device_motion_event_get_rotation_rate,
        deviceMotionEventGetRotationRate,
        ghcjs_dom_device_motion_event_get_interval,
        deviceMotionEventGetInterval, DeviceMotionEvent,
        IsDeviceMotionEvent, castToDeviceMotionEvent,
        gTypeDeviceMotionEvent, toDeviceMotionEvent)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"initDeviceMotionEvent\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_device_motion_event_init_device_motion_event ::
        JSRef DeviceMotionEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef Acceleration ->
                  JSRef Acceleration -> JSRef RotationRate -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.initDeviceMotionEvent Mozilla DeviceMotionEvent.initDeviceMotionEvent documentation> 
deviceMotionEventInitDeviceMotionEvent ::
                                       (MonadIO m, IsDeviceMotionEvent self, ToJSString type',
                                        IsAcceleration acceleration,
                                        IsAcceleration accelerationIncludingGravity,
                                        IsRotationRate rotationRate) =>
                                         self ->
                                           type' ->
                                             Bool ->
                                               Bool ->
                                                 Maybe acceleration ->
                                                   Maybe accelerationIncludingGravity ->
                                                     Maybe rotationRate -> Double -> m ()
deviceMotionEventInitDeviceMotionEvent self type' bubbles
  cancelable acceleration accelerationIncludingGravity rotationRate
  interval
  = liftIO
      (ghcjs_dom_device_motion_event_init_device_motion_event
         (unDeviceMotionEvent (toDeviceMotionEvent self))
         (toJSString type')
         bubbles
         cancelable
         (maybe jsNull (unAcceleration . toAcceleration) acceleration)
         (maybe jsNull (unAcceleration . toAcceleration)
            accelerationIncludingGravity)
         (maybe jsNull (unRotationRate . toRotationRate) rotationRate)
         interval)
 
foreign import javascript unsafe "$1[\"acceleration\"]"
        ghcjs_dom_device_motion_event_get_acceleration ::
        JSRef DeviceMotionEvent -> IO (JSRef Acceleration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.acceleration Mozilla DeviceMotionEvent.acceleration documentation> 
deviceMotionEventGetAcceleration ::
                                 (MonadIO m, IsDeviceMotionEvent self) =>
                                   self -> m (Maybe Acceleration)
deviceMotionEventGetAcceleration self
  = liftIO
      ((ghcjs_dom_device_motion_event_get_acceleration
          (unDeviceMotionEvent (toDeviceMotionEvent self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"accelerationIncludingGravity\"]"
        ghcjs_dom_device_motion_event_get_acceleration_including_gravity ::
        JSRef DeviceMotionEvent -> IO (JSRef Acceleration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
deviceMotionEventGetAccelerationIncludingGravity ::
                                                 (MonadIO m, IsDeviceMotionEvent self) =>
                                                   self -> m (Maybe Acceleration)
deviceMotionEventGetAccelerationIncludingGravity self
  = liftIO
      ((ghcjs_dom_device_motion_event_get_acceleration_including_gravity
          (unDeviceMotionEvent (toDeviceMotionEvent self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rotationRate\"]"
        ghcjs_dom_device_motion_event_get_rotation_rate ::
        JSRef DeviceMotionEvent -> IO (JSRef RotationRate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
deviceMotionEventGetRotationRate ::
                                 (MonadIO m, IsDeviceMotionEvent self) =>
                                   self -> m (Maybe RotationRate)
deviceMotionEventGetRotationRate self
  = liftIO
      ((ghcjs_dom_device_motion_event_get_rotation_rate
          (unDeviceMotionEvent (toDeviceMotionEvent self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"interval\"]"
        ghcjs_dom_device_motion_event_get_interval ::
        JSRef DeviceMotionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
deviceMotionEventGetInterval ::
                             (MonadIO m, IsDeviceMotionEvent self) => self -> m Double
deviceMotionEventGetInterval self
  = liftIO
      (ghcjs_dom_device_motion_event_get_interval
         (unDeviceMotionEvent (toDeviceMotionEvent self)))
#else
module GHCJS.DOM.DeviceMotionEvent (
  ) where
#endif
