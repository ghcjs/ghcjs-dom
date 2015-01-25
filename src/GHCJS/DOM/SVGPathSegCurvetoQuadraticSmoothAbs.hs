{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothAbs
       (ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_x,
        svgPathSegCurvetoQuadraticSmoothAbsSetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_x,
        svgPathSegCurvetoQuadraticSmoothAbsGetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_y,
        svgPathSegCurvetoQuadraticSmoothAbsSetY,
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_y,
        svgPathSegCurvetoQuadraticSmoothAbsGetY,
        SVGPathSegCurvetoQuadraticSmoothAbs,
        IsSVGPathSegCurvetoQuadraticSmoothAbs,
        castToSVGPathSegCurvetoQuadraticSmoothAbs,
        gTypeSVGPathSegCurvetoQuadraticSmoothAbs,
        toSVGPathSegCurvetoQuadraticSmoothAbs)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_x ::
        JSRef SVGPathSegCurvetoQuadraticSmoothAbs -> Float -> IO ()
 
svgPathSegCurvetoQuadraticSmoothAbsSetX ::
                                        (IsSVGPathSegCurvetoQuadraticSmoothAbs self) =>
                                          self -> Float -> IO ()
svgPathSegCurvetoQuadraticSmoothAbsSetX self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_x
      (unSVGPathSegCurvetoQuadraticSmoothAbs
         (toSVGPathSegCurvetoQuadraticSmoothAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_x ::
        JSRef SVGPathSegCurvetoQuadraticSmoothAbs -> IO Float
 
svgPathSegCurvetoQuadraticSmoothAbsGetX ::
                                        (IsSVGPathSegCurvetoQuadraticSmoothAbs self) =>
                                          self -> IO Float
svgPathSegCurvetoQuadraticSmoothAbsGetX self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_x
      (unSVGPathSegCurvetoQuadraticSmoothAbs
         (toSVGPathSegCurvetoQuadraticSmoothAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_y ::
        JSRef SVGPathSegCurvetoQuadraticSmoothAbs -> Float -> IO ()
 
svgPathSegCurvetoQuadraticSmoothAbsSetY ::
                                        (IsSVGPathSegCurvetoQuadraticSmoothAbs self) =>
                                          self -> Float -> IO ()
svgPathSegCurvetoQuadraticSmoothAbsSetY self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_y
      (unSVGPathSegCurvetoQuadraticSmoothAbs
         (toSVGPathSegCurvetoQuadraticSmoothAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_y ::
        JSRef SVGPathSegCurvetoQuadraticSmoothAbs -> IO Float
 
svgPathSegCurvetoQuadraticSmoothAbsGetY ::
                                        (IsSVGPathSegCurvetoQuadraticSmoothAbs self) =>
                                          self -> IO Float
svgPathSegCurvetoQuadraticSmoothAbsGetY self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_y
      (unSVGPathSegCurvetoQuadraticSmoothAbs
         (toSVGPathSegCurvetoQuadraticSmoothAbs self))
#else
module GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothAbs (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoQuadraticSmoothAbs
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoQuadraticSmoothAbs
#endif
