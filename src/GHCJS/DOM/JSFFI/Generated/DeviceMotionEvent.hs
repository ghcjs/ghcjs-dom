{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DeviceMotionEvent
       (js_initDeviceMotionEvent, initDeviceMotionEvent,
        js_getAcceleration, getAcceleration,
        js_getAccelerationIncludingGravity,
        getAccelerationIncludingGravity, js_getRotationRate,
        getRotationRate, js_getInterval, getInterval, DeviceMotionEvent,
        castToDeviceMotionEvent, gTypeDeviceMotionEvent)
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
 
foreign import javascript unsafe
        "$1[\"initDeviceMotionEvent\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_initDeviceMotionEvent ::
        DeviceMotionEvent ->
          JSString ->
            Bool ->
              Bool ->
                Nullable Acceleration ->
                  Nullable Acceleration -> Nullable RotationRate -> Double -> IO ()

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
      (js_initDeviceMotionEvent (self) (toJSString type') bubbles
         cancelable
         (maybeToNullable (fmap toAcceleration acceleration))
         (maybeToNullable
            (fmap toAcceleration accelerationIncludingGravity))
         (maybeToNullable (fmap toRotationRate rotationRate))
         interval)
 
foreign import javascript unsafe "$1[\"acceleration\"]"
        js_getAcceleration ::
        DeviceMotionEvent -> IO (Nullable Acceleration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.acceleration Mozilla DeviceMotionEvent.acceleration documentation> 
getAcceleration ::
                (MonadIO m) => DeviceMotionEvent -> m (Maybe Acceleration)
getAcceleration self
  = liftIO (nullableToMaybe <$> (js_getAcceleration (self)))
 
foreign import javascript unsafe
        "$1[\"accelerationIncludingGravity\"]"
        js_getAccelerationIncludingGravity ::
        DeviceMotionEvent -> IO (Nullable Acceleration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
getAccelerationIncludingGravity ::
                                (MonadIO m) => DeviceMotionEvent -> m (Maybe Acceleration)
getAccelerationIncludingGravity self
  = liftIO
      (nullableToMaybe <$> (js_getAccelerationIncludingGravity (self)))
 
foreign import javascript unsafe "$1[\"rotationRate\"]"
        js_getRotationRate ::
        DeviceMotionEvent -> IO (Nullable RotationRate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
getRotationRate ::
                (MonadIO m) => DeviceMotionEvent -> m (Maybe RotationRate)
getRotationRate self
  = liftIO (nullableToMaybe <$> (js_getRotationRate (self)))
 
foreign import javascript unsafe "$1[\"interval\"]" js_getInterval
        :: DeviceMotionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
getInterval :: (MonadIO m) => DeviceMotionEvent -> m Double
getInterval self = liftIO (js_getInterval (self))