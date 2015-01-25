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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_FECOLORMATRIX_TYPE_UNKNOWN = 0
cSVG_FECOLORMATRIX_TYPE_MATRIX = 1
cSVG_FECOLORMATRIX_TYPE_SATURATE = 2
cSVG_FECOLORMATRIX_TYPE_HUEROTATE = 3
cSVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_color_matrix_element_get_in1 ::
        JSRef SVGFEColorMatrixElement -> IO (JSRef SVGAnimatedString)
 
svgfeColorMatrixElementGetIn1 ::
                              (IsSVGFEColorMatrixElement self) =>
                                self -> IO (Maybe SVGAnimatedString)
svgfeColorMatrixElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_color_matrix_element_get_in1
         (unSVGFEColorMatrixElement (toSVGFEColorMatrixElement self)))
 
foreign import javascript unsafe "$1[\"values\"]"
        ghcjs_dom_svgfe_color_matrix_element_get_values ::
        JSRef SVGFEColorMatrixElement -> IO (JSRef SVGAnimatedNumberList)
 
svgfeColorMatrixElementGetValues ::
                                 (IsSVGFEColorMatrixElement self) =>
                                   self -> IO (Maybe SVGAnimatedNumberList)
svgfeColorMatrixElementGetValues self
  = fmap SVGAnimatedNumberList . maybeJSNull <$>
      (ghcjs_dom_svgfe_color_matrix_element_get_values
         (unSVGFEColorMatrixElement (toSVGFEColorMatrixElement self)))
#else
module GHCJS.DOM.SVGFEColorMatrixElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEColorMatrixElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEColorMatrixElement
#endif
