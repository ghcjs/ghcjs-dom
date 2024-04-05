{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DeviceOrientationEvent
       (js_initDeviceOrientationEvent, initDeviceOrientationEvent,
        js_getAlpha, getAlpha, getAlphaUnsafe, getAlphaUnchecked,
        js_getBeta, getBeta, getBetaUnsafe, getBetaUnchecked, js_getGamma,
        getGamma, getGammaUnsafe, getGammaUnchecked, js_getAbsolute,
        getAbsolute, getAbsoluteUnsafe, getAbsoluteUnchecked,
        DeviceOrientationEvent(..), gTypeDeviceOrientationEvent)
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
        "$1[\"initDeviceOrientationEvent\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_initDeviceOrientationEvent ::
        DeviceOrientationEvent ->
          Optional JSString ->
            Bool ->
              Bool ->
                Optional Double ->
                  Optional Double -> Optional Double -> Optional Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.initDeviceOrientationEvent Mozilla DeviceOrientationEvent.initDeviceOrientationEvent documentation> 
initDeviceOrientationEvent ::
                           (MonadIO m, ToJSString type') =>
                             DeviceOrientationEvent ->
                               Maybe type' ->
                                 Bool ->
                                   Bool ->
                                     Maybe Double ->
                                       Maybe Double -> Maybe Double -> Maybe Bool -> m ()
initDeviceOrientationEvent self type' bubbles cancelable alpha beta
  gamma absolute
  = liftIO
      (js_initDeviceOrientationEvent self (toOptionalJSString type')
         bubbles
         cancelable
         (maybeToOptional alpha)
         (maybeToOptional beta)
         (maybeToOptional gamma)
         (maybeToOptional absolute))
 
foreign import javascript unsafe "$1[\"alpha\"]" js_getAlpha ::
        DeviceOrientationEvent -> IO (Nullable Double)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
getAlpha ::
         (MonadIO m) => DeviceOrientationEvent -> m (Maybe Double)
getAlpha self = liftIO (nullableToMaybe <$> (js_getAlpha self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
getAlphaUnsafe ::
               (MonadIO m, HasCallStack) => DeviceOrientationEvent -> m Double
getAlphaUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAlpha self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.alpha Mozilla DeviceOrientationEvent.alpha documentation> 
getAlphaUnchecked ::
                  (MonadIO m) => DeviceOrientationEvent -> m Double
getAlphaUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAlpha self))
 
foreign import javascript unsafe "$1[\"beta\"]" js_getBeta ::
        DeviceOrientationEvent -> IO (Nullable Double)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
getBeta ::
        (MonadIO m) => DeviceOrientationEvent -> m (Maybe Double)
getBeta self = liftIO (nullableToMaybe <$> (js_getBeta self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
getBetaUnsafe ::
              (MonadIO m, HasCallStack) => DeviceOrientationEvent -> m Double
getBetaUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBeta self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.beta Mozilla DeviceOrientationEvent.beta documentation> 
getBetaUnchecked ::
                 (MonadIO m) => DeviceOrientationEvent -> m Double
getBetaUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBeta self))
 
foreign import javascript unsafe "$1[\"gamma\"]" js_getGamma ::
        DeviceOrientationEvent -> IO (Nullable Double)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
getGamma ::
         (MonadIO m) => DeviceOrientationEvent -> m (Maybe Double)
getGamma self = liftIO (nullableToMaybe <$> (js_getGamma self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
getGammaUnsafe ::
               (MonadIO m, HasCallStack) => DeviceOrientationEvent -> m Double
getGammaUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getGamma self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.gamma Mozilla DeviceOrientationEvent.gamma documentation> 
getGammaUnchecked ::
                  (MonadIO m) => DeviceOrientationEvent -> m Double
getGammaUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getGamma self))
 
foreign import javascript unsafe "$1[\"absolute\"]" js_getAbsolute
        :: DeviceOrientationEvent -> IO (Nullable Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
getAbsolute ::
            (MonadIO m) => DeviceOrientationEvent -> m (Maybe Bool)
getAbsolute self
  = liftIO (nullableToMaybe <$> (js_getAbsolute self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
getAbsoluteUnsafe ::
                  (MonadIO m, HasCallStack) => DeviceOrientationEvent -> m Bool
getAbsoluteUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAbsolute self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DeviceOrientationEvent.absolute Mozilla DeviceOrientationEvent.absolute documentation> 
getAbsoluteUnchecked ::
                     (MonadIO m) => DeviceOrientationEvent -> m Bool
getAbsoluteUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAbsolute self))