{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegArcAbs
       (ghcjs_dom_svg_path_seg_arc_abs_set_x, svgPathSegArcAbsSetX,
        ghcjs_dom_svg_path_seg_arc_abs_get_x, svgPathSegArcAbsGetX,
        ghcjs_dom_svg_path_seg_arc_abs_set_y, svgPathSegArcAbsSetY,
        ghcjs_dom_svg_path_seg_arc_abs_get_y, svgPathSegArcAbsGetY,
        ghcjs_dom_svg_path_seg_arc_abs_set_r1, svgPathSegArcAbsSetR1,
        ghcjs_dom_svg_path_seg_arc_abs_get_r1, svgPathSegArcAbsGetR1,
        ghcjs_dom_svg_path_seg_arc_abs_set_r2, svgPathSegArcAbsSetR2,
        ghcjs_dom_svg_path_seg_arc_abs_get_r2, svgPathSegArcAbsGetR2,
        ghcjs_dom_svg_path_seg_arc_abs_set_angle, svgPathSegArcAbsSetAngle,
        ghcjs_dom_svg_path_seg_arc_abs_get_angle, svgPathSegArcAbsGetAngle,
        ghcjs_dom_svg_path_seg_arc_abs_set_large_arc_flag,
        svgPathSegArcAbsSetLargeArcFlag,
        ghcjs_dom_svg_path_seg_arc_abs_get_large_arc_flag,
        svgPathSegArcAbsGetLargeArcFlag,
        ghcjs_dom_svg_path_seg_arc_abs_set_sweep_flag,
        svgPathSegArcAbsSetSweepFlag,
        ghcjs_dom_svg_path_seg_arc_abs_get_sweep_flag,
        svgPathSegArcAbsGetSweepFlag, SVGPathSegArcAbs, IsSVGPathSegArcAbs,
        castToSVGPathSegArcAbs, gTypeSVGPathSegArcAbs, toSVGPathSegArcAbs)
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
        ghcjs_dom_svg_path_seg_arc_abs_set_x ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()
 
svgPathSegArcAbsSetX ::
                     (IsSVGPathSegArcAbs self) => self -> Float -> IO ()
svgPathSegArcAbsSetX self val
  = ghcjs_dom_svg_path_seg_arc_abs_set_x
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_x ::
        JSRef SVGPathSegArcAbs -> IO Float
 
svgPathSegArcAbsGetX ::
                     (IsSVGPathSegArcAbs self) => self -> IO Float
svgPathSegArcAbsGetX self
  = ghcjs_dom_svg_path_seg_arc_abs_get_x
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_y ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()
 
svgPathSegArcAbsSetY ::
                     (IsSVGPathSegArcAbs self) => self -> Float -> IO ()
svgPathSegArcAbsSetY self val
  = ghcjs_dom_svg_path_seg_arc_abs_set_y
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_y ::
        JSRef SVGPathSegArcAbs -> IO Float
 
svgPathSegArcAbsGetY ::
                     (IsSVGPathSegArcAbs self) => self -> IO Float
svgPathSegArcAbsGetY self
  = ghcjs_dom_svg_path_seg_arc_abs_get_y
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"r1\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_r1 ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()
 
svgPathSegArcAbsSetR1 ::
                      (IsSVGPathSegArcAbs self) => self -> Float -> IO ()
svgPathSegArcAbsSetR1 self val
  = ghcjs_dom_svg_path_seg_arc_abs_set_r1
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
      val
 
foreign import javascript unsafe "$1[\"r1\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_r1 ::
        JSRef SVGPathSegArcAbs -> IO Float
 
svgPathSegArcAbsGetR1 ::
                      (IsSVGPathSegArcAbs self) => self -> IO Float
svgPathSegArcAbsGetR1 self
  = ghcjs_dom_svg_path_seg_arc_abs_get_r1
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"r2\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_r2 ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()
 
svgPathSegArcAbsSetR2 ::
                      (IsSVGPathSegArcAbs self) => self -> Float -> IO ()
svgPathSegArcAbsSetR2 self val
  = ghcjs_dom_svg_path_seg_arc_abs_set_r2
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
      val
 
foreign import javascript unsafe "$1[\"r2\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_r2 ::
        JSRef SVGPathSegArcAbs -> IO Float
 
svgPathSegArcAbsGetR2 ::
                      (IsSVGPathSegArcAbs self) => self -> IO Float
svgPathSegArcAbsGetR2 self
  = ghcjs_dom_svg_path_seg_arc_abs_get_r2
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"angle\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_angle ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()
 
svgPathSegArcAbsSetAngle ::
                         (IsSVGPathSegArcAbs self) => self -> Float -> IO ()
svgPathSegArcAbsSetAngle self val
  = ghcjs_dom_svg_path_seg_arc_abs_set_angle
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
      val
 
foreign import javascript unsafe "$1[\"angle\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_angle ::
        JSRef SVGPathSegArcAbs -> IO Float
 
svgPathSegArcAbsGetAngle ::
                         (IsSVGPathSegArcAbs self) => self -> IO Float
svgPathSegArcAbsGetAngle self
  = ghcjs_dom_svg_path_seg_arc_abs_get_angle
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"largeArcFlag\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_large_arc_flag ::
        JSRef SVGPathSegArcAbs -> Bool -> IO ()
 
svgPathSegArcAbsSetLargeArcFlag ::
                                (IsSVGPathSegArcAbs self) => self -> Bool -> IO ()
svgPathSegArcAbsSetLargeArcFlag self val
  = ghcjs_dom_svg_path_seg_arc_abs_set_large_arc_flag
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
      val
 
foreign import javascript unsafe "($1[\"largeArcFlag\"] ? 1 : 0)"
        ghcjs_dom_svg_path_seg_arc_abs_get_large_arc_flag ::
        JSRef SVGPathSegArcAbs -> IO Bool
 
svgPathSegArcAbsGetLargeArcFlag ::
                                (IsSVGPathSegArcAbs self) => self -> IO Bool
svgPathSegArcAbsGetLargeArcFlag self
  = ghcjs_dom_svg_path_seg_arc_abs_get_large_arc_flag
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
 
foreign import javascript unsafe "$1[\"sweepFlag\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_sweep_flag ::
        JSRef SVGPathSegArcAbs -> Bool -> IO ()
 
svgPathSegArcAbsSetSweepFlag ::
                             (IsSVGPathSegArcAbs self) => self -> Bool -> IO ()
svgPathSegArcAbsSetSweepFlag self val
  = ghcjs_dom_svg_path_seg_arc_abs_set_sweep_flag
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
      val
 
foreign import javascript unsafe "($1[\"sweepFlag\"] ? 1 : 0)"
        ghcjs_dom_svg_path_seg_arc_abs_get_sweep_flag ::
        JSRef SVGPathSegArcAbs -> IO Bool
 
svgPathSegArcAbsGetSweepFlag ::
                             (IsSVGPathSegArcAbs self) => self -> IO Bool
svgPathSegArcAbsGetSweepFlag self
  = ghcjs_dom_svg_path_seg_arc_abs_get_sweep_flag
      (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
#else
module GHCJS.DOM.SVGPathSegArcAbs (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSegArcAbs
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSegArcAbs
#endif
