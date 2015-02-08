{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CanvasRenderingContext2D
       (ghcjs_dom_canvas_rendering_context2_d_save,
        canvasRenderingContext2DSave,
        ghcjs_dom_canvas_rendering_context2_d_restore,
        canvasRenderingContext2DRestore,
        ghcjs_dom_canvas_rendering_context2_d_scale,
        canvasRenderingContext2DScale,
        ghcjs_dom_canvas_rendering_context2_d_rotate,
        canvasRenderingContext2DRotate,
        ghcjs_dom_canvas_rendering_context2_d_translate,
        canvasRenderingContext2DTranslate,
        ghcjs_dom_canvas_rendering_context2_d_transform,
        canvasRenderingContext2DTransform,
        ghcjs_dom_canvas_rendering_context2_d_set_transform,
        canvasRenderingContext2DSetTransform,
        ghcjs_dom_canvas_rendering_context2_d_create_linear_gradient,
        canvasRenderingContext2DCreateLinearGradient,
        ghcjs_dom_canvas_rendering_context2_d_create_radial_gradient,
        canvasRenderingContext2DCreateRadialGradient,
        ghcjs_dom_canvas_rendering_context2_d_set_line_dash,
        canvasRenderingContext2DSetLineDash,
        ghcjs_dom_canvas_rendering_context2_d_get_line_dash,
        canvasRenderingContext2DGetLineDash,
        ghcjs_dom_canvas_rendering_context2_d_clear_rect,
        canvasRenderingContext2DClearRect,
        ghcjs_dom_canvas_rendering_context2_d_fill_rect,
        canvasRenderingContext2DFillRect,
        ghcjs_dom_canvas_rendering_context2_d_begin_path,
        canvasRenderingContext2DBeginPath,
        ghcjs_dom_canvas_rendering_context2_d_close_path,
        canvasRenderingContext2DClosePath,
        ghcjs_dom_canvas_rendering_context2_d_move_to,
        canvasRenderingContext2DMoveTo,
        ghcjs_dom_canvas_rendering_context2_d_line_to,
        canvasRenderingContext2DLineTo,
        ghcjs_dom_canvas_rendering_context2_d_quadratic_curve_to,
        canvasRenderingContext2DQuadraticCurveTo,
        ghcjs_dom_canvas_rendering_context2_d_bezier_curve_to,
        canvasRenderingContext2DBezierCurveTo,
        ghcjs_dom_canvas_rendering_context2_d_arc_to,
        canvasRenderingContext2DArcTo,
        ghcjs_dom_canvas_rendering_context2_d_rect,
        canvasRenderingContext2DRect,
        ghcjs_dom_canvas_rendering_context2_d_arc,
        canvasRenderingContext2DArc,
        ghcjs_dom_canvas_rendering_context2_d_fillPath,
        canvasRenderingContext2DFillPath,
        ghcjs_dom_canvas_rendering_context2_d_strokePath,
        canvasRenderingContext2DStrokePath,
        ghcjs_dom_canvas_rendering_context2_d_clipPath,
        canvasRenderingContext2DClipPath,
        ghcjs_dom_canvas_rendering_context2_d_fill,
        canvasRenderingContext2DFill,
        ghcjs_dom_canvas_rendering_context2_d_stroke,
        canvasRenderingContext2DStroke,
        ghcjs_dom_canvas_rendering_context2_d_clip,
        canvasRenderingContext2DClip,
        ghcjs_dom_canvas_rendering_context2_d_is_point_in_pathPath,
        canvasRenderingContext2DIsPointInPathPath,
        ghcjs_dom_canvas_rendering_context2_d_is_point_in_strokePath,
        canvasRenderingContext2DIsPointInStrokePath,
        ghcjs_dom_canvas_rendering_context2_d_is_point_in_path,
        canvasRenderingContext2DIsPointInPath,
        ghcjs_dom_canvas_rendering_context2_d_is_point_in_stroke,
        canvasRenderingContext2DIsPointInStroke,
        ghcjs_dom_canvas_rendering_context2_d_measure_text,
        canvasRenderingContext2DMeasureText,
        ghcjs_dom_canvas_rendering_context2_d_set_alpha,
        canvasRenderingContext2DSetAlpha,
        ghcjs_dom_canvas_rendering_context2_d_set_composite_operation,
        canvasRenderingContext2DSetCompositeOperation,
        ghcjs_dom_canvas_rendering_context2_d_set_line_widthFunction,
        canvasRenderingContext2DSetLineWidthFunction,
        ghcjs_dom_canvas_rendering_context2_d_set_line_capFunction,
        canvasRenderingContext2DSetLineCapFunction,
        ghcjs_dom_canvas_rendering_context2_d_set_line_joinFunction,
        canvasRenderingContext2DSetLineJoinFunction,
        ghcjs_dom_canvas_rendering_context2_d_set_miter_limitFunction,
        canvasRenderingContext2DSetMiterLimitFunction,
        ghcjs_dom_canvas_rendering_context2_d_clear_shadow,
        canvasRenderingContext2DClearShadow,
        ghcjs_dom_canvas_rendering_context2_d_fill_text,
        canvasRenderingContext2DFillText,
        ghcjs_dom_canvas_rendering_context2_d_stroke_text,
        canvasRenderingContext2DStrokeText,
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_color,
        canvasRenderingContext2DSetStrokeColor,
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_colorGray,
        canvasRenderingContext2DSetStrokeColorGray,
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_colorRGB,
        canvasRenderingContext2DSetStrokeColorRGB,
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_colorCYMK,
        canvasRenderingContext2DSetStrokeColorCYMK,
        ghcjs_dom_canvas_rendering_context2_d_set_fill_color,
        canvasRenderingContext2DSetFillColor,
        ghcjs_dom_canvas_rendering_context2_d_set_fill_colorGray,
        canvasRenderingContext2DSetFillColorGray,
        ghcjs_dom_canvas_rendering_context2_d_set_fill_colorRGB,
        canvasRenderingContext2DSetFillColorRGB,
        ghcjs_dom_canvas_rendering_context2_d_set_fill_colorCYMK,
        canvasRenderingContext2DSetFillColorCYMK,
        ghcjs_dom_canvas_rendering_context2_d_stroke_rect,
        canvasRenderingContext2DStrokeRect,
        ghcjs_dom_canvas_rendering_context2_d_draw_image,
        canvasRenderingContext2DDrawImage,
        ghcjs_dom_canvas_rendering_context2_d_draw_imageScaled,
        canvasRenderingContext2DDrawImageScaled,
        ghcjs_dom_canvas_rendering_context2_d_draw_imagePart,
        canvasRenderingContext2DDrawImagePart,
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromCanvas,
        canvasRenderingContext2DDrawImageFromCanvas,
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromCanvasScaled,
        canvasRenderingContext2DDrawImageFromCanvasScaled,
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromCanvasPart,
        canvasRenderingContext2DDrawImageFromCanvasPart,
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromVideo,
        canvasRenderingContext2DDrawImageFromVideo,
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromVideoScaled,
        canvasRenderingContext2DDrawImageFromVideoScaled,
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromVideoPart,
        canvasRenderingContext2DDrawImageFromVideoPart,
        ghcjs_dom_canvas_rendering_context2_d_draw_image_from_rect,
        canvasRenderingContext2DDrawImageFromRect,
        ghcjs_dom_canvas_rendering_context2_d_set_shadow,
        canvasRenderingContext2DSetShadow,
        ghcjs_dom_canvas_rendering_context2_d_set_shadowGray,
        canvasRenderingContext2DSetShadowGray,
        ghcjs_dom_canvas_rendering_context2_d_set_shadowRGB,
        canvasRenderingContext2DSetShadowRGB,
        ghcjs_dom_canvas_rendering_context2_d_set_shadowCYMK,
        canvasRenderingContext2DSetShadowCYMK,
        ghcjs_dom_canvas_rendering_context2_d_put_image_data,
        canvasRenderingContext2DPutImageData,
        ghcjs_dom_canvas_rendering_context2_d_put_image_dataDirty,
        canvasRenderingContext2DPutImageDataDirty,
        ghcjs_dom_canvas_rendering_context2_d_webkit_put_image_data_hd,
        canvasRenderingContext2DWebkitPutImageDataHD,
        ghcjs_dom_canvas_rendering_context2_d_webkit_put_image_data_hdDirty,
        canvasRenderingContext2DWebkitPutImageDataHDDirty,
        ghcjs_dom_canvas_rendering_context2_d_create_patternFromCanvas,
        canvasRenderingContext2DCreatePatternFromCanvas,
        ghcjs_dom_canvas_rendering_context2_d_create_pattern,
        canvasRenderingContext2DCreatePattern,
        ghcjs_dom_canvas_rendering_context2_d_create_image_data,
        canvasRenderingContext2DCreateImageData,
        ghcjs_dom_canvas_rendering_context2_d_create_image_dataSize,
        canvasRenderingContext2DCreateImageDataSize,
        ghcjs_dom_canvas_rendering_context2_d_get_image_data,
        canvasRenderingContext2DGetImageData,
        ghcjs_dom_canvas_rendering_context2_d_webkit_get_image_data_hd,
        canvasRenderingContext2DWebkitGetImageDataHD,
        ghcjs_dom_canvas_rendering_context2_d_draw_focus_if_needed,
        canvasRenderingContext2DDrawFocusIfNeeded,
        ghcjs_dom_canvas_rendering_context2_d_draw_focus_if_neededPath,
        canvasRenderingContext2DDrawFocusIfNeededPath,
        ghcjs_dom_canvas_rendering_context2_d_set_global_alpha,
        canvasRenderingContext2DSetGlobalAlpha,
        ghcjs_dom_canvas_rendering_context2_d_get_global_alpha,
        canvasRenderingContext2DGetGlobalAlpha,
        ghcjs_dom_canvas_rendering_context2_d_set_global_composite_operation,
        canvasRenderingContext2DSetGlobalCompositeOperation,
        ghcjs_dom_canvas_rendering_context2_d_get_global_composite_operation,
        canvasRenderingContext2DGetGlobalCompositeOperation,
        ghcjs_dom_canvas_rendering_context2_d_set_line_width,
        canvasRenderingContext2DSetLineWidth,
        ghcjs_dom_canvas_rendering_context2_d_get_line_width,
        canvasRenderingContext2DGetLineWidth,
        ghcjs_dom_canvas_rendering_context2_d_set_line_cap,
        canvasRenderingContext2DSetLineCap,
        ghcjs_dom_canvas_rendering_context2_d_get_line_cap,
        canvasRenderingContext2DGetLineCap,
        ghcjs_dom_canvas_rendering_context2_d_set_line_join,
        canvasRenderingContext2DSetLineJoin,
        ghcjs_dom_canvas_rendering_context2_d_get_line_join,
        canvasRenderingContext2DGetLineJoin,
        ghcjs_dom_canvas_rendering_context2_d_set_miter_limit,
        canvasRenderingContext2DSetMiterLimit,
        ghcjs_dom_canvas_rendering_context2_d_get_miter_limit,
        canvasRenderingContext2DGetMiterLimit,
        ghcjs_dom_canvas_rendering_context2_d_set_shadow_offset_x,
        canvasRenderingContext2DSetShadowOffsetX,
        ghcjs_dom_canvas_rendering_context2_d_get_shadow_offset_x,
        canvasRenderingContext2DGetShadowOffsetX,
        ghcjs_dom_canvas_rendering_context2_d_set_shadow_offset_y,
        canvasRenderingContext2DSetShadowOffsetY,
        ghcjs_dom_canvas_rendering_context2_d_get_shadow_offset_y,
        canvasRenderingContext2DGetShadowOffsetY,
        ghcjs_dom_canvas_rendering_context2_d_set_shadow_blur,
        canvasRenderingContext2DSetShadowBlur,
        ghcjs_dom_canvas_rendering_context2_d_get_shadow_blur,
        canvasRenderingContext2DGetShadowBlur,
        ghcjs_dom_canvas_rendering_context2_d_set_shadow_color,
        canvasRenderingContext2DSetShadowColor,
        ghcjs_dom_canvas_rendering_context2_d_get_shadow_color,
        canvasRenderingContext2DGetShadowColor,
        ghcjs_dom_canvas_rendering_context2_d_set_line_dash_offset,
        canvasRenderingContext2DSetLineDashOffset,
        ghcjs_dom_canvas_rendering_context2_d_get_line_dash_offset,
        canvasRenderingContext2DGetLineDashOffset,
        ghcjs_dom_canvas_rendering_context2_d_set_webkit_line_dash,
        canvasRenderingContext2DSetWebkitLineDash,
        ghcjs_dom_canvas_rendering_context2_d_get_webkit_line_dash,
        canvasRenderingContext2DGetWebkitLineDash,
        ghcjs_dom_canvas_rendering_context2_d_set_webkit_line_dash_offset,
        canvasRenderingContext2DSetWebkitLineDashOffset,
        ghcjs_dom_canvas_rendering_context2_d_get_webkit_line_dash_offset,
        canvasRenderingContext2DGetWebkitLineDashOffset,
        ghcjs_dom_canvas_rendering_context2_d_set_font,
        canvasRenderingContext2DSetFont,
        ghcjs_dom_canvas_rendering_context2_d_get_font,
        canvasRenderingContext2DGetFont,
        ghcjs_dom_canvas_rendering_context2_d_set_text_align,
        canvasRenderingContext2DSetTextAlign,
        ghcjs_dom_canvas_rendering_context2_d_get_text_align,
        canvasRenderingContext2DGetTextAlign,
        ghcjs_dom_canvas_rendering_context2_d_set_text_baseline,
        canvasRenderingContext2DSetTextBaseline,
        ghcjs_dom_canvas_rendering_context2_d_get_text_baseline,
        canvasRenderingContext2DGetTextBaseline,
        ghcjs_dom_canvas_rendering_context2_d_set_direction,
        canvasRenderingContext2DSetDirection,
        ghcjs_dom_canvas_rendering_context2_d_get_direction,
        canvasRenderingContext2DGetDirection,
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_style,
        canvasRenderingContext2DSetStrokeStyle,
        ghcjs_dom_canvas_rendering_context2_d_get_stroke_style,
        canvasRenderingContext2DGetStrokeStyle,
        ghcjs_dom_canvas_rendering_context2_d_set_fill_style,
        canvasRenderingContext2DSetFillStyle,
        ghcjs_dom_canvas_rendering_context2_d_get_fill_style,
        canvasRenderingContext2DGetFillStyle,
        ghcjs_dom_canvas_rendering_context2_d_get_webkit_backing_store_pixel_ratio,
        canvasRenderingContext2DGetWebkitBackingStorePixelRatio,
        ghcjs_dom_canvas_rendering_context2_d_set_webkit_image_smoothing_enabled,
        canvasRenderingContext2DSetWebkitImageSmoothingEnabled,
        ghcjs_dom_canvas_rendering_context2_d_get_webkit_image_smoothing_enabled,
        canvasRenderingContext2DGetWebkitImageSmoothingEnabled,
        CanvasRenderingContext2D, IsCanvasRenderingContext2D,
        castToCanvasRenderingContext2D, gTypeCanvasRenderingContext2D,
        toCanvasRenderingContext2D)
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

 
foreign import javascript unsafe "$1[\"save\"]()"
        ghcjs_dom_canvas_rendering_context2_d_save ::
        JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.save Mozilla CanvasRenderingContext2D.save documentation> 
canvasRenderingContext2DSave ::
                             (MonadIO m, IsCanvasRenderingContext2D self) => self -> m ()
canvasRenderingContext2DSave self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_save
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"restore\"]()"
        ghcjs_dom_canvas_rendering_context2_d_restore ::
        JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.restore Mozilla CanvasRenderingContext2D.restore documentation> 
canvasRenderingContext2DRestore ::
                                (MonadIO m, IsCanvasRenderingContext2D self) => self -> m ()
canvasRenderingContext2DRestore self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_restore
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"scale\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_scale ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.scale Mozilla CanvasRenderingContext2D.scale documentation> 
canvasRenderingContext2DScale ::
                              (MonadIO m, IsCanvasRenderingContext2D self) =>
                                self -> Float -> Float -> m ()
canvasRenderingContext2DScale self sx sy
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_scale
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         sx
         sy)
 
foreign import javascript unsafe "$1[\"rotate\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_rotate ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.rotate Mozilla CanvasRenderingContext2D.rotate documentation> 
canvasRenderingContext2DRotate ::
                               (MonadIO m, IsCanvasRenderingContext2D self) =>
                                 self -> Float -> m ()
canvasRenderingContext2DRotate self angle
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_rotate
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         angle)
 
foreign import javascript unsafe "$1[\"translate\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_translate ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.translate Mozilla CanvasRenderingContext2D.translate documentation> 
canvasRenderingContext2DTranslate ::
                                  (MonadIO m, IsCanvasRenderingContext2D self) =>
                                    self -> Float -> Float -> m ()
canvasRenderingContext2DTranslate self tx ty
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_translate
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         tx
         ty)
 
foreign import javascript unsafe
        "$1[\"transform\"]($2, $3, $4, $5,\n$6, $7)"
        ghcjs_dom_canvas_rendering_context2_d_transform ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.transform Mozilla CanvasRenderingContext2D.transform documentation> 
canvasRenderingContext2DTransform ::
                                  (MonadIO m, IsCanvasRenderingContext2D self) =>
                                    self ->
                                      Float -> Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DTransform self m11 m12 m21 m22 dx dy
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_transform
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         m11
         m12
         m21
         m22
         dx
         dy)
 
foreign import javascript unsafe
        "$1[\"setTransform\"]($2, $3, $4,\n$5, $6, $7)"
        ghcjs_dom_canvas_rendering_context2_d_set_transform ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.transform Mozilla CanvasRenderingContext2D.transform documentation> 
canvasRenderingContext2DSetTransform ::
                                     (MonadIO m, IsCanvasRenderingContext2D self) =>
                                       self ->
                                         Float -> Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DSetTransform self m11 m12 m21 m22 dx dy
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_transform
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         m11
         m12
         m21
         m22
         dx
         dy)
 
foreign import javascript unsafe
        "$1[\"createLinearGradient\"]($2,\n$3, $4, $5)"
        ghcjs_dom_canvas_rendering_context2_d_create_linear_gradient ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO (JSRef CanvasGradient)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createLinearGradient Mozilla CanvasRenderingContext2D.createLinearGradient documentation> 
canvasRenderingContext2DCreateLinearGradient ::
                                             (MonadIO m, IsCanvasRenderingContext2D self) =>
                                               self ->
                                                 Float ->
                                                   Float ->
                                                     Float -> Float -> m (Maybe CanvasGradient)
canvasRenderingContext2DCreateLinearGradient self x0 y0 x1 y1
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_create_linear_gradient
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
          x0
          y0
          x1
          y1)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createRadialGradient\"]($2,\n$3, $4, $5, $6, $7)"
        ghcjs_dom_canvas_rendering_context2_d_create_radial_gradient ::
        JSRef CanvasRenderingContext2D ->
          Float ->
            Float ->
              Float -> Float -> Float -> Float -> IO (JSRef CanvasGradient)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createRadialGradient Mozilla CanvasRenderingContext2D.createRadialGradient documentation> 
canvasRenderingContext2DCreateRadialGradient ::
                                             (MonadIO m, IsCanvasRenderingContext2D self) =>
                                               self ->
                                                 Float ->
                                                   Float ->
                                                     Float ->
                                                       Float ->
                                                         Float -> Float -> m (Maybe CanvasGradient)
canvasRenderingContext2DCreateRadialGradient self x0 y0 r0 x1 y1 r1
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_create_radial_gradient
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
          x0
          y0
          r0
          x1
          y1
          r1)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setLineDash\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_set_line_dash ::
        JSRef CanvasRenderingContext2D -> JSRef [Float] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineDash Mozilla CanvasRenderingContext2D.lineDash documentation> 
canvasRenderingContext2DSetLineDash ::
                                    (MonadIO m, IsCanvasRenderingContext2D self) =>
                                      self -> [Float] -> m ()
canvasRenderingContext2DSetLineDash self dash
  = liftIO
      (toJSRef dash >>=
         \ dash' ->
           ghcjs_dom_canvas_rendering_context2_d_set_line_dash
             (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
             dash')
 
foreign import javascript unsafe "$1[\"getLineDash\"]()"
        ghcjs_dom_canvas_rendering_context2_d_get_line_dash ::
        JSRef CanvasRenderingContext2D -> IO (JSRef [Float])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineDash Mozilla CanvasRenderingContext2D.lineDash documentation> 
canvasRenderingContext2DGetLineDash ::
                                    (MonadIO m, IsCanvasRenderingContext2D self) =>
                                      self -> m [Float]
canvasRenderingContext2DGetLineDash self
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_get_line_dash
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "$1[\"clearRect\"]($2, $3, $4, $5)"
        ghcjs_dom_canvas_rendering_context2_d_clear_rect ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clearRect Mozilla CanvasRenderingContext2D.clearRect documentation> 
canvasRenderingContext2DClearRect ::
                                  (MonadIO m, IsCanvasRenderingContext2D self) =>
                                    self -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DClearRect self x y width height
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_clear_rect
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x
         y
         width
         height)
 
foreign import javascript unsafe "$1[\"fillRect\"]($2, $3, $4, $5)"
        ghcjs_dom_canvas_rendering_context2_d_fill_rect ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillRect Mozilla CanvasRenderingContext2D.fillRect documentation> 
canvasRenderingContext2DFillRect ::
                                 (MonadIO m, IsCanvasRenderingContext2D self) =>
                                   self -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DFillRect self x y width height
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_fill_rect
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x
         y
         width
         height)
 
foreign import javascript unsafe "$1[\"beginPath\"]()"
        ghcjs_dom_canvas_rendering_context2_d_begin_path ::
        JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.beginPath Mozilla CanvasRenderingContext2D.beginPath documentation> 
canvasRenderingContext2DBeginPath ::
                                  (MonadIO m, IsCanvasRenderingContext2D self) => self -> m ()
canvasRenderingContext2DBeginPath self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_begin_path
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"closePath\"]()"
        ghcjs_dom_canvas_rendering_context2_d_close_path ::
        JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.closePath Mozilla CanvasRenderingContext2D.closePath documentation> 
canvasRenderingContext2DClosePath ::
                                  (MonadIO m, IsCanvasRenderingContext2D self) => self -> m ()
canvasRenderingContext2DClosePath self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_close_path
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_move_to ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.moveTo Mozilla CanvasRenderingContext2D.moveTo documentation> 
canvasRenderingContext2DMoveTo ::
                               (MonadIO m, IsCanvasRenderingContext2D self) =>
                                 self -> Float -> Float -> m ()
canvasRenderingContext2DMoveTo self x y
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_move_to
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x
         y)
 
foreign import javascript unsafe "$1[\"lineTo\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_line_to ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineTo Mozilla CanvasRenderingContext2D.lineTo documentation> 
canvasRenderingContext2DLineTo ::
                               (MonadIO m, IsCanvasRenderingContext2D self) =>
                                 self -> Float -> Float -> m ()
canvasRenderingContext2DLineTo self x y
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_line_to
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x
         y)
 
foreign import javascript unsafe
        "$1[\"quadraticCurveTo\"]($2, $3,\n$4, $5)"
        ghcjs_dom_canvas_rendering_context2_d_quadratic_curve_to ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.quadraticCurveTo Mozilla CanvasRenderingContext2D.quadraticCurveTo documentation> 
canvasRenderingContext2DQuadraticCurveTo ::
                                         (MonadIO m, IsCanvasRenderingContext2D self) =>
                                           self -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DQuadraticCurveTo self cpx cpy x y
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_quadratic_curve_to
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         cpx
         cpy
         x
         y)
 
foreign import javascript unsafe
        "$1[\"bezierCurveTo\"]($2, $3, $4,\n$5, $6, $7)"
        ghcjs_dom_canvas_rendering_context2_d_bezier_curve_to ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.bezierCurveTo Mozilla CanvasRenderingContext2D.bezierCurveTo documentation> 
canvasRenderingContext2DBezierCurveTo ::
                                      (MonadIO m, IsCanvasRenderingContext2D self) =>
                                        self ->
                                          Float -> Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DBezierCurveTo self cp1x cp1y cp2x cp2y x y
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_bezier_curve_to
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         cp1x
         cp1y
         cp2x
         cp2y
         x
         y)
 
foreign import javascript unsafe
        "$1[\"arcTo\"]($2, $3, $4, $5, $6)"
        ghcjs_dom_canvas_rendering_context2_d_arc_to ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.arcTo Mozilla CanvasRenderingContext2D.arcTo documentation> 
canvasRenderingContext2DArcTo ::
                              (MonadIO m, IsCanvasRenderingContext2D self) =>
                                self -> Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DArcTo self x1 y1 x2 y2 radius
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_arc_to
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x1
         y1
         x2
         y2
         radius)
 
foreign import javascript unsafe "$1[\"rect\"]($2, $3, $4, $5)"
        ghcjs_dom_canvas_rendering_context2_d_rect ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.rect Mozilla CanvasRenderingContext2D.rect documentation> 
canvasRenderingContext2DRect ::
                             (MonadIO m, IsCanvasRenderingContext2D self) =>
                               self -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DRect self x y width height
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_rect
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x
         y
         width
         height)
 
foreign import javascript unsafe
        "$1[\"arc\"]($2, $3, $4, $5, $6,\n$7)"
        ghcjs_dom_canvas_rendering_context2_d_arc ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.arc Mozilla CanvasRenderingContext2D.arc documentation> 
canvasRenderingContext2DArc ::
                            (MonadIO m, IsCanvasRenderingContext2D self) =>
                              self -> Float -> Float -> Float -> Float -> Float -> Bool -> m ()
canvasRenderingContext2DArc self x y radius startAngle endAngle
  anticlockwise
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_arc
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x
         y
         radius
         startAngle
         endAngle
         anticlockwise)
 
foreign import javascript unsafe "$1[\"fill\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_fillPath ::
        JSRef CanvasRenderingContext2D ->
          JSRef DOMPath -> JSRef CanvasWindingRule -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillPath Mozilla CanvasRenderingContext2D.fillPath documentation> 
canvasRenderingContext2DFillPath ::
                                 (MonadIO m, IsCanvasRenderingContext2D self, IsDOMPath path) =>
                                   self -> Maybe path -> CanvasWindingRule -> m ()
canvasRenderingContext2DFillPath self path winding
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_fillPath
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unDOMPath . toDOMPath) path)
         (ptoJSRef winding))
 
foreign import javascript unsafe "$1[\"stroke\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_strokePath ::
        JSRef CanvasRenderingContext2D -> JSRef DOMPath -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokePath Mozilla CanvasRenderingContext2D.strokePath documentation> 
canvasRenderingContext2DStrokePath ::
                                   (MonadIO m, IsCanvasRenderingContext2D self, IsDOMPath path) =>
                                     self -> Maybe path -> m ()
canvasRenderingContext2DStrokePath self path
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_strokePath
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unDOMPath . toDOMPath) path))
 
foreign import javascript unsafe "$1[\"clip\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_clipPath ::
        JSRef CanvasRenderingContext2D ->
          JSRef DOMPath -> JSRef CanvasWindingRule -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clipPath Mozilla CanvasRenderingContext2D.clipPath documentation> 
canvasRenderingContext2DClipPath ::
                                 (MonadIO m, IsCanvasRenderingContext2D self, IsDOMPath path) =>
                                   self -> Maybe path -> CanvasWindingRule -> m ()
canvasRenderingContext2DClipPath self path winding
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_clipPath
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unDOMPath . toDOMPath) path)
         (ptoJSRef winding))
 
foreign import javascript unsafe "$1[\"fill\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_fill ::
        JSRef CanvasRenderingContext2D -> JSRef CanvasWindingRule -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fill Mozilla CanvasRenderingContext2D.fill documentation> 
canvasRenderingContext2DFill ::
                             (MonadIO m, IsCanvasRenderingContext2D self) =>
                               self -> CanvasWindingRule -> m ()
canvasRenderingContext2DFill self winding
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_fill
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (ptoJSRef winding))
 
foreign import javascript unsafe "$1[\"stroke\"]()"
        ghcjs_dom_canvas_rendering_context2_d_stroke ::
        JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.stroke Mozilla CanvasRenderingContext2D.stroke documentation> 
canvasRenderingContext2DStroke ::
                               (MonadIO m, IsCanvasRenderingContext2D self) => self -> m ()
canvasRenderingContext2DStroke self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_stroke
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"clip\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_clip ::
        JSRef CanvasRenderingContext2D -> JSRef CanvasWindingRule -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clip Mozilla CanvasRenderingContext2D.clip documentation> 
canvasRenderingContext2DClip ::
                             (MonadIO m, IsCanvasRenderingContext2D self) =>
                               self -> CanvasWindingRule -> m ()
canvasRenderingContext2DClip self winding
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_clip
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (ptoJSRef winding))
 
foreign import javascript unsafe
        "($1[\"isPointInPath\"]($2, $3, $4,\n$5) ? 1 : 0)"
        ghcjs_dom_canvas_rendering_context2_d_is_point_in_pathPath ::
        JSRef CanvasRenderingContext2D ->
          JSRef DOMPath ->
            Float -> Float -> JSRef CanvasWindingRule -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInPathPath Mozilla CanvasRenderingContext2D.isPointInPathPath documentation> 
canvasRenderingContext2DIsPointInPathPath ::
                                          (MonadIO m, IsCanvasRenderingContext2D self,
                                           IsDOMPath path) =>
                                            self ->
                                              Maybe path ->
                                                Float -> Float -> CanvasWindingRule -> m Bool
canvasRenderingContext2DIsPointInPathPath self path x y winding
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_is_point_in_pathPath
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unDOMPath . toDOMPath) path)
         x
         y
         (ptoJSRef winding))
 
foreign import javascript unsafe
        "($1[\"isPointInStroke\"]($2, $3,\n$4) ? 1 : 0)"
        ghcjs_dom_canvas_rendering_context2_d_is_point_in_strokePath ::
        JSRef CanvasRenderingContext2D ->
          JSRef DOMPath -> Float -> Float -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInStrokePath Mozilla CanvasRenderingContext2D.isPointInStrokePath documentation> 
canvasRenderingContext2DIsPointInStrokePath ::
                                            (MonadIO m, IsCanvasRenderingContext2D self,
                                             IsDOMPath path) =>
                                              self -> Maybe path -> Float -> Float -> m Bool
canvasRenderingContext2DIsPointInStrokePath self path x y
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_is_point_in_strokePath
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unDOMPath . toDOMPath) path)
         x
         y)
 
foreign import javascript unsafe
        "($1[\"isPointInPath\"]($2, $3,\n$4) ? 1 : 0)"
        ghcjs_dom_canvas_rendering_context2_d_is_point_in_path ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> JSRef CanvasWindingRule -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInPath Mozilla CanvasRenderingContext2D.isPointInPath documentation> 
canvasRenderingContext2DIsPointInPath ::
                                      (MonadIO m, IsCanvasRenderingContext2D self) =>
                                        self -> Float -> Float -> CanvasWindingRule -> m Bool
canvasRenderingContext2DIsPointInPath self x y winding
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_is_point_in_path
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x
         y
         (ptoJSRef winding))
 
foreign import javascript unsafe
        "($1[\"isPointInStroke\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_canvas_rendering_context2_d_is_point_in_stroke ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInStroke Mozilla CanvasRenderingContext2D.isPointInStroke documentation> 
canvasRenderingContext2DIsPointInStroke ::
                                        (MonadIO m, IsCanvasRenderingContext2D self) =>
                                          self -> Float -> Float -> m Bool
canvasRenderingContext2DIsPointInStroke self x y
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_is_point_in_stroke
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x
         y)
 
foreign import javascript unsafe "$1[\"measureText\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_measure_text ::
        JSRef CanvasRenderingContext2D ->
          JSString -> IO (JSRef TextMetrics)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.measureText Mozilla CanvasRenderingContext2D.measureText documentation> 
canvasRenderingContext2DMeasureText ::
                                    (MonadIO m, IsCanvasRenderingContext2D self, ToJSString text) =>
                                      self -> text -> m (Maybe TextMetrics)
canvasRenderingContext2DMeasureText self text
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_measure_text
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
          (toJSString text))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setAlpha\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_set_alpha ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.alpha Mozilla CanvasRenderingContext2D.alpha documentation> 
canvasRenderingContext2DSetAlpha ::
                                 (MonadIO m, IsCanvasRenderingContext2D self) =>
                                   self -> Float -> m ()
canvasRenderingContext2DSetAlpha self alpha
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_alpha
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         alpha)
 
foreign import javascript unsafe
        "$1[\"setCompositeOperation\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_set_composite_operation ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.compositeOperation Mozilla CanvasRenderingContext2D.compositeOperation documentation> 
canvasRenderingContext2DSetCompositeOperation ::
                                              (MonadIO m, IsCanvasRenderingContext2D self,
                                               ToJSString compositeOperation) =>
                                                self -> compositeOperation -> m ()
canvasRenderingContext2DSetCompositeOperation self
  compositeOperation
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_composite_operation
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString compositeOperation))
 
foreign import javascript unsafe "$1[\"setLineWidth\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_set_line_widthFunction ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineWidthFunction Mozilla CanvasRenderingContext2D.lineWidthFunction documentation> 
canvasRenderingContext2DSetLineWidthFunction ::
                                             (MonadIO m, IsCanvasRenderingContext2D self) =>
                                               self -> Float -> m ()
canvasRenderingContext2DSetLineWidthFunction self width
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_line_widthFunction
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         width)
 
foreign import javascript unsafe "$1[\"setLineCap\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_set_line_capFunction ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineCapFunction Mozilla CanvasRenderingContext2D.lineCapFunction documentation> 
canvasRenderingContext2DSetLineCapFunction ::
                                           (MonadIO m, IsCanvasRenderingContext2D self,
                                            ToJSString cap) =>
                                             self -> cap -> m ()
canvasRenderingContext2DSetLineCapFunction self cap
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_line_capFunction
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString cap))
 
foreign import javascript unsafe "$1[\"setLineJoin\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_set_line_joinFunction ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineJoinFunction Mozilla CanvasRenderingContext2D.lineJoinFunction documentation> 
canvasRenderingContext2DSetLineJoinFunction ::
                                            (MonadIO m, IsCanvasRenderingContext2D self,
                                             ToJSString join) =>
                                              self -> join -> m ()
canvasRenderingContext2DSetLineJoinFunction self join
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_line_joinFunction
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString join))
 
foreign import javascript unsafe "$1[\"setMiterLimit\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_set_miter_limitFunction ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.miterLimitFunction Mozilla CanvasRenderingContext2D.miterLimitFunction documentation> 
canvasRenderingContext2DSetMiterLimitFunction ::
                                              (MonadIO m, IsCanvasRenderingContext2D self) =>
                                                self -> Float -> m ()
canvasRenderingContext2DSetMiterLimitFunction self limit
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_miter_limitFunction
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         limit)
 
foreign import javascript unsafe "$1[\"clearShadow\"]()"
        ghcjs_dom_canvas_rendering_context2_d_clear_shadow ::
        JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clearShadow Mozilla CanvasRenderingContext2D.clearShadow documentation> 
canvasRenderingContext2DClearShadow ::
                                    (MonadIO m, IsCanvasRenderingContext2D self) => self -> m ()
canvasRenderingContext2DClearShadow self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_clear_shadow
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"fillText\"]($2, $3, $4, $5)"
        ghcjs_dom_canvas_rendering_context2_d_fill_text ::
        JSRef CanvasRenderingContext2D ->
          JSString -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillText Mozilla CanvasRenderingContext2D.fillText documentation> 
canvasRenderingContext2DFillText ::
                                 (MonadIO m, IsCanvasRenderingContext2D self, ToJSString text) =>
                                   self -> text -> Float -> Float -> Float -> m ()
canvasRenderingContext2DFillText self text x y maxWidth
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_fill_text
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString text)
         x
         y
         maxWidth)
 
foreign import javascript unsafe
        "$1[\"strokeText\"]($2, $3, $4, $5)"
        ghcjs_dom_canvas_rendering_context2_d_stroke_text ::
        JSRef CanvasRenderingContext2D ->
          JSString -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeText Mozilla CanvasRenderingContext2D.strokeText documentation> 
canvasRenderingContext2DStrokeText ::
                                   (MonadIO m, IsCanvasRenderingContext2D self, ToJSString text) =>
                                     self -> text -> Float -> Float -> Float -> m ()
canvasRenderingContext2DStrokeText self text x y maxWidth
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_stroke_text
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString text)
         x
         y
         maxWidth)
 
foreign import javascript unsafe "$1[\"setStrokeColor\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_color ::
        JSRef CanvasRenderingContext2D -> JSString -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeColor Mozilla CanvasRenderingContext2D.strokeColor documentation> 
canvasRenderingContext2DSetStrokeColor ::
                                       (MonadIO m, IsCanvasRenderingContext2D self,
                                        ToJSString color) =>
                                         self -> color -> Float -> m ()
canvasRenderingContext2DSetStrokeColor self color alpha
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_stroke_color
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString color)
         alpha)
 
foreign import javascript unsafe "$1[\"setStrokeColor\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_colorGray ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeColorGray Mozilla CanvasRenderingContext2D.strokeColorGray documentation> 
canvasRenderingContext2DSetStrokeColorGray ::
                                           (MonadIO m, IsCanvasRenderingContext2D self) =>
                                             self -> Float -> Float -> m ()
canvasRenderingContext2DSetStrokeColorGray self grayLevel alpha
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_stroke_colorGray
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         grayLevel
         alpha)
 
foreign import javascript unsafe
        "$1[\"setStrokeColor\"]($2, $3, $4,\n$5)"
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_colorRGB ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeColorRGB Mozilla CanvasRenderingContext2D.strokeColorRGB documentation> 
canvasRenderingContext2DSetStrokeColorRGB ::
                                          (MonadIO m, IsCanvasRenderingContext2D self) =>
                                            self -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DSetStrokeColorRGB self r g b a
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_stroke_colorRGB
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         r
         g
         b
         a)
 
foreign import javascript unsafe
        "$1[\"setStrokeColor\"]($2, $3, $4,\n$5, $6)"
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_colorCYMK ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeColorCYMK Mozilla CanvasRenderingContext2D.strokeColorCYMK documentation> 
canvasRenderingContext2DSetStrokeColorCYMK ::
                                           (MonadIO m, IsCanvasRenderingContext2D self) =>
                                             self ->
                                               Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DSetStrokeColorCYMK self c m y k a
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_stroke_colorCYMK
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         c
         m
         y
         k
         a)
 
foreign import javascript unsafe "$1[\"setFillColor\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_set_fill_color ::
        JSRef CanvasRenderingContext2D -> JSString -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillColor Mozilla CanvasRenderingContext2D.fillColor documentation> 
canvasRenderingContext2DSetFillColor ::
                                     (MonadIO m, IsCanvasRenderingContext2D self,
                                      ToJSString color) =>
                                       self -> color -> Float -> m ()
canvasRenderingContext2DSetFillColor self color alpha
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_fill_color
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString color)
         alpha)
 
foreign import javascript unsafe "$1[\"setFillColor\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_set_fill_colorGray ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillColorGray Mozilla CanvasRenderingContext2D.fillColorGray documentation> 
canvasRenderingContext2DSetFillColorGray ::
                                         (MonadIO m, IsCanvasRenderingContext2D self) =>
                                           self -> Float -> Float -> m ()
canvasRenderingContext2DSetFillColorGray self grayLevel alpha
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_fill_colorGray
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         grayLevel
         alpha)
 
foreign import javascript unsafe
        "$1[\"setFillColor\"]($2, $3, $4,\n$5)"
        ghcjs_dom_canvas_rendering_context2_d_set_fill_colorRGB ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillColorRGB Mozilla CanvasRenderingContext2D.fillColorRGB documentation> 
canvasRenderingContext2DSetFillColorRGB ::
                                        (MonadIO m, IsCanvasRenderingContext2D self) =>
                                          self -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DSetFillColorRGB self r g b a
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_fill_colorRGB
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         r
         g
         b
         a)
 
foreign import javascript unsafe
        "$1[\"setFillColor\"]($2, $3, $4,\n$5, $6)"
        ghcjs_dom_canvas_rendering_context2_d_set_fill_colorCYMK ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillColorCYMK Mozilla CanvasRenderingContext2D.fillColorCYMK documentation> 
canvasRenderingContext2DSetFillColorCYMK ::
                                         (MonadIO m, IsCanvasRenderingContext2D self) =>
                                           self -> Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DSetFillColorCYMK self c m y k a
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_fill_colorCYMK
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         c
         m
         y
         k
         a)
 
foreign import javascript unsafe
        "$1[\"strokeRect\"]($2, $3, $4, $5)"
        ghcjs_dom_canvas_rendering_context2_d_stroke_rect ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeRect Mozilla CanvasRenderingContext2D.strokeRect documentation> 
canvasRenderingContext2DStrokeRect ::
                                   (MonadIO m, IsCanvasRenderingContext2D self) =>
                                     self -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DStrokeRect self x y width height
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_stroke_rect
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         x
         y
         width
         height)
 
foreign import javascript unsafe "$1[\"drawImage\"]($2, $3, $4)"
        ghcjs_dom_canvas_rendering_context2_d_draw_image ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
canvasRenderingContext2DDrawImage ::
                                  (MonadIO m, IsCanvasRenderingContext2D self,
                                   IsHTMLImageElement image) =>
                                    self -> Maybe image -> Float -> Float -> m ()
canvasRenderingContext2DDrawImage self image x y
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_image
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLImageElement . toHTMLImageElement) image)
         x
         y)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6)"
        ghcjs_dom_canvas_rendering_context2_d_draw_imageScaled ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageScaled Mozilla CanvasRenderingContext2D.drawImageScaled documentation> 
canvasRenderingContext2DDrawImageScaled ::
                                        (MonadIO m, IsCanvasRenderingContext2D self,
                                         IsHTMLImageElement image) =>
                                          self ->
                                            Maybe image -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DDrawImageScaled self image x y width height
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_imageScaled
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLImageElement . toHTMLImageElement) image)
         x
         y
         width
         height)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6, $7, $8, $9, $10)"
        ghcjs_dom_canvas_rendering_context2_d_draw_imagePart ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement ->
            Float ->
              Float ->
                Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImagePart Mozilla CanvasRenderingContext2D.drawImagePart documentation> 
canvasRenderingContext2DDrawImagePart ::
                                      (MonadIO m, IsCanvasRenderingContext2D self,
                                       IsHTMLImageElement image) =>
                                        self ->
                                          Maybe image ->
                                            Float ->
                                              Float ->
                                                Float ->
                                                  Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DDrawImagePart self image sx sy sw sh dx dy
  dw dh
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_imagePart
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLImageElement . toHTMLImageElement) image)
         sx
         sy
         sw
         sh
         dx
         dy
         dw
         dh)
 
foreign import javascript unsafe "$1[\"drawImage\"]($2, $3, $4)"
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromCanvas ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLCanvasElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageFromCanvas Mozilla CanvasRenderingContext2D.drawImageFromCanvas documentation> 
canvasRenderingContext2DDrawImageFromCanvas ::
                                            (MonadIO m, IsCanvasRenderingContext2D self,
                                             IsHTMLCanvasElement canvas) =>
                                              self -> Maybe canvas -> Float -> Float -> m ()
canvasRenderingContext2DDrawImageFromCanvas self canvas x y
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_imageFromCanvas
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLCanvasElement . toHTMLCanvasElement) canvas)
         x
         y)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6)"
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromCanvasScaled ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLCanvasElement ->
            Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageFromCanvasScaled Mozilla CanvasRenderingContext2D.drawImageFromCanvasScaled documentation> 
canvasRenderingContext2DDrawImageFromCanvasScaled ::
                                                  (MonadIO m, IsCanvasRenderingContext2D self,
                                                   IsHTMLCanvasElement canvas) =>
                                                    self ->
                                                      Maybe canvas ->
                                                        Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DDrawImageFromCanvasScaled self canvas x y
  width height
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_imageFromCanvasScaled
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLCanvasElement . toHTMLCanvasElement) canvas)
         x
         y
         width
         height)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6, $7, $8, $9, $10)"
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromCanvasPart ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLCanvasElement ->
            Float ->
              Float ->
                Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageFromCanvasPart Mozilla CanvasRenderingContext2D.drawImageFromCanvasPart documentation> 
canvasRenderingContext2DDrawImageFromCanvasPart ::
                                                (MonadIO m, IsCanvasRenderingContext2D self,
                                                 IsHTMLCanvasElement canvas) =>
                                                  self ->
                                                    Maybe canvas ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              Float ->
                                                                Float -> Float -> Float -> m ()
canvasRenderingContext2DDrawImageFromCanvasPart self canvas sx sy
  sw sh dx dy dw dh
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_imageFromCanvasPart
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLCanvasElement . toHTMLCanvasElement) canvas)
         sx
         sy
         sw
         sh
         dx
         dy
         dw
         dh)
 
foreign import javascript unsafe "$1[\"drawImage\"]($2, $3, $4)"
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromVideo ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLVideoElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageFromVideo Mozilla CanvasRenderingContext2D.drawImageFromVideo documentation> 
canvasRenderingContext2DDrawImageFromVideo ::
                                           (MonadIO m, IsCanvasRenderingContext2D self,
                                            IsHTMLVideoElement video) =>
                                             self -> Maybe video -> Float -> Float -> m ()
canvasRenderingContext2DDrawImageFromVideo self video x y
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_imageFromVideo
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLVideoElement . toHTMLVideoElement) video)
         x
         y)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6)"
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromVideoScaled ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLVideoElement -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageFromVideoScaled Mozilla CanvasRenderingContext2D.drawImageFromVideoScaled documentation> 
canvasRenderingContext2DDrawImageFromVideoScaled ::
                                                 (MonadIO m, IsCanvasRenderingContext2D self,
                                                  IsHTMLVideoElement video) =>
                                                   self ->
                                                     Maybe video ->
                                                       Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DDrawImageFromVideoScaled self video x y
  width height
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_imageFromVideoScaled
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLVideoElement . toHTMLVideoElement) video)
         x
         y
         width
         height)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6, $7, $8, $9, $10)"
        ghcjs_dom_canvas_rendering_context2_d_draw_imageFromVideoPart ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLVideoElement ->
            Float ->
              Float ->
                Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageFromVideoPart Mozilla CanvasRenderingContext2D.drawImageFromVideoPart documentation> 
canvasRenderingContext2DDrawImageFromVideoPart ::
                                               (MonadIO m, IsCanvasRenderingContext2D self,
                                                IsHTMLVideoElement video) =>
                                                 self ->
                                                   Maybe video ->
                                                     Float ->
                                                       Float ->
                                                         Float ->
                                                           Float ->
                                                             Float ->
                                                               Float -> Float -> Float -> m ()
canvasRenderingContext2DDrawImageFromVideoPart self video sx sy sw
  sh dx dy dw dh
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_imageFromVideoPart
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLVideoElement . toHTMLVideoElement) video)
         sx
         sy
         sw
         sh
         dx
         dy
         dw
         dh)
 
foreign import javascript unsafe
        "$1[\"drawImageFromRect\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10,\n$11)"
        ghcjs_dom_canvas_rendering_context2_d_draw_image_from_rect ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement ->
            Float ->
              Float ->
                Float ->
                  Float -> Float -> Float -> Float -> Float -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageFromRect Mozilla CanvasRenderingContext2D.drawImageFromRect documentation> 
canvasRenderingContext2DDrawImageFromRect ::
                                          (MonadIO m, IsCanvasRenderingContext2D self,
                                           IsHTMLImageElement image,
                                           ToJSString compositeOperation) =>
                                            self ->
                                              Maybe image ->
                                                Float ->
                                                  Float ->
                                                    Float ->
                                                      Float ->
                                                        Float ->
                                                          Float ->
                                                            Float ->
                                                              Float -> compositeOperation -> m ()
canvasRenderingContext2DDrawImageFromRect self image sx sy sw sh dx
  dy dw dh compositeOperation
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_image_from_rect
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unHTMLImageElement . toHTMLImageElement) image)
         sx
         sy
         sw
         sh
         dx
         dy
         dw
         dh
         (toJSString compositeOperation))
 
foreign import javascript unsafe
        "$1[\"setShadow\"]($2, $3, $4, $5,\n$6)"
        ghcjs_dom_canvas_rendering_context2_d_set_shadow ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> JSString -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadow Mozilla CanvasRenderingContext2D.shadow documentation> 
canvasRenderingContext2DSetShadow ::
                                  (MonadIO m, IsCanvasRenderingContext2D self, ToJSString color) =>
                                    self -> Float -> Float -> Float -> color -> Float -> m ()
canvasRenderingContext2DSetShadow self width height blur color
  alpha
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_shadow
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         width
         height
         blur
         (toJSString color)
         alpha)
 
foreign import javascript unsafe
        "$1[\"setShadow\"]($2, $3, $4, $5,\n$6)"
        ghcjs_dom_canvas_rendering_context2_d_set_shadowGray ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowGray Mozilla CanvasRenderingContext2D.shadowGray documentation> 
canvasRenderingContext2DSetShadowGray ::
                                      (MonadIO m, IsCanvasRenderingContext2D self) =>
                                        self -> Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DSetShadowGray self width height blur
  grayLevel alpha
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_shadowGray
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         width
         height
         blur
         grayLevel
         alpha)
 
foreign import javascript unsafe
        "$1[\"setShadow\"]($2, $3, $4, $5,\n$6, $7, $8)"
        ghcjs_dom_canvas_rendering_context2_d_set_shadowRGB ::
        JSRef CanvasRenderingContext2D ->
          Float ->
            Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowRGB Mozilla CanvasRenderingContext2D.shadowRGB documentation> 
canvasRenderingContext2DSetShadowRGB ::
                                     (MonadIO m, IsCanvasRenderingContext2D self) =>
                                       self ->
                                         Float ->
                                           Float ->
                                             Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DSetShadowRGB self width height blur r g b a
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_shadowRGB
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         width
         height
         blur
         r
         g
         b
         a)
 
foreign import javascript unsafe
        "$1[\"setShadow\"]($2, $3, $4, $5,\n$6, $7, $8, $9)"
        ghcjs_dom_canvas_rendering_context2_d_set_shadowCYMK ::
        JSRef CanvasRenderingContext2D ->
          Float ->
            Float ->
              Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowCYMK Mozilla CanvasRenderingContext2D.shadowCYMK documentation> 
canvasRenderingContext2DSetShadowCYMK ::
                                      (MonadIO m, IsCanvasRenderingContext2D self) =>
                                        self ->
                                          Float ->
                                            Float ->
                                              Float ->
                                                Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DSetShadowCYMK self width height blur c m y
  k a
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_shadowCYMK
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         width
         height
         blur
         c
         m
         y
         k
         a)
 
foreign import javascript unsafe "$1[\"putImageData\"]($2, $3, $4)"
        ghcjs_dom_canvas_rendering_context2_d_put_image_data ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.putImageData Mozilla CanvasRenderingContext2D.putImageData documentation> 
canvasRenderingContext2DPutImageData ::
                                     (MonadIO m, IsCanvasRenderingContext2D self,
                                      IsImageData imagedata) =>
                                       self -> Maybe imagedata -> Float -> Float -> m ()
canvasRenderingContext2DPutImageData self imagedata dx dy
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_put_image_data
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unImageData . toImageData) imagedata)
         dx
         dy)
 
foreign import javascript unsafe
        "$1[\"putImageData\"]($2, $3, $4,\n$5, $6, $7, $8)"
        ghcjs_dom_canvas_rendering_context2_d_put_image_dataDirty ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData ->
            Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.putImageDataDirty Mozilla CanvasRenderingContext2D.putImageDataDirty documentation> 
canvasRenderingContext2DPutImageDataDirty ::
                                          (MonadIO m, IsCanvasRenderingContext2D self,
                                           IsImageData imagedata) =>
                                            self ->
                                              Maybe imagedata ->
                                                Float ->
                                                  Float -> Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DPutImageDataDirty self imagedata dx dy
  dirtyX dirtyY dirtyWidth dirtyHeight
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_put_image_dataDirty
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unImageData . toImageData) imagedata)
         dx
         dy
         dirtyX
         dirtyY
         dirtyWidth
         dirtyHeight)
 
foreign import javascript unsafe
        "$1[\"webkitPutImageDataHD\"]($2,\n$3, $4)"
        ghcjs_dom_canvas_rendering_context2_d_webkit_put_image_data_hd ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitPutImageDataHD Mozilla CanvasRenderingContext2D.webkitPutImageDataHD documentation> 
canvasRenderingContext2DWebkitPutImageDataHD ::
                                             (MonadIO m, IsCanvasRenderingContext2D self,
                                              IsImageData imagedata) =>
                                               self -> Maybe imagedata -> Float -> Float -> m ()
canvasRenderingContext2DWebkitPutImageDataHD self imagedata dx dy
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_webkit_put_image_data_hd
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unImageData . toImageData) imagedata)
         dx
         dy)
 
foreign import javascript unsafe
        "$1[\"webkitPutImageDataHD\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_canvas_rendering_context2_d_webkit_put_image_data_hdDirty
        ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData ->
            Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitPutImageDataHDDirty Mozilla CanvasRenderingContext2D.webkitPutImageDataHDDirty documentation> 
canvasRenderingContext2DWebkitPutImageDataHDDirty ::
                                                  (MonadIO m, IsCanvasRenderingContext2D self,
                                                   IsImageData imagedata) =>
                                                    self ->
                                                      Maybe imagedata ->
                                                        Float ->
                                                          Float ->
                                                            Float -> Float -> Float -> Float -> m ()
canvasRenderingContext2DWebkitPutImageDataHDDirty self imagedata dx
  dy dirtyX dirtyY dirtyWidth dirtyHeight
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_webkit_put_image_data_hdDirty
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unImageData . toImageData) imagedata)
         dx
         dy
         dirtyX
         dirtyY
         dirtyWidth
         dirtyHeight)
 
foreign import javascript unsafe "$1[\"createPattern\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_create_patternFromCanvas ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLCanvasElement -> JSString -> IO (JSRef CanvasPattern)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createPatternFromCanvas Mozilla CanvasRenderingContext2D.createPatternFromCanvas documentation> 
canvasRenderingContext2DCreatePatternFromCanvas ::
                                                (MonadIO m, IsCanvasRenderingContext2D self,
                                                 IsHTMLCanvasElement canvas,
                                                 ToJSString repetitionType) =>
                                                  self ->
                                                    Maybe canvas ->
                                                      repetitionType -> m (Maybe CanvasPattern)
canvasRenderingContext2DCreatePatternFromCanvas self canvas
  repetitionType
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_create_patternFromCanvas
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
          (maybe jsNull (unHTMLCanvasElement . toHTMLCanvasElement) canvas)
          (toJSString repetitionType))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createPattern\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_create_pattern ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement -> JSString -> IO (JSRef CanvasPattern)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createPattern Mozilla CanvasRenderingContext2D.createPattern documentation> 
canvasRenderingContext2DCreatePattern ::
                                      (MonadIO m, IsCanvasRenderingContext2D self,
                                       IsHTMLImageElement image, ToJSString repetitionType) =>
                                        self ->
                                          Maybe image -> repetitionType -> m (Maybe CanvasPattern)
canvasRenderingContext2DCreatePattern self image repetitionType
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_create_pattern
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
          (maybe jsNull (unHTMLImageElement . toHTMLImageElement) image)
          (toJSString repetitionType))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createImageData\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_create_image_data ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createImageData Mozilla CanvasRenderingContext2D.createImageData documentation> 
canvasRenderingContext2DCreateImageData ::
                                        (MonadIO m, IsCanvasRenderingContext2D self,
                                         IsImageData imagedata) =>
                                          self -> Maybe imagedata -> m (Maybe ImageData)
canvasRenderingContext2DCreateImageData self imagedata
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_create_image_data
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
          (maybe jsNull (unImageData . toImageData) imagedata))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createImageData\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_create_image_dataSize ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createImageDataSize Mozilla CanvasRenderingContext2D.createImageDataSize documentation> 
canvasRenderingContext2DCreateImageDataSize ::
                                            (MonadIO m, IsCanvasRenderingContext2D self) =>
                                              self -> Float -> Float -> m (Maybe ImageData)
canvasRenderingContext2DCreateImageDataSize self sw sh
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_create_image_dataSize
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
          sw
          sh)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getImageData\"]($2, $3, $4,\n$5)"
        ghcjs_dom_canvas_rendering_context2_d_get_image_data ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.imageData Mozilla CanvasRenderingContext2D.imageData documentation> 
canvasRenderingContext2DGetImageData ::
                                     (MonadIO m, IsCanvasRenderingContext2D self) =>
                                       self ->
                                         Float -> Float -> Float -> Float -> m (Maybe ImageData)
canvasRenderingContext2DGetImageData self sx sy sw sh
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_get_image_data
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
          sx
          sy
          sw
          sh)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitGetImageDataHD\"]($2,\n$3, $4, $5)"
        ghcjs_dom_canvas_rendering_context2_d_webkit_get_image_data_hd ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitGetImageDataHD Mozilla CanvasRenderingContext2D.webkitGetImageDataHD documentation> 
canvasRenderingContext2DWebkitGetImageDataHD ::
                                             (MonadIO m, IsCanvasRenderingContext2D self) =>
                                               self ->
                                                 Float ->
                                                   Float -> Float -> Float -> m (Maybe ImageData)
canvasRenderingContext2DWebkitGetImageDataHD self sx sy sw sh
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_webkit_get_image_data_hd
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
          sx
          sy
          sw
          sh)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"drawFocusIfNeeded\"]($2)"
        ghcjs_dom_canvas_rendering_context2_d_draw_focus_if_needed ::
        JSRef CanvasRenderingContext2D -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawFocusIfNeeded Mozilla CanvasRenderingContext2D.drawFocusIfNeeded documentation> 
canvasRenderingContext2DDrawFocusIfNeeded ::
                                          (MonadIO m, IsCanvasRenderingContext2D self,
                                           IsElement element) =>
                                            self -> Maybe element -> m ()
canvasRenderingContext2DDrawFocusIfNeeded self element
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_focus_if_needed
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "$1[\"drawFocusIfNeeded\"]($2, $3)"
        ghcjs_dom_canvas_rendering_context2_d_draw_focus_if_neededPath ::
        JSRef CanvasRenderingContext2D ->
          JSRef DOMPath -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawFocusIfNeededPath Mozilla CanvasRenderingContext2D.drawFocusIfNeededPath documentation> 
canvasRenderingContext2DDrawFocusIfNeededPath ::
                                              (MonadIO m, IsCanvasRenderingContext2D self,
                                               IsDOMPath path, IsElement element) =>
                                                self -> Maybe path -> Maybe element -> m ()
canvasRenderingContext2DDrawFocusIfNeededPath self path element
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_draw_focus_if_neededPath
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unDOMPath . toDOMPath) path)
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe "$1[\"globalAlpha\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_global_alpha ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalAlpha Mozilla CanvasRenderingContext2D.globalAlpha documentation> 
canvasRenderingContext2DSetGlobalAlpha ::
                                       (MonadIO m, IsCanvasRenderingContext2D self) =>
                                         self -> Float -> m ()
canvasRenderingContext2DSetGlobalAlpha self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_global_alpha
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         val)
 
foreign import javascript unsafe "$1[\"globalAlpha\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_global_alpha ::
        JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalAlpha Mozilla CanvasRenderingContext2D.globalAlpha documentation> 
canvasRenderingContext2DGetGlobalAlpha ::
                                       (MonadIO m, IsCanvasRenderingContext2D self) =>
                                         self -> m Float
canvasRenderingContext2DGetGlobalAlpha self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_global_alpha
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe
        "$1[\"globalCompositeOperation\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_global_composite_operation
        :: JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalCompositeOperation Mozilla CanvasRenderingContext2D.globalCompositeOperation documentation> 
canvasRenderingContext2DSetGlobalCompositeOperation ::
                                                    (MonadIO m, IsCanvasRenderingContext2D self,
                                                     ToJSString val) =>
                                                      self -> val -> m ()
canvasRenderingContext2DSetGlobalCompositeOperation self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_global_composite_operation
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"globalCompositeOperation\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_global_composite_operation
        :: JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalCompositeOperation Mozilla CanvasRenderingContext2D.globalCompositeOperation documentation> 
canvasRenderingContext2DGetGlobalCompositeOperation ::
                                                    (MonadIO m, IsCanvasRenderingContext2D self,
                                                     FromJSString result) =>
                                                      self -> m result
canvasRenderingContext2DGetGlobalCompositeOperation self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_canvas_rendering_context2_d_get_global_composite_operation
            (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))))
 
foreign import javascript unsafe "$1[\"lineWidth\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_line_width ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineWidth Mozilla CanvasRenderingContext2D.lineWidth documentation> 
canvasRenderingContext2DSetLineWidth ::
                                     (MonadIO m, IsCanvasRenderingContext2D self) =>
                                       self -> Float -> m ()
canvasRenderingContext2DSetLineWidth self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_line_width
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         val)
 
foreign import javascript unsafe "$1[\"lineWidth\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_line_width ::
        JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineWidth Mozilla CanvasRenderingContext2D.lineWidth documentation> 
canvasRenderingContext2DGetLineWidth ::
                                     (MonadIO m, IsCanvasRenderingContext2D self) => self -> m Float
canvasRenderingContext2DGetLineWidth self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_line_width
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"lineCap\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_line_cap ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineCap Mozilla CanvasRenderingContext2D.lineCap documentation> 
canvasRenderingContext2DSetLineCap ::
                                   (MonadIO m, IsCanvasRenderingContext2D self, ToJSString val) =>
                                     self -> val -> m ()
canvasRenderingContext2DSetLineCap self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_line_cap
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"lineCap\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_line_cap ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineCap Mozilla CanvasRenderingContext2D.lineCap documentation> 
canvasRenderingContext2DGetLineCap ::
                                   (MonadIO m, IsCanvasRenderingContext2D self,
                                    FromJSString result) =>
                                     self -> m result
canvasRenderingContext2DGetLineCap self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_canvas_rendering_context2_d_get_line_cap
            (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))))
 
foreign import javascript unsafe "$1[\"lineJoin\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_line_join ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineJoin Mozilla CanvasRenderingContext2D.lineJoin documentation> 
canvasRenderingContext2DSetLineJoin ::
                                    (MonadIO m, IsCanvasRenderingContext2D self, ToJSString val) =>
                                      self -> val -> m ()
canvasRenderingContext2DSetLineJoin self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_line_join
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"lineJoin\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_line_join ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineJoin Mozilla CanvasRenderingContext2D.lineJoin documentation> 
canvasRenderingContext2DGetLineJoin ::
                                    (MonadIO m, IsCanvasRenderingContext2D self,
                                     FromJSString result) =>
                                      self -> m result
canvasRenderingContext2DGetLineJoin self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_canvas_rendering_context2_d_get_line_join
            (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))))
 
foreign import javascript unsafe "$1[\"miterLimit\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_miter_limit ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.miterLimit Mozilla CanvasRenderingContext2D.miterLimit documentation> 
canvasRenderingContext2DSetMiterLimit ::
                                      (MonadIO m, IsCanvasRenderingContext2D self) =>
                                        self -> Float -> m ()
canvasRenderingContext2DSetMiterLimit self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_miter_limit
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         val)
 
foreign import javascript unsafe "$1[\"miterLimit\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_miter_limit ::
        JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.miterLimit Mozilla CanvasRenderingContext2D.miterLimit documentation> 
canvasRenderingContext2DGetMiterLimit ::
                                      (MonadIO m, IsCanvasRenderingContext2D self) =>
                                        self -> m Float
canvasRenderingContext2DGetMiterLimit self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_miter_limit
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"shadowOffsetX\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_shadow_offset_x ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetX Mozilla CanvasRenderingContext2D.shadowOffsetX documentation> 
canvasRenderingContext2DSetShadowOffsetX ::
                                         (MonadIO m, IsCanvasRenderingContext2D self) =>
                                           self -> Float -> m ()
canvasRenderingContext2DSetShadowOffsetX self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_shadow_offset_x
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         val)
 
foreign import javascript unsafe "$1[\"shadowOffsetX\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_shadow_offset_x ::
        JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetX Mozilla CanvasRenderingContext2D.shadowOffsetX documentation> 
canvasRenderingContext2DGetShadowOffsetX ::
                                         (MonadIO m, IsCanvasRenderingContext2D self) =>
                                           self -> m Float
canvasRenderingContext2DGetShadowOffsetX self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_shadow_offset_x
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"shadowOffsetY\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_shadow_offset_y ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetY Mozilla CanvasRenderingContext2D.shadowOffsetY documentation> 
canvasRenderingContext2DSetShadowOffsetY ::
                                         (MonadIO m, IsCanvasRenderingContext2D self) =>
                                           self -> Float -> m ()
canvasRenderingContext2DSetShadowOffsetY self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_shadow_offset_y
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         val)
 
foreign import javascript unsafe "$1[\"shadowOffsetY\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_shadow_offset_y ::
        JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetY Mozilla CanvasRenderingContext2D.shadowOffsetY documentation> 
canvasRenderingContext2DGetShadowOffsetY ::
                                         (MonadIO m, IsCanvasRenderingContext2D self) =>
                                           self -> m Float
canvasRenderingContext2DGetShadowOffsetY self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_shadow_offset_y
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"shadowBlur\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_shadow_blur ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowBlur Mozilla CanvasRenderingContext2D.shadowBlur documentation> 
canvasRenderingContext2DSetShadowBlur ::
                                      (MonadIO m, IsCanvasRenderingContext2D self) =>
                                        self -> Float -> m ()
canvasRenderingContext2DSetShadowBlur self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_shadow_blur
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         val)
 
foreign import javascript unsafe "$1[\"shadowBlur\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_shadow_blur ::
        JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowBlur Mozilla CanvasRenderingContext2D.shadowBlur documentation> 
canvasRenderingContext2DGetShadowBlur ::
                                      (MonadIO m, IsCanvasRenderingContext2D self) =>
                                        self -> m Float
canvasRenderingContext2DGetShadowBlur self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_shadow_blur
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"shadowColor\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_shadow_color ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowColor Mozilla CanvasRenderingContext2D.shadowColor documentation> 
canvasRenderingContext2DSetShadowColor ::
                                       (MonadIO m, IsCanvasRenderingContext2D self,
                                        ToJSString val) =>
                                         self -> val -> m ()
canvasRenderingContext2DSetShadowColor self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_shadow_color
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"shadowColor\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_shadow_color ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowColor Mozilla CanvasRenderingContext2D.shadowColor documentation> 
canvasRenderingContext2DGetShadowColor ::
                                       (MonadIO m, IsCanvasRenderingContext2D self,
                                        FromJSString result) =>
                                         self -> m result
canvasRenderingContext2DGetShadowColor self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_canvas_rendering_context2_d_get_shadow_color
            (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))))
 
foreign import javascript unsafe "$1[\"lineDashOffset\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_line_dash_offset ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineDashOffset Mozilla CanvasRenderingContext2D.lineDashOffset documentation> 
canvasRenderingContext2DSetLineDashOffset ::
                                          (MonadIO m, IsCanvasRenderingContext2D self) =>
                                            self -> Float -> m ()
canvasRenderingContext2DSetLineDashOffset self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_line_dash_offset
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         val)
 
foreign import javascript unsafe "$1[\"lineDashOffset\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_line_dash_offset ::
        JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineDashOffset Mozilla CanvasRenderingContext2D.lineDashOffset documentation> 
canvasRenderingContext2DGetLineDashOffset ::
                                          (MonadIO m, IsCanvasRenderingContext2D self) =>
                                            self -> m Float
canvasRenderingContext2DGetLineDashOffset self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_line_dash_offset
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"webkitLineDash\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_webkit_line_dash ::
        JSRef CanvasRenderingContext2D -> JSRef Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDash Mozilla CanvasRenderingContext2D.webkitLineDash documentation> 
canvasRenderingContext2DSetWebkitLineDash ::
                                          (MonadIO m, IsCanvasRenderingContext2D self,
                                           IsArray val) =>
                                            self -> Maybe val -> m ()
canvasRenderingContext2DSetWebkitLineDash self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_webkit_line_dash
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unArray . toArray) val))
 
foreign import javascript unsafe "$1[\"webkitLineDash\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_webkit_line_dash ::
        JSRef CanvasRenderingContext2D -> IO (JSRef Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDash Mozilla CanvasRenderingContext2D.webkitLineDash documentation> 
canvasRenderingContext2DGetWebkitLineDash ::
                                          (MonadIO m, IsCanvasRenderingContext2D self) =>
                                            self -> m (Maybe Array)
canvasRenderingContext2DGetWebkitLineDash self
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_get_webkit_line_dash
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitLineDashOffset\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_webkit_line_dash_offset
        :: JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDashOffset Mozilla CanvasRenderingContext2D.webkitLineDashOffset documentation> 
canvasRenderingContext2DSetWebkitLineDashOffset ::
                                                (MonadIO m, IsCanvasRenderingContext2D self) =>
                                                  self -> Float -> m ()
canvasRenderingContext2DSetWebkitLineDashOffset self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_webkit_line_dash_offset
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         val)
 
foreign import javascript unsafe "$1[\"webkitLineDashOffset\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_webkit_line_dash_offset
        :: JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDashOffset Mozilla CanvasRenderingContext2D.webkitLineDashOffset documentation> 
canvasRenderingContext2DGetWebkitLineDashOffset ::
                                                (MonadIO m, IsCanvasRenderingContext2D self) =>
                                                  self -> m Float
canvasRenderingContext2DGetWebkitLineDashOffset self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_webkit_line_dash_offset
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"font\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_font ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.font Mozilla CanvasRenderingContext2D.font documentation> 
canvasRenderingContext2DSetFont ::
                                (MonadIO m, IsCanvasRenderingContext2D self, ToJSString val) =>
                                  self -> val -> m ()
canvasRenderingContext2DSetFont self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_font
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"font\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_font ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.font Mozilla CanvasRenderingContext2D.font documentation> 
canvasRenderingContext2DGetFont ::
                                (MonadIO m, IsCanvasRenderingContext2D self,
                                 FromJSString result) =>
                                  self -> m result
canvasRenderingContext2DGetFont self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_canvas_rendering_context2_d_get_font
            (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))))
 
foreign import javascript unsafe "$1[\"textAlign\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_text_align ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textAlign Mozilla CanvasRenderingContext2D.textAlign documentation> 
canvasRenderingContext2DSetTextAlign ::
                                     (MonadIO m, IsCanvasRenderingContext2D self, ToJSString val) =>
                                       self -> val -> m ()
canvasRenderingContext2DSetTextAlign self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_text_align
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"textAlign\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_text_align ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textAlign Mozilla CanvasRenderingContext2D.textAlign documentation> 
canvasRenderingContext2DGetTextAlign ::
                                     (MonadIO m, IsCanvasRenderingContext2D self,
                                      FromJSString result) =>
                                       self -> m result
canvasRenderingContext2DGetTextAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_canvas_rendering_context2_d_get_text_align
            (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))))
 
foreign import javascript unsafe "$1[\"textBaseline\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_text_baseline ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textBaseline Mozilla CanvasRenderingContext2D.textBaseline documentation> 
canvasRenderingContext2DSetTextBaseline ::
                                        (MonadIO m, IsCanvasRenderingContext2D self,
                                         ToJSString val) =>
                                          self -> val -> m ()
canvasRenderingContext2DSetTextBaseline self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_text_baseline
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"textBaseline\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_text_baseline ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textBaseline Mozilla CanvasRenderingContext2D.textBaseline documentation> 
canvasRenderingContext2DGetTextBaseline ::
                                        (MonadIO m, IsCanvasRenderingContext2D self,
                                         FromJSString result) =>
                                          self -> m result
canvasRenderingContext2DGetTextBaseline self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_canvas_rendering_context2_d_get_text_baseline
            (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))))
 
foreign import javascript unsafe "$1[\"direction\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_direction ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.direction Mozilla CanvasRenderingContext2D.direction documentation> 
canvasRenderingContext2DSetDirection ::
                                     (MonadIO m, IsCanvasRenderingContext2D self, ToJSString val) =>
                                       self -> val -> m ()
canvasRenderingContext2DSetDirection self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_direction
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"direction\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_direction ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.direction Mozilla CanvasRenderingContext2D.direction documentation> 
canvasRenderingContext2DGetDirection ::
                                     (MonadIO m, IsCanvasRenderingContext2D self,
                                      FromJSString result) =>
                                       self -> m result
canvasRenderingContext2DGetDirection self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_canvas_rendering_context2_d_get_direction
            (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))))
 
foreign import javascript unsafe "$1[\"strokeStyle\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_stroke_style ::
        JSRef CanvasRenderingContext2D -> JSRef CanvasStyle -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeStyle Mozilla CanvasRenderingContext2D.strokeStyle documentation> 
canvasRenderingContext2DSetStrokeStyle ::
                                       (MonadIO m, IsCanvasRenderingContext2D self,
                                        IsCanvasStyle val) =>
                                         self -> Maybe val -> m ()
canvasRenderingContext2DSetStrokeStyle self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_stroke_style
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unCanvasStyle . toCanvasStyle) val))
 
foreign import javascript unsafe "$1[\"strokeStyle\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_stroke_style ::
        JSRef CanvasRenderingContext2D -> IO (JSRef CanvasStyle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeStyle Mozilla CanvasRenderingContext2D.strokeStyle documentation> 
canvasRenderingContext2DGetStrokeStyle ::
                                       (MonadIO m, IsCanvasRenderingContext2D self) =>
                                         self -> m (Maybe CanvasStyle)
canvasRenderingContext2DGetStrokeStyle self
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_get_stroke_style
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"fillStyle\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_fill_style ::
        JSRef CanvasRenderingContext2D -> JSRef CanvasStyle -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillStyle Mozilla CanvasRenderingContext2D.fillStyle documentation> 
canvasRenderingContext2DSetFillStyle ::
                                     (MonadIO m, IsCanvasRenderingContext2D self,
                                      IsCanvasStyle val) =>
                                       self -> Maybe val -> m ()
canvasRenderingContext2DSetFillStyle self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_fill_style
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         (maybe jsNull (unCanvasStyle . toCanvasStyle) val))
 
foreign import javascript unsafe "$1[\"fillStyle\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_fill_style ::
        JSRef CanvasRenderingContext2D -> IO (JSRef CanvasStyle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillStyle Mozilla CanvasRenderingContext2D.fillStyle documentation> 
canvasRenderingContext2DGetFillStyle ::
                                     (MonadIO m, IsCanvasRenderingContext2D self) =>
                                       self -> m (Maybe CanvasStyle)
canvasRenderingContext2DGetFillStyle self
  = liftIO
      ((ghcjs_dom_canvas_rendering_context2_d_get_fill_style
          (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitBackingStorePixelRatio\"]"
        ghcjs_dom_canvas_rendering_context2_d_get_webkit_backing_store_pixel_ratio
        :: JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitBackingStorePixelRatio Mozilla CanvasRenderingContext2D.webkitBackingStorePixelRatio documentation> 
canvasRenderingContext2DGetWebkitBackingStorePixelRatio ::
                                                        (MonadIO m,
                                                         IsCanvasRenderingContext2D self) =>
                                                          self -> m Float
canvasRenderingContext2DGetWebkitBackingStorePixelRatio self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_webkit_backing_store_pixel_ratio
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
 
foreign import javascript unsafe
        "$1[\"webkitImageSmoothingEnabled\"] = $2;"
        ghcjs_dom_canvas_rendering_context2_d_set_webkit_image_smoothing_enabled
        :: JSRef CanvasRenderingContext2D -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitImageSmoothingEnabled Mozilla CanvasRenderingContext2D.webkitImageSmoothingEnabled documentation> 
canvasRenderingContext2DSetWebkitImageSmoothingEnabled ::
                                                       (MonadIO m,
                                                        IsCanvasRenderingContext2D self) =>
                                                         self -> Bool -> m ()
canvasRenderingContext2DSetWebkitImageSmoothingEnabled self val
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_set_webkit_image_smoothing_enabled
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self))
         val)
 
foreign import javascript unsafe
        "($1[\"webkitImageSmoothingEnabled\"] ? 1 : 0)"
        ghcjs_dom_canvas_rendering_context2_d_get_webkit_image_smoothing_enabled
        :: JSRef CanvasRenderingContext2D -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitImageSmoothingEnabled Mozilla CanvasRenderingContext2D.webkitImageSmoothingEnabled documentation> 
canvasRenderingContext2DGetWebkitImageSmoothingEnabled ::
                                                       (MonadIO m,
                                                        IsCanvasRenderingContext2D self) =>
                                                         self -> m Bool
canvasRenderingContext2DGetWebkitImageSmoothingEnabled self
  = liftIO
      (ghcjs_dom_canvas_rendering_context2_d_get_webkit_image_smoothing_enabled
         (unCanvasRenderingContext2D (toCanvasRenderingContext2D self)))
#else
module GHCJS.DOM.CanvasRenderingContext2D (
  ) where
#endif
