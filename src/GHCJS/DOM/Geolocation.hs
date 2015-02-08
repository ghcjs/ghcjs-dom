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

 
foreign import javascript unsafe
        "$1[\"getCurrentPosition\"]($2, $3,\n$4)"
        ghcjs_dom_geolocation_get_current_position ::
        JSRef Geolocation ->
          JSRef PositionCallback ->
            JSRef PositionErrorCallback -> JSRef PositionOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.currentPosition Mozilla Geolocation.currentPosition documentation> 
geolocationGetCurrentPosition ::
                              (MonadIO m, IsGeolocation self, IsPositionCallback successCallback,
                               IsPositionErrorCallback errorCallback,
                               IsPositionOptions options) =>
                                self ->
                                  Maybe successCallback ->
                                    Maybe errorCallback -> Maybe options -> m ()
geolocationGetCurrentPosition self successCallback errorCallback
  options
  = liftIO
      (ghcjs_dom_geolocation_get_current_position
         (unGeolocation (toGeolocation self))
         (maybe jsNull (unPositionCallback . toPositionCallback)
            successCallback)
         (maybe jsNull (unPositionErrorCallback . toPositionErrorCallback)
            errorCallback)
         (maybe jsNull (unPositionOptions . toPositionOptions) options))
 
foreign import javascript unsafe
        "$1[\"watchPosition\"]($2, $3, $4)"
        ghcjs_dom_geolocation_watch_position ::
        JSRef Geolocation ->
          JSRef PositionCallback ->
            JSRef PositionErrorCallback -> JSRef PositionOptions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
geolocationWatchPosition ::
                         (MonadIO m, IsGeolocation self, IsPositionCallback successCallback,
                          IsPositionErrorCallback errorCallback,
                          IsPositionOptions options) =>
                           self ->
                             Maybe successCallback ->
                               Maybe errorCallback -> Maybe options -> m Int
geolocationWatchPosition self successCallback errorCallback options
  = liftIO
      (ghcjs_dom_geolocation_watch_position
         (unGeolocation (toGeolocation self))
         (maybe jsNull (unPositionCallback . toPositionCallback)
            successCallback)
         (maybe jsNull (unPositionErrorCallback . toPositionErrorCallback)
            errorCallback)
         (maybe jsNull (unPositionOptions . toPositionOptions) options))
 
foreign import javascript unsafe "$1[\"clearWatch\"]($2)"
        ghcjs_dom_geolocation_clear_watch ::
        JSRef Geolocation -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.clearWatch Mozilla Geolocation.clearWatch documentation> 
geolocationClearWatch ::
                      (MonadIO m, IsGeolocation self) => self -> Int -> m ()
geolocationClearWatch self watchID
  = liftIO
      (ghcjs_dom_geolocation_clear_watch
         (unGeolocation (toGeolocation self))
         watchID)
#else
module GHCJS.DOM.Geolocation (
  module Graphics.UI.Gtk.WebKit.DOM.Geolocation
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Geolocation
#endif
