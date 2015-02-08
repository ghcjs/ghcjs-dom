{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothAbs
       (ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_x,
        svgPathSegCurvetoQuadraticSmoothAbsSetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_x,
        svgPathSegCurvetoQuadraticSmoothAbsGetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_y,
        svgPathSegCurvetoQuadraticSmoothAbsSetY,
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_y,
        svgPathSegCurvetoQuadraticSmoothAbsGetY,
        SVGPathSegCurvetoQuadraticSmoothAbs,
        IsSVGPathSegCurvetoQuadraticSmoothAbs,
        castToSVGPathSegCurvetoQuadraticSmoothAbs,
        gTypeSVGPathSegCurvetoQuadraticSmoothAbs,
        toSVGPathSegCurvetoQuadraticSmoothAbs)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_x ::
        JSRef SVGPathSegCurvetoQuadraticSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs.x Mozilla SVGPathSegCurvetoQuadraticSmoothAbs.x documentation> 
svgPathSegCurvetoQuadraticSmoothAbsSetX ::
                                        (MonadIO m, IsSVGPathSegCurvetoQuadraticSmoothAbs self) =>
                                          self -> Float -> m ()
svgPathSegCurvetoQuadraticSmoothAbsSetX self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_x
         (unSVGPathSegCurvetoQuadraticSmoothAbs
            (toSVGPathSegCurvetoQuadraticSmoothAbs self))
         val)
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_x ::
        JSRef SVGPathSegCurvetoQuadraticSmoothAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs.x Mozilla SVGPathSegCurvetoQuadraticSmoothAbs.x documentation> 
svgPathSegCurvetoQuadraticSmoothAbsGetX ::
                                        (MonadIO m, IsSVGPathSegCurvetoQuadraticSmoothAbs self) =>
                                          self -> m Float
svgPathSegCurvetoQuadraticSmoothAbsGetX self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_x
         (unSVGPathSegCurvetoQuadraticSmoothAbs
            (toSVGPathSegCurvetoQuadraticSmoothAbs self)))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_y ::
        JSRef SVGPathSegCurvetoQuadraticSmoothAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs.y Mozilla SVGPathSegCurvetoQuadraticSmoothAbs.y documentation> 
svgPathSegCurvetoQuadraticSmoothAbsSetY ::
                                        (MonadIO m, IsSVGPathSegCurvetoQuadraticSmoothAbs self) =>
                                          self -> Float -> m ()
svgPathSegCurvetoQuadraticSmoothAbsSetY self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_set_y
         (unSVGPathSegCurvetoQuadraticSmoothAbs
            (toSVGPathSegCurvetoQuadraticSmoothAbs self))
         val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_y ::
        JSRef SVGPathSegCurvetoQuadraticSmoothAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticSmoothAbs.y Mozilla SVGPathSegCurvetoQuadraticSmoothAbs.y documentation> 
svgPathSegCurvetoQuadraticSmoothAbsGetY ::
                                        (MonadIO m, IsSVGPathSegCurvetoQuadraticSmoothAbs self) =>
                                          self -> m Float
svgPathSegCurvetoQuadraticSmoothAbsGetY self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_smooth_abs_get_y
         (unSVGPathSegCurvetoQuadraticSmoothAbs
            (toSVGPathSegCurvetoQuadraticSmoothAbs self)))
#else
module GHCJS.DOM.SVGPathSegCurvetoQuadraticSmoothAbs (
  ) where
#endif
