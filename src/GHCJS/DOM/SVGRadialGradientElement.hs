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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"cx\"]"
        ghcjs_dom_svg_radial_gradient_element_get_cx ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cx Mozilla SVGRadialGradientElement.cx documentation> 
svgRadialGradientElementGetCx ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetCx self
  = (ghcjs_dom_svg_radial_gradient_element_get_cx
       (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"cy\"]"
        ghcjs_dom_svg_radial_gradient_element_get_cy ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cy Mozilla SVGRadialGradientElement.cy documentation> 
svgRadialGradientElementGetCy ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetCy self
  = (ghcjs_dom_svg_radial_gradient_element_get_cy
       (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"r\"]"
        ghcjs_dom_svg_radial_gradient_element_get_r ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.r Mozilla SVGRadialGradientElement.r documentation> 
svgRadialGradientElementGetR ::
                             (IsSVGRadialGradientElement self) =>
                               self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetR self
  = (ghcjs_dom_svg_radial_gradient_element_get_r
       (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"fx\"]"
        ghcjs_dom_svg_radial_gradient_element_get_fx ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fx Mozilla SVGRadialGradientElement.fx documentation> 
svgRadialGradientElementGetFx ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetFx self
  = (ghcjs_dom_svg_radial_gradient_element_get_fx
       (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"fy\"]"
        ghcjs_dom_svg_radial_gradient_element_get_fy ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fy Mozilla SVGRadialGradientElement.fy documentation> 
svgRadialGradientElementGetFy ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetFy self
  = (ghcjs_dom_svg_radial_gradient_element_get_fy
       (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"fr\"]"
        ghcjs_dom_svg_radial_gradient_element_get_fr ::
        JSRef SVGRadialGradientElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fr Mozilla SVGRadialGradientElement.fr documentation> 
svgRadialGradientElementGetFr ::
                              (IsSVGRadialGradientElement self) =>
                                self -> IO (Maybe SVGAnimatedLength)
svgRadialGradientElementGetFr self
  = (ghcjs_dom_svg_radial_gradient_element_get_fr
       (unSVGRadialGradientElement (toSVGRadialGradientElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGRadialGradientElement (
  ) where
#endif
