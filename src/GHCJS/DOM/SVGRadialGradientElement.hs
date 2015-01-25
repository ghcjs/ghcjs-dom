{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGRadialGradientElement
       (ghcjs_dom_svg_radial_gradient_element_get_cx,
        svgRadialGradientElementGetCx,
        ghcjs_dom_svg_radial_gradient_element_get_cy,
        svgRadialGradientElementGetCy,
        ghcjs_dom_svg_radial_gradient_element_get_r,
        svgRadialGradientElementGetR,
        ghcjs_dom_svg_radial_gradient_element_get_fx,
        svgRadialGradientElementGetFx,
        ghcjs_dom_svg_radial_gradient_element_get_fy,
        svgRadialGradientElementGetFy,
        ghcjs_dom_svg_radial_gradient_element_get_fr,
        svgRadialGradientElementGetFr, SVGRadialGradientElement,
        IsSVGRadialGradientElement, castToSVGRadialGradientElement,
        gTypeSVGRadialGradientElement, toSVGRadialGradientElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"cx\"]"
        ghcjs_dom_svg_radial_gradient_element_get_cx ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgRadialGradientElementGetCx ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetCx self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_radial_gradient_element_get_cx
         (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
 
foreign import javascript unsafe "$1[\"cy\"]"
        ghcjs_dom_svg_radial_gradient_element_get_cy ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgRadialGradientElementGetCy ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetCy self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_radial_gradient_element_get_cy
         (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
 
foreign import javascript unsafe "$1[\"r\"]"
        ghcjs_dom_svg_radial_gradient_element_get_r ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgRadialGradientElementGetR ::
                             (IsSVGRadialGradientElement self) =>
                               self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetR self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_radial_gradient_element_get_r
         (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
 
foreign import javascript unsafe "$1[\"fx\"]"
        ghcjs_dom_svg_radial_gradient_element_get_fx ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgRadialGradientElementGetFx ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetFx self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_radial_gradient_element_get_fx
         (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
 
foreign import javascript unsafe "$1[\"fy\"]"
        ghcjs_dom_svg_radial_gradient_element_get_fy ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgRadialGradientElementGetFy ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetFy self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_radial_gradient_element_get_fy
         (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
 
foreign import javascript unsafe "$1[\"fr\"]"
        ghcjs_dom_svg_radial_gradient_element_get_fr ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)
 
svgRadialGradientElementGetFr ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetFr self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_radial_gradient_element_get_fr
         (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
#else
module GHCJS.DOM.SVGRadialGradientElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGRadialGradientElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGRadialGradientElement
#endif
