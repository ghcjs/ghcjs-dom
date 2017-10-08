{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DeviceMotionEvent
       (js_initDeviceMotionEvent, initDeviceMotionEvent,
        js_getAcceleration, getAcceleration, getAccelerationUnsafe,
        getAccelerationUnchecked, js_getAccelerationIncludingGravity,
        getAccelerationIncludingGravity,
        getAccelerationIncludingGravityUnsafe,
        getAccelerationIncludingGravityUnchecked, js_getRotationRate,
        getRotationRate, getRotationRateUnsafe, getRotationRateUnchecked,
        js_getInterval, getInterval, getIntervalUnsafe,
        getIntervalUnchecked, DeviceMotionEvent(..),
        gTypeDeviceMotionEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "$1[\"initDeviceMotionEvent\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_initDeviceMotionEvent ::
        DeviceMotionEvent ->
          Optional JSString ->
            Bool ->
              Bool ->
                Optional Acceleration ->
                  Optional Acceleration ->
                    Optional RotationRate -> Optional Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.initDeviceMotionEvent Mozilla DeviceMotionEvent.initDeviceMotionEvent documentation> 
initDeviceMotionEvent ::
                      (MonadIO m, ToJSString type') =>
                        DeviceMotionEvent ->
                          Maybe type' ->
                            Bool ->
                              Bool ->
                                Maybe Acceleration ->
                                  Maybe Acceleration -> Maybe RotationRate -> Maybe Double -> m ()
initDeviceMotionEvent self type' bubbles cancelable acceleration
  accelerationIncludingGravity rotationRate interval
  = liftIO
      (js_initDeviceMotionEvent self (toOptionalJSString type') bubbles
         cancelable
         (maybeToOptional acceleration)
         (maybeToOptional accelerationIncludingGravity)
         (maybeToOptional rotationRate)
         (maybeToOptional interval))
 
foreign import javascript unsafe "$1[\"acceleration\"]"
        js_getAcceleration ::
        DeviceMotionEvent -> IO (Nullable Acceleration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.acceleration Mozilla DeviceMotionEvent.acceleration documentation> 
getAcceleration ::
                (MonadIO m) => DeviceMotionEvent -> m (Maybe Acceleration)
getAcceleration self
  = liftIO (nullableToMaybe <$> (js_getAcceleration self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.acceleration Mozilla DeviceMotionEvent.acceleration documentation> 
getAccelerationUnsafe ::
                      (MonadIO m, HasCallStack) => DeviceMotionEvent -> m Acceleration
getAccelerationUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAcceleration self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.acceleration Mozilla DeviceMotionEvent.acceleration documentation> 
getAccelerationUnchecked ::
                         (MonadIO m) => DeviceMotionEvent -> m Acceleration
getAccelerationUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAcceleration self))
 
foreign import javascript unsafe
        "$1[\"accelerationIncludingGravity\"]"
        js_getAccelerationIncludingGravity ::
        DeviceMotionEvent -> IO (Nullable Acceleration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
getAccelerationIncludingGravity ::
                                (MonadIO m) => DeviceMotionEvent -> m (Maybe Acceleration)
getAccelerationIncludingGravity self
  = liftIO
      (nullableToMaybe <$> (js_getAccelerationIncludingGravity self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
getAccelerationIncludingGravityUnsafe ::
                                      (MonadIO m, HasCallStack) =>
                                        DeviceMotionEvent -> m Acceleration
getAccelerationIncludingGravityUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAccelerationIncludingGravity self))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.accelerationIncludingGravity Mozilla DeviceMotionEvent.accelerationIncludingGravity documentation> 
getAccelerationIncludingGravityUnchecked ::
                                         (MonadIO m) => DeviceMotionEvent -> m Acceleration
getAccelerationIncludingGravityUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getAccelerationIncludingGravity self))
 
foreign import javascript unsafe "$1[\"rotationRate\"]"
        js_getRotationRate ::
        DeviceMotionEvent -> IO (Nullable RotationRate)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
getRotationRate ::
                (MonadIO m) => DeviceMotionEvent -> m (Maybe RotationRate)
getRotationRate self
  = liftIO (nullableToMaybe <$> (js_getRotationRate self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
getRotationRateUnsafe ::
                      (MonadIO m, HasCallStack) => DeviceMotionEvent -> m RotationRate
getRotationRateUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRotationRate self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.rotationRate Mozilla DeviceMotionEvent.rotationRate documentation> 
getRotationRateUnchecked ::
                         (MonadIO m) => DeviceMotionEvent -> m RotationRate
getRotationRateUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRotationRate self))
 
foreign import javascript unsafe "$1[\"interval\"]" js_getInterval
        :: DeviceMotionEvent -> IO (Nullable Double)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
getInterval :: (MonadIO m) => DeviceMotionEvent -> m (Maybe Double)
getInterval self
  = liftIO (nullableToMaybe <$> (js_getInterval self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
getIntervalUnsafe ::
                  (MonadIO m, HasCallStack) => DeviceMotionEvent -> m Double
getIntervalUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getInterval self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceMotionEvent.interval Mozilla DeviceMotionEvent.interval documentation> 
getIntervalUnchecked ::
                     (MonadIO m) => DeviceMotionEvent -> m Double
getIntervalUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getInterval self))