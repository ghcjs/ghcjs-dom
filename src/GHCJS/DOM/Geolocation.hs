{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Geolocation
       (js_getCurrentPosition, getCurrentPosition, js_watchPosition,
        watchPosition, js_clearWatch, clearWatch, Geolocation,
        castToGeolocation, gTypeGeolocation)
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

 
foreign import javascript unsafe
        "$1[\"getCurrentPosition\"]($2, $3,\n$4)" js_getCurrentPosition ::
        JSRef Geolocation ->
          JSRef PositionCallback ->
            JSRef PositionErrorCallback -> JSRef PositionOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.getCurrentPosition Mozilla Geolocation.getCurrentPosition documentation> 
getCurrentPosition ::
                   (MonadIO m, IsPositionOptions options) =>
                     Geolocation ->
                       Maybe PositionCallback ->
                         Maybe PositionErrorCallback -> Maybe options -> m ()
getCurrentPosition self successCallback errorCallback options
  = liftIO
      (js_getCurrentPosition (unGeolocation self)
         (maybe jsNull unPositionCallback successCallback)
         (maybe jsNull unPositionErrorCallback errorCallback)
         (maybe jsNull (unPositionOptions . toPositionOptions) options))
 
foreign import javascript unsafe
        "$1[\"watchPosition\"]($2, $3, $4)" js_watchPosition ::
        JSRef Geolocation ->
          JSRef PositionCallback ->
            JSRef PositionErrorCallback -> JSRef PositionOptions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
watchPosition ::
              (MonadIO m, IsPositionOptions options) =>
                Geolocation ->
                  Maybe PositionCallback ->
                    Maybe PositionErrorCallback -> Maybe options -> m Int
watchPosition self successCallback errorCallback options
  = liftIO
      (js_watchPosition (unGeolocation self)
         (maybe jsNull unPositionCallback successCallback)
         (maybe jsNull unPositionErrorCallback errorCallback)
         (maybe jsNull (unPositionOptions . toPositionOptions) options))
 
foreign import javascript unsafe "$1[\"clearWatch\"]($2)"
        js_clearWatch :: JSRef Geolocation -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.clearWatch Mozilla Geolocation.clearWatch documentation> 
clearWatch :: (MonadIO m) => Geolocation -> Int -> m ()
clearWatch self watchID
  = liftIO (js_clearWatch (unGeolocation self) watchID)
#else
module GHCJS.DOM.Geolocation (
  module Graphics.UI.Gtk.WebKit.DOM.Geolocation
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Geolocation
#endif
