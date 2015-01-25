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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"getTotalLength\"]()"
        ghcjs_dom_svg_path_element_get_total_length ::
        JSRef SVGPathElement -> IO Float
 
svgPathElementGetTotalLength ::
                             (IsSVGPathElement self) => self -> IO Float
svgPathElementGetTotalLength self
  = ghcjs_dom_svg_path_element_get_total_length
      (unSVGPathElement (toSVGPathElement self))
 
foreign import javascript unsafe "$1[\"getPointAtLength\"]($2)"
        ghcjs_dom_svg_path_element_get_point_at_length ::
        JSRef SVGPathElement -> Float -> IO (JSRef SVGPoint)
 
svgPathElementGetPointAtLength ::
                               (IsSVGPathElement self) => self -> Float -> IO (Maybe SVGPoint)
svgPathElementGetPointAtLength self distance
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_get_point_at_length
         (unSVGPathElement (toSVGPathElement self))
         distance)
 
foreign import javascript unsafe "$1[\"getPathSegAtLength\"]($2)"
        ghcjs_dom_svg_path_element_get_path_seg_at_length ::
        JSRef SVGPathElement -> Float -> IO Word
 
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
 
svgPathElementCreateSVGPathSegClosePath ::
                                        (IsSVGPathElement self) =>
                                          self -> IO (Maybe SVGPathSegClosePath)
svgPathElementCreateSVGPathSegClosePath self
  = fmap SVGPathSegClosePath . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_close_path
         (unSVGPathElement (toSVGPathElement self)))
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoAbs\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_abs ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegMovetoAbs)
 
svgPathElementCreateSVGPathSegMovetoAbs ::
                                        (IsSVGPathElement self) =>
                                          self -> Float -> Float -> IO (Maybe SVGPathSegMovetoAbs)
svgPathElementCreateSVGPathSegMovetoAbs self x y
  = fmap SVGPathSegMovetoAbs . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_abs
         (unSVGPathElement (toSVGPathElement self))
         x
         y)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegMovetoRel\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_rel ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegMovetoRel)
 
svgPathElementCreateSVGPathSegMovetoRel ::
                                        (IsSVGPathElement self) =>
                                          self -> Float -> Float -> IO (Maybe SVGPathSegMovetoRel)
svgPathElementCreateSVGPathSegMovetoRel self x y
  = fmap SVGPathSegMovetoRel . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_moveto_rel
         (unSVGPathElement (toSVGPathElement self))
         x
         y)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoAbs\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_abs ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegLinetoAbs)
 
svgPathElementCreateSVGPathSegLinetoAbs ::
                                        (IsSVGPathElement self) =>
                                          self -> Float -> Float -> IO (Maybe SVGPathSegLinetoAbs)
svgPathElementCreateSVGPathSegLinetoAbs self x y
  = fmap SVGPathSegLinetoAbs . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_abs
         (unSVGPathElement (toSVGPathElement self))
         x
         y)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoRel\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_rel ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegLinetoRel)
 
svgPathElementCreateSVGPathSegLinetoRel ::
                                        (IsSVGPathElement self) =>
                                          self -> Float -> Float -> IO (Maybe SVGPathSegLinetoRel)
svgPathElementCreateSVGPathSegLinetoRel self x y
  = fmap SVGPathSegLinetoRel . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_rel
         (unSVGPathElement (toSVGPathElement self))
         x
         y)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicAbs\"]($2,\n$3, $4, $5, $6, $7)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_abs ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicAbs)
 
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
  = fmap SVGPathSegCurvetoCubicAbs . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_abs
         (unSVGPathElement (toSVGPathElement self))
         x
         y
         x1
         y1
         x2
         y2)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicRel\"]($2,\n$3, $4, $5, $6, $7)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_rel ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicRel)
 
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
  = fmap SVGPathSegCurvetoCubicRel . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_rel
         (unSVGPathElement (toSVGPathElement self))
         x
         y
         x1
         y1
         x2
         y2)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticAbs\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_abs
        ::
        JSRef SVGPathElement ->
          Float ->
            Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticAbs)
 
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
  = fmap SVGPathSegCurvetoQuadraticAbs . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_abs
         (unSVGPathElement (toSVGPathElement self))
         x
         y
         x1
         y1)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticRel\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_rel
        ::
        JSRef SVGPathElement ->
          Float ->
            Float -> Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticRel)
 
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
  = fmap SVGPathSegCurvetoQuadraticRel . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_rel
         (unSVGPathElement (toSVGPathElement self))
         x
         y
         x1
         y1)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcAbs\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_arc_abs ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Bool -> Bool -> IO (JSRef SVGPathSegArcAbs)
 
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
  = fmap SVGPathSegArcAbs . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_arc_abs
         (unSVGPathElement (toSVGPathElement self))
         x
         y
         r1
         r2
         angle
         largeArcFlag
         sweepFlag)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegArcRel\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_arc_rel ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float ->
                Float -> Float -> Bool -> Bool -> IO (JSRef SVGPathSegArcRel)
 
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
  = fmap SVGPathSegArcRel . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_arc_rel
         (unSVGPathElement (toSVGPathElement self))
         x
         y
         r1
         r2
         angle
         largeArcFlag
         sweepFlag)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalAbs\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_abs
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoHorizontalAbs)
 
svgPathElementCreateSVGPathSegLinetoHorizontalAbs ::
                                                  (IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        IO (Maybe SVGPathSegLinetoHorizontalAbs)
svgPathElementCreateSVGPathSegLinetoHorizontalAbs self x
  = fmap SVGPathSegLinetoHorizontalAbs . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_abs
         (unSVGPathElement (toSVGPathElement self))
         x)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoHorizontalRel\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_rel
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoHorizontalRel)
 
svgPathElementCreateSVGPathSegLinetoHorizontalRel ::
                                                  (IsSVGPathElement self) =>
                                                    self ->
                                                      Float ->
                                                        IO (Maybe SVGPathSegLinetoHorizontalRel)
svgPathElementCreateSVGPathSegLinetoHorizontalRel self x
  = fmap SVGPathSegLinetoHorizontalRel . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_horizontal_rel
         (unSVGPathElement (toSVGPathElement self))
         x)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalAbs\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_abs
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoVerticalAbs)
 
svgPathElementCreateSVGPathSegLinetoVerticalAbs ::
                                                (IsSVGPathElement self) =>
                                                  self ->
                                                    Float -> IO (Maybe SVGPathSegLinetoVerticalAbs)
svgPathElementCreateSVGPathSegLinetoVerticalAbs self y
  = fmap SVGPathSegLinetoVerticalAbs . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_abs
         (unSVGPathElement (toSVGPathElement self))
         y)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegLinetoVerticalRel\"]($2)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_rel
        ::
        JSRef SVGPathElement ->
          Float -> IO (JSRef SVGPathSegLinetoVerticalRel)
 
svgPathElementCreateSVGPathSegLinetoVerticalRel ::
                                                (IsSVGPathElement self) =>
                                                  self ->
                                                    Float -> IO (Maybe SVGPathSegLinetoVerticalRel)
svgPathElementCreateSVGPathSegLinetoVerticalRel self y
  = fmap SVGPathSegLinetoVerticalRel . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_lineto_vertical_rel
         (unSVGPathElement (toSVGPathElement self))
         y)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothAbs\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_abs
        ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicSmoothAbs)
 
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
  = fmap SVGPathSegCurvetoCubicSmoothAbs . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_abs
         (unSVGPathElement (toSVGPathElement self))
         x
         y
         x2
         y2)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoCubicSmoothRel\"]($2,\n$3, $4, $5)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_rel
        ::
        JSRef SVGPathElement ->
          Float ->
            Float ->
              Float -> Float -> IO (JSRef SVGPathSegCurvetoCubicSmoothRel)
 
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
  = fmap SVGPathSegCurvetoCubicSmoothRel . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_cubic_smooth_rel
         (unSVGPathElement (toSVGPathElement self))
         x
         y
         x2
         y2)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothAbs\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_abs
        ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticSmoothAbs)
 
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothAbs ::
                                                        (IsSVGPathElement self) =>
                                                          self ->
                                                            Float ->
                                                              Float ->
                                                                IO
                                                                  (Maybe
                                                                     SVGPathSegCurvetoQuadraticSmoothAbs)
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothAbs self x y
  = fmap SVGPathSegCurvetoQuadraticSmoothAbs . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_abs
         (unSVGPathElement (toSVGPathElement self))
         x
         y)
 
foreign import javascript unsafe
        "$1[\"createSVGPathSegCurvetoQuadraticSmoothRel\"]($2,\n$3)"
        ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_rel
        ::
        JSRef SVGPathElement ->
          Float -> Float -> IO (JSRef SVGPathSegCurvetoQuadraticSmoothRel)
 
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothRel ::
                                                        (IsSVGPathElement self) =>
                                                          self ->
                                                            Float ->
                                                              Float ->
                                                                IO
                                                                  (Maybe
                                                                     SVGPathSegCurvetoQuadraticSmoothRel)
svgPathElementCreateSVGPathSegCurvetoQuadraticSmoothRel self x y
  = fmap SVGPathSegCurvetoQuadraticSmoothRel . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_create_svg_path_seg_curveto_quadratic_smooth_rel
         (unSVGPathElement (toSVGPathElement self))
         x
         y)
 
foreign import javascript unsafe "$1[\"pathLength\"]"
        ghcjs_dom_svg_path_element_get_path_length ::
        JSRef SVGPathElement -> IO (JSRef SVGAnimatedNumber)
 
svgPathElementGetPathLength ::
                            (IsSVGPathElement self) => self -> IO (Maybe SVGAnimatedNumber)
svgPathElementGetPathLength self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_get_path_length
         (unSVGPathElement (toSVGPathElement self)))
 
foreign import javascript unsafe "$1[\"pathSegList\"]"
        ghcjs_dom_svg_path_element_get_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)
 
svgPathElementGetPathSegList ::
                             (IsSVGPathElement self) => self -> IO (Maybe SVGPathSegList)
svgPathElementGetPathSegList self
  = fmap SVGPathSegList . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_get_path_seg_list
         (unSVGPathElement (toSVGPathElement self)))
 
foreign import javascript unsafe "$1[\"normalizedPathSegList\"]"
        ghcjs_dom_svg_path_element_get_normalized_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)
 
svgPathElementGetNormalizedPathSegList ::
                                       (IsSVGPathElement self) => self -> IO (Maybe SVGPathSegList)
svgPathElementGetNormalizedPathSegList self
  = fmap SVGPathSegList . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_get_normalized_path_seg_list
         (unSVGPathElement (toSVGPathElement self)))
 
foreign import javascript unsafe "$1[\"animatedPathSegList\"]"
        ghcjs_dom_svg_path_element_get_animated_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)
 
svgPathElementGetAnimatedPathSegList ::
                                     (IsSVGPathElement self) => self -> IO (Maybe SVGPathSegList)
svgPathElementGetAnimatedPathSegList self
  = fmap SVGPathSegList . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_get_animated_path_seg_list
         (unSVGPathElement (toSVGPathElement self)))
 
foreign import javascript unsafe
        "$1[\"animatedNormalizedPathSegList\"]"
        ghcjs_dom_svg_path_element_get_animated_normalized_path_seg_list ::
        JSRef SVGPathElement -> IO (JSRef SVGPathSegList)
 
svgPathElementGetAnimatedNormalizedPathSegList ::
                                               (IsSVGPathElement self) =>
                                                 self -> IO (Maybe SVGPathSegList)
svgPathElementGetAnimatedNormalizedPathSegList self
  = fmap SVGPathSegList . maybeJSNull <$>
      (ghcjs_dom_svg_path_element_get_animated_normalized_path_seg_list
         (unSVGPathElement (toSVGPathElement self)))
#else
module GHCJS.DOM.SVGPathElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathElement
#endif
