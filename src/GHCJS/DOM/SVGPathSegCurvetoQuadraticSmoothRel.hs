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
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_set_x ::
        JSRef SVGPathSegCurvetoQuadraticSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel.x Mozilla SVGPathSegCurvetoQuadraticSmoothRel.x documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel.x Mozilla SVGPathSegCurvetoQuadraticSmoothRel.x documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel.y Mozilla SVGPathSegCurvetoQuadraticSmoothRel.y documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothRel.y Mozilla SVGPathSegCurvetoQuadraticSmoothRel.y documentation> 
svgPathSegCurvetoQuadraticSmoothRelGetY ::
                                        (IsSVGPathSegCurvetoQuadraticSmoothRel self) =>
                                          self -> IO Float
svgPathSegCurvetoQuadraticSmoothRelGetY self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_rel_get_y
      (unSVGPathSegCurvetoQuadraticSmoothRel
         (toSVGPathSegCurvetoQuadraticSmoothRel self))
#else
module GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothRel (
  ) where
#endif
