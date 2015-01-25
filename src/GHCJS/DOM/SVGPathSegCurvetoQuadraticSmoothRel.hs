{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothRel
       (ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_set_x,
        svgPathSegCurvetoQuadraticSmoothRelSetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_get_x,
        svgPathSegCurvetoQuadraticSmoothRelGetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_set_y,
        svgPathSegCurvetoQuadraticSmoothRelSetY,
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_get_y,
        svgPathSegCurvetoQuadraticSmoothRelGetY,
        SVGPathSegCurvetoQuadraticSmoothRel,
        IsSVGPathSegCurvetoQuadraticSmoothRel,
        castToSVGPathSegCurvetoQuadraticSmoothRel,
        gTypeSVGPathSegCurvetoQuadraticSmoothRel,
        toSVGPathSegCurvetoQuadraticSmoothRel)
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
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_set_x ::
        JSRef SVGPathSegCurvetoQuadraticSmoothRel -> Float -> IO ()
 
svgPathSegCurvetoQuadraticSmoothRelSetX ::
                                        (IsSVGPathSegCurvetoQuadraticSmoothRel self) =>
                                          self -> Float -> IO ()
svgPathSegCurvetoQuadraticSmoothRelSetX self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_set_x
      (unSVGPathSegCurvetoQuadraticSmoothRel
         (toSVGPathSegCurvetoQuadraticSmoothRel self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_get_x ::
        JSRef SVGPathSegCurvetoQuadraticSmoothRel -> IO Float
 
svgPathSegCurvetoQuadraticSmoothRelGetX ::
                                        (IsSVGPathSegCurvetoQuadraticSmoothRel self) =>
                                          self -> IO Float
svgPathSegCurvetoQuadraticSmoothRelGetX self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_get_x
      (unSVGPathSegCurvetoQuadraticSmoothRel
         (toSVGPathSegCurvetoQuadraticSmoothRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_set_y ::
        JSRef SVGPathSegCurvetoQuadraticSmoothRel -> Float -> IO ()
 
svgPathSegCurvetoQuadraticSmoothRelSetY ::
                                        (IsSVGPathSegCurvetoQuadraticSmoothRel self) =>
                                          self -> Float -> IO ()
svgPathSegCurvetoQuadraticSmoothRelSetY self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_set_y
      (unSVGPathSegCurvetoQuadraticSmoothRel
         (toSVGPathSegCurvetoQuadraticSmoothRel self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_get_y ::
        JSRef SVGPathSegCurvetoQuadraticSmoothRel -> IO Float
 
svgPathSegCurvetoQuadraticSmoothRelGetY ::
                                        (IsSVGPathSegCurvetoQuadraticSmoothRel self) =>
                                          self -> IO Float
svgPathSegCurvetoQuadraticSmoothRelGetY self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_get_y
      (unSVGPathSegCurvetoQuadraticSmoothRel
         (toSVGPathSegCurvetoQuadraticSmoothRel self))
#else
module GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothRel (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoQuadraticSmoothRel
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoQuadraticSmoothRel
#endif
