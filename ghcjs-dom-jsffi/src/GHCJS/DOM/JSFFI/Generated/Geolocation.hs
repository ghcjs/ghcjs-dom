{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Geolocation
       (js_getCurrentPosition, getCurrentPosition, js_watchPosition,
        watchPosition, watchPosition_, js_clearWatch, clearWatch,
        Geolocation(..), gTypeGeolocation)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "$1[\"getCurrentPosition\"]($2, $3,\n$4)" js_getCurrentPosition ::
        Geolocation ->
          PositionCallback ->
            Optional PositionErrorCallback -> Optional PositionOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.getCurrentPosition Mozilla Geolocation.getCurrentPosition documentation> 
getCurrentPosition ::
                   (MonadIO m) =>
                     Geolocation ->
                       PositionCallback ->
                         Maybe PositionErrorCallback -> Maybe PositionOptions -> m ()
getCurrentPosition self successCallback errorCallback options
  = liftIO
      (js_getCurrentPosition self successCallback
         (maybeToOptional errorCallback)
         (maybeToOptional options))
 
foreign import javascript unsafe
        "$1[\"watchPosition\"]($2, $3, $4)" js_watchPosition ::
        Geolocation ->
          PositionCallback ->
            Optional PositionErrorCallback ->
              Optional PositionOptions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
watchPosition ::
              (MonadIO m) =>
                Geolocation ->
                  PositionCallback ->
                    Maybe PositionErrorCallback -> Maybe PositionOptions -> m Int
watchPosition self successCallback errorCallback options
  = liftIO
      (js_watchPosition self successCallback
         (maybeToOptional errorCallback)
         (maybeToOptional options))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
watchPosition_ ::
               (MonadIO m) =>
                 Geolocation ->
                   PositionCallback ->
                     Maybe PositionErrorCallback -> Maybe PositionOptions -> m ()
watchPosition_ self successCallback errorCallback options
  = liftIO
      (void
         (js_watchPosition self successCallback
            (maybeToOptional errorCallback)
            (maybeToOptional options)))
 
foreign import javascript unsafe "$1[\"clearWatch\"]($2)"
        js_clearWatch :: Geolocation -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.clearWatch Mozilla Geolocation.clearWatch documentation> 
clearWatch :: (MonadIO m) => Geolocation -> Int -> m ()
clearWatch self watchId = liftIO (js_clearWatch self watchId)