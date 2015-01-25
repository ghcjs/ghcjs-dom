{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGLinearGradientElement
       (ghcjs_dom_svg_linear_gradient_element_get_x1,
        svgLinearGradientElementGetX1,
        ghcjs_dom_svg_linear_gradient_element_get_y1,
        svgLinearGradientElementGetY1,
        ghcjs_dom_svg_linear_gradient_element_get_x2,
        svgLinearGradientElementGetX2,
        ghcjs_dom_svg_linear_gradient_element_get_y2,
        svgLinearGradientElementGetY2, SVGLinearGradientElement,
        IsSVGLinearGradientElement, castToSVGLinearGradientElement,
        gTypeSVGLinearGradientElement, toSVGLinearGradientElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_linear_gradient_element_get_x1 ::
        JSRef SVGLinearGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgLinearGradientElementGetX1 ::
                              (IsSVGLinearGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgLinearGradientElementGetX1 self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_linear_gradient_element_get_x1
         (unSVGLinearGradientElement (toSVGLinearGradientElement self)))
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_linear_gradient_element_get_y1 ::
        JSRef SVGLinearGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgLinearGradientElementGetY1 ::
                              (IsSVGLinearGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgLinearGradientElementGetY1 self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_linear_gradient_element_get_y1
         (unSVGLinearGradientElement (toSVGLinearGradientElement self)))
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_linear_gradient_element_get_x2 ::
        JSRef SVGLinearGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgLinearGradientElementGetX2 ::
                              (IsSVGLinearGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgLinearGradientElementGetX2 self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_linear_gradient_element_get_x2
         (unSVGLinearGradientElement (toSVGLinearGradientElement self)))
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_linear_gradient_element_get_y2 ::
        JSRef SVGLinearGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgLinearGradientElementGetY2 ::
                              (IsSVGLinearGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgLinearGradientElementGetY2 self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_linear_gradient_element_get_y2
         (unSVGLinearGradientElement (toSVGLinearGradientElement self)))
#else
module GHCJS.DOM.SVGLinearGradientElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGLinearGradientElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGLinearGradientElement
#endif
