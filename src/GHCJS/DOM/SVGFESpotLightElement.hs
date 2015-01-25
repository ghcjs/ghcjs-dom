{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFESpotLightElement
       (ghcjs_dom_svgfe_spot_light_element_get_x,
        svgfeSpotLightElementGetX,
        ghcjs_dom_svgfe_spot_light_element_get_y,
        svgfeSpotLightElementGetY,
        ghcjs_dom_svgfe_spot_light_element_get_z,
        svgfeSpotLightElementGetZ,
        ghcjs_dom_svgfe_spot_light_element_get_points_at_x,
        svgfeSpotLightElementGetPointsAtX,
        ghcjs_dom_svgfe_spot_light_element_get_points_at_y,
        svgfeSpotLightElementGetPointsAtY,
        ghcjs_dom_svgfe_spot_light_element_get_points_at_z,
        svgfeSpotLightElementGetPointsAtZ,
        ghcjs_dom_svgfe_spot_light_element_get_specular_exponent,
        svgfeSpotLightElementGetSpecularExponent,
        ghcjs_dom_svgfe_spot_light_element_get_limiting_cone_angle,
        svgfeSpotLightElementGetLimitingConeAngle, SVGFESpotLightElement,
        IsSVGFESpotLightElement, castToSVGFESpotLightElement,
        gTypeSVGFESpotLightElement, toSVGFESpotLightElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svgfe_spot_light_element_get_x ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpotLightElementGetX ::
                          (IsSVGFESpotLightElement self) =>
                            self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetX self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_spot_light_element_get_x
         (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svgfe_spot_light_element_get_y ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpotLightElementGetY ::
                          (IsSVGFESpotLightElement self) =>
                            self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetY self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_spot_light_element_get_y
         (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
 
foreign import javascript unsafe "$1[\"z\"]"
        ghcjs_dom_svgfe_spot_light_element_get_z ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpotLightElementGetZ ::
                          (IsSVGFESpotLightElement self) =>
                            self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetZ self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_spot_light_element_get_z
         (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
 
foreign import javascript unsafe "$1[\"pointsAtX\"]"
        ghcjs_dom_svgfe_spot_light_element_get_points_at_x ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpotLightElementGetPointsAtX ::
                                  (IsSVGFESpotLightElement self) =>
                                    self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetPointsAtX self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_spot_light_element_get_points_at_x
         (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
 
foreign import javascript unsafe "$1[\"pointsAtY\"]"
        ghcjs_dom_svgfe_spot_light_element_get_points_at_y ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpotLightElementGetPointsAtY ::
                                  (IsSVGFESpotLightElement self) =>
                                    self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetPointsAtY self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_spot_light_element_get_points_at_y
         (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
 
foreign import javascript unsafe "$1[\"pointsAtZ\"]"
        ghcjs_dom_svgfe_spot_light_element_get_points_at_z ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpotLightElementGetPointsAtZ ::
                                  (IsSVGFESpotLightElement self) =>
                                    self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetPointsAtZ self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_spot_light_element_get_points_at_z
         (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
 
foreign import javascript unsafe "$1[\"specularExponent\"]"
        ghcjs_dom_svgfe_spot_light_element_get_specular_exponent ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpotLightElementGetSpecularExponent ::
                                         (IsSVGFESpotLightElement self) =>
                                           self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetSpecularExponent self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_spot_light_element_get_specular_exponent
         (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
 
foreign import javascript unsafe "$1[\"limitingConeAngle\"]"
        ghcjs_dom_svgfe_spot_light_element_get_limiting_cone_angle ::
        JSRef SVGFESpotLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeSpotLightElementGetLimitingConeAngle ::
                                          (IsSVGFESpotLightElement self) =>
                                            self -> IO (Maybe SVGAnimatedNumber)
svgfeSpotLightElementGetLimitingConeAngle self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_spot_light_element_get_limiting_cone_angle
         (unSVGFESpotLightElement (toSVGFESpotLightElement self)))
#else
module GHCJS.DOM.SVGFESpotLightElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFESpotLightElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFESpotLightElement
#endif
