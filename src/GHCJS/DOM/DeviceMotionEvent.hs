{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DeviceMotionEvent
       (js_initDeviceMotionEvent, initDeviceMotionEvent,
        js_getAcceleration, getAcceleration,
        js_getAccelerationIncludingGravity,
        getAccelerationIncludingGravity, js_getRotationRate,
        getRotationRate, js_getInterval, getInterval, DeviceMotionEvent,
        castToDeviceMotionEvent, gTypeDeviceMotionEvent)
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

 
foreign import javascript unsafe
        "$1[\"initDeviceMotionEvent\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_initDeviceMotionEvent ::
        JSRef DeviceMotionEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef Acceleration ->
                  JSRef Acceleration -> JSRef RotationRate -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.initDeviceMotionEvent Mozilla DeviceMotionEvent.initDeviceMotionEvent documentation> 
initDeviceMotionEvent ::
                      (MonadIO m, ToJSString type', IsAcceleration acceleration,
                       IsAcceleration accelerationIncludingGravity,
                       IsRotationRate rotationRate) =>
                        DeviceMotionEvent ->
                          type' ->
                            Bool ->
                              Bool ->
                                Maybe acceleration ->
                                  Maybe accelerationIncludingGravity ->
                                    Maybe rotationRate -> Double -> m ()
initDeviceMotionEvent self type' bubbles cancelable acceleration
  accelerationIncludingGravity rotationRate interval
  = liftIO
      (js_initDeviceMotionEvent (unDeviceMotionEvent self)
         (toJSString type')
         bubbles
         cancelable
         (maybe jsNull (unAcceleration . toAcceleration) acceleration)
         (maybe jsNull (unAcceleration . toAcceleration)
            accelerationIncludingGravity)
         (maybe jsNull (unRotationRate . toRotationRate) rotationRate)
         interval)
 
foreign import javascript unsafe "$1[\"acceleration\"]"
        js_getAcceleration ::
        JSRef DeviceMotionEvent -> IO (JSRef Acceleration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.acceleration Mozilla DeviceMotionEvent.acceleration documentation> 
getAcceleration ::
                (MonadIO m) => DeviceMotionEvent -> m (Maybe Acceleration)
getAcceleration self
  = liftIO
      ((js_getAcceleration (unDeviceMotionEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"accelerationIncludingGravity\"]"
        js_getAccelerationIncludingGravity ::
        JSRef DeviceMotionEvent -> IO (JSRef Acceleration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
getAccelerationIncludingGravity ::
                                (MonadIO m) => DeviceMotionEvent -> m (Maybe Acceleration)
getAccelerationIncludingGravity self
  = liftIO
      ((js_getAccelerationIncludingGravity (unDeviceMotionEvent self))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rotationRate\"]"
        js_getRotationRate ::
        JSRef DeviceMotionEvent -> IO (JSRef RotationRate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
getRotationRate ::
                (MonadIO m) => DeviceMotionEvent -> m (Maybe RotationRate)
getRotationRate self
  = liftIO
      ((js_getRotationRate (unDeviceMotionEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"interval\"]" js_getInterval
        :: JSRef DeviceMotionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
getInterval :: (MonadIO m) => DeviceMotionEvent -> m Double
getInterval self
  = liftIO (js_getInterval (unDeviceMotionEvent self))
#else
module GHCJS.DOM.DeviceMotionEvent (
  ) where
#endif
