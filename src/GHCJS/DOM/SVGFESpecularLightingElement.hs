{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFESpecularLightingElement
       (ghcjs_dom_svgfe_specular_lighting_element_get_in1,
        svgfeSpecularLightingElementGetIn1,
        ghcjs_dom_svgfe_specular_lighting_element_get_surface_scale,
        svgfeSpecularLightingElementGetSurfaceScale,
        ghcjs_dom_svgfe_specular_lighting_element_get_specular_constant,
        svgfeSpecularLightingElementGetSpecularConstant,
        ghcjs_dom_svgfe_specular_lighting_element_get_specular_exponent,
        svgfeSpecularLightingElementGetSpecularExponent,
        SVGFESpecularLightingElement, IsSVGFESpecularLightingElement,
        castToSVGFESpecularLightingElement,
        gTypeSVGFESpecularLightingElement, toSVGFESpecularLightingElement)
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

 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_specular_lighting_element_get_in1 ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.in1 Mozilla SVGFESpecularLightingElement.in1 documentation> 
svgfeSpecularLightingElementGetIn1 ::
                                   (IsSVGFESpecularLightingElement self) =>
                                     self -> IO (Maybe SVGAnimatedString)
svgfeSpecularLightingElementGetIn1 self
  = (ghcjs_dom_svgfe_specular_lighting_element_get_in1
       (unSVGFESpecularLightingElement
          (toSVGFESpecularLightingElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"surfaceScale\"]"
        ghcjs_dom_svgfe_specular_lighting_element_get_surface_scale ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.surfaceScale Mozilla SVGFESpecularLightingElement.surfaceScale documentation> 
svgfeSpecularLightingElementGetSurfaceScale ::
                                            (IsSVGFESpecularLightingElement self) =>
                                              self -> IO (Maybe SVGAnimatedNumber)
svgfeSpecularLightingElementGetSurfaceScale self
  = (ghcjs_dom_svgfe_specular_lighting_element_get_surface_scale
       (unSVGFESpecularLightingElement
          (toSVGFESpecularLightingElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"specularConstant\"]"
        ghcjs_dom_svgfe_specular_lighting_element_get_specular_constant ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularConstant Mozilla SVGFESpecularLightingElement.specularConstant documentation> 
svgfeSpecularLightingElementGetSpecularConstant ::
                                                (IsSVGFESpecularLightingElement self) =>
                                                  self -> IO (Maybe SVGAnimatedNumber)
svgfeSpecularLightingElementGetSpecularConstant self
  = (ghcjs_dom_svgfe_specular_lighting_element_get_specular_constant
       (unSVGFESpecularLightingElement
          (toSVGFESpecularLightingElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        ghcjs_dom_svgfe_specular_lighting_element_get_specular_exponent ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement.specularExponent Mozilla SVGFESpecularLightingElement.specularExponent documentation> 
svgfeSpecularLightingElementGetSpecularExponent ::
                                                (IsSVGFESpecularLightingElement self) =>
                                                  self -> IO (Maybe SVGAnimatedNumber)
svgfeSpecularLightingElementGetSpecularExponent self
  = (ghcjs_dom_svgfe_specular_lighting_element_get_specular_exponent
       (unSVGFESpecularLightingElement
          (toSVGFESpecularLightingElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFESpecularLightingElement (
  ) where
#endif
