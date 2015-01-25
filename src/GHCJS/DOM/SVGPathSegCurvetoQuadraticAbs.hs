{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoQuadraticAbs
       (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x,
        svgPathSegCurvetoQuadraticAbsSetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x,
        svgPathSegCurvetoQuadraticAbsGetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y,
        svgPathSegCurvetoQuadraticAbsSetY,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y,
        svgPathSegCurvetoQuadraticAbsGetY,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x1,
        svgPathSegCurvetoQuadraticAbsSetX1,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x1,
        svgPathSegCurvetoQuadraticAbsGetX1,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y1,
        svgPathSegCurvetoQuadraticAbsSetY1,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y1,
        svgPathSegCurvetoQuadraticAbsGetY1, SVGPathSegCurvetoQuadraticAbs,
        IsSVGPathSegCurvetoQuadraticAbs,
        castToSVGPathSegCurvetoQuadraticAbs,
        gTypeSVGPathSegCurvetoQuadraticAbs,
        toSVGPathSegCurvetoQuadraticAbs)
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
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()
 
svgPathSegCurvetoQuadraticAbsSetX ::
                                  (IsSVGPathSegCurvetoQuadraticAbs self) => self -> Float -> IO ()
svgPathSegCurvetoQuadraticAbsSetX self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x
      (unSVGPathSegCurvetoQuadraticAbs
         (toSVGPathSegCurvetoQuadraticAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float
 
svgPathSegCurvetoQuadraticAbsGetX ::
                                  (IsSVGPathSegCurvetoQuadraticAbs self) => self -> IO Float
svgPathSegCurvetoQuadraticAbsGetX self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x
      (unSVGPathSegCurvetoQuadraticAbs
         (toSVGPathSegCurvetoQuadraticAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()
 
svgPathSegCurvetoQuadraticAbsSetY ::
                                  (IsSVGPathSegCurvetoQuadraticAbs self) => self -> Float -> IO ()
svgPathSegCurvetoQuadraticAbsSetY self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y
      (unSVGPathSegCurvetoQuadraticAbs
         (toSVGPathSegCurvetoQuadraticAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float
 
svgPathSegCurvetoQuadraticAbsGetY ::
                                  (IsSVGPathSegCurvetoQuadraticAbs self) => self -> IO Float
svgPathSegCurvetoQuadraticAbsGetY self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y
      (unSVGPathSegCurvetoQuadraticAbs
         (toSVGPathSegCurvetoQuadraticAbs self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()
 
svgPathSegCurvetoQuadraticAbsSetX1 ::
                                   (IsSVGPathSegCurvetoQuadraticAbs self) => self -> Float -> IO ()
svgPathSegCurvetoQuadraticAbsSetX1 self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x1
      (unSVGPathSegCurvetoQuadraticAbs
         (toSVGPathSegCurvetoQuadraticAbs self))
      val
 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float
 
svgPathSegCurvetoQuadraticAbsGetX1 ::
                                   (IsSVGPathSegCurvetoQuadraticAbs self) => self -> IO Float
svgPathSegCurvetoQuadraticAbsGetX1 self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x1
      (unSVGPathSegCurvetoQuadraticAbs
         (toSVGPathSegCurvetoQuadraticAbs self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()
 
svgPathSegCurvetoQuadraticAbsSetY1 ::
                                   (IsSVGPathSegCurvetoQuadraticAbs self) => self -> Float -> IO ()
svgPathSegCurvetoQuadraticAbsSetY1 self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y1
      (unSVGPathSegCurvetoQuadraticAbs
         (toSVGPathSegCurvetoQuadraticAbs self))
      val
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float
 
svgPathSegCurvetoQuadraticAbsGetY1 ::
                                   (IsSVGPathSegCurvetoQuadraticAbs self) => self -> IO Float
svgPathSegCurvetoQuadraticAbsGetY1 self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y1
      (unSVGPathSegCurvetoQuadraticAbs
         (toSVGPathSegCurvetoQuadraticAbs self))
#else
module GHCJS.DOM.SVGPathSegCurvetoQuadraticAbs (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoQuadraticAbs
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoQuadraticAbs
#endif
