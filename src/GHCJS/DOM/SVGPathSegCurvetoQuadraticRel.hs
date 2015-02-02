{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoQuadraticRel
       (ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_x,
        svgPathSegCurvetoQuadraticRelSetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_x,
        svgPathSegCurvetoQuadraticRelGetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_y,
        svgPathSegCurvetoQuadraticRelSetY,
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_y,
        svgPathSegCurvetoQuadraticRelGetY,
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_x1,
        svgPathSegCurvetoQuadraticRelSetX1,
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_x1,
        svgPathSegCurvetoQuadraticRelGetX1,
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_y1,
        svgPathSegCurvetoQuadraticRelSetY1,
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_y1,
        svgPathSegCurvetoQuadraticRelGetY1, SVGPathSegCurvetoQuadraticRel,
        IsSVGPathSegCurvetoQuadraticRel,
        castToSVGPathSegCurvetoQuadraticRel,
        gTypeSVGPathSegCurvetoQuadraticRel,
        toSVGPathSegCurvetoQuadraticRel)
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
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_x ::
        JSRef SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x Mozilla SVGPathSegCurvetoQuadraticRel.x documentation> 
svgPathSegCurvetoQuadraticRelSetX ::
                                  (IsSVGPathSegCurvetoQuadraticRel self) => self -> Float -> IO ()
svgPathSegCurvetoQuadraticRelSetX self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_x
      (unSVGPathSegCurvetoQuadraticRel
         (toSVGPathSegCurvetoQuadraticRel self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_x ::
        JSRef SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x Mozilla SVGPathSegCurvetoQuadraticRel.x documentation> 
svgPathSegCurvetoQuadraticRelGetX ::
                                  (IsSVGPathSegCurvetoQuadraticRel self) => self -> IO Float
svgPathSegCurvetoQuadraticRelGetX self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_x
      (unSVGPathSegCurvetoQuadraticRel
         (toSVGPathSegCurvetoQuadraticRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_y ::
        JSRef SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y Mozilla SVGPathSegCurvetoQuadraticRel.y documentation> 
svgPathSegCurvetoQuadraticRelSetY ::
                                  (IsSVGPathSegCurvetoQuadraticRel self) => self -> Float -> IO ()
svgPathSegCurvetoQuadraticRelSetY self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_y
      (unSVGPathSegCurvetoQuadraticRel
         (toSVGPathSegCurvetoQuadraticRel self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_y ::
        JSRef SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y Mozilla SVGPathSegCurvetoQuadraticRel.y documentation> 
svgPathSegCurvetoQuadraticRelGetY ::
                                  (IsSVGPathSegCurvetoQuadraticRel self) => self -> IO Float
svgPathSegCurvetoQuadraticRelGetY self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_y
      (unSVGPathSegCurvetoQuadraticRel
         (toSVGPathSegCurvetoQuadraticRel self))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_x1 ::
        JSRef SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x1 Mozilla SVGPathSegCurvetoQuadraticRel.x1 documentation> 
svgPathSegCurvetoQuadraticRelSetX1 ::
                                   (IsSVGPathSegCurvetoQuadraticRel self) => self -> Float -> IO ()
svgPathSegCurvetoQuadraticRelSetX1 self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_x1
      (unSVGPathSegCurvetoQuadraticRel
         (toSVGPathSegCurvetoQuadraticRel self))
      val
 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_x1 ::
        JSRef SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.x1 Mozilla SVGPathSegCurvetoQuadraticRel.x1 documentation> 
svgPathSegCurvetoQuadraticRelGetX1 ::
                                   (IsSVGPathSegCurvetoQuadraticRel self) => self -> IO Float
svgPathSegCurvetoQuadraticRelGetX1 self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_x1
      (unSVGPathSegCurvetoQuadraticRel
         (toSVGPathSegCurvetoQuadraticRel self))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_y1 ::
        JSRef SVGPathSegCurvetoQuadraticRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y1 Mozilla SVGPathSegCurvetoQuadraticRel.y1 documentation> 
svgPathSegCurvetoQuadraticRelSetY1 ::
                                   (IsSVGPathSegCurvetoQuadraticRel self) => self -> Float -> IO ()
svgPathSegCurvetoQuadraticRelSetY1 self val
  = ghcjs_dom_svg_path_seg_curveto_quadratic_rel_set_y1
      (unSVGPathSegCurvetoQuadraticRel
         (toSVGPathSegCurvetoQuadraticRel self))
      val
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_y1 ::
        JSRef SVGPathSegCurvetoQuadraticRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticRel.y1 Mozilla SVGPathSegCurvetoQuadraticRel.y1 documentation> 
svgPathSegCurvetoQuadraticRelGetY1 ::
                                   (IsSVGPathSegCurvetoQuadraticRel self) => self -> IO Float
svgPathSegCurvetoQuadraticRelGetY1 self
  = ghcjs_dom_svg_path_seg_curveto_quadratic_rel_get_y1
      (unSVGPathSegCurvetoQuadraticRel
         (toSVGPathSegCurvetoQuadraticRel self))
#else
module GHCJS.DOM.SVGPathSegCurvetoQuadraticRel (
  ) where
#endif
