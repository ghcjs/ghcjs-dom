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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_EDGEMODE_UNKNOWN = 0
cSVG_EDGEMODE_DUPLICATE = 1
cSVG_EDGEMODE_WRAP = 2
cSVG_EDGEMODE_NONE = 3
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_in1 ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedString)
 
svgfeConvolveMatrixElementGetIn1 ::
                                 (IsSVGFEConvolveMatrixElement self) =>
                                   self -> IO (Maybe SVGAnimatedString)
svgfeConvolveMatrixElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_in1
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"orderX\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_order_x ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)
 
svgfeConvolveMatrixElementGetOrderX ::
                                    (IsSVGFEConvolveMatrixElement self) =>
                                      self -> IO (Maybe SVGAnimatedInteger)
svgfeConvolveMatrixElementGetOrderX self
  = fmap SVGAnimatedInteger . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_order_x
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"orderY\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_order_y ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)
 
svgfeConvolveMatrixElementGetOrderY ::
                                    (IsSVGFEConvolveMatrixElement self) =>
                                      self -> IO (Maybe SVGAnimatedInteger)
svgfeConvolveMatrixElementGetOrderY self
  = fmap SVGAnimatedInteger . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_order_y
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"kernelMatrix\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_matrix ::
        JSRef SVGFEConvolveMatrixElement ->
          IO (JSRef SVGAnimatedNumberList)
 
svgfeConvolveMatrixElementGetKernelMatrix ::
                                          (IsSVGFEConvolveMatrixElement self) =>
                                            self -> IO (Maybe SVGAnimatedNumberList)
svgfeConvolveMatrixElementGetKernelMatrix self
  = fmap SVGAnimatedNumberList . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_matrix
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"divisor\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_divisor ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeConvolveMatrixElementGetDivisor ::
                                     (IsSVGFEConvolveMatrixElement self) =>
                                       self -> IO (Maybe SVGAnimatedNumber)
svgfeConvolveMatrixElementGetDivisor self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_divisor
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"bias\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_bias ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeConvolveMatrixElementGetBias ::
                                  (IsSVGFEConvolveMatrixElement self) =>
                                    self -> IO (Maybe SVGAnimatedNumber)
svgfeConvolveMatrixElementGetBias self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_bias
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"targetX\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_target_x ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)
 
svgfeConvolveMatrixElementGetTargetX ::
                                     (IsSVGFEConvolveMatrixElement self) =>
                                       self -> IO (Maybe SVGAnimatedInteger)
svgfeConvolveMatrixElementGetTargetX self
  = fmap SVGAnimatedInteger . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_target_x
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"targetY\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_target_y ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedInteger)
 
svgfeConvolveMatrixElementGetTargetY ::
                                     (IsSVGFEConvolveMatrixElement self) =>
                                       self -> IO (Maybe SVGAnimatedInteger)
svgfeConvolveMatrixElementGetTargetY self
  = fmap SVGAnimatedInteger . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_target_y
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"edgeMode\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_edge_mode ::
        JSRef SVGFEConvolveMatrixElement ->
          IO (JSRef SVGAnimatedEnumeration)
 
svgfeConvolveMatrixElementGetEdgeMode ::
                                      (IsSVGFEConvolveMatrixElement self) =>
                                        self -> IO (Maybe SVGAnimatedEnumeration)
svgfeConvolveMatrixElementGetEdgeMode self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_edge_mode
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthX\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_x ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeConvolveMatrixElementGetKernelUnitLengthX ::
                                               (IsSVGFEConvolveMatrixElement self) =>
                                                 self -> IO (Maybe SVGAnimatedNumber)
svgfeConvolveMatrixElementGetKernelUnitLengthX self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_x
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"kernelUnitLengthY\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_y ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeConvolveMatrixElementGetKernelUnitLengthY ::
                                               (IsSVGFEConvolveMatrixElement self) =>
                                                 self -> IO (Maybe SVGAnimatedNumber)
svgfeConvolveMatrixElementGetKernelUnitLengthY self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_kernel_unit_length_y
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
 
foreign import javascript unsafe "$1[\"preserveAlpha\"]"
        ghcjs_dom_svgfe_convolve_matrix_element_get_preserve_alpha ::
        JSRef SVGFEConvolveMatrixElement -> IO (JSRef SVGAnimatedBoolean)
 
svgfeConvolveMatrixElementGetPreserveAlpha ::
                                           (IsSVGFEConvolveMatrixElement self) =>
                                             self -> IO (Maybe SVGAnimatedBoolean)
svgfeConvolveMatrixElementGetPreserveAlpha self
  = fmap SVGAnimatedBoolean . maybeJSNull <$>
      (ghcjs_dom_svgfe_convolve_matrix_element_get_preserve_alpha
         (unSVGFEConvolveMatrixElement (toSVGFEConvolveMatrixElement self)))
#else
module GHCJS.DOM.SVGFEConvolveMatrixElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEConvolveMatrixElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEConvolveMatrixElement
#endif
