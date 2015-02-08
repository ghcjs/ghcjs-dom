{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGGradientElement
       (cSVG_SPREADMETHOD_UNKNOWN, cSVG_SPREADMETHOD_PAD,
        cSVG_SPREADMETHOD_REFLECT, cSVG_SPREADMETHOD_REPEAT,
        ghcjs_dom_svg_gradient_element_get_gradient_units,
        svgGradientElementGetGradientUnits,
        ghcjs_dom_svg_gradient_element_get_gradient_transform,
        svgGradientElementGetGradientTransform,
        ghcjs_dom_svg_gradient_element_get_spread_method,
        svgGradientElementGetSpreadMethod, SVGGradientElement,
        IsSVGGradientElement, castToSVGGradientElement,
        gTypeSVGGradientElement, toSVGGradientElement)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

cSVG_SPREADMETHOD_UNKNOWN = 0
cSVG_SPREADMETHOD_PAD = 1
cSVG_SPREADMETHOD_REFLECT = 2
cSVG_SPREADMETHOD_REPEAT = 3
 
foreign import javascript unsafe "$1[\"gradientUnits\"]"
        ghcjs_dom_svg_gradient_element_get_gradient_units ::
        JSRef SVGGradientElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientUnits Mozilla SVGGradientElement.gradientUnits documentation> 
svgGradientElementGetGradientUnits ::
                                   (MonadIO m, IsSVGGradientElement self) =>
                                     self -> m (Maybe SVGAnimatedEnumeration)
svgGradientElementGetGradientUnits self
  = liftIO
      ((ghcjs_dom_svg_gradient_element_get_gradient_units
          (unSVGGradientElement (toSVGGradientElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"gradientTransform\"]"
        ghcjs_dom_svg_gradient_element_get_gradient_transform ::
        JSRef SVGGradientElement -> IO (JSRef SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientTransform Mozilla SVGGradientElement.gradientTransform documentation> 
svgGradientElementGetGradientTransform ::
                                       (MonadIO m, IsSVGGradientElement self) =>
                                         self -> m (Maybe SVGAnimatedTransformList)
svgGradientElementGetGradientTransform self
  = liftIO
      ((ghcjs_dom_svg_gradient_element_get_gradient_transform
          (unSVGGradientElement (toSVGGradientElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"spreadMethod\"]"
        ghcjs_dom_svg_gradient_element_get_spread_method ::
        JSRef SVGGradientElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.spreadMethod Mozilla SVGGradientElement.spreadMethod documentation> 
svgGradientElementGetSpreadMethod ::
                                  (MonadIO m, IsSVGGradientElement self) =>
                                    self -> m (Maybe SVGAnimatedEnumeration)
svgGradientElementGetSpreadMethod self
  = liftIO
      ((ghcjs_dom_svg_gradient_element_get_spread_method
          (unSVGGradientElement (toSVGGradientElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGGradientElement (
  ) where
#endif
