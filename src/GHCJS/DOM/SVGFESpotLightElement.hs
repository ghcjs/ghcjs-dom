{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFESpotLightElement
       (js_getX, getX, js_getY, getY, js_getZ, getZ, js_getPointsAtX,
        getPointsAtX, js_getPointsAtY, getPointsAtY, js_getPointsAtZ,
        getPointsAtZ, js_getSpecularExponent, getSpecularExponent,
        js_getLimitingConeAngle, getLimitingConeAngle,
        SVGFESpotLightElement, castToSVGFESpotLightElement,
        gTypeSVGFESpotLightElement)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.x Mozilla SVGFESpotLightElement.x documentation> 
getX ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getX self
  = liftIO ((js_getX (unSVGFESpotLightElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.y Mozilla SVGFESpotLightElement.y documentation> 
getY ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getY self
  = liftIO ((js_getY (unSVGFESpotLightElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"z\"]" js_getZ ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.z Mozilla SVGFESpotLightElement.z documentation> 
getZ ::
     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getZ self
  = liftIO ((js_getZ (unSVGFESpotLightElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"pointsAtX\"]"
        js_getPointsAtX ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtX Mozilla SVGFESpotLightElement.pointsAtX documentation> 
getPointsAtX ::
             (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtX self
  = liftIO
      ((js_getPointsAtX (unSVGFESpotLightElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"pointsAtY\"]"
        js_getPointsAtY ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtY Mozilla SVGFESpotLightElement.pointsAtY documentation> 
getPointsAtY ::
             (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtY self
  = liftIO
      ((js_getPointsAtY (unSVGFESpotLightElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"pointsAtZ\"]"
        js_getPointsAtZ ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.pointsAtZ Mozilla SVGFESpotLightElement.pointsAtZ documentation> 
getPointsAtZ ::
             (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getPointsAtZ self
  = liftIO
      ((js_getPointsAtZ (unSVGFESpotLightElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        js_getSpecularExponent ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.specularExponent Mozilla SVGFESpotLightElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftIO
      ((js_getSpecularExponent (unSVGFESpotLightElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"limitingConeAngle\"]"
        js_getLimitingConeAngle ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement.limitingConeAngle Mozilla SVGFESpotLightElement.limitingConeAngle documentation> 
getLimitingConeAngle ::
                     (MonadIO m) => SVGFESpotLightElement -> m (Maybe SVGAnimatedNumber)
getLimitingConeAngle self
  = liftIO
      ((js_getLimitingConeAngle (unSVGFESpotLightElement self)) >>=
         fromJSRef)
#else
module GHCJS.DOM.SVGFESpotLightElement (
  ) where
#endif
