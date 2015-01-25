{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEPointLightElement
       (ghcjs_dom_svgfe_point_light_element_get_x,
        svgfePointLightElementGetX,
        ghcjs_dom_svgfe_point_light_element_get_y,
        svgfePointLightElementGetY,
        ghcjs_dom_svgfe_point_light_element_get_z,
        svgfePointLightElementGetZ, SVGFEPointLightElement,
        IsSVGFEPointLightElement, castToSVGFEPointLightElement,
        gTypeSVGFEPointLightElement, toSVGFEPointLightElement)
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
        ghcjs_dom_svgfe_point_light_element_get_x ::
        JSRef SVGFEPointLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfePointLightElementGetX ::
                           (IsSVGFEPointLightElement self) =>
                             self -> IO (Maybe SVGAnimatedNumber)
svgfePointLightElementGetX self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_point_light_element_get_x
         (unSVGFEPointLightElement (toSVGFEPointLightElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svgfe_point_light_element_get_y ::
        JSRef SVGFEPointLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfePointLightElementGetY ::
                           (IsSVGFEPointLightElement self) =>
                             self -> IO (Maybe SVGAnimatedNumber)
svgfePointLightElementGetY self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_point_light_element_get_y
         (unSVGFEPointLightElement (toSVGFEPointLightElement self)))
 
foreign import javascript unsafe "$1[\"z\"]"
        ghcjs_dom_svgfe_point_light_element_get_z ::
        JSRef SVGFEPointLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfePointLightElementGetZ ::
                           (IsSVGFEPointLightElement self) =>
                             self -> IO (Maybe SVGAnimatedNumber)
svgfePointLightElementGetZ self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_point_light_element_get_z
         (unSVGFEPointLightElement (toSVGFEPointLightElement self)))
#else
module GHCJS.DOM.SVGFEPointLightElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEPointLightElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEPointLightElement
#endif
