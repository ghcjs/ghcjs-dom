{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFESpotLightElement
       (js_getX, getX, js_getY, getY, js_getZ, getZ, js_getPointsAtX,
        getPointsAtX, js_getPointsAtY, getPointsAtY, js_getPointsAtZ,
        getPointsAtZ, js_getSpecularExponent, getSpecularExponent,
        js_getLimitingConeAngle, getLimitingConeAngle,
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
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getX ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
getY ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"z\"]" js_getZ ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
getZ ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getZ self = liftIO (nullableToMaybe <$> (js_getZ (self)))
 
foreign import javascript unsafe "$1[\"pointsAtX\"]"
        js_getPointsAtX ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
getPointsAtX ::
             (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtX self
  = liftIO (nullableToMaybe <$> (js_getPointsAtX (self)))
 
foreign import javascript unsafe "$1[\"pointsAtY\"]"
        js_getPointsAtY ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
getPointsAtY ::
             (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtY self
  = liftIO (nullableToMaybe <$> (js_getPointsAtY (self)))
 
foreign import javascript unsafe "$1[\"pointsAtZ\"]"
        js_getPointsAtZ ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
getPointsAtZ ::
             (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtZ self
  = liftIO (nullableToMaybe <$> (js_getPointsAtZ (self)))
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        js_getSpecularExponent ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftIO (nullableToMaybe <$> (js_getSpecularExponent (self)))
 
foreign import javascript unsafe "$1[\"limitingConeAngle\"]"
        js_getLimitingConeAngle ::
        SVGFESpotLightElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
getLimitingConeAngle ::
                     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getLimitingConeAngle self
  = liftIO (nullableToMaybe <$> (js_getLimitingConeAngle (self)))