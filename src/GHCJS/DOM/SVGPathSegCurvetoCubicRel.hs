{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegCurvetoCubicRel
       (ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x,
        svgPathSegCurvetoCubicRelSetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x,
        svgPathSegCurvetoCubicRelGetX,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y,
        svgPathSegCurvetoCubicRelSetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y,
        svgPathSegCurvetoCubicRelGetY,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x1,
        svgPathSegCurvetoCubicRelSetX1,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x1,
        svgPathSegCurvetoCubicRelGetX1,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y1,
        svgPathSegCurvetoCubicRelSetY1,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y1,
        svgPathSegCurvetoCubicRelGetY1,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x2,
        svgPathSegCurvetoCubicRelSetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x2,
        svgPathSegCurvetoCubicRelGetX2,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y2,
        svgPathSegCurvetoCubicRelSetY2,
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y2,
        svgPathSegCurvetoCubicRelGetY2, SVGPathSegCurvetoCubicRel,
        IsSVGPathSegCurvetoCubicRel, castToSVGPathSegCurvetoCubicRel,
        gTypeSVGPathSegCurvetoCubicRel, toSVGPathSegCurvetoCubicRel)
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
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x Mozilla SVGPathSegCurvetoCubicRel.x documentation> 
svgPathSegCurvetoCubicRelSetX ::
                              (MonadIO m, IsSVGPathSegCurvetoCubicRel self) =>
                                self -> Float -> m ()
svgPathSegCurvetoCubicRelSetX self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
         val)
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x Mozilla SVGPathSegCurvetoCubicRel.x documentation> 
svgPathSegCurvetoCubicRelGetX ::
                              (MonadIO m, IsSVGPathSegCurvetoCubicRel self) => self -> m Float
svgPathSegCurvetoCubicRelGetX self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self)))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y Mozilla SVGPathSegCurvetoCubicRel.y documentation> 
svgPathSegCurvetoCubicRelSetY ::
                              (MonadIO m, IsSVGPathSegCurvetoCubicRel self) =>
                                self -> Float -> m ()
svgPathSegCurvetoCubicRelSetY self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
         val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y Mozilla SVGPathSegCurvetoCubicRel.y documentation> 
svgPathSegCurvetoCubicRelGetY ::
                              (MonadIO m, IsSVGPathSegCurvetoCubicRel self) => self -> m Float
svgPathSegCurvetoCubicRelGetY self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self)))
 
foreign import javascript unsafe "$1[\"x1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x1 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x1 Mozilla SVGPathSegCurvetoCubicRel.x1 documentation> 
svgPathSegCurvetoCubicRelSetX1 ::
                               (MonadIO m, IsSVGPathSegCurvetoCubicRel self) =>
                                 self -> Float -> m ()
svgPathSegCurvetoCubicRelSetX1 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x1
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
         val)
 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x1 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x1 Mozilla SVGPathSegCurvetoCubicRel.x1 documentation> 
svgPathSegCurvetoCubicRelGetX1 ::
                               (MonadIO m, IsSVGPathSegCurvetoCubicRel self) => self -> m Float
svgPathSegCurvetoCubicRelGetX1 self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x1
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self)))
 
foreign import javascript unsafe "$1[\"y1\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y1 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y1 Mozilla SVGPathSegCurvetoCubicRel.y1 documentation> 
svgPathSegCurvetoCubicRelSetY1 ::
                               (MonadIO m, IsSVGPathSegCurvetoCubicRel self) =>
                                 self -> Float -> m ()
svgPathSegCurvetoCubicRelSetY1 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y1
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
         val)
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y1 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y1 Mozilla SVGPathSegCurvetoCubicRel.y1 documentation> 
svgPathSegCurvetoCubicRelGetY1 ::
                               (MonadIO m, IsSVGPathSegCurvetoCubicRel self) => self -> m Float
svgPathSegCurvetoCubicRelGetY1 self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y1
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self)))
 
foreign import javascript unsafe "$1[\"x2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x2 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x2 Mozilla SVGPathSegCurvetoCubicRel.x2 documentation> 
svgPathSegCurvetoCubicRelSetX2 ::
                               (MonadIO m, IsSVGPathSegCurvetoCubicRel self) =>
                                 self -> Float -> m ()
svgPathSegCurvetoCubicRelSetX2 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_x2
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
         val)
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x2 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.x2 Mozilla SVGPathSegCurvetoCubicRel.x2 documentation> 
svgPathSegCurvetoCubicRelGetX2 ::
                               (MonadIO m, IsSVGPathSegCurvetoCubicRel self) => self -> m Float
svgPathSegCurvetoCubicRelGetX2 self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_x2
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self)))
 
foreign import javascript unsafe "$1[\"y2\"] = $2;"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y2 ::
        JSRef SVGPathSegCurvetoCubicRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y2 Mozilla SVGPathSegCurvetoCubicRel.y2 documentation> 
svgPathSegCurvetoCubicRelSetY2 ::
                               (MonadIO m, IsSVGPathSegCurvetoCubicRel self) =>
                                 self -> Float -> m ()
svgPathSegCurvetoCubicRelSetY2 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_set_y2
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self))
         val)
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y2 ::
        JSRef SVGPathSegCurvetoCubicRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicRel.y2 Mozilla SVGPathSegCurvetoCubicRel.y2 documentation> 
svgPathSegCurvetoCubicRelGetY2 ::
                               (MonadIO m, IsSVGPathSegCurvetoCubicRel self) => self -> m Float
svgPathSegCurvetoCubicRelGetY2 self
  = liftIO
      (ghcjs_dom_svg_path_seg_curveto_cubic_rel_get_y2
         (unSVGPathSegCurvetoCubicRel (toSVGPathSegCurvetoCubicRel self)))
#else
module GHCJS.DOM.SVGPathSegCurvetoCubicRel (
  ) where
#endif
