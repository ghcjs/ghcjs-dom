{-# LANGUAGE CPP #-}
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
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe
        "$1[\"getCurrentPosition\"]($2, $3,\n$4)" js_getCurrentPosition ::
        Geolocation ->
          Nullable PositionCallback ->
            Nullable PositionErrorCallback -> Nullable PositionOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.getCurrentPosition Mozilla Geolocation.getCurrentPosition documentation> 
getCurrentPosition ::
                   (MonadIO m, IsPositionOptions options) =>
                     Geolocation ->
                       Maybe PositionCallback ->
                         Maybe PositionErrorCallback -> Maybe options -> m ()
getCurrentPosition self successCallback errorCallback options
  = liftIO
      (js_getCurrentPosition (self) (maybeToNullable successCallback)
         (maybeToNullable errorCallback)
         (maybeToNullable (fmap toPositionOptions options)))
 
foreign import javascript unsafe
        "$1[\"watchPosition\"]($2, $3, $4)" js_watchPosition ::
        Geolocation ->
          Nullable PositionCallback ->
            Nullable PositionErrorCallback ->
              Nullable PositionOptions -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
watchPosition ::
              (MonadIO m, IsPositionOptions options) =>
                Geolocation ->
                  Maybe PositionCallback ->
                    Maybe PositionErrorCallback -> Maybe options -> m Int
watchPosition self successCallback errorCallback options
  = liftIO
      (js_watchPosition (self) (maybeToNullable successCallback)
         (maybeToNullable errorCallback)
         (maybeToNullable (fmap toPositionOptions options)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.watchPosition Mozilla Geolocation.watchPosition documentation> 
watchPosition_ ::
               (MonadIO m, IsPositionOptions options) =>
                 Geolocation ->
                   Maybe PositionCallback ->
                     Maybe PositionErrorCallback -> Maybe options -> m ()
watchPosition_ self successCallback errorCallback options
  = liftIO
      (void
         (js_watchPosition (self) (maybeToNullable successCallback)
            (maybeToNullable errorCallback)
            (maybeToNullable (fmap toPositionOptions options))))
 
foreign import javascript unsafe "$1[\"clearWatch\"]($2)"
        js_clearWatch :: Geolocation -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geolocation.clearWatch Mozilla Geolocation.clearWatch documentation> 
clearWatch :: (MonadIO m) => Geolocation -> Int -> m ()
clearWatch self watchID = liftIO (js_clearWatch (self) watchID)