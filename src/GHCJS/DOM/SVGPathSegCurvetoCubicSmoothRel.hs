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
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x Mozilla SVGPathSegCurvetoCubicSmoothRel.x documentation> 
svgPathSegCurvetoCubicSmoothRelSetX ::
                                    (MonadIO m, IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                      self -> Float -> m ()
svgPathSegCurvetoCubicSmoothRelSetX self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x
         (unSVGPathSegCurvetoCubicSmoothRel
            (toSVGPathSegCurvetoCubicSmoothRel self))
         val)
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x Mozilla SVGPathSegCurvetoCubicSmoothRel.x documentation> 
svgPathSegCurvetoCubicSmoothRelGetX ::
                                    (MonadIO m, IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                      self -> m Float
svgPathSegCurvetoCubicSmoothRelGetX self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x
         (unSVGPathSegCurvetoCubicSmoothRel
            (toSVGPathSegCurvetoCubicSmoothRel self)))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y Mozilla SVGPathSegCurvetoCubicSmoothRel.y documentation> 
svgPathSegCurvetoCubicSmoothRelSetY ::
                                    (MonadIO m, IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                      self -> Float -> m ()
svgPathSegCurvetoCubicSmoothRelSetY self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y
         (unSVGPathSegCurvetoCubicSmoothRel
            (toSVGPathSegCurvetoCubicSmoothRel self))
         val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y Mozilla SVGPathSegCurvetoCubicSmoothRel.y documentation> 
svgPathSegCurvetoCubicSmoothRelGetY ::
                                    (MonadIO m, IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                      self -> m Float
svgPathSegCurvetoCubicSmoothRelGetY self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y
         (unSVGPathSegCurvetoCubicSmoothRel
            (toSVGPathSegCurvetoCubicSmoothRel self)))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x2 Mozilla SVGPathSegCurvetoCubicSmoothRel.x2 documentation> 
svgPathSegCurvetoCubicSmoothRelSetX2 ::
                                     (MonadIO m, IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                       self -> Float -> m ()
svgPathSegCurvetoCubicSmoothRelSetX2 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_x2
         (unSVGPathSegCurvetoCubicSmoothRel
            (toSVGPathSegCurvetoCubicSmoothRel self))
         val)
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.x2 Mozilla SVGPathSegCurvetoCubicSmoothRel.x2 documentation> 
svgPathSegCurvetoCubicSmoothRelGetX2 ::
                                     (MonadIO m, IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                       self -> m Float
svgPathSegCurvetoCubicSmoothRelGetX2 self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_x2
         (unSVGPathSegCurvetoCubicSmoothRel
            (toSVGPathSegCurvetoCubicSmoothRel self)))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y2 Mozilla SVGPathSegCurvetoCubicSmoothRel.y2 documentation> 
svgPathSegCurvetoCubicSmoothRelSetY2 ::
                                     (MonadIO m, IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                       self -> Float -> m ()
svgPathSegCurvetoCubicSmoothRelSetY2 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_set_y2
         (unSVGPathSegCurvetoCubicSmoothRel
            (toSVGPathSegCurvetoCubicSmoothRel self))
         val)
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y2 ::
        JSRef SVGPathSegCurvetoCubicSmoothRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothRel.y2 Mozilla SVGPathSegCurvetoCubicSmoothRel.y2 documentation> 
svgPathSegCurvetoCubicSmoothRelGetY2 ::
                                     (MonadIO m, IsSVGPathSegCurvetoCubicSmoothRel self) =>
                                       self -> m Float
svgPathSegCurvetoCubicSmoothRelGetY2 self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_smooth_rel_get_y2
         (unSVGPathSegCurvetoCubicSmoothRel
            (toSVGPathSegCurvetoCubicSmoothRel self)))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicSmoothRel (
  ) where
#endif
