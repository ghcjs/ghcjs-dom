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
        ghcjs_dom_svg_path_seg_arc_abs_set_x ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.x Mozilla SVGPathSegArcAbs.x documentation> 
svgPathSegArcAbsSetX ::
                     (MonadIO m, IsSVGPathSegArcAbs self) => self -> Float -> m ()
svgPathSegArcAbsSetX self val
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_set_x
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
         val)
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_x ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.x Mozilla SVGPathSegArcAbs.x documentation> 
svgPathSegArcAbsGetX ::
                     (MonadIO m, IsSVGPathSegArcAbs self) => self -> m Float
svgPathSegArcAbsGetX self
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_get_x
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self)))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_y ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.y Mozilla SVGPathSegArcAbs.y documentation> 
svgPathSegArcAbsSetY ::
                     (MonadIO m, IsSVGPathSegArcAbs self) => self -> Float -> m ()
svgPathSegArcAbsSetY self val
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_set_y
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
         val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_y ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.y Mozilla SVGPathSegArcAbs.y documentation> 
svgPathSegArcAbsGetY ::
                     (MonadIO m, IsSVGPathSegArcAbs self) => self -> m Float
svgPathSegArcAbsGetY self
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_get_y
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self)))
 
foreign import javascript unsafe "$1[\"r1\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_r1 ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r1 Mozilla SVGPathSegArcAbs.r1 documentation> 
svgPathSegArcAbsSetR1 ::
                      (MonadIO m, IsSVGPathSegArcAbs self) => self -> Float -> m ()
svgPathSegArcAbsSetR1 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_set_r1
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
         val)
 
foreign import javascript unsafe "$1[\"r1\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_r1 ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r1 Mozilla SVGPathSegArcAbs.r1 documentation> 
svgPathSegArcAbsGetR1 ::
                      (MonadIO m, IsSVGPathSegArcAbs self) => self -> m Float
svgPathSegArcAbsGetR1 self
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_get_r1
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self)))
 
foreign import javascript unsafe "$1[\"r2\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_r2 ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r2 Mozilla SVGPathSegArcAbs.r2 documentation> 
svgPathSegArcAbsSetR2 ::
                      (MonadIO m, IsSVGPathSegArcAbs self) => self -> Float -> m ()
svgPathSegArcAbsSetR2 self val
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_set_r2
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
         val)
 
foreign import javascript unsafe "$1[\"r2\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_r2 ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.r2 Mozilla SVGPathSegArcAbs.r2 documentation> 
svgPathSegArcAbsGetR2 ::
                      (MonadIO m, IsSVGPathSegArcAbs self) => self -> m Float
svgPathSegArcAbsGetR2 self
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_get_r2
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self)))
 
foreign import javascript unsafe "$1[\"angle\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_angle ::
        JSRef SVGPathSegArcAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.angle Mozilla SVGPathSegArcAbs.angle documentation> 
svgPathSegArcAbsSetAngle ::
                         (MonadIO m, IsSVGPathSegArcAbs self) => self -> Float -> m ()
svgPathSegArcAbsSetAngle self val
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_set_angle
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
         val)
 
foreign import javascript unsafe "$1[\"angle\"]"
        ghcjs_dom_svg_path_seg_arc_abs_get_angle ::
        JSRef SVGPathSegArcAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.angle Mozilla SVGPathSegArcAbs.angle documentation> 
svgPathSegArcAbsGetAngle ::
                         (MonadIO m, IsSVGPathSegArcAbs self) => self -> m Float
svgPathSegArcAbsGetAngle self
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_get_angle
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self)))
 
foreign import javascript unsafe "$1[\"largeArcFlag\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_large_arc_flag ::
        JSRef SVGPathSegArcAbs -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.largeArcFlag Mozilla SVGPathSegArcAbs.largeArcFlag documentation> 
svgPathSegArcAbsSetLargeArcFlag ::
                                (MonadIO m, IsSVGPathSegArcAbs self) => self -> Bool -> m ()
svgPathSegArcAbsSetLargeArcFlag self val
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_set_large_arc_flag
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
         val)
 
foreign import javascript unsafe "($1[\"largeArcFlag\"] ? 1 : 0)"
        ghcjs_dom_svg_path_seg_arc_abs_get_large_arc_flag ::
        JSRef SVGPathSegArcAbs -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.largeArcFlag Mozilla SVGPathSegArcAbs.largeArcFlag documentation> 
svgPathSegArcAbsGetLargeArcFlag ::
                                (MonadIO m, IsSVGPathSegArcAbs self) => self -> m Bool
svgPathSegArcAbsGetLargeArcFlag self
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_get_large_arc_flag
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self)))
 
foreign import javascript unsafe "$1[\"sweepFlag\"] = $2;"
        ghcjs_dom_svg_path_seg_arc_abs_set_sweep_flag ::
        JSRef SVGPathSegArcAbs -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.sweepFlag Mozilla SVGPathSegArcAbs.sweepFlag documentation> 
svgPathSegArcAbsSetSweepFlag ::
                             (MonadIO m, IsSVGPathSegArcAbs self) => self -> Bool -> m ()
svgPathSegArcAbsSetSweepFlag self val
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_set_sweep_flag
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self))
         val)
 
foreign import javascript unsafe "($1[\"sweepFlag\"] ? 1 : 0)"
        ghcjs_dom_svg_path_seg_arc_abs_get_sweep_flag ::
        JSRef SVGPathSegArcAbs -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegArcAbs.sweepFlag Mozilla SVGPathSegArcAbs.sweepFlag documentation> 
svgPathSegArcAbsGetSweepFlag ::
                             (MonadIO m, IsSVGPathSegArcAbs self) => self -> m Bool
svgPathSegArcAbsGetSweepFlag self
  = liftIO
      (ghcjs_dom_svg_path_seg_arc_abs_get_sweep_flag
         (unSVGPathSegArcAbs (toSVGPathSegArcAbs self)))
#else
module GHCJS.DOM.SVGPathSegArcAbs (
  ) where
#endif
