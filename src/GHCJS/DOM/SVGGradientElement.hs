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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_SPREADMETHOD_UNKNOWN = 0
cSVG_SPREADMETHOD_PAD = 1
cSVG_SPREADMETHOD_REFLECT = 2
cSVG_SPREADMETHOD_REPEAT = 3
 
foreign import javascript unsafe "$1[\"gradientUnits\"]"
        ghcjs_dom_svg_gradient_element_get_gradient_units ::
        JSRef SVGGradientElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgGradientElementGetGradientUnits ::
                                   (IsSVGGradientElement self) =>
                                     self -> IO (Maybe SVGAnimatedEnumeration)
svgGradientElementGetGradientUnits self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_gradient_element_get_gradient_units
         (unSVGGradientElement (toSVGGradientElement self)))
 
foreign import javascript unsafe "$1[\"gradientTransform\"]"
        ghcjs_dom_svg_gradient_element_get_gradient_transform ::
        JSRef SVGGradientElement -> IO (JSRef SVGAnimatedTransformList)
 
svgGradientElementGetGradientTransform ::
                                       (IsSVGGradientElement self) =>
                                         self -> IO (Maybe SVGAnimatedTransformList)
svgGradientElementGetGradientTransform self
  = fmap SVGAnimatedTransformList . maybeJSNull <$>
      (ghcjs_dom_svg_gradient_element_get_gradient_transform
         (unSVGGradientElement (toSVGGradientElement self)))
 
foreign import javascript unsafe "$1[\"spreadMethod\"]"
        ghcjs_dom_svg_gradient_element_get_spread_method ::
        JSRef SVGGradientElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgGradientElementGetSpreadMethod ::
                                  (IsSVGGradientElement self) =>
                                    self -> IO (Maybe SVGAnimatedEnumeration)
svgGradientElementGetSpreadMethod self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_gradient_element_get_spread_method
         (unSVGGradientElement (toSVGGradientElement self)))
#else
module GHCJS.DOM.SVGGradientElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGGradientElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGGradientElement
#endif
