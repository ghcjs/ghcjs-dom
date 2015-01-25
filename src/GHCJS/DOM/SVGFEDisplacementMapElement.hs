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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_CHANNEL_UNKNOWN = 0
cSVG_CHANNEL_R = 1
cSVG_CHANNEL_G = 2
cSVG_CHANNEL_B = 3
cSVG_CHANNEL_A = 4
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_in1 ::
        JSRef SVGFEDisplacementMapElement -> IO (JSRef SVGAnimatedString)
 
svgfeDisplacementMapElementGetIn1 ::
                                  (IsSVGFEDisplacementMapElement self) =>
                                    self -> IO (Maybe SVGAnimatedString)
svgfeDisplacementMapElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_displacement_map_element_get_in1
         (unSVGFEDisplacementMapElement
            (toSVGFEDisplacementMapElement self)))
 
foreign import javascript unsafe "$1[\"in2\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_in2 ::
        JSRef SVGFEDisplacementMapElement -> IO (JSRef SVGAnimatedString)
 
svgfeDisplacementMapElementGetIn2 ::
                                  (IsSVGFEDisplacementMapElement self) =>
                                    self -> IO (Maybe SVGAnimatedString)
svgfeDisplacementMapElementGetIn2 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_displacement_map_element_get_in2
         (unSVGFEDisplacementMapElement
            (toSVGFEDisplacementMapElement self)))
 
foreign import javascript unsafe "$1[\"scale\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_scale ::
        JSRef SVGFEDisplacementMapElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeDisplacementMapElementGetScale ::
                                    (IsSVGFEDisplacementMapElement self) =>
                                      self -> IO (Maybe SVGAnimatedNumber)
svgfeDisplacementMapElementGetScale self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_displacement_map_element_get_scale
         (unSVGFEDisplacementMapElement
            (toSVGFEDisplacementMapElement self)))
 
foreign import javascript unsafe "$1[\"xChannelSelector\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_x_channel_selector ::
        JSRef SVGFEDisplacementMapElement ->
          IO (JSRef SVGAnimatedEnumeration)
 
svgfeDisplacementMapElementGetXChannelSelector ::
                                               (IsSVGFEDisplacementMapElement self) =>
                                                 self -> IO (Maybe SVGAnimatedEnumeration)
svgfeDisplacementMapElementGetXChannelSelector self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svgfe_displacement_map_element_get_x_channel_selector
         (unSVGFEDisplacementMapElement
            (toSVGFEDisplacementMapElement self)))
 
foreign import javascript unsafe "$1[\"yChannelSelector\"]"
        ghcjs_dom_svgfe_displacement_map_element_get_y_channel_selector ::
        JSRef SVGFEDisplacementMapElement ->
          IO (JSRef SVGAnimatedEnumeration)
 
svgfeDisplacementMapElementGetYChannelSelector ::
                                               (IsSVGFEDisplacementMapElement self) =>
                                                 self -> IO (Maybe SVGAnimatedEnumeration)
svgfeDisplacementMapElementGetYChannelSelector self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svgfe_displacement_map_element_get_y_channel_selector
         (unSVGFEDisplacementMapElement
            (toSVGFEDisplacementMapElement self)))
#else
module GHCJS.DOM.SVGFEDisplacementMapElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEDisplacementMapElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEDisplacementMapElement
#endif
