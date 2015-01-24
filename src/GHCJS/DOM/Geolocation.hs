{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Geolocation
       (ghcjs_dom_geolocation_get_current_position,
        geolocationGetCurrentPosition,
        ghcjs_dom_geolocation_watch_position, geolocationWatchPosition,
        ghcjs_dom_geolocation_clear_watch, geolocationClearWatch,
        Geolocation, IsGeolocation, castToGeolocation, gTypeGeolocation,
        toGeolocation)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "$1[\"getCurrentPosition\"]($2, $3,\n$4)"
        ghcjs_dom_geolocation_get_current_position ::
        JSRef Geolocation ->
          JSRef PositionCallback ->
            JSRef PositionErrorCallback -> JSRef PositionOptions -> IO ()
 
geolocationGetCurrentPosition ::
                              (IsGeolocation self, IsPositionCallback successCallback,
                               IsPositionErrorCallback errorCallback,
                               IsPositionOptions options) =>
                                self ->
                                  Maybe successCallback ->
                                    Maybe errorCallback -> Maybe options -> IO ()
geolocationGetCurrentPosition self successCallback errorCallback
  options
  = ghcjs_dom_geolocation_get_current_position
      (unGeolocation (toGeolocation self))
      (maybe jsNull (unPositionCallback . toPositionCallback)
         successCallback)
      (maybe jsNull (unPositionErrorCallback . toPositionErrorCallback)
         errorCallback)
      (maybe jsNull (unPositionOptions . toPositionOptions) options)
 
foreign import javascript unsafe
        "$1[\"watchPosition\"]($2, $3, $4)"
        ghcjs_dom_geolocation_watch_position ::
        JSRef Geolocation ->
          JSRef PositionCallback ->
            JSRef PositionErrorCallback -> JSRef PositionOptions -> IO Int
 
geolocationWatchPosition ::
                         (IsGeolocation self, IsPositionCallback successCallback,
                          IsPositionErrorCallback errorCallback,
                          IsPositionOptions options) =>
                           self ->
                             Maybe successCallback ->
                               Maybe errorCallback -> Maybe options -> IO Int
geolocationWatchPosition self successCallback errorCallback options
  = ghcjs_dom_geolocation_watch_position
      (unGeolocation (toGeolocation self))
      (maybe jsNull (unPositionCallback . toPositionCallback)
         successCallback)
      (maybe jsNull (unPositionErrorCallback . toPositionErrorCallback)
         errorCallback)
      (maybe jsNull (unPositionOptions . toPositionOptions) options)
 
foreign import javascript unsafe "$1[\"clearWatch\"]($2)"
        ghcjs_dom_geolocation_clear_watch ::
        JSRef Geolocation -> Int -> IO ()
 
geolocationClearWatch ::
                      (IsGeolocation self) => self -> Int -> IO ()
geolocationClearWatch self watchID
  = ghcjs_dom_geolocation_clear_watch
      (unGeolocation (toGeolocation self))
      watchID
#else
module GHCJS.DOM.Geolocation (
  module Graphics.UI.Gtk.WebKit.DOM.Geolocation
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Geolocation
#endif
