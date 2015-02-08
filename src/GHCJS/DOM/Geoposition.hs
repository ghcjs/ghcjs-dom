{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Geoposition
       (ghcjs_dom_geoposition_get_coords, geopositionGetCoords,
        ghcjs_dom_geoposition_get_timestamp, geopositionGetTimestamp,
        Geoposition, IsGeoposition, castToGeoposition, gTypeGeoposition,
        toGeoposition)
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

 
foreign import javascript unsafe "$1[\"coords\"]"
        ghcjs_dom_geoposition_get_coords ::
        JSRef Geoposition -> IO (JSRef Coordinates)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.coords Mozilla Geoposition.coords documentation> 
geopositionGetCoords ::
                     (MonadIO m, IsGeoposition self) => self -> m (Maybe Coordinates)
geopositionGetCoords self
  = liftIO
      ((ghcjs_dom_geoposition_get_coords
          (unGeoposition (toGeoposition self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"timestamp\"]"
        ghcjs_dom_geoposition_get_timestamp :: JSRef Geoposition -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.timestamp Mozilla Geoposition.timestamp documentation> 
geopositionGetTimestamp ::
                        (MonadIO m, IsGeoposition self) => self -> m Word
geopositionGetTimestamp self
  = liftIO
      (ghcjs_dom_geoposition_get_timestamp
         (unGeoposition (toGeoposition self)))
#else
module GHCJS.DOM.Geoposition (
  ) where
#endif
