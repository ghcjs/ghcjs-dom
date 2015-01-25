{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoCubicSmoothAbs
       (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_x,
        svgPathSegCurvetoCubicSmoothAbsSetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_x,
        svgPathSegCurvetoCubicSmoothAbsGetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_y,
        svgPathSegCurvetoCubicSmoothAbsSetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_y,
        svgPathSegCurvetoCubicSmoothAbsGetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_x2,
        svgPathSegCurvetoCubicSmoothAbsSetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_x2,
        svgPathSegCurvetoCubicSmoothAbsGetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_y2,
        svgPathSegCurvetoCubicSmoothAbsSetY2,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_y2,
        svgPathSegCurvetoCubicSmoothAbsGetY2,
        SVGPathSegCurvetoCubicSmoothAbs, IsSVGPathSegCurvetoCubicSmoothAbs,
        castToSVGPathSegCurvetoCubicSmoothAbs,
        gTypeSVGPathSegCurvetoCubicSmoothAbs,
        toSVGPathSegCurvetoCubicSmoothAbs)
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
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_x ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicSmoothAbsSetX ::
                                    (IsSVGPathSegCurvetoCubicSmoothAbs self) =>
                                      self -> Float -> IO ()
svgPathSegCurvetoCubicSmoothAbsSetX self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_x
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_x ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> IO Float
 
svgPathSegCurvetoCubicSmoothAbsGetX ::
                                    (IsSVGPathSegCurvetoCubicSmoothAbs self) => self -> IO Float
svgPathSegCurvetoCubicSmoothAbsGetX self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_x
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_y ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicSmoothAbsSetY ::
                                    (IsSVGPathSegCurvetoCubicSmoothAbs self) =>
                                      self -> Float -> IO ()
svgPathSegCurvetoCubicSmoothAbsSetY self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_y
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_y ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> IO Float
 
svgPathSegCurvetoCubicSmoothAbsGetY ::
                                    (IsSVGPathSegCurvetoCubicSmoothAbs self) => self -> IO Float
svgPathSegCurvetoCubicSmoothAbsGetY self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_y
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_x2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicSmoothAbsSetX2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothAbs self) =>
                                       self -> Float -> IO ()
svgPathSegCurvetoCubicSmoothAbsSetX2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_x2
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
      val
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_x2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> IO Float
 
svgPathSegCurvetoCubicSmoothAbsGetX2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothAbs self) => self -> IO Float
svgPathSegCurvetoCubicSmoothAbsGetX2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_x2
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_y2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicSmoothAbsSetY2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothAbs self) =>
                                       self -> Float -> IO ()
svgPathSegCurvetoCubicSmoothAbsSetY2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_y2
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
      val
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_y2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> IO Float
 
svgPathSegCurvetoCubicSmoothAbsGetY2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothAbs self) => self -> IO Float
svgPathSegCurvetoCubicSmoothAbsGetY2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_y2
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicSmoothAbs (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoCubicSmoothAbs
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoCubicSmoothAbs
#endif
