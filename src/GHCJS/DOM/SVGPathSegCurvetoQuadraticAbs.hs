{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoQuadraticAbs
       (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x,
        svgPathSegCurvetoQuadraticAbsSetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x,
        svgPathSegCurvetoQuadraticAbsGetX,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y,
        svgPathSegCurvetoQuadraticAbsSetY,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y,
        svgPathSegCurvetoQuadraticAbsGetY,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x1,
        svgPathSegCurvetoQuadraticAbsSetX1,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x1,
        svgPathSegCurvetoQuadraticAbsGetX1,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y1,
        svgPathSegCurvetoQuadraticAbsSetY1,
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y1,
        svgPathSegCurvetoQuadraticAbsGetY1, SVGPathSegCurvetoQuadraticAbs,
        IsSVGPathSegCurvetoQuadraticAbs,
        castToSVGPathSegCurvetoQuadraticAbs,
        gTypeSVGPathSegCurvetoQuadraticAbs,
        toSVGPathSegCurvetoQuadraticAbs)
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
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x Mozilla SVGPathSegCurvetoQuadraticAbs.x documentation> 
svgPathSegCurvetoQuadraticAbsSetX ::
                                  (MonadIO m, IsSVGPathSegCurvetoQuadraticAbs self) =>
                                    self -> Float -> m ()
svgPathSegCurvetoQuadraticAbsSetX self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x
         (unSVGPathSegCurvetoQuadraticAbs
            (toSVGPathSegCurvetoQuadraticAbs self))
         val)
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x Mozilla SVGPathSegCurvetoQuadraticAbs.x documentation> 
svgPathSegCurvetoQuadraticAbsGetX ::
                                  (MonadIO m, IsSVGPathSegCurvetoQuadraticAbs self) =>
                                    self -> m Float
svgPathSegCurvetoQuadraticAbsGetX self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x
         (unSVGPathSegCurvetoQuadraticAbs
            (toSVGPathSegCurvetoQuadraticAbs self)))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y Mozilla SVGPathSegCurvetoQuadraticAbs.y documentation> 
svgPathSegCurvetoQuadraticAbsSetY ::
                                  (MonadIO m, IsSVGPathSegCurvetoQuadraticAbs self) =>
                                    self -> Float -> m ()
svgPathSegCurvetoQuadraticAbsSetY self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y
         (unSVGPathSegCurvetoQuadraticAbs
            (toSVGPathSegCurvetoQuadraticAbs self))
         val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y Mozilla SVGPathSegCurvetoQuadraticAbs.y documentation> 
svgPathSegCurvetoQuadraticAbsGetY ::
                                  (MonadIO m, IsSVGPathSegCurvetoQuadraticAbs self) =>
                                    self -> m Float
svgPathSegCurvetoQuadraticAbsGetY self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y
         (unSVGPathSegCurvetoQuadraticAbs
            (toSVGPathSegCurvetoQuadraticAbs self)))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x1 Mozilla SVGPathSegCurvetoQuadraticAbs.x1 documentation> 
svgPathSegCurvetoQuadraticAbsSetX1 ::
                                   (MonadIO m, IsSVGPathSegCurvetoQuadraticAbs self) =>
                                     self -> Float -> m ()
svgPathSegCurvetoQuadraticAbsSetX1 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_x1
         (unSVGPathSegCurvetoQuadraticAbs
            (toSVGPathSegCurvetoQuadraticAbs self))
         val)
 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.x1 Mozilla SVGPathSegCurvetoQuadraticAbs.x1 documentation> 
svgPathSegCurvetoQuadraticAbsGetX1 ::
                                   (MonadIO m, IsSVGPathSegCurvetoQuadraticAbs self) =>
                                     self -> m Float
svgPathSegCurvetoQuadraticAbsGetX1 self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_x1
         (unSVGPathSegCurvetoQuadraticAbs
            (toSVGPathSegCurvetoQuadraticAbs self)))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y1 Mozilla SVGPathSegCurvetoQuadraticAbs.y1 documentation> 
svgPathSegCurvetoQuadraticAbsSetY1 ::
                                   (MonadIO m, IsSVGPathSegCurvetoQuadraticAbs self) =>
                                     self -> Float -> m ()
svgPathSegCurvetoQuadraticAbsSetY1 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_set_y1
         (unSVGPathSegCurvetoQuadraticAbs
            (toSVGPathSegCurvetoQuadraticAbs self))
         val)
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y1 ::
        JSRef SVGPathSegCurvetoQuadraticAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoQuadraticAbs.y1 Mozilla SVGPathSegCurvetoQuadraticAbs.y1 documentation> 
svgPathSegCurvetoQuadraticAbsGetY1 ::
                                   (MonadIO m, IsSVGPathSegCurvetoQuadraticAbs self) =>
                                     self -> m Float
svgPathSegCurvetoQuadraticAbsGetY1 self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_quadratic_abs_get_y1
         (unSVGPathSegCurvetoQuadraticAbs
            (toSVGPathSegCurvetoQuadraticAbs self)))
#else
module GHCJS.DOM.SVGPathSegCurvetoQuadraticAbs (
  ) where
#endif
