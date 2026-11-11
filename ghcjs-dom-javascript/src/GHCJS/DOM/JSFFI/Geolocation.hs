{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Geolocation (
    module Generated
  , js_getCurrentPosition
  , getCurrentPosition'
  , getCurrentPosition
) where

import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.DOM.Types
import GHCJS.Foreign (isNull)

import GHCJS.DOM.JSFFI.GeolocationPositionError (throwPositionException)
import GHCJS.DOM.JSFFI.Generated.Geolocation as Generated hiding (js_getCurrentPosition, getCurrentPosition)

-- | Calls back with (error, null) or (null, position).
foreign import javascript interruptible
        "(($1, $2, $c) => { $1[\"getCurrentPosition\"](function(p) { $c(null, p); }, function(e) { $c(e, null); }, $2); })"
        js_getCurrentPosition :: Geolocation -> JSVal -> IO (JSVal, JSVal)

-- | Blocking version of
-- <https://developer.mozilla.org/docs/Web/API/Geolocation/getCurrentPosition Geolocation.getCurrentPosition>.
getCurrentPosition' :: MonadIO m => Geolocation -> Maybe PositionOptions -> m (Either GeolocationPositionError GeolocationPosition)
getCurrentPosition' self options = liftIO $ do
    opts <- toJSVal options
    (e, pos) <- js_getCurrentPosition self opts
    return $ if isNull e then Right (GeolocationPosition pos) else Left (GeolocationPositionError e)

-- | Like 'getCurrentPosition'' but throws 'PositionException' on error.
getCurrentPosition :: MonadIO m => Geolocation -> Maybe PositionOptions -> m GeolocationPosition
getCurrentPosition self options = getCurrentPosition' self options >>= either throwPositionException return
