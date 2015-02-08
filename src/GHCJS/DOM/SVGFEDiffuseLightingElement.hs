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

 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_in1 ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.in1 Mozilla SVGFEDiffuseLightingElement.in1 documentation> 
svgfeDiffuseLightingElementGetIn1 ::
                                  (MonadIO m, IsSVGFEDiffuseLightingElement self) =>
                                    self -> m (Maybe SVGAnimatedString)
svgfeDiffuseLightingElementGetIn1 self
  = liftIO
      ((ghcjs_dom_svgfe_diffuse_lighting_element_get_in1
          (unSVGFEDiffuseLightingElement
             (toSVGFEDiffuseLightingElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"surfaceScale\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_surface_scale ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.surfaceScale Mozilla SVGFEDiffuseLightingElement.surfaceScale documentation> 
svgfeDiffuseLightingElementGetSurfaceScale ::
                                           (MonadIO m, IsSVGFEDiffuseLightingElement self) =>
                                             self -> m (Maybe SVGAnimatedNumber)
svgfeDiffuseLightingElementGetSurfaceScale self
  = liftIO
      ((ghcjs_dom_svgfe_diffuse_lighting_element_get_surface_scale
          (unSVGFEDiffuseLightingElement
             (toSVGFEDiffuseLightingElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"diffuseConstant\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_diffuse_constant ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.diffuseConstant Mozilla SVGFEDiffuseLightingElement.diffuseConstant documentation> 
svgfeDiffuseLightingElementGetDiffuseConstant ::
                                              (MonadIO m, IsSVGFEDiffuseLightingElement self) =>
                                                self -> m (Maybe SVGAnimatedNumber)
svgfeDiffuseLightingElementGetDiffuseConstant self
  = liftIO
      ((ghcjs_dom_svgfe_diffuse_lighting_element_get_diffuse_constant
          (unSVGFEDiffuseLightingElement
             (toSVGFEDiffuseLightingElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_x
        ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthX Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthX documentation> 
svgfeDiffuseLightingElementGetKernelUnitLengthX ::
                                                (MonadIO m, IsSVGFEDiffuseLightingElement self) =>
                                                  self -> m (Maybe SVGAnimatedNumber)
svgfeDiffuseLightingElementGetKernelUnitLengthX self
  = liftIO
      ((ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_x
          (unSVGFEDiffuseLightingElement
             (toSVGFEDiffuseLightingElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_y
        ::
        JSRef SVGFEDiffuseLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement.kernelUnitLengthY Mozilla SVGFEDiffuseLightingElement.kernelUnitLengthY documentation> 
svgfeDiffuseLightingElementGetKernelUnitLengthY ::
                                                (MonadIO m, IsSVGFEDiffuseLightingElement self) =>
                                                  self -> m (Maybe SVGAnimatedNumber)
svgfeDiffuseLightingElementGetKernelUnitLengthY self
  = liftIO
      ((ghcjs_dom_svgfe_diffuse_lighting_element_get_kernel_unit_length_y
          (unSVGFEDiffuseLightingElement
             (toSVGFEDiffuseLightingElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGFEDiffuseLightingElement (
  ) where
#endif
