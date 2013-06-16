{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Geolocation
       (webkit_dom_geolocation_clear_watch, geolocationClearWatch) where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clearWatch\"]($2)"
        webkit_dom_geolocation_clear_watch ::
        JSRef Geolocation -> Int -> IO ()
#else 
webkit_dom_geolocation_clear_watch ::
                                     JSRef Geolocation -> Int -> IO ()
webkit_dom_geolocation_clear_watch = undefined
#endif
 
geolocationClearWatch ::
                      (GeolocationClass self) => self -> Int -> IO ()
geolocationClearWatch self watchId
  = webkit_dom_geolocation_clear_watch
      (unGeolocation (toGeolocation self))
      watchId