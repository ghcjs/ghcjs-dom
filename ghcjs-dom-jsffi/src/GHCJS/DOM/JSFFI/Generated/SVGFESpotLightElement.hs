{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFESpotLightElement
       (js_getX, getX, getXUnsafe, getXUnchecked, js_getY, getY,
        getYUnsafe, getYUnchecked, js_getZ, getZ, getZUnsafe,
        getZUnchecked, js_getPointsAtX, getPointsAtX, getPointsAtXUnsafe,
        getPointsAtXUnchecked, js_getPointsAtY, getPointsAtY,
        getPointsAtYUnsafe, getPointsAtYUnchecked, js_getPointsAtZ,
        getPointsAtZ, getPointsAtZUnsafe, getPointsAtZUnchecked,
        js_getSpecularExponent, getSpecularExponent,
        getSpecularExponentUnsafe, getSpecularExponentUnchecked,
        js_getLimitingConeAngle, getLimitingConeAngle,
        getLimitingConeAngleUnsafe, getLimitingConeAngleUnchecked,
        SVGFESpotLightElement(..), gTypeSVGFESpotLightElement)
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
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getX ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getXUnsafe ::
           (MonadIO m, HasCallStack) =>
             SVGFESpotLightElement -> m SVGAnimatedNumber
getXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getXUnchecked ::
              (MonadIO m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
getY ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
getYUnsafe ::
           (MonadIO m, HasCallStack) =>
             SVGFESpotLightElement -> m SVGAnimatedNumber
getYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
getYUnchecked ::
              (MonadIO m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"z\"]" js_getZ ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
getZ ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getZ self = liftIO (nullableToMaybe <$> (js_getZ (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
getZUnsafe ::
           (MonadIO m, HasCallStack) =>
             SVGFESpotLightElement -> m SVGAnimatedNumber
getZUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getZ (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
getZUnchecked ::
              (MonadIO m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getZUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getZ (self)))
 
foreign import javascript unsafe "$1[\"pointsAtX\"]"
        js_getPointsAtX ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
getPointsAtX ::
             (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtX self
  = liftIO (nullableToMaybe <$> (js_getPointsAtX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
getPointsAtXUnsafe ::
                   (MonadIO m, HasCallStack) =>
                     SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPointsAtX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
getPointsAtXUnchecked ::
                      (MonadIO m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPointsAtX (self)))
 
foreign import javascript unsafe "$1[\"pointsAtY\"]"
        js_getPointsAtY ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
getPointsAtY ::
             (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtY self
  = liftIO (nullableToMaybe <$> (js_getPointsAtY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
getPointsAtYUnsafe ::
                   (MonadIO m, HasCallStack) =>
                     SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPointsAtY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
getPointsAtYUnchecked ::
                      (MonadIO m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPointsAtY (self)))
 
foreign import javascript unsafe "$1[\"pointsAtZ\"]"
        js_getPointsAtZ ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
getPointsAtZ ::
             (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtZ self
  = liftIO (nullableToMaybe <$> (js_getPointsAtZ (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
getPointsAtZUnsafe ::
                   (MonadIO m, HasCallStack) =>
                     SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtZUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPointsAtZ (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
getPointsAtZUnchecked ::
                      (MonadIO m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getPointsAtZUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPointsAtZ (self)))
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        js_getSpecularExponent ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftIO (nullableToMaybe <$> (js_getSpecularExponent (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
getSpecularExponentUnsafe ::
                          (MonadIO m, HasCallStack) =>
                            SVGFESpotLightElement -> m SVGAnimatedNumber
getSpecularExponentUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSpecularExponent (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
getSpecularExponentUnchecked ::
                             (MonadIO m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getSpecularExponentUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSpecularExponent (self)))
 
foreign import javascript unsafe "$1[\"limitingConeAngle\"]"
        js_getLimitingConeAngle ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
getLimitingConeAngle ::
                     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getLimitingConeAngle self
  = liftIO (nullableToMaybe <$> (js_getLimitingConeAngle (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
getLimitingConeAngleUnsafe ::
                           (MonadIO m, HasCallStack) =>
                             SVGFESpotLightElement -> m SVGAnimatedNumber
getLimitingConeAngleUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getLimitingConeAngle (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
getLimitingConeAngleUnchecked ::
                              (MonadIO m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getLimitingConeAngleUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getLimitingConeAngle (self)))