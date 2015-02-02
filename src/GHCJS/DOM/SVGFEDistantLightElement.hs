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

 
foreign import javascript unsafe "$1[\"azimuth\"]"
        ghcjs_dom_svgfe_distant_light_element_get_azimuth ::
        JSRef SVGFEDistantLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.azimuth Mozilla SVGFEDistantLightElement.azimuth documentation> 
svgfeDistantLightElementGetAzimuth ::
                                   (IsSVGFEDistantLightElement self) =>
                                     self -> IO (Maybe SVGAnimatedNumber)
svgfeDistantLightElementGetAzimuth self
  = (ghcjs_dom_svgfe_distant_light_element_get_azimuth
       (unSVGFEDistantLightElement (toSVGFEDistantLightElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"elevation\"]"
        ghcjs_dom_svgfe_distant_light_element_get_elevation ::
        JSRef SVGFEDistantLightElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement.elevation Mozilla SVGFEDistantLightElement.elevation documentation> 
svgfeDistantLightElementGetElevation ::
                                     (IsSVGFEDistantLightElement self) =>
                                       self -> IO (Maybe SVGAnimatedNumber)
svgfeDistantLightElementGetElevation self
  = (ghcjs_dom_svgfe_distant_light_element_get_elevation
       (unSVGFEDistantLightElement (toSVGFEDistantLightElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFEDistantLightElement (
  ) where
#endif
