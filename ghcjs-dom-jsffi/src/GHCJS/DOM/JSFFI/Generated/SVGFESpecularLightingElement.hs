{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFESpecularLightingElement
       (js_getIn1, getIn1, js_getSurfaceScale, getSurfaceScale,
        js_getSpecularConstant, getSpecularConstant,
        js_getSpecularExponent, getSpecularExponent,
        SVGFESpecularLightingElement, castToSVGFESpecularLightingElement,
        gTypeSVGFESpecularLightingElement)
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
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFESpecularLightingElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFESpecularLightingElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"surfaceScale\"]"
        js_getSurfaceScale ::
        SVGFESpecularLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScale ::
                (MonadIO m) =>
                  SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSurfaceScale self
  = liftIO (nullableToMaybe <$> (js_getSurfaceScale (self)))
 
foreign import javascript unsafe "$1[\"specularConstant\"]"
        js_getSpecularConstant ::
        SVGFESpecularLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstant ::
                    (MonadIO m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularConstant self
  = liftIO (nullableToMaybe <$> (js_getSpecularConstant (self)))
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        js_getSpecularExponent ::
        SVGFESpecularLightingElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadIO m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftIO (nullableToMaybe <$> (js_getSpecularExponent (self)))