{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFESpecularLightingElement
       (js_getIn1, getIn1, js_getSurfaceScale, getSurfaceScale,
        js_getSpecularConstant, getSpecularConstant,
        js_getSpecularExponent, getSpecularExponent,
        SVGFESpecularLightingElement, castToSVGFESpecularLightingElement,
        gTypeSVGFESpecularLightingElement)
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

 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFESpecularLightingElement -> m (Maybe SVGAnimatedString)
getIn1 self
  = liftIO
      ((js_getIn1 (unSVGFESpecularLightingElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"surfaceScale\"]"
        js_getSurfaceScale ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
getSurfaceScale ::
                (MonadIO m) =>
                  SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSurfaceScale self
  = liftIO
      ((js_getSurfaceScale (unSVGFESpecularLightingElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"specularConstant\"]"
        js_getSpecularConstant ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
getSpecularConstant ::
                    (MonadIO m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularConstant self
  = liftIO
      ((js_getSpecularConstant (unSVGFESpecularLightingElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        js_getSpecularExponent ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
getSpecularExponent ::
                    (MonadIO m) =>
                      SVGFESpecularLightingElement -> m (Maybe SVGAnimatedNumber)
getSpecularExponent self
  = liftIO
      ((js_getSpecularExponent (unSVGFESpecularLightingElement self)) >>=
         fromJSRef)
#else
module GHCJS.DOM.SVGFESpecularLightingElement (
  ) where
#endif
