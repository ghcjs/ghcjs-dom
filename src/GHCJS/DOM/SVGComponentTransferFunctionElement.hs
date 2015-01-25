{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGComponentTransferFunctionElement
       (cSVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN,
        cSVG_FECOMPONENTTRANSFER_TYPE_IDENTITY,
        cSVG_FECOMPONENTTRANSFER_TYPE_TABLE,
        cSVG_FECOMPONENTTRANSFER_TYPE_DISCRETE,
        cSVG_FECOMPONENTTRANSFER_TYPE_LINEAR,
        cSVG_FECOMPONENTTRANSFER_TYPE_GAMMA,
        ghcjs_dom_svg_component_transfer_function_element_get_table_values,
        svgComponentTransferFunctionElementGetTableValues,
        ghcjs_dom_svg_component_transfer_function_element_get_slope,
        svgComponentTransferFunctionElementGetSlope,
        ghcjs_dom_svg_component_transfer_function_element_get_intercept,
        svgComponentTransferFunctionElementGetIntercept,
        ghcjs_dom_svg_component_transfer_function_element_get_amplitude,
        svgComponentTransferFunctionElementGetAmplitude,
        ghcjs_dom_svg_component_transfer_function_element_get_exponent,
        svgComponentTransferFunctionElementGetExponent,
        ghcjs_dom_svg_component_transfer_function_element_get_offset,
        svgComponentTransferFunctionElementGetOffset,
        SVGComponentTransferFunctionElement,
        IsSVGComponentTransferFunctionElement,
        castToSVGComponentTransferFunctionElement,
        gTypeSVGComponentTransferFunctionElement,
        toSVGComponentTransferFunctionElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0
cSVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1
cSVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2
cSVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3
cSVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4
cSVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5
 
foreign import javascript unsafe "$1[\"tableValues\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_table_values
        ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumberList)
 
svgComponentTransferFunctionElementGetTableValues ::
                                                  (IsSVGComponentTransferFunctionElement self) =>
                                                    self -> IO (Maybe SVGAnimatedNumberList)
svgComponentTransferFunctionElementGetTableValues self
  = fmap SVGAnimatedNumberList . maybeJSNull <$>
      (ghcjs_dom_svg_component_transfer_function_element_get_table_values
         (unSVGComponentTransferFunctionElement
            (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"slope\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_slope ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)
 
svgComponentTransferFunctionElementGetSlope ::
                                            (IsSVGComponentTransferFunctionElement self) =>
                                              self -> IO (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetSlope self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svg_component_transfer_function_element_get_slope
         (unSVGComponentTransferFunctionElement
            (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"intercept\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_intercept ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)
 
svgComponentTransferFunctionElementGetIntercept ::
                                                (IsSVGComponentTransferFunctionElement self) =>
                                                  self -> IO (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetIntercept self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svg_component_transfer_function_element_get_intercept
         (unSVGComponentTransferFunctionElement
            (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"amplitude\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_amplitude ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)
 
svgComponentTransferFunctionElementGetAmplitude ::
                                                (IsSVGComponentTransferFunctionElement self) =>
                                                  self -> IO (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetAmplitude self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svg_component_transfer_function_element_get_amplitude
         (unSVGComponentTransferFunctionElement
            (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"exponent\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_exponent ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)
 
svgComponentTransferFunctionElementGetExponent ::
                                               (IsSVGComponentTransferFunctionElement self) =>
                                                 self -> IO (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetExponent self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svg_component_transfer_function_element_get_exponent
         (unSVGComponentTransferFunctionElement
            (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"offset\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_offset ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)
 
svgComponentTransferFunctionElementGetOffset ::
                                             (IsSVGComponentTransferFunctionElement self) =>
                                               self -> IO (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetOffset self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svg_component_transfer_function_element_get_offset
         (unSVGComponentTransferFunctionElement
            (toSVGComponentTransferFunctionElement self)))
#else
module GHCJS.DOM.SVGComponentTransferFunctionElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGComponentTransferFunctionElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGComponentTransferFunctionElement
#endif
