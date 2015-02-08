{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Coordinates
       (ghcjs_dom_coordinates_get_latitude, coordinatesGetLatitude,
        ghcjs_dom_coordinates_get_longitude, coordinatesGetLongitude,
        ghcjs_dom_coordinates_get_altitude, coordinatesGetAltitude,
        ghcjs_dom_coordinates_get_accuracy, coordinatesGetAccuracy,
        ghcjs_dom_coordinates_get_altitude_accuracy,
        coordinatesGetAltitudeAccuracy, ghcjs_dom_coordinates_get_heading,
        coordinatesGetHeading, ghcjs_dom_coordinates_get_speed,
        coordinatesGetSpeed, Coordinates, IsCoordinates, castToCoordinates,
        gTypeCoordinates, toCoordinates)
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

 
foreign import javascript unsafe "$1[\"latitude\"]"
        ghcjs_dom_coordinates_get_latitude ::
        JSRef Coordinates -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.latitude Mozilla Coordinates.latitude documentation> 
coordinatesGetLatitude ::
                       (MonadIO m, IsCoordinates self) => self -> m Double
coordinatesGetLatitude self
  = liftIO
      (ghcjs_dom_coordinates_get_latitude
         (unCoordinates (toCoordinates self)))
 
foreign import javascript unsafe "$1[\"longitude\"]"
        ghcjs_dom_coordinates_get_longitude ::
        JSRef Coordinates -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.longitude Mozilla Coordinates.longitude documentation> 
coordinatesGetLongitude ::
                        (MonadIO m, IsCoordinates self) => self -> m Double
coordinatesGetLongitude self
  = liftIO
      (ghcjs_dom_coordinates_get_longitude
         (unCoordinates (toCoordinates self)))
 
foreign import javascript unsafe "$1[\"altitude\"]"
        ghcjs_dom_coordinates_get_altitude ::
        JSRef Coordinates -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitude Mozilla Coordinates.altitude documentation> 
coordinatesGetAltitude ::
                       (MonadIO m, IsCoordinates self) => self -> m (Maybe Double)
coordinatesGetAltitude self
  = liftIO
      ((ghcjs_dom_coordinates_get_altitude
          (unCoordinates (toCoordinates self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"accuracy\"]"
        ghcjs_dom_coordinates_get_accuracy ::
        JSRef Coordinates -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.accuracy Mozilla Coordinates.accuracy documentation> 
coordinatesGetAccuracy ::
                       (MonadIO m, IsCoordinates self) => self -> m Double
coordinatesGetAccuracy self
  = liftIO
      (ghcjs_dom_coordinates_get_accuracy
         (unCoordinates (toCoordinates self)))
 
foreign import javascript unsafe "$1[\"altitudeAccuracy\"]"
        ghcjs_dom_coordinates_get_altitude_accuracy ::
        JSRef Coordinates -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.altitudeAccuracy Mozilla Coordinates.altitudeAccuracy documentation> 
coordinatesGetAltitudeAccuracy ::
                               (MonadIO m, IsCoordinates self) => self -> m (Maybe Double)
coordinatesGetAltitudeAccuracy self
  = liftIO
      ((ghcjs_dom_coordinates_get_altitude_accuracy
          (unCoordinates (toCoordinates self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"heading\"]"
        ghcjs_dom_coordinates_get_heading ::
        JSRef Coordinates -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.heading Mozilla Coordinates.heading documentation> 
coordinatesGetHeading ::
                      (MonadIO m, IsCoordinates self) => self -> m (Maybe Double)
coordinatesGetHeading self
  = liftIO
      ((ghcjs_dom_coordinates_get_heading
          (unCoordinates (toCoordinates self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"speed\"]"
        ghcjs_dom_coordinates_get_speed ::
        JSRef Coordinates -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Coordinates.speed Mozilla Coordinates.speed documentation> 
coordinatesGetSpeed ::
                    (MonadIO m, IsCoordinates self) => self -> m (Maybe Double)
coordinatesGetSpeed self
  = liftIO
      ((ghcjs_dom_coordinates_get_speed
          (unCoordinates (toCoordinates self)))
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.Coordinates (
  ) where
#endif
