{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFESpotLightElement
       (js_getX, getX, getXUnchecked, js_getY, getY, getYUnchecked,
        js_getZ, getZ, getZUnchecked, js_getPointsAtX, getPointsAtX,
        getPointsAtXUnchecked, js_getPointsAtY, getPointsAtY,
        getPointsAtYUnchecked, js_getPointsAtZ, getPointsAtZ,
        getPointsAtZUnchecked, js_getSpecularExponent, getSpecularExponent,
        getSpecularExponentUnchecked, js_getLimitingConeAngle,
        getLimitingConeAngle, getLimitingConeAngleUnchecked,
        SVGFESpotLightElement, castToSVGFESpotLightElement,
        gTypeSVGFESpotLightElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getX ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

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
getLimitingConeAngleUnchecked ::
                              (MonadIO m) => SVGFESpotLightElement -> m SVGAnimatedNumber
getLimitingConeAngleUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getLimitingConeAngle (self)))