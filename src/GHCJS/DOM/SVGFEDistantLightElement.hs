{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEDistantLightElement
       (ghcjs_dom_svgfe_distant_light_element_get_azimuth,
        svgfeDistantLightElementGetAzimuth,
        ghcjs_dom_svgfe_distant_light_element_get_elevation,
        svgfeDistantLightElementGetElevation, SVGFEDistantLightElement,
        IsSVGFEDistantLightElement, castToSVGFEDistantLightElement,
        gTypeSVGFEDistantLightElement, toSVGFEDistantLightElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"azimuth\"]"
        ghcjs_dom_svgfe_distant_light_element_get_azimuth ::
        JSRef SVGFEDistantLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDistantLightElementGetAzimuth ::
                                   (IsSVGFEDistantLightElement self) =>
                                     self -> IO (Maybe SVGAnimatedNumber)
svgfeDistantLightElementGetAzimuth self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_distant_light_element_get_azimuth
         (unSVGFEDistantLightElement (toSVGFEDistantLightElement self)))
 
foreign import javascript unsafe "$1[\"elevation\"]"
        ghcjs_dom_svgfe_distant_light_element_get_elevation ::
        JSRef SVGFEDistantLightElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDistantLightElementGetElevation ::
                                     (IsSVGFEDistantLightElement self) =>
                                       self -> IO (Maybe SVGAnimatedNumber)
svgfeDistantLightElementGetElevation self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_distant_light_element_get_elevation
         (unSVGFEDistantLightElement (toSVGFEDistantLightElement self)))
#else
module GHCJS.DOM.SVGFEDistantLightElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEDistantLightElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEDistantLightElement
#endif
