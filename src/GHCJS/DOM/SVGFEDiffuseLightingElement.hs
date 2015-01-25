{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEDiffuseLightingElement
       (ghcjs_dom_svgfe_diffuse_lighting_element_get_in1,
        svgfeDiffuseLightingElementGetIn1,
        ghcjs_dom_svgfe_diffuse_lighting_element_get_surface_scale,
        svgfeDiffuseLightingElementGetSurfaceScale,
        ghcjs_dom_svgfe_diffuse_lighting_element_get_diffuse_constant,
        svgfeDiffuseLightingElementGetDiffuseConstant,
        ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_x,
        svgfeDiffuseLightingElementGetKernelUnitLengthX,
        ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_y,
        svgfeDiffuseLightingElementGetKernelUnitLengthY,
        SVGFEDiffuseLightingElement, IsSVGFEDiffuseLightingElement,
        castToSVGFEDiffuseLightingElement,
        gTypeSVGFEDiffuseLightingElement, toSVGFEDiffuseLightingElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_in1 ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedString)
 
svgfeDiffuseLightingElementGetIn1 ::
                                  (IsSVGFEDiffuseLightingElement self) =>
                                    self -> IO (Maybe SVGAnimatedString)
svgfeDiffuseLightingElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_diffuse_lighting_element_get_in1
         (unSVGFEDiffuseLightingElement
            (toSVGFEDiffuseLightingElement self)))
 
foreign import javascript unsafe "$1[\"surfaceScale\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_surface_scale ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDiffuseLightingElementGetSurfaceScale ::
                                           (IsSVGFEDiffuseLightingElement self) =>
                                             self -> IO (Maybe SVGAnimatedNumber)
svgfeDiffuseLightingElementGetSurfaceScale self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_diffuse_lighting_element_get_surface_scale
         (unSVGFEDiffuseLightingElement
            (toSVGFEDiffuseLightingElement self)))
 
foreign import javascript unsafe "$1[\"diffuseConstant\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_diffuse_constant ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDiffuseLightingElementGetDiffuseConstant ::
                                              (IsSVGFEDiffuseLightingElement self) =>
                                                self -> IO (Maybe SVGAnimatedNumber)
svgfeDiffuseLightingElementGetDiffuseConstant self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_diffuse_lighting_element_get_diffuse_constant
         (unSVGFEDiffuseLightingElement
            (toSVGFEDiffuseLightingElement self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_x
        ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDiffuseLightingElementGetKernelUnitLengthX ::
                                                (IsSVGFEDiffuseLightingElement self) =>
                                                  self -> IO (Maybe SVGAnimatedNumber)
svgfeDiffuseLightingElementGetKernelUnitLengthX self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_x
         (unSVGFEDiffuseLightingElement
            (toSVGFEDiffuseLightingElement self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_y
        ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDiffuseLightingElementGetKernelUnitLengthY ::
                                                (IsSVGFEDiffuseLightingElement self) =>
                                                  self -> IO (Maybe SVGAnimatedNumber)
svgfeDiffuseLightingElementGetKernelUnitLengthY self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_y
         (unSVGFEDiffuseLightingElement
            (toSVGFEDiffuseLightingElement self)))
#else
module GHCJS.DOM.SVGFEDiffuseLightingElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEDiffuseLightingElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEDiffuseLightingElement
#endif
