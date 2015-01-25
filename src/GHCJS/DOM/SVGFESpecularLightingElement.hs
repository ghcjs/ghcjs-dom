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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_specular_lighting_element_get_in1 ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedString)
 
svgfeSpecularLightingElementGetIn1 ::
                                   (IsSVGFESpecularLightingElement self) =>
                                     self -> IO (Maybe SVGAnimatedString)
svgfeSpecularLightingElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_specular_lighting_element_get_in1
         (unSVGFESpecularLightingElement
            (toSVGFESpecularLightingElement self)))
 
foreign import javascript unsafe "$1[\"surfaceScale\"]"
        ghcjs_dom_svgfe_specular_lighting_element_get_surface_scale ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpecularLightingElementGetSurfaceScale ::
                                            (IsSVGFESpecularLightingElement self) =>
                                              self -> IO (Maybe SVGAnimatedNumber)
svgfeSpecularLightingElementGetSurfaceScale self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_specular_lighting_element_get_surface_scale
         (unSVGFESpecularLightingElement
            (toSVGFESpecularLightingElement self)))
 
foreign import javascript unsafe "$1[\"specularConstant\"]"
        ghcjs_dom_svgfe_specular_lighting_element_get_specular_constant ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpecularLightingElementGetSpecularConstant ::
                                                (IsSVGFESpecularLightingElement self) =>
                                                  self -> IO (Maybe SVGAnimatedNumber)
svgfeSpecularLightingElementGetSpecularConstant self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_specular_lighting_element_get_specular_constant
         (unSVGFESpecularLightingElement
            (toSVGFESpecularLightingElement self)))
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        ghcjs_dom_svgfe_specular_lighting_element_get_specular_exponent ::
        JSRef SVGFESpecularLightingElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpecularLightingElementGetSpecularExponent ::
                                                (IsSVGFESpecularLightingElement self) =>
                                                  self -> IO (Maybe SVGAnimatedNumber)
svgfeSpecularLightingElementGetSpecularExponent self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_specular_lighting_element_get_specular_exponent
         (unSVGFESpecularLightingElement
            (toSVGFESpecularLightingElement self)))
#else
module GHCJS.DOM.SVGFESpecularLightingElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFESpecularLightingElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFESpecularLightingElement
#endif
