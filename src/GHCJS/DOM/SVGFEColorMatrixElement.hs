{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEColorMatrixElement
       (cSVG_FECOLORMATRIX_TYPE_UNKNOWN, cSVG_FECOLORMATRIX_TYPE_MATRIX,
        cSVG_FECOLORMATRIX_TYPE_SATURATE,
        cSVG_FECOLORMATRIX_TYPE_HUEROTATE,
        cSVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA,
        ghcjs_dom_svgfe_color_matrix_element_get_in1,
        svgfeColorMatrixElementGetIn1,
        ghcjs_dom_svgfe_color_matrix_element_get_values,
        svgfeColorMatrixElementGetValues, SVGFEColorMatrixElement,
        IsSVGFEColorMatrixElement, castToSVGFEColorMatrixElement,
        gTypeSVGFEColorMatrixElement, toSVGFEColorMatrixElement)
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

cSVG_FECOLORMATRIX_TYPE_UNKNOWN = 0
cSVG_FECOLORMATRIX_TYPE_MATRIX = 1
cSVG_FECOLORMATRIX_TYPE_SATURATE = 2
cSVG_FECOLORMATRIX_TYPE_HUEROTATE = 3
cSVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_color_matrix_element_get_in1 ::
        JSRef SVGFEColorMatrixElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
svgfeColorMatrixElementGetIn1 ::
                              (IsSVGFEColorMatrixElement self) =>
                                self -> IO (Maybe SVGAnimatedString)
svgfeColorMatrixElementGetIn1 self
  = (ghcjs_dom_svgfe_color_matrix_element_get_in1
       (unSVGFEColorMatrixElement (toSVGFEColorMatrixElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"values\"]"
        ghcjs_dom_svgfe_color_matrix_element_get_values ::
        JSRef SVGFEColorMatrixElement -> IO (JSRef SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
svgfeColorMatrixElementGetValues ::
                                 (IsSVGFEColorMatrixElement self) =>
                                   self -> IO (Maybe SVGAnimatedNumberList)
svgfeColorMatrixElementGetValues self
  = (ghcjs_dom_svgfe_color_matrix_element_get_values
       (unSVGFEColorMatrixElement (toSVGFEColorMatrixElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFEColorMatrixElement (
  ) where
#endif
