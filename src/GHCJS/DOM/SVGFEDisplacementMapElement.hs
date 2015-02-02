{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEDisplacementMapElement
       (cSVG_CHANNEL_UNKNOWN, cSVG_CHANNEL_R, cSVG_CHANNEL_G,
        cSVG_CHANNEL_B, cSVG_CHANNEL_A,
        ghcjs_dom_svgfe_displacement_map_element_get_in1,
        svgfeDisplacementMapElementGetIn1,
        ghcjs_dom_svgfe_displacement_map_element_get_in2,
        svgfeDisplacementMapElementGetIn2,
        ghcjs_dom_svgfe_displacement_map_element_get_scale,
        svgfeDisplacementMapElementGetScale,
        ghcjs_dom_svgfe_displacement_map_element_get_x_channel_selector,
        svgfeDisplacementMapElementGetXChannelSelector,
        ghcjs_dom_svgfe_displacement_map_element_get_y_channel_selector,
        svgfeDisplacementMapElementGetYChannelSelector,
        SVGFEDisplacementMapElement, IsSVGFEDisplacementMapElement,
        castToSVGFEDisplacementMapElement,
        gTypeSVGFEDisplacementMapElement, toSVGFEDisplacementMapElement)
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

cSVG_CHANNEL_UNKNOWN = 0
cSVG_CHANNEL_R = 1
cSVG_CHANNEL_G = 2
cSVG_CHANNEL_B = 3
cSVG_CHANNEL_A = 4
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_in1 ::
        JSRef SVGFEDisplacementMapElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in1 Mozilla SVGFEDisplacementMapElement.in1 documentation> 
svgfeDisplacementMapElementGetIn1 ::
                                  (IsSVGFEDisplacementMapElement self) =>
                                    self -> IO (Maybe SVGAnimatedString)
svgfeDisplacementMapElementGetIn1 self
  = (ghcjs_dom_svgfe_displacement_map_element_get_in1
       (unSVGFEDisplacementMapElement
          (toSVGFEDisplacementMapElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"in2\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_in2 ::
        JSRef SVGFEDisplacementMapElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in2 Mozilla SVGFEDisplacementMapElement.in2 documentation> 
svgfeDisplacementMapElementGetIn2 ::
                                  (IsSVGFEDisplacementMapElement self) =>
                                    self -> IO (Maybe SVGAnimatedString)
svgfeDisplacementMapElementGetIn2 self
  = (ghcjs_dom_svgfe_displacement_map_element_get_in2
       (unSVGFEDisplacementMapElement
          (toSVGFEDisplacementMapElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"scale\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_scale ::
        JSRef SVGFEDisplacementMapElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.scale Mozilla SVGFEDisplacementMapElement.scale documentation> 
svgfeDisplacementMapElementGetScale ::
                                    (IsSVGFEDisplacementMapElement self) =>
                                      self -> IO (Maybe SVGAnimatedNumber)
svgfeDisplacementMapElementGetScale self
  = (ghcjs_dom_svgfe_displacement_map_element_get_scale
       (unSVGFEDisplacementMapElement
          (toSVGFEDisplacementMapElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"xChannelSelector\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_x_channel_selector ::
        JSRef SVGFEDisplacementMapElement ->
          IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.xChannelSelector Mozilla SVGFEDisplacementMapElement.xChannelSelector documentation> 
svgfeDisplacementMapElementGetXChannelSelector ::
                                               (IsSVGFEDisplacementMapElement self) =>
                                                 self -> IO (Maybe SVGAnimatedEnumeration)
svgfeDisplacementMapElementGetXChannelSelector self
  = (ghcjs_dom_svgfe_displacement_map_element_get_x_channel_selector
       (unSVGFEDisplacementMapElement
          (toSVGFEDisplacementMapElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"yChannelSelector\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_y_channel_selector ::
        JSRef SVGFEDisplacementMapElement ->
          IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.yChannelSelector Mozilla SVGFEDisplacementMapElement.yChannelSelector documentation> 
svgfeDisplacementMapElementGetYChannelSelector ::
                                               (IsSVGFEDisplacementMapElement self) =>
                                                 self -> IO (Maybe SVGAnimatedEnumeration)
svgfeDisplacementMapElementGetYChannelSelector self
  = (ghcjs_dom_svgfe_displacement_map_element_get_y_channel_selector
       (unSVGFEDisplacementMapElement
          (toSVGFEDisplacementMapElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFEDisplacementMapElement (
  ) where
#endif
