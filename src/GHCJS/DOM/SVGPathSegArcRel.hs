{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegArcRel
       (ghcjs_dom_svg_path_seg_arc_rel_set_x, svgPathSegArcRelSetX,
        ghcjs_dom_svg_path_seg_arc_rel_get_x, svgPathSegArcRelGetX,
        ghcjs_dom_svg_path_seg_arc_rel_set_y, svgPathSegArcRelSetY,
        ghcjs_dom_svg_path_seg_arc_rel_get_y, svgPathSegArcRelGetY,
        ghcjs_dom_svg_path_seg_arc_rel_set_r1, svgPathSegArcRelSetR1,
        ghcjs_dom_svg_path_seg_arc_rel_get_r1, svgPathSegArcRelGetR1,
        ghcjs_dom_svg_path_seg_arc_rel_set_r2, svgPathSegArcRelSetR2,
        ghcjs_dom_svg_path_seg_arc_rel_get_r2, svgPathSegArcRelGetR2,
        ghcjs_dom_svg_path_seg_arc_rel_set_angle, svgPathSegArcRelSetAngle,
        ghcjs_dom_svg_path_seg_arc_rel_get_angle, svgPathSegArcRelGetAngle,
        ghcjs_dom_svg_path_seg_arc_rel_set_large_arc_flag,
        svgPathSegArcRelSetLargeArcFlag,
        ghcjs_dom_svg_path_seg_arc_rel_get_large_arc_flag,
        svgPathSegArcRelGetLargeArcFlag,
        ghcjs_dom_svg_path_seg_arc_rel_set_sweep_flag,
        svgPathSegArcRelSetSweepFlag,
        ghcjs_dom_svg_path_seg_arc_rel_get_sweep_flag,
        svgPathSegArcRelGetSweepFlag, SVGPathSegArcRel, IsSVGPathSegArcRel,
        castToSVGPathSegArcRel, gTypeSVGPathSegArcRel, toSVGPathSegArcRel)
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

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_rel_set_x ::
        JSRef SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.x Mozilla SVGPathSegArcRel.x documentation> 
svgPathSegArcRelSetX ::
                     (IsSVGPathSegArcRel self) => self -> Float -> IO ()
svgPathSegArcRelSetX self val
  = ghcjs_dom_svg_path_seg_arc_rel_set_x
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_arc_rel_get_x ::
        JSRef SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.x Mozilla SVGPathSegArcRel.x documentation> 
svgPathSegArcRelGetX ::
                     (IsSVGPathSegArcRel self) => self -> IO Float
svgPathSegArcRelGetX self
  = ghcjs_dom_svg_path_seg_arc_rel_get_x
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_rel_set_y ::
        JSRef SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.y Mozilla SVGPathSegArcRel.y documentation> 
svgPathSegArcRelSetY ::
                     (IsSVGPathSegArcRel self) => self -> Float -> IO ()
svgPathSegArcRelSetY self val
  = ghcjs_dom_svg_path_seg_arc_rel_set_y
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_arc_rel_get_y ::
        JSRef SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.y Mozilla SVGPathSegArcRel.y documentation> 
svgPathSegArcRelGetY ::
                     (IsSVGPathSegArcRel self) => self -> IO Float
svgPathSegArcRelGetY self
  = ghcjs_dom_svg_path_seg_arc_rel_get_y
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
 
foreign import javascript unsafe "$1[\"r1\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_rel_set_r1 ::
        JSRef SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r1 Mozilla SVGPathSegArcRel.r1 documentation> 
svgPathSegArcRelSetR1 ::
                      (IsSVGPathSegArcRel self) => self -> Float -> IO ()
svgPathSegArcRelSetR1 self val
  = ghcjs_dom_svg_path_seg_arc_rel_set_r1
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
      val
 
foreign import javascript unsafe "$1[\"r1\"]"
        ghcjs_dom_svg_path_seg_arc_rel_get_r1 ::
        JSRef SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r1 Mozilla SVGPathSegArcRel.r1 documentation> 
svgPathSegArcRelGetR1 ::
                      (IsSVGPathSegArcRel self) => self -> IO Float
svgPathSegArcRelGetR1 self
  = ghcjs_dom_svg_path_seg_arc_rel_get_r1
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
 
foreign import javascript unsafe "$1[\"r2\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_rel_set_r2 ::
        JSRef SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r2 Mozilla SVGPathSegArcRel.r2 documentation> 
svgPathSegArcRelSetR2 ::
                      (IsSVGPathSegArcRel self) => self -> Float -> IO ()
svgPathSegArcRelSetR2 self val
  = ghcjs_dom_svg_path_seg_arc_rel_set_r2
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
      val
 
foreign import javascript unsafe "$1[\"r2\"]"
        ghcjs_dom_svg_path_seg_arc_rel_get_r2 ::
        JSRef SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.r2 Mozilla SVGPathSegArcRel.r2 documentation> 
svgPathSegArcRelGetR2 ::
                      (IsSVGPathSegArcRel self) => self -> IO Float
svgPathSegArcRelGetR2 self
  = ghcjs_dom_svg_path_seg_arc_rel_get_r2
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
 
foreign import javascript unsafe "$1[\"angle\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_rel_set_angle ::
        JSRef SVGPathSegArcRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.angle Mozilla SVGPathSegArcRel.angle documentation> 
svgPathSegArcRelSetAngle ::
                         (IsSVGPathSegArcRel self) => self -> Float -> IO ()
svgPathSegArcRelSetAngle self val
  = ghcjs_dom_svg_path_seg_arc_rel_set_angle
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
      val
 
foreign import javascript unsafe "$1[\"angle\"]"
        ghcjs_dom_svg_path_seg_arc_rel_get_angle ::
        JSRef SVGPathSegArcRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.angle Mozilla SVGPathSegArcRel.angle documentation> 
svgPathSegArcRelGetAngle ::
                         (IsSVGPathSegArcRel self) => self -> IO Float
svgPathSegArcRelGetAngle self
  = ghcjs_dom_svg_path_seg_arc_rel_get_angle
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
 
foreign import javascript unsafe "$1[\"largeArcFlag\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_rel_set_large_arc_flag ::
        JSRef SVGPathSegArcRel -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.largeArcFlag Mozilla SVGPathSegArcRel.largeArcFlag documentation> 
svgPathSegArcRelSetLargeArcFlag ::
                                (IsSVGPathSegArcRel self) => self -> Bool -> IO ()
svgPathSegArcRelSetLargeArcFlag self val
  = ghcjs_dom_svg_path_seg_arc_rel_set_large_arc_flag
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
      val
 
foreign import javascript unsafe "($1[\"largeArcFlag\"] ? 1 : 0)"
        ghcjs_dom_svg_path_seg_arc_rel_get_large_arc_flag ::
        JSRef SVGPathSegArcRel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.largeArcFlag Mozilla SVGPathSegArcRel.largeArcFlag documentation> 
svgPathSegArcRelGetLargeArcFlag ::
                                (IsSVGPathSegArcRel self) => self -> IO Bool
svgPathSegArcRelGetLargeArcFlag self
  = ghcjs_dom_svg_path_seg_arc_rel_get_large_arc_flag
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
 
foreign import javascript unsafe "$1[\"sweepFlag\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_rel_set_sweep_flag ::
        JSRef SVGPathSegArcRel -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.sweepFlag Mozilla SVGPathSegArcRel.sweepFlag documentation> 
svgPathSegArcRelSetSweepFlag ::
                             (IsSVGPathSegArcRel self) => self -> Bool -> IO ()
svgPathSegArcRelSetSweepFlag self val
  = ghcjs_dom_svg_path_seg_arc_rel_set_sweep_flag
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
      val
 
foreign import javascript unsafe "($1[\"sweepFlag\"] ? 1 : 0)"
        ghcjs_dom_svg_path_seg_arc_rel_get_sweep_flag ::
        JSRef SVGPathSegArcRel -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcRel.sweepFlag Mozilla SVGPathSegArcRel.sweepFlag documentation> 
svgPathSegArcRelGetSweepFlag ::
                             (IsSVGPathSegArcRel self) => self -> IO Bool
svgPathSegArcRelGetSweepFlag self
  = ghcjs_dom_svg_path_seg_arc_rel_get_sweep_flag
      (unSVGPathSegArcRel (toSVGPathSegArcRel self))
#else
module GHCJS.DOM.SVGPathSegArcRel (
  ) where
#endif
