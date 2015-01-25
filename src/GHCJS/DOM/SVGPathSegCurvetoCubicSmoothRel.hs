{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoCubicSmoothRel
       (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x,
        svgPathSegCurvetoCubicSmoothRelSetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x,
        svgPathSegCurvetoCubicSmoothRelGetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y,
        svgPathSegCurvetoCubicSmoothRelSetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y,
        svgPathSegCurvetoCubicSmoothRelGetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x2,
        svgPathSegCurvetoCubicSmoothRelSetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x2,
        svgPathSegCurvetoCubicSmoothRelGetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y2,
        svgPathSegCurvetoCubicSmoothRelSetY2,
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y2,
        svgPathSegCurvetoCubicSmoothRelGetY2,
        SVGPathSegCurvetoCubicSmoothRel, IsSVGPathSegCurvetoCubicSmoothRel,
        castToSVGPathSegCurvetoCubicSmoothRel,
        gTypeSVGPathSegCurvetoCubicSmoothRel,
        toSVGPathSegCurvetoCubicSmoothRel)
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
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()
 
svgPathSegCurvetoCubicSmoothRelSetX ::
                                    (IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                      self -> Float -> IO ()
svgPathSegCurvetoCubicSmoothRelSetX self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x
      (unSVGPathSegCurvetoCubicSmoothRel
         (toSVGPathSegCurvetoCubicSmoothRel self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float
 
svgPathSegCurvetoCubicSmoothRelGetX ::
                                    (IsSVGPathSegCurvetoCubicSmoothRel self) => self -> IO Float
svgPathSegCurvetoCubicSmoothRelGetX self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x
      (unSVGPathSegCurvetoCubicSmoothRel
         (toSVGPathSegCurvetoCubicSmoothRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()
 
svgPathSegCurvetoCubicSmoothRelSetY ::
                                    (IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                      self -> Float -> IO ()
svgPathSegCurvetoCubicSmoothRelSetY self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y
      (unSVGPathSegCurvetoCubicSmoothRel
         (toSVGPathSegCurvetoCubicSmoothRel self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float
 
svgPathSegCurvetoCubicSmoothRelGetY ::
                                    (IsSVGPathSegCurvetoCubicSmoothRel self) => self -> IO Float
svgPathSegCurvetoCubicSmoothRelGetY self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y
      (unSVGPathSegCurvetoCubicSmoothRel
         (toSVGPathSegCurvetoCubicSmoothRel self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()
 
svgPathSegCurvetoCubicSmoothRelSetX2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                       self -> Float -> IO ()
svgPathSegCurvetoCubicSmoothRelSetX2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x2
      (unSVGPathSegCurvetoCubicSmoothRel
         (toSVGPathSegCurvetoCubicSmoothRel self))
      val
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float
 
svgPathSegCurvetoCubicSmoothRelGetX2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothRel self) => self -> IO Float
svgPathSegCurvetoCubicSmoothRelGetX2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x2
      (unSVGPathSegCurvetoCubicSmoothRel
         (toSVGPathSegCurvetoCubicSmoothRel self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()
 
svgPathSegCurvetoCubicSmoothRelSetY2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                       self -> Float -> IO ()
svgPathSegCurvetoCubicSmoothRelSetY2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y2
      (unSVGPathSegCurvetoCubicSmoothRel
         (toSVGPathSegCurvetoCubicSmoothRel self))
      val
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float
 
svgPathSegCurvetoCubicSmoothRelGetY2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothRel self) => self -> IO Float
svgPathSegCurvetoCubicSmoothRelGetY2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y2
      (unSVGPathSegCurvetoCubicSmoothRel
         (toSVGPathSegCurvetoCubicSmoothRel self))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicSmoothRel (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoCubicSmoothRel
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoCubicSmoothRel
#endif
