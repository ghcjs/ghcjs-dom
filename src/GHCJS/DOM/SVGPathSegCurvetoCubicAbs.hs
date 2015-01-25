{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoCubicAbs
       (ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x,
        svgPathSegCurvetoCubicAbsSetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x,
        svgPathSegCurvetoCubicAbsGetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y,
        svgPathSegCurvetoCubicAbsSetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y,
        svgPathSegCurvetoCubicAbsGetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x1,
        svgPathSegCurvetoCubicAbsSetX1,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x1,
        svgPathSegCurvetoCubicAbsGetX1,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y1,
        svgPathSegCurvetoCubicAbsSetY1,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y1,
        svgPathSegCurvetoCubicAbsGetY1,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x2,
        svgPathSegCurvetoCubicAbsSetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x2,
        svgPathSegCurvetoCubicAbsGetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y2,
        svgPathSegCurvetoCubicAbsSetY2,
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y2,
        svgPathSegCurvetoCubicAbsGetY2, SVGPathSegCurvetoCubicAbs,
        IsSVGPathSegCurvetoCubicAbs, castToSVGPathSegCurvetoCubicAbs,
        gTypeSVGPathSegCurvetoCubicAbs, toSVGPathSegCurvetoCubicAbs)
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
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicAbsSetX ::
                              (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetX self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float
 
svgPathSegCurvetoCubicAbsGetX ::
                              (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetX self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicAbsSetY ::
                              (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetY self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float
 
svgPathSegCurvetoCubicAbsGetY ::
                              (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetY self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicAbsSetX1 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetX1 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x1
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float
 
svgPathSegCurvetoCubicAbsGetX1 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetX1 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x1
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicAbsSetY1 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetY1 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y1
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y1 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float
 
svgPathSegCurvetoCubicAbsGetY1 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetY1 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y1
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicAbsSetX2 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetX2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_x2
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float
 
svgPathSegCurvetoCubicAbsGetX2 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetX2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_x2
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> Float -> IO ()
 
svgPathSegCurvetoCubicAbsSetY2 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> Float -> IO ()
svgPathSegCurvetoCubicAbsSetY2 self val
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_set_y2
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
      val
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y2 ::
        JSRef SVGPathSegCurvetoCubicAbs -> IO Float
 
svgPathSegCurvetoCubicAbsGetY2 ::
                               (IsSVGPathSegCurvetoCubicAbs self) => self -> IO Float
svgPathSegCurvetoCubicAbsGetY2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_abs_get_y2
      (unSVGPathSegCurvetoCubicAbs (toSVGPathSegCurvetoCubicAbs self))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicAbs (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoCubicAbs
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegCurvetoCubicAbs
#endif
