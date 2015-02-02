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
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_x ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x Mozilla SVGPathSegCurvetoCubicSmoothAbs.x documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x Mozilla SVGPathSegCurvetoCubicSmoothAbs.x documentation> 
svgPathSegCurvetoCubicSmoothAbsGetX ::
                                    (IsSVGPathSegCurvetoCubicSmoothAbs self) => self -> IO Float
svgPathSegCurvetoCubicSmoothAbsGetX self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_x
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_y ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y Mozilla SVGPathSegCurvetoCubicSmoothAbs.y documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y Mozilla SVGPathSegCurvetoCubicSmoothAbs.y documentation> 
svgPathSegCurvetoCubicSmoothAbsGetY ::
                                    (IsSVGPathSegCurvetoCubicSmoothAbs self) => self -> IO Float
svgPathSegCurvetoCubicSmoothAbsGetY self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_y
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_x2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.x2 documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.x2 documentation> 
svgPathSegCurvetoCubicSmoothAbsGetX2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothAbs self) => self -> IO Float
svgPathSegCurvetoCubicSmoothAbsGetX2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_x2
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_set_y2 ::
        JSRef SVGPathSegCurvetoCubicSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.y2 documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.y2 documentation> 
svgPathSegCurvetoCubicSmoothAbsGetY2 ::
                                     (IsSVGPathSegCurvetoCubicSmoothAbs self) => self -> IO Float
svgPathSegCurvetoCubicSmoothAbsGetY2 self
  = ghcjs_dom_svg_path_seg_curveto_cubic_smooth_abs_get_y2
      (unSVGPathSegCurvetoCubicSmoothAbs
         (toSVGPathSegCurvetoCubicSmoothAbs self))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicSmoothAbs (
  ) where
#endif
