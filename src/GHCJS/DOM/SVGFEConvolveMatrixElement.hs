{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEConvolveMatrixElement
       (cSVG_EDGEMODE_UNKNOWN, cSVG_EDGEMODE_DUPLICATE,
        cSVG_EDGEMODE_WRAP, cSVG_EDGEMODE_NONE,
        ghcjs_dom_svgfe_convolve_matrix_element_get_in1,
        svgfeConvolveMatrixElementGetIn1,
        ghcjs_dom_svgfe_convolve_matrix_element_get_order_x,
        svgfeConvolveMatrixElementGetOrderX,
        ghcjs_dom_svgfe_convolve_matrix_element_get_order_y,
        svgfeConvolveMatrixElementGetOrderY,
        ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_matrix,
        svgfeConvolveMatrixElementGetKernelMatrix,
        ghcjs_dom_svgfe_convolve_matrix_element_get_divisor,
        svgfeConvolveMatrixElementGetDivisor,
        ghcjs_dom_svgfe_convolve_matrix_element_get_bias,
        svgfeConvolveMatrixElementGetBias,
        ghcjs_dom_svgfe_convolve_matrix_element_get_target_x,
        svgfeConvolveMatrixElementGetTargetX,
        ghcjs_dom_svgfe_convolve_matrix_element_get_target_y,
        svgfeConvolveMatrixElementGetTargetY,
        ghcjs_dom_svgfe_convolve_matrix_element_get_edge_mode,
        svgfeConvolveMatrixElementGetEdgeMode,
        ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_x,
        svgfeConvolveMatrixElementGetKernelUnitLengthX,
        ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_y,
        svgfeConvolveMatrixElementGetKernelUnitLengthY,
        ghcjs_dom_svgfe_convolve_matrix_element_get_preserve_alpha,
        svgfeConvolveMatrixElementGetPreserveAlpha,
        SVGFEConvolveMatrixElement, IsSVGFEConvolveMatrixElement,
        castToSVGFEConvolveMatrixElement, gTypeSVGFEConvolveMatrixElement,
        toSVGFEConvolveMatrixElement)
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

cSVG_EDGEMODE_UNKNOWN = 0
cSVG_EDGEMODE_DUPLICATE = 1
cSVG_EDGEMODE_WRAP = 2
cSVG_EDGEMODE_NONE = 3
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_in1 ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.in1 Mozilla SVGFEConvolveMatrixElement.in1 documentation> 
svgfeConvolveMatrixElementGetIn1 ::
                                 (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                   self -> m (Maybe SVGAnimatedString)
svgfeConvolveMatrixElementGetIn1 self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_in1
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"orderX\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_order_x ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderX Mozilla SVGFEConvolveMatrixElement.orderX documentation> 
svgfeConvolveMatrixElementGetOrderX ::
                                    (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                      self -> m (Maybe SVGAnimatedInteger)
svgfeConvolveMatrixElementGetOrderX self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_order_x
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"orderY\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_order_y ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.orderY Mozilla SVGFEConvolveMatrixElement.orderY documentation> 
svgfeConvolveMatrixElementGetOrderY ::
                                    (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                      self -> m (Maybe SVGAnimatedInteger)
svgfeConvolveMatrixElementGetOrderY self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_order_y
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"kernelMatrix\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_matrix ::
        JSRef SVGFEConvolveMatrixElement ->
          IO (JSRef SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelMatrix Mozilla SVGFEConvolveMatrixElement.kernelMatrix documentation> 
svgfeConvolveMatrixElementGetKernelMatrix ::
                                          (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                            self -> m (Maybe SVGAnimatedNumberList)
svgfeConvolveMatrixElementGetKernelMatrix self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_matrix
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"divisor\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_divisor ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.divisor Mozilla SVGFEConvolveMatrixElement.divisor documentation> 
svgfeConvolveMatrixElementGetDivisor ::
                                     (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                       self -> m (Maybe SVGAnimatedNumber)
svgfeConvolveMatrixElementGetDivisor self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_divisor
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"bias\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_bias ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.bias Mozilla SVGFEConvolveMatrixElement.bias documentation> 
svgfeConvolveMatrixElementGetBias ::
                                  (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                    self -> m (Maybe SVGAnimatedNumber)
svgfeConvolveMatrixElementGetBias self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_bias
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"targetX\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_target_x ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetX Mozilla SVGFEConvolveMatrixElement.targetX documentation> 
svgfeConvolveMatrixElementGetTargetX ::
                                     (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                       self -> m (Maybe SVGAnimatedInteger)
svgfeConvolveMatrixElementGetTargetX self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_target_x
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"targetY\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_target_y ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.targetY Mozilla SVGFEConvolveMatrixElement.targetY documentation> 
svgfeConvolveMatrixElementGetTargetY ::
                                     (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                       self -> m (Maybe SVGAnimatedInteger)
svgfeConvolveMatrixElementGetTargetY self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_target_y
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"edgeMode\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_edge_mode ::
        JSRef SVGFEConvolveMatrixElement ->
          IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.edgeMode Mozilla SVGFEConvolveMatrixElement.edgeMode documentation> 
svgfeConvolveMatrixElementGetEdgeMode ::
                                      (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                        self -> m (Maybe SVGAnimatedEnumeration)
svgfeConvolveMatrixElementGetEdgeMode self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_edge_mode
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_x ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthX Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthX documentation> 
svgfeConvolveMatrixElementGetKernelUnitLengthX ::
                                               (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                                 self -> m (Maybe SVGAnimatedNumber)
svgfeConvolveMatrixElementGetKernelUnitLengthX self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_x
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_y ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.kernelUnitLengthY Mozilla SVGFEConvolveMatrixElement.kernelUnitLengthY documentation> 
svgfeConvolveMatrixElementGetKernelUnitLengthY ::
                                               (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                                 self -> m (Maybe SVGAnimatedNumber)
svgfeConvolveMatrixElementGetKernelUnitLengthY self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_y
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"preserveAlpha\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_preserve_alpha ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedBoolean)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement.preserveAlpha Mozilla SVGFEConvolveMatrixElement.preserveAlpha documentation> 
svgfeConvolveMatrixElementGetPreserveAlpha ::
                                           (MonadIO m, IsSVGFEConvolveMatrixElement self) =>
                                             self -> m (Maybe SVGAnimatedBoolean)
svgfeConvolveMatrixElementGetPreserveAlpha self
  = liftIO
      ((ghcjs_dom_svgfe_convolve_matrix_element_get_preserve_alpha
          (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGFEConvolveMatrixElement (
  ) where
#endif
