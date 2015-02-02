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
                             (IsSVGPathElement self) => self -> IO Float
svgPathElementGetTotalLength self
  = ghcjs_dom_svg_path_element_get_total_length
      (unSVGPathElement (toSVGPathElement self))
 
foreign import javascript unsafe "$1[\"getPointAtLength\"]($2)"
        ghcjs_dom_svg_path_element_get_point_at_length ::
        JSRef SVGPathElement -> Float -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pointAtLength Mozilla SVGPathElement.pointAtLength documentation> 
svgPathElementGetPointAtLength ::
                               (IsSVGPathElement self) => self -> Float -> IO (Maybe SVGPoint)
svgPathElementGetPointAtLength self distance
  = (ghcjs_dom_svg_path_element_get_point_at_length
       (unSVGPathElement (toSVGPathElement self))
       distance)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getPathSegAtLength\"]($2)"
        ghcjs_dom_svg_path_element_get_path_seg_at_length ::
        JSRef SVGPathElement -> Float -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegAtLength Mozilla SVGPathElement.pathSegAtLength documentation> 
svgPathElementGetPathSegAtLength ::
                                 (IsSVGPathElement self) => self -> Float -> IO Word
svgPathElementGetPathSegAtLength self distance
  = ghcjs_dom_svg_path_element_get_path_seg_at_length
      (unSVGPathElement (toSVGPathElement self))
      distance
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegClosePath\"]()"
        ghcjs_dom_svg_path_element_create_svg_path_seg_close_path ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegClosePath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
svgPathElementCreateSVGPathSegClosePath ::
                                        (IsSVGPathElement self) =>
                                          self -> IO (Maybe SVGPathSegClosePath)
svgPathElementCreateSVGPathSegClosePath self
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_close_path
       (unSVGPathElement (toSVGPathElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoAbs\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_abs ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegMovetoAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
svgPathElementCreateSVGPathSegMovetoAbs ::
                                        (IsSVGPathElement self) =>
                                          self -> Float -> Float -> IO (Maybe SVGPathSegMovetoAbs)
svgPathElementCreateSVGPathSegMovetoAbs self x y
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_abs
       (unSVGPathElement (toSVGPathElement self))
       x
       y)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoRel\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_rel ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegMovetoRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
svgPathElementCreateSVGPathSegMovetoRel ::
                                        (IsSVGPathElement self) =>
                                          self -> Float -> Float -> IO (Maybe SVGPathSegMovetoRel)
svgPathElementCreateSVGPathSegMovetoRel self x y
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_rel
       (unSVGPathElement (toSVGPathElement self))
       x
       y)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoAbs\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_abs ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegLinetoAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
svgPathElementCreateSVGPathSegLinetoAbs ::
                                        (IsSVGPathElement self) =>
                                          self -> Float -> Float -> IO (Maybe SVGPathSegLinetoAbs)
svgPathElementCreateSVGPathSegLinetoAbs self x y
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_abs
       (unSVGPathElement (toSVGPathElement self))
       x
       y)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoRel\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_rel ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegLinetoRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
svgPathElementCreateSVGPathSegLinetoRel ::
                                        (IsSVGPathElement self) =>
                                          self -> Float -> Float -> IO (Maybe SVGPathSegLinetoRel)
svgPathElementCreateSVGPathSegLinetoRel self x y
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_rel
       (unSVGPathElement (toSVGPathElement self))
       x
       y)
      >>= fromJSRef
 
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
                                              (IsSVGPathElement self) =>
                                                self ->
                                                  Float ->
                                                    Float ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              IO (Maybe SVGPathSegCurvetoCubicAbs)
svgPathElementCreateSVGPathSegCurvetoCubicAbs self x y x1 y1 x2 y2
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_abs
       (unSVGPathElement (toSVGPathElement self))
       x
       y
       x1
       y1
       x2
       y2)
      >>= fromJSRef
 
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
                                              (IsSVGPathElement self) =>
                                                self ->
                                                  Float ->
                                                    Float ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              IO (Maybe SVGPathSegCurvetoCubicRel)
svgPathElementCreateSVGPathSegCurvetoCubicRel self x y x1 y1 x2 y2
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_rel
       (unSVGPathElement (toSVGPathElement self))
       x
       y
       x1
       y1
       x2
       y2)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticAbs\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_abs
        ::
        JSRef SVGPathElement ->
          Float ->
            Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
svgPathElementCreateSVGPathSegCurvetoQuadraticAbs ::
                                                  (IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              IO
                                                                (Maybe
                                                                   SVGPathSegCurvetoQuadraticAbs)
svgPathElementCreateSVGPathSegCurvetoQuadraticAbs self x y x1 y1
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_abs
       (unSVGPathElement (toSVGPathElement self))
       x
       y
       x1
       y1)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticRel\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_rel
        ::
        JSRef SVGPathElement ->
          Float ->
            Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
svgPathElementCreateSVGPathSegCurvetoQuadraticRel ::
                                                  (IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              IO
                                                                (Maybe
                                                                   SVGPathSegCurvetoQuadraticRel)
svgPathElementCreateSVGPathSegCurvetoQuadraticRel self x y x1 y1
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_rel
       (unSVGPathElement (toSVGPathElement self))
       x
       y
       x1
       y1)
      >>= fromJSRef
 
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
                                     (IsSVGPathElement self) =>
                                       self ->
                                         Float ->
                                           Float ->
                                             Float ->
                                               Float ->
                                                 Float ->
                                                   Bool -> Bool -> IO (Maybe SVGPathSegArcAbs)
svgPathElementCreateSVGPathSegArcAbs self x y r1 r2 angle
  largeArcFlag sweepFlag
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_arc_abs
       (unSVGPathElement (toSVGPathElement self))
       x
       y
       r1
       r2
       angle
       largeArcFlag
       sweepFlag)
      >>= fromJSRef
 
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
                                     (IsSVGPathElement self) =>
                                       self ->
                                         Float ->
                                           Float ->
                                             Float ->
                                               Float ->
                                                 Float ->
                                                   Bool -> Bool -> IO (Maybe SVGPathSegArcRel)
svgPathElementCreateSVGPathSegArcRel self x y r1 r2 angle
  largeArcFlag sweepFlag
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_arc_rel
       (unSVGPathElement (toSVGPathElement self))
       x
       y
       r1
       r2
       angle
       largeArcFlag
       sweepFlag)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalAbs\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_abs
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoHorizontalAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
svgPathElementCreateSVGPathSegLinetoHorizontalAbs ::
                                                  (IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        IO (Maybe SVGPathSegLinetoHorizontalAbs)
svgPathElementCreateSVGPathSegLinetoHorizontalAbs self x
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_abs
       (unSVGPathElement (toSVGPathElement self))
       x)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalRel\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_rel
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoHorizontalRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
svgPathElementCreateSVGPathSegLinetoHorizontalRel ::
                                                  (IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        IO (Maybe SVGPathSegLinetoHorizontalRel)
svgPathElementCreateSVGPathSegLinetoHorizontalRel self x
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_rel
       (unSVGPathElement (toSVGPathElement self))
       x)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalAbs\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_abs
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoVerticalAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
svgPathElementCreateSVGPathSegLinetoVerticalAbs ::
                                                (IsSVGPathElement self) =>
                                                  self ->
                                                    Float -> IO (Maybe SVGPathSegLinetoVerticalAbs)
svgPathElementCreateSVGPathSegLinetoVerticalAbs self y
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_abs
       (unSVGPathElement (toSVGPathElement self))
       y)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalRel\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_rel
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoVerticalRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
svgPathElementCreateSVGPathSegLinetoVerticalRel ::
                                                (IsSVGPathElement self) =>
                                                  self ->
                                                    Float -> IO (Maybe SVGPathSegLinetoVerticalRel)
svgPathElementCreateSVGPathSegLinetoVerticalRel self y
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_rel
       (unSVGPathElement (toSVGPathElement self))
       y)
      >>= fromJSRef
 
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
                                                    (IsSVGPathElement self) =>
                                                      self ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              Float ->
                                                                IO
                                                                  (Maybe
                                                                     SVGPathSegCurvetoCubicSmoothAbs)
svgPathElementCreateSVGPathSegCurvetoCubicSmoothAbs self x y x2 y2
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_abs
       (unSVGPathElement (toSVGPathElement self))
       x
       y
       x2
       y2)
      >>= fromJSRef
 
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
                                                    (IsSVGPathElement self) =>
                                                      self ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              Float ->
                                                                IO
                                                                  (Maybe
                                                                     SVGPathSegCurvetoCubicSmoothRel)
svgPathElementCreateSVGPathSegCurvetoCubicSmoothRel self x y x2 y2
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_rel
       (unSVGPathElement (toSVGPathElement self))
       x
       y
       x2
       y2)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothAbs\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_abs
        ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticSmoothAbs)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothAbs ::
                                                        (IsSVGPathElement self) =>
                                                          self ->
                                                            Float ->
                                                              Float ->
                                                                IO
                                                                  (Maybe
                                                                     SVGPathSegCurvetoQuadraticSmoothAbs)
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothAbs self x y
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_abs
       (unSVGPathElement (toSVGPathElement self))
       x
       y)
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothRel\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_rel
        ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticSmoothRel)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothRel ::
                                                        (IsSVGPathElement self) =>
                                                          self ->
                                                            Float ->
                                                              Float ->
                                                                IO
                                                                  (Maybe
                                                                     SVGPathSegCurvetoQuadraticSmoothRel)
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothRel self x y
  = (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_rel
       (unSVGPathElement (toSVGPathElement self))
       x
       y)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"pathLength\"]"
        ghcjs_dom_svg_path_element_get_path_length ::
        JSRef SVGPathElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
svgPathElementGetPathLength ::
                            (IsSVGPathElement self) => self -> IO (Maybe SVGAnimatedNumber)
svgPathElementGetPathLength self
  = (ghcjs_dom_svg_path_element_get_path_length
       (unSVGPathElement (toSVGPathElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"pathSegList\"]"
        ghcjs_dom_svg_path_element_get_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
svgPathElementGetPathSegList ::
                             (IsSVGPathElement self) => self -> IO (Maybe SVGPathSegList)
svgPathElementGetPathSegList self
  = (ghcjs_dom_svg_path_element_get_path_seg_list
       (unSVGPathElement (toSVGPathElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"normalizedPathSegList\"]"
        ghcjs_dom_svg_path_element_get_normalized_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
svgPathElementGetNormalizedPathSegList ::
                                       (IsSVGPathElement self) => self -> IO (Maybe SVGPathSegList)
svgPathElementGetNormalizedPathSegList self
  = (ghcjs_dom_svg_path_element_get_normalized_path_seg_list
       (unSVGPathElement (toSVGPathElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"animatedPathSegList\"]"
        ghcjs_dom_svg_path_element_get_animated_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
svgPathElementGetAnimatedPathSegList ::
                                     (IsSVGPathElement self) => self -> IO (Maybe SVGPathSegList)
svgPathElementGetAnimatedPathSegList self
  = (ghcjs_dom_svg_path_element_get_animated_path_seg_list
       (unSVGPathElement (toSVGPathElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"animatedNormalizedPathSegList\"]"
        ghcjs_dom_svg_path_element_get_animated_normalized_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
svgPathElementGetAnimatedNormalizedPathSegList ::
                                               (IsSVGPathElement self) =>
                                                 self -> IO (Maybe SVGPathSegList)
svgPathElementGetAnimatedNormalizedPathSegList self
  = (ghcjs_dom_svg_path_element_get_animated_normalized_path_seg_list
       (unSVGPathElement (toSVGPathElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGPathElement (
  ) where
#endif
