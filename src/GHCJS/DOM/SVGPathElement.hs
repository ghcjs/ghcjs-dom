{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathElement
       (ghcjs_dom_svg_path_element_get_total_length,
        svgPathElementGetTotalLength,
        ghcjs_dom_svg_path_element_get_point_at_length,
        svgPathElementGetPointAtLength,
        ghcjs_dom_svg_path_element_get_path_seg_at_length,
        svgPathElementGetPathSegAtLength,
        ghcjs_dom_svg_path_element_create_svg_path_seg_close_path,
        svgPathElementCreateSVGPathSegClosePath,
        ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_abs,
        svgPathElementCreateSVGPathSegMovetoAbs,
        ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_rel,
        svgPathElementCreateSVGPathSegMovetoRel,
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_abs,
        svgPathElementCreateSVGPathSegLinetoAbs,
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_rel,
        svgPathElementCreateSVGPathSegLinetoRel,
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_abs,
        svgPathElementCreateSVGPathSegCurvetoCubicAbs,
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_rel,
        svgPathElementCreateSVGPathSegCurvetoCubicRel,
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_abs,
        svgPathElementCreateSVGPathSegCurvetoQuadraticAbs,
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_rel,
        svgPathElementCreateSVGPathSegCurvetoQuadraticRel,
        ghcjs_dom_svg_path_element_create_svg_path_seg_arc_abs,
        svgPathElementCreateSVGPathSegArcAbs,
        ghcjs_dom_svg_path_element_create_svg_path_seg_arc_rel,
        svgPathElementCreateSVGPathSegArcRel,
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_abs,
        svgPathElementCreateSVGPathSegLinetoHorizontalAbs,
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_rel,
        svgPathElementCreateSVGPathSegLinetoHorizontalRel,
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_abs,
        svgPathElementCreateSVGPathSegLinetoVerticalAbs,
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_rel,
        svgPathElementCreateSVGPathSegLinetoVerticalRel,
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_abs,
        svgPathElementCreateSVGPathSegCurvetoCubicSmoothAbs,
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_rel,
        svgPathElementCreateSVGPathSegCurvetoCubicSmoothRel,
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_abs,
        svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothAbs,
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_rel,
        svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothRel,
        ghcjs_dom_svg_path_element_get_path_length,
        svgPathElementGetPathLength,
        ghcjs_dom_svg_path_element_get_path_seg_list,
        svgPathElementGetPathSegList,
        ghcjs_dom_svg_path_element_get_normalized_path_seg_list,
        svgPathElementGetNormalizedPathSegList,
        ghcjs_dom_svg_path_element_get_animated_path_seg_list,
        svgPathElementGetAnimatedPathSegList,
        ghcjs_dom_svg_path_element_get_animated_normalized_path_seg_list,
        svgPathElementGetAnimatedNormalizedPathSegList, SVGPathElement,
        IsSVGPathElement, castToSVGPathElement, gTypeSVGPathElement,
        toSVGPathElement)
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

 
foreign import javascript unsafe "$1[\"getTotalLength\"]()"
        ghcjs_dom_svg_path_element_get_total_length ::
        JSRef SVGPathElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.totalLength Mozilla SVGPathElement.totalLength documentation> 
svgPathElementGetTotalLength ::
                             (MonadIO m, IsSVGPathElement self) => self -> m Float
svgPathElementGetTotalLength self
  = liftIO
      (ghcjs_dom_svg_path_element_get_total_length
         (unSVGPathElement (toSVGPathElement self)))
 
foreign import javascript unsafe "$1[\"getPointAtLength\"]($2)"
        ghcjs_dom_svg_path_element_get_point_at_length ::
        JSRef SVGPathElement -> Float -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pointAtLength Mozilla SVGPathElement.pointAtLength documentation> 
svgPathElementGetPointAtLength ::
                               (MonadIO m, IsSVGPathElement self) =>
                                 self -> Float -> m (Maybe SVGPoint)
svgPathElementGetPointAtLength self distance
  = liftIO
      ((ghcjs_dom_svg_path_element_get_point_at_length
          (unSVGPathElement (toSVGPathElement self))
          distance)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getPathSegAtLength\"]($2)"
        ghcjs_dom_svg_path_element_get_path_seg_at_length ::
        JSRef SVGPathElement -> Float -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegAtLength Mozilla SVGPathElement.pathSegAtLength documentation> 
svgPathElementGetPathSegAtLength ::
                                 (MonadIO m, IsSVGPathElement self) => self -> Float -> m Word
svgPathElementGetPathSegAtLength self distance
  = liftIO
      (ghcjs_dom_svg_path_element_get_path_seg_at_length
         (unSVGPathElement (toSVGPathElement self))
         distance)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegClosePath\"]()"
        ghcjs_dom_svg_path_element_create_svg_path_seg_close_path ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegClosePath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
svgPathElementCreateSVGPathSegClosePath ::
                                        (MonadIO m, IsSVGPathElement self) =>
                                          self -> m (Maybe SVGPathSegClosePath)
svgPathElementCreateSVGPathSegClosePath self
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_close_path
          (unSVGPathElement (toSVGPathElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoAbs\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_abs ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegMovetoAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
svgPathElementCreateSVGPathSegMovetoAbs ::
                                        (MonadIO m, IsSVGPathElement self) =>
                                          self -> Float -> Float -> m (Maybe SVGPathSegMovetoAbs)
svgPathElementCreateSVGPathSegMovetoAbs self x y
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_abs
          (unSVGPathElement (toSVGPathElement self))
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoRel\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_rel ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegMovetoRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
svgPathElementCreateSVGPathSegMovetoRel ::
                                        (MonadIO m, IsSVGPathElement self) =>
                                          self -> Float -> Float -> m (Maybe SVGPathSegMovetoRel)
svgPathElementCreateSVGPathSegMovetoRel self x y
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_rel
          (unSVGPathElement (toSVGPathElement self))
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoAbs\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_abs ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegLinetoAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
svgPathElementCreateSVGPathSegLinetoAbs ::
                                        (MonadIO m, IsSVGPathElement self) =>
                                          self -> Float -> Float -> m (Maybe SVGPathSegLinetoAbs)
svgPathElementCreateSVGPathSegLinetoAbs self x y
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_abs
          (unSVGPathElement (toSVGPathElement self))
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoRel\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_rel ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegLinetoRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
svgPathElementCreateSVGPathSegLinetoRel ::
                                        (MonadIO m, IsSVGPathElement self) =>
                                          self -> Float -> Float -> m (Maybe SVGPathSegLinetoRel)
svgPathElementCreateSVGPathSegLinetoRel self x y
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_rel
          (unSVGPathElement (toSVGPathElement self))
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicAbs\"]($2,\n$3, $4, $5, $6, $7)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_abs ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
svgPathElementCreateSVGPathSegCurvetoCubicAbs ::
                                              (MonadIO m, IsSVGPathElement self) =>
                                                self ->
                                                  Float ->
                                                    Float ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              m (Maybe SVGPathSegCurvetoCubicAbs)
svgPathElementCreateSVGPathSegCurvetoCubicAbs self x y x1 y1 x2 y2
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_abs
          (unSVGPathElement (toSVGPathElement self))
          x
          y
          x1
          y1
          x2
          y2)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicRel\"]($2,\n$3, $4, $5, $6, $7)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_rel ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
svgPathElementCreateSVGPathSegCurvetoCubicRel ::
                                              (MonadIO m, IsSVGPathElement self) =>
                                                self ->
                                                  Float ->
                                                    Float ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              m (Maybe SVGPathSegCurvetoCubicRel)
svgPathElementCreateSVGPathSegCurvetoCubicRel self x y x1 y1 x2 y2
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_rel
          (unSVGPathElement (toSVGPathElement self))
          x
          y
          x1
          y1
          x2
          y2)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticAbs\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_abs
        ::
        JSRef SVGPathElement ->
          Float ->
            Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
svgPathElementCreateSVGPathSegCurvetoQuadraticAbs ::
                                                  (MonadIO m, IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              m (Maybe
                                                                   SVGPathSegCurvetoQuadraticAbs)
svgPathElementCreateSVGPathSegCurvetoQuadraticAbs self x y x1 y1
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_abs
          (unSVGPathElement (toSVGPathElement self))
          x
          y
          x1
          y1)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticRel\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_rel
        ::
        JSRef SVGPathElement ->
          Float ->
            Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
svgPathElementCreateSVGPathSegCurvetoQuadraticRel ::
                                                  (MonadIO m, IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              m (Maybe
                                                                   SVGPathSegCurvetoQuadraticRel)
svgPathElementCreateSVGPathSegCurvetoQuadraticRel self x y x1 y1
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_rel
          (unSVGPathElement (toSVGPathElement self))
          x
          y
          x1
          y1)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcAbs\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_arc_abs ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Bool -> Bool -> IO (JSRef SVGPathSegArcAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
svgPathElementCreateSVGPathSegArcAbs ::
                                     (MonadIO m, IsSVGPathElement self) =>
                                       self ->
                                         Float ->
                                           Float ->
                                             Float ->
                                               Float ->
                                                 Float -> Bool -> Bool -> m (Maybe SVGPathSegArcAbs)
svgPathElementCreateSVGPathSegArcAbs self x y r1 r2 angle
  largeArcFlag sweepFlag
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_arc_abs
          (unSVGPathElement (toSVGPathElement self))
          x
          y
          r1
          r2
          angle
          largeArcFlag
          sweepFlag)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcRel\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_arc_rel ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Bool -> Bool -> IO (JSRef SVGPathSegArcRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
svgPathElementCreateSVGPathSegArcRel ::
                                     (MonadIO m, IsSVGPathElement self) =>
                                       self ->
                                         Float ->
                                           Float ->
                                             Float ->
                                               Float ->
                                                 Float -> Bool -> Bool -> m (Maybe SVGPathSegArcRel)
svgPathElementCreateSVGPathSegArcRel self x y r1 r2 angle
  largeArcFlag sweepFlag
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_arc_rel
          (unSVGPathElement (toSVGPathElement self))
          x
          y
          r1
          r2
          angle
          largeArcFlag
          sweepFlag)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalAbs\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_abs
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoHorizontalAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
svgPathElementCreateSVGPathSegLinetoHorizontalAbs ::
                                                  (MonadIO m, IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        m (Maybe SVGPathSegLinetoHorizontalAbs)
svgPathElementCreateSVGPathSegLinetoHorizontalAbs self x
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_abs
          (unSVGPathElement (toSVGPathElement self))
          x)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalRel\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_rel
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoHorizontalRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
svgPathElementCreateSVGPathSegLinetoHorizontalRel ::
                                                  (MonadIO m, IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        m (Maybe SVGPathSegLinetoHorizontalRel)
svgPathElementCreateSVGPathSegLinetoHorizontalRel self x
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_rel
          (unSVGPathElement (toSVGPathElement self))
          x)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalAbs\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_abs
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoVerticalAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
svgPathElementCreateSVGPathSegLinetoVerticalAbs ::
                                                (MonadIO m, IsSVGPathElement self) =>
                                                  self ->
                                                    Float -> m (Maybe SVGPathSegLinetoVerticalAbs)
svgPathElementCreateSVGPathSegLinetoVerticalAbs self y
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_abs
          (unSVGPathElement (toSVGPathElement self))
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalRel\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_rel
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoVerticalRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
svgPathElementCreateSVGPathSegLinetoVerticalRel ::
                                                (MonadIO m, IsSVGPathElement self) =>
                                                  self ->
                                                    Float -> m (Maybe SVGPathSegLinetoVerticalRel)
svgPathElementCreateSVGPathSegLinetoVerticalRel self y
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_rel
          (unSVGPathElement (toSVGPathElement self))
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothAbs\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_abs
        ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicSmoothAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
svgPathElementCreateSVGPathSegCurvetoCubicSmoothAbs ::
                                                    (MonadIO m, IsSVGPathElement self) =>
                                                      self ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              Float ->
                                                                m (Maybe
                                                                     SVGPathSegCurvetoCubicSmoothAbs)
svgPathElementCreateSVGPathSegCurvetoCubicSmoothAbs self x y x2 y2
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_abs
          (unSVGPathElement (toSVGPathElement self))
          x
          y
          x2
          y2)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothRel\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_rel
        ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicSmoothRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
svgPathElementCreateSVGPathSegCurvetoCubicSmoothRel ::
                                                    (MonadIO m, IsSVGPathElement self) =>
                                                      self ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              Float ->
                                                                m (Maybe
                                                                     SVGPathSegCurvetoCubicSmoothRel)
svgPathElementCreateSVGPathSegCurvetoCubicSmoothRel self x y x2 y2
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_rel
          (unSVGPathElement (toSVGPathElement self))
          x
          y
          x2
          y2)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothAbs\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_abs
        ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticSmoothAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothAbs ::
                                                        (MonadIO m, IsSVGPathElement self) =>
                                                          self ->
                                                            Float ->
                                                              Float ->
                                                                m (Maybe
                                                                     SVGPathSegCurvetoQuadraticSmoothAbs)
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothAbs self x y
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_abs
          (unSVGPathElement (toSVGPathElement self))
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothRel\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_rel
        ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticSmoothRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothRel ::
                                                        (MonadIO m, IsSVGPathElement self) =>
                                                          self ->
                                                            Float ->
                                                              Float ->
                                                                m (Maybe
                                                                     SVGPathSegCurvetoQuadraticSmoothRel)
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothRel self x y
  = liftIO
      ((ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_rel
          (unSVGPathElement (toSVGPathElement self))
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"pathLength\"]"
        ghcjs_dom_svg_path_element_get_path_length ::
        JSRef SVGPathElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
svgPathElementGetPathLength ::
                            (MonadIO m, IsSVGPathElement self) =>
                              self -> m (Maybe SVGAnimatedNumber)
svgPathElementGetPathLength self
  = liftIO
      ((ghcjs_dom_svg_path_element_get_path_length
          (unSVGPathElement (toSVGPathElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"pathSegList\"]"
        ghcjs_dom_svg_path_element_get_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
svgPathElementGetPathSegList ::
                             (MonadIO m, IsSVGPathElement self) =>
                               self -> m (Maybe SVGPathSegList)
svgPathElementGetPathSegList self
  = liftIO
      ((ghcjs_dom_svg_path_element_get_path_seg_list
          (unSVGPathElement (toSVGPathElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"normalizedPathSegList\"]"
        ghcjs_dom_svg_path_element_get_normalized_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
svgPathElementGetNormalizedPathSegList ::
                                       (MonadIO m, IsSVGPathElement self) =>
                                         self -> m (Maybe SVGPathSegList)
svgPathElementGetNormalizedPathSegList self
  = liftIO
      ((ghcjs_dom_svg_path_element_get_normalized_path_seg_list
          (unSVGPathElement (toSVGPathElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"animatedPathSegList\"]"
        ghcjs_dom_svg_path_element_get_animated_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
svgPathElementGetAnimatedPathSegList ::
                                     (MonadIO m, IsSVGPathElement self) =>
                                       self -> m (Maybe SVGPathSegList)
svgPathElementGetAnimatedPathSegList self
  = liftIO
      ((ghcjs_dom_svg_path_element_get_animated_path_seg_list
          (unSVGPathElement (toSVGPathElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"animatedNormalizedPathSegList\"]"
        ghcjs_dom_svg_path_element_get_animated_normalized_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
svgPathElementGetAnimatedNormalizedPathSegList ::
                                               (MonadIO m, IsSVGPathElement self) =>
                                                 self -> m (Maybe SVGPathSegList)
svgPathElementGetAnimatedNormalizedPathSegList self
  = liftIO
      ((ghcjs_dom_svg_path_element_get_animated_normalized_path_seg_list
          (unSVGPathElement (toSVGPathElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGPathElement (
  ) where
#endif
