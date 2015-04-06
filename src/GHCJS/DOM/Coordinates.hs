{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Coordinates
       (js_getLatitude, getLatitude, js_getLongitude, getLongitude,
        js_getAltitude, getAltitude, js_getAccuracy, getAccuracy,
        js_getAltitudeAccuracy, getAltitudeAccuracy, js_getHeading,
        getHeading, js_getSpeed, getSpeed, Coordinates, castToCoordinates,
        gTypeCoordinates)
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

 
foreign import javascript unsafe "$1[\"latitude\"]" js_getLatitude
        :: JSRef Coordinates -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.latitude Mozilla Coordinates.latitude documentation> 
getLatitude :: (MonadIO m) => Coordinates -> m Double
getLatitude self = liftIO (js_getLatitude (unCoordinates self))
 
foreign import javascript unsafe "$1[\"longitude\"]"
        js_getLongitude :: JSRef Coordinates -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.longitude Mozilla Coordinates.longitude documentation> 
getLongitude :: (MonadIO m) => Coordinates -> m Double
getLongitude self = liftIO (js_getLongitude (unCoordinates self))
 
foreign import javascript unsafe "$1[\"altitude\"]" js_getAltitude
        :: JSRef Coordinates -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitude Mozilla Coordinates.altitude documentation> 
getAltitude :: (MonadIO m) => Coordinates -> m (Maybe Double)
getAltitude self
  = liftIO
      ((js_getAltitude (unCoordinates self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"accuracy\"]" js_getAccuracy
        :: JSRef Coordinates -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.accuracy Mozilla Coordinates.accuracy documentation> 
getAccuracy :: (MonadIO m) => Coordinates -> m Double
getAccuracy self = liftIO (js_getAccuracy (unCoordinates self))
 
foreign import javascript unsafe "$1[\"altitudeAccuracy\"]"
        js_getAltitudeAccuracy ::
        JSRef Coordinates -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitudeAccuracy Mozilla Coordinates.altitudeAccuracy documentation> 
getAltitudeAccuracy ::
                    (MonadIO m) => Coordinates -> m (Maybe Double)
getAltitudeAccuracy self
  = liftIO
      ((js_getAltitudeAccuracy (unCoordinates self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"heading\"]" js_getHeading ::
        JSRef Coordinates -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.heading Mozilla Coordinates.heading documentation> 
getHeading :: (MonadIO m) => Coordinates -> m (Maybe Double)
getHeading self
  = liftIO
      ((js_getHeading (unCoordinates self)) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"speed\"]" js_getSpeed ::
        JSRef Coordinates -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.speed Mozilla Coordinates.speed documentation> 
getSpeed :: (MonadIO m) => Coordinates -> m (Maybe Double)
getSpeed self
  = liftIO
      ((js_getSpeed (unCoordinates self)) >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.Coordinates (
  ) where
#endif
