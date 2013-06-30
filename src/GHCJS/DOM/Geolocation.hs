{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Geolocation
       (ghcjs_dom_geolocation_clear_watch, geolocationClearWatch) where
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
        ghcjs_dom_geolocation_clear_watch ::
        JSRef Geolocation -> Int -> IO ()
#else 
ghcjs_dom_geolocation_clear_watch ::
                                    JSRef Geolocation -> Int -> IO ()
ghcjs_dom_geolocation_clear_watch = undefined
#endif
 
geolocationClearWatch ::
                      (IsGeolocation self) => self -> Int -> IO ()
geolocationClearWatch self watchId
  = ghcjs_dom_geolocation_clear_watch
      (unGeolocation (toGeolocation self))
      watchId