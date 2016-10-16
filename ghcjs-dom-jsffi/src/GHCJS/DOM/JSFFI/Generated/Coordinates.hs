{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Coordinates
       (js_getLatitude, getLatitude, js_getLongitude, getLongitude,
        js_getAltitude, getAltitude, getAltitudeUnsafe,
        getAltitudeUnchecked, js_getAccuracy, getAccuracy,
        js_getAltitudeAccuracy, getAltitudeAccuracy,
        getAltitudeAccuracyUnsafe, getAltitudeAccuracyUnchecked,
        js_getHeading, getHeading, getHeadingUnsafe, getHeadingUnchecked,
        js_getSpeed, getSpeed, getSpeedUnsafe, getSpeedUnchecked,
        Coordinates(..), gTypeCoordinates)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"latitude\"]" js_getLatitude
        :: Coordinates -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.latitude Mozilla Coordinates.latitude documentation> 
getLatitude :: (MonadIO m) => Coordinates -> m Double
getLatitude self = liftIO (js_getLatitude (self))
 
foreign import javascript unsafe "$1[\"longitude\"]"
        js_getLongitude :: Coordinates -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.longitude Mozilla Coordinates.longitude documentation> 
getLongitude :: (MonadIO m) => Coordinates -> m Double
getLongitude self = liftIO (js_getLongitude (self))
 
foreign import javascript unsafe "$1[\"altitude\"]" js_getAltitude
        :: Coordinates -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitude Mozilla Coordinates.altitude documentation> 
getAltitude :: (MonadIO m) => Coordinates -> m (Maybe Double)
getAltitude self
  = liftIO ((js_getAltitude (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitude Mozilla Coordinates.altitude documentation> 
getAltitudeUnsafe ::
                  (MonadIO m, HasCallStack) => Coordinates -> m Double
getAltitudeUnsafe self
  = liftIO
      (((js_getAltitude (self)) >>= fromJSValUnchecked) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitude Mozilla Coordinates.altitude documentation> 
getAltitudeUnchecked :: (MonadIO m) => Coordinates -> m Double
getAltitudeUnchecked self
  = liftIO ((js_getAltitude (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"accuracy\"]" js_getAccuracy
        :: Coordinates -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.accuracy Mozilla Coordinates.accuracy documentation> 
getAccuracy :: (MonadIO m) => Coordinates -> m Double
getAccuracy self = liftIO (js_getAccuracy (self))
 
foreign import javascript unsafe "$1[\"altitudeAccuracy\"]"
        js_getAltitudeAccuracy :: Coordinates -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitudeAccuracy Mozilla Coordinates.altitudeAccuracy documentation> 
getAltitudeAccuracy ::
                    (MonadIO m) => Coordinates -> m (Maybe Double)
getAltitudeAccuracy self
  = liftIO ((js_getAltitudeAccuracy (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitudeAccuracy Mozilla Coordinates.altitudeAccuracy documentation> 
getAltitudeAccuracyUnsafe ::
                          (MonadIO m, HasCallStack) => Coordinates -> m Double
getAltitudeAccuracyUnsafe self
  = liftIO
      (((js_getAltitudeAccuracy (self)) >>= fromJSValUnchecked) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitudeAccuracy Mozilla Coordinates.altitudeAccuracy documentation> 
getAltitudeAccuracyUnchecked ::
                             (MonadIO m) => Coordinates -> m Double
getAltitudeAccuracyUnchecked self
  = liftIO ((js_getAltitudeAccuracy (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"heading\"]" js_getHeading ::
        Coordinates -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.heading Mozilla Coordinates.heading documentation> 
getHeading :: (MonadIO m) => Coordinates -> m (Maybe Double)
getHeading self
  = liftIO ((js_getHeading (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.heading Mozilla Coordinates.heading documentation> 
getHeadingUnsafe ::
                 (MonadIO m, HasCallStack) => Coordinates -> m Double
getHeadingUnsafe self
  = liftIO
      (((js_getHeading (self)) >>= fromJSValUnchecked) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.heading Mozilla Coordinates.heading documentation> 
getHeadingUnchecked :: (MonadIO m) => Coordinates -> m Double
getHeadingUnchecked self
  = liftIO ((js_getHeading (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"speed\"]" js_getSpeed ::
        Coordinates -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.speed Mozilla Coordinates.speed documentation> 
getSpeed :: (MonadIO m) => Coordinates -> m (Maybe Double)
getSpeed self
  = liftIO ((js_getSpeed (self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.speed Mozilla Coordinates.speed documentation> 
getSpeedUnsafe ::
               (MonadIO m, HasCallStack) => Coordinates -> m Double
getSpeedUnsafe self
  = liftIO
      (((js_getSpeed (self)) >>= fromJSValUnchecked) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.speed Mozilla Coordinates.speed documentation> 
getSpeedUnchecked :: (MonadIO m) => Coordinates -> m Double
getSpeedUnchecked self
  = liftIO ((js_getSpeed (self)) >>= fromJSValUnchecked)