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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.tableValues Mozilla SVGComponentTransferFunctionElement.tableValues documentation> 
svgComponentTransferFunctionElementGetTableValues ::
                                                  (MonadIO m,
                                                   IsSVGComponentTransferFunctionElement self) =>
                                                    self -> m (Maybe SVGAnimatedNumberList)
svgComponentTransferFunctionElementGetTableValues self
  = liftIO
      ((ghcjs_dom_svg_component_transfer_function_element_get_table_values
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"slope\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_slope ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.slope Mozilla SVGComponentTransferFunctionElement.slope documentation> 
svgComponentTransferFunctionElementGetSlope ::
                                            (MonadIO m,
                                             IsSVGComponentTransferFunctionElement self) =>
                                              self -> m (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetSlope self
  = liftIO
      ((ghcjs_dom_svg_component_transfer_function_element_get_slope
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"intercept\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_intercept ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.intercept Mozilla SVGComponentTransferFunctionElement.intercept documentation> 
svgComponentTransferFunctionElementGetIntercept ::
                                                (MonadIO m,
                                                 IsSVGComponentTransferFunctionElement self) =>
                                                  self -> m (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetIntercept self
  = liftIO
      ((ghcjs_dom_svg_component_transfer_function_element_get_intercept
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"amplitude\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_amplitude ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.amplitude Mozilla SVGComponentTransferFunctionElement.amplitude documentation> 
svgComponentTransferFunctionElementGetAmplitude ::
                                                (MonadIO m,
                                                 IsSVGComponentTransferFunctionElement self) =>
                                                  self -> m (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetAmplitude self
  = liftIO
      ((ghcjs_dom_svg_component_transfer_function_element_get_amplitude
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"exponent\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_exponent ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.exponent Mozilla SVGComponentTransferFunctionElement.exponent documentation> 
svgComponentTransferFunctionElementGetExponent ::
                                               (MonadIO m,
                                                IsSVGComponentTransferFunctionElement self) =>
                                                 self -> m (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetExponent self
  = liftIO
      ((ghcjs_dom_svg_component_transfer_function_element_get_exponent
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"offset\"]"
        ghcjs_dom_svg_component_transfer_function_element_get_offset ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.offset Mozilla SVGComponentTransferFunctionElement.offset documentation> 
svgComponentTransferFunctionElementGetOffset ::
                                             (MonadIO m,
                                              IsSVGComponentTransferFunctionElement self) =>
                                               self -> m (Maybe SVGAnimatedNumber)
svgComponentTransferFunctionElementGetOffset self
  = liftIO
      ((ghcjs_dom_svg_component_transfer_function_element_get_offset
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGComponentTransferFunctionElement (
  ) where
#endif
