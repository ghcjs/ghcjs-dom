{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CanvasRenderingContext2D
       (js_save, save, js_restore, restore, js_scale, scale, js_rotate,
        rotate, js_translate, translate, js_transform, transform,
        js_setTransform, setTransform, js_createLinearGradient,
        createLinearGradient, js_createRadialGradient,
        createRadialGradient, js_setLineDash, setLineDash, js_getLineDash,
        getLineDash, js_clearRect, clearRect, js_fillRect, fillRect,
        js_beginPath, beginPath, js_closePath, closePath, js_moveTo,
        moveTo, js_lineTo, lineTo, js_quadraticCurveTo, quadraticCurveTo,
        js_bezierCurveTo, bezierCurveTo, js_arcTo, arcTo, js_rect, rect,
        js_arc, arc, js_fillPath, fillPath, js_strokePath, strokePath,
        js_clipPath, clipPath, js_fill, fill, js_stroke, stroke, js_clip,
        clip, js_isPointInPathPath, isPointInPathPath,
        js_isPointInStrokePath, isPointInStrokePath, js_isPointInPath,
        isPointInPath, js_isPointInStroke, isPointInStroke, js_measureText,
        measureText, js_setAlpha, setAlpha, js_setCompositeOperation,
        setCompositeOperation, js_setLineWidthFunction,
        setLineWidthFunction, js_setLineCapFunction, setLineCapFunction,
        js_setLineJoinFunction, setLineJoinFunction,
        js_setMiterLimitFunction, setMiterLimitFunction, js_clearShadow,
        clearShadow, js_fillText, fillText, js_strokeText, strokeText,
        js_setStrokeColor, setStrokeColor, js_setStrokeColorGray,
        setStrokeColorGray, js_setStrokeColorRGB, setStrokeColorRGB,
        js_setStrokeColorCYMK, setStrokeColorCYMK, js_setFillColor,
        setFillColor, js_setFillColorGray, setFillColorGray,
        js_setFillColorRGB, setFillColorRGB, js_setFillColorCYMK,
        setFillColorCYMK, js_strokeRect, strokeRect, js_drawImage,
        drawImage, js_drawImageScaled, drawImageScaled, js_drawImagePart,
        drawImagePart, js_drawImageFromCanvas, drawImageFromCanvas,
        js_drawImageFromCanvasScaled, drawImageFromCanvasScaled,
        js_drawImageFromCanvasPart, drawImageFromCanvasPart,
        js_drawImageFromVideo, drawImageFromVideo,
        js_drawImageFromVideoScaled, drawImageFromVideoScaled,
        js_drawImageFromVideoPart, drawImageFromVideoPart,
        js_drawImageFromRect, drawImageFromRect, js_setShadow, setShadow,
        js_setShadowGray, setShadowGray, js_setShadowRGB, setShadowRGB,
        js_setShadowCYMK, setShadowCYMK, js_putImageData, putImageData,
        js_putImageDataDirty, putImageDataDirty, js_webkitPutImageDataHD,
        webkitPutImageDataHD, js_webkitPutImageDataHDDirty,
        webkitPutImageDataHDDirty, js_createPatternFromCanvas,
        createPatternFromCanvas, js_createPattern, createPattern,
        js_createImageData, createImageData, js_createImageDataSize,
        createImageDataSize, js_getImageData, getImageData,
        js_webkitGetImageDataHD, webkitGetImageDataHD,
        js_drawFocusIfNeeded, drawFocusIfNeeded, js_drawFocusIfNeededPath,
        drawFocusIfNeededPath, js_setGlobalAlpha, setGlobalAlpha,
        js_getGlobalAlpha, getGlobalAlpha, js_setGlobalCompositeOperation,
        setGlobalCompositeOperation, js_getGlobalCompositeOperation,
        getGlobalCompositeOperation, js_setLineWidth, setLineWidth,
        js_getLineWidth, getLineWidth, js_setLineCap, setLineCap,
        js_getLineCap, getLineCap, js_setLineJoin, setLineJoin,
        js_getLineJoin, getLineJoin, js_setMiterLimit, setMiterLimit,
        js_getMiterLimit, getMiterLimit, js_setShadowOffsetX,
        setShadowOffsetX, js_getShadowOffsetX, getShadowOffsetX,
        js_setShadowOffsetY, setShadowOffsetY, js_getShadowOffsetY,
        getShadowOffsetY, js_setShadowBlur, setShadowBlur,
        js_getShadowBlur, getShadowBlur, js_setShadowColor, setShadowColor,
        js_getShadowColor, getShadowColor, js_setLineDashOffset,
        setLineDashOffset, js_getLineDashOffset, getLineDashOffset,
        js_setWebkitLineDash, setWebkitLineDash, js_getWebkitLineDash,
        getWebkitLineDash, js_setWebkitLineDashOffset,
        setWebkitLineDashOffset, js_getWebkitLineDashOffset,
        getWebkitLineDashOffset, js_setFont, setFont, js_getFont, getFont,
        js_setTextAlign, setTextAlign, js_getTextAlign, getTextAlign,
        js_setTextBaseline, setTextBaseline, js_getTextBaseline,
        getTextBaseline, js_setDirection, setDirection, js_getDirection,
        getDirection, js_setStrokeStyle, setStrokeStyle, js_getStrokeStyle,
        getStrokeStyle, js_setFillStyle, setFillStyle, js_getFillStyle,
        getFillStyle, js_getWebkitBackingStorePixelRatio,
        getWebkitBackingStorePixelRatio, js_setWebkitImageSmoothingEnabled,
        setWebkitImageSmoothingEnabled, js_getWebkitImageSmoothingEnabled,
        getWebkitImageSmoothingEnabled, CanvasRenderingContext2D,
        castToCanvasRenderingContext2D, gTypeCanvasRenderingContext2D)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"save\"]()" js_save ::
        JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.save Mozilla CanvasRenderingContext2D.save documentation> 
save :: (MonadIO m) => CanvasRenderingContext2D -> m ()
save self = liftIO (js_save (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"restore\"]()" js_restore ::
        JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.restore Mozilla CanvasRenderingContext2D.restore documentation> 
restore :: (MonadIO m) => CanvasRenderingContext2D -> m ()
restore self
  = liftIO (js_restore (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"scale\"]($2, $3)" js_scale
        :: JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.scale Mozilla CanvasRenderingContext2D.scale documentation> 
scale ::
      (MonadIO m) => CanvasRenderingContext2D -> Float -> Float -> m ()
scale self sx sy
  = liftIO (js_scale (unCanvasRenderingContext2D self) sx sy)
 
foreign import javascript unsafe "$1[\"rotate\"]($2)" js_rotate ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.rotate Mozilla CanvasRenderingContext2D.rotate documentation> 
rotate :: (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
rotate self angle
  = liftIO (js_rotate (unCanvasRenderingContext2D self) angle)
 
foreign import javascript unsafe "$1[\"translate\"]($2, $3)"
        js_translate ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.translate Mozilla CanvasRenderingContext2D.translate documentation> 
translate ::
          (MonadIO m) => CanvasRenderingContext2D -> Float -> Float -> m ()
translate self tx ty
  = liftIO (js_translate (unCanvasRenderingContext2D self) tx ty)
 
foreign import javascript unsafe
        "$1[\"transform\"]($2, $3, $4, $5,\n$6, $7)" js_transform ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.transform Mozilla CanvasRenderingContext2D.transform documentation> 
transform ::
          (MonadIO m) =>
            CanvasRenderingContext2D ->
              Float -> Float -> Float -> Float -> Float -> Float -> m ()
transform self m11 m12 m21 m22 dx dy
  = liftIO
      (js_transform (unCanvasRenderingContext2D self) m11 m12 m21 m22 dx
         dy)
 
foreign import javascript unsafe
        "$1[\"setTransform\"]($2, $3, $4,\n$5, $6, $7)" js_setTransform ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setTransform Mozilla CanvasRenderingContext2D.setTransform documentation> 
setTransform ::
             (MonadIO m) =>
               CanvasRenderingContext2D ->
                 Float -> Float -> Float -> Float -> Float -> Float -> m ()
setTransform self m11 m12 m21 m22 dx dy
  = liftIO
      (js_setTransform (unCanvasRenderingContext2D self) m11 m12 m21 m22
         dx
         dy)
 
foreign import javascript unsafe
        "$1[\"createLinearGradient\"]($2,\n$3, $4, $5)"
        js_createLinearGradient ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO (JSRef CanvasGradient)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createLinearGradient Mozilla CanvasRenderingContext2D.createLinearGradient documentation> 
createLinearGradient ::
                     (MonadIO m) =>
                       CanvasRenderingContext2D ->
                         Float -> Float -> Float -> Float -> m (Maybe CanvasGradient)
createLinearGradient self x0 y0 x1 y1
  = liftIO
      ((js_createLinearGradient (unCanvasRenderingContext2D self) x0 y0
          x1
          y1)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createRadialGradient\"]($2,\n$3, $4, $5, $6, $7)"
        js_createRadialGradient ::
        JSRef CanvasRenderingContext2D ->
          Float ->
            Float ->
              Float -> Float -> Float -> Float -> IO (JSRef CanvasGradient)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createRadialGradient Mozilla CanvasRenderingContext2D.createRadialGradient documentation> 
createRadialGradient ::
                     (MonadIO m) =>
                       CanvasRenderingContext2D ->
                         Float ->
                           Float ->
                             Float -> Float -> Float -> Float -> m (Maybe CanvasGradient)
createRadialGradient self x0 y0 r0 x1 y1 r1
  = liftIO
      ((js_createRadialGradient (unCanvasRenderingContext2D self) x0 y0
          r0
          x1
          y1
          r1)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setLineDash\"]($2)"
        js_setLineDash ::
        JSRef CanvasRenderingContext2D -> JSRef [Float] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setLineDash Mozilla CanvasRenderingContext2D.setLineDash documentation> 
setLineDash ::
            (MonadIO m) => CanvasRenderingContext2D -> [Float] -> m ()
setLineDash self dash
  = liftIO
      (toJSRef dash >>=
         \ dash' -> js_setLineDash (unCanvasRenderingContext2D self) dash')
 
foreign import javascript unsafe "$1[\"getLineDash\"]()"
        js_getLineDash ::
        JSRef CanvasRenderingContext2D -> IO (JSRef [Float])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.getLineDash Mozilla CanvasRenderingContext2D.getLineDash documentation> 
getLineDash :: (MonadIO m) => CanvasRenderingContext2D -> m [Float]
getLineDash self
  = liftIO
      ((js_getLineDash (unCanvasRenderingContext2D self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe
        "$1[\"clearRect\"]($2, $3, $4, $5)" js_clearRect ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clearRect Mozilla CanvasRenderingContext2D.clearRect documentation> 
clearRect ::
          (MonadIO m) =>
            CanvasRenderingContext2D ->
              Float -> Float -> Float -> Float -> m ()
clearRect self x y width height
  = liftIO
      (js_clearRect (unCanvasRenderingContext2D self) x y width height)
 
foreign import javascript unsafe "$1[\"fillRect\"]($2, $3, $4, $5)"
        js_fillRect ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillRect Mozilla CanvasRenderingContext2D.fillRect documentation> 
fillRect ::
         (MonadIO m) =>
           CanvasRenderingContext2D ->
             Float -> Float -> Float -> Float -> m ()
fillRect self x y width height
  = liftIO
      (js_fillRect (unCanvasRenderingContext2D self) x y width height)
 
foreign import javascript unsafe "$1[\"beginPath\"]()" js_beginPath
        :: JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.beginPath Mozilla CanvasRenderingContext2D.beginPath documentation> 
beginPath :: (MonadIO m) => CanvasRenderingContext2D -> m ()
beginPath self
  = liftIO (js_beginPath (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"closePath\"]()" js_closePath
        :: JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.closePath Mozilla CanvasRenderingContext2D.closePath documentation> 
closePath :: (MonadIO m) => CanvasRenderingContext2D -> m ()
closePath self
  = liftIO (js_closePath (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)" js_moveTo
        :: JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.moveTo Mozilla CanvasRenderingContext2D.moveTo documentation> 
moveTo ::
       (MonadIO m) => CanvasRenderingContext2D -> Float -> Float -> m ()
moveTo self x y
  = liftIO (js_moveTo (unCanvasRenderingContext2D self) x y)
 
foreign import javascript unsafe "$1[\"lineTo\"]($2, $3)" js_lineTo
        :: JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineTo Mozilla CanvasRenderingContext2D.lineTo documentation> 
lineTo ::
       (MonadIO m) => CanvasRenderingContext2D -> Float -> Float -> m ()
lineTo self x y
  = liftIO (js_lineTo (unCanvasRenderingContext2D self) x y)
 
foreign import javascript unsafe
        "$1[\"quadraticCurveTo\"]($2, $3,\n$4, $5)" js_quadraticCurveTo ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.quadraticCurveTo Mozilla CanvasRenderingContext2D.quadraticCurveTo documentation> 
quadraticCurveTo ::
                 (MonadIO m) =>
                   CanvasRenderingContext2D ->
                     Float -> Float -> Float -> Float -> m ()
quadraticCurveTo self cpx cpy x y
  = liftIO
      (js_quadraticCurveTo (unCanvasRenderingContext2D self) cpx cpy x y)
 
foreign import javascript unsafe
        "$1[\"bezierCurveTo\"]($2, $3, $4,\n$5, $6, $7)" js_bezierCurveTo
        ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.bezierCurveTo Mozilla CanvasRenderingContext2D.bezierCurveTo documentation> 
bezierCurveTo ::
              (MonadIO m) =>
                CanvasRenderingContext2D ->
                  Float -> Float -> Float -> Float -> Float -> Float -> m ()
bezierCurveTo self cp1x cp1y cp2x cp2y x y
  = liftIO
      (js_bezierCurveTo (unCanvasRenderingContext2D self) cp1x cp1y cp2x
         cp2y
         x
         y)
 
foreign import javascript unsafe
        "$1[\"arcTo\"]($2, $3, $4, $5, $6)" js_arcTo ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.arcTo Mozilla CanvasRenderingContext2D.arcTo documentation> 
arcTo ::
      (MonadIO m) =>
        CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> m ()
arcTo self x1 y1 x2 y2 radius
  = liftIO
      (js_arcTo (unCanvasRenderingContext2D self) x1 y1 x2 y2 radius)
 
foreign import javascript unsafe "$1[\"rect\"]($2, $3, $4, $5)"
        js_rect ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.rect Mozilla CanvasRenderingContext2D.rect documentation> 
rect ::
     (MonadIO m) =>
       CanvasRenderingContext2D ->
         Float -> Float -> Float -> Float -> m ()
rect self x y width height
  = liftIO
      (js_rect (unCanvasRenderingContext2D self) x y width height)
 
foreign import javascript unsafe
        "$1[\"arc\"]($2, $3, $4, $5, $6,\n$7)" js_arc ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.arc Mozilla CanvasRenderingContext2D.arc documentation> 
arc ::
    (MonadIO m) =>
      CanvasRenderingContext2D ->
        Float -> Float -> Float -> Float -> Float -> Bool -> m ()
arc self x y radius startAngle endAngle anticlockwise
  = liftIO
      (js_arc (unCanvasRenderingContext2D self) x y radius startAngle
         endAngle
         anticlockwise)
 
foreign import javascript unsafe "$1[\"fill\"]($2, $3)" js_fillPath
        ::
        JSRef CanvasRenderingContext2D ->
          JSRef Path2D -> JSRef CanvasWindingRule -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fill Mozilla CanvasRenderingContext2D.fill documentation> 
fillPath ::
         (MonadIO m) =>
           CanvasRenderingContext2D ->
             Maybe Path2D -> CanvasWindingRule -> m ()
fillPath self path winding
  = liftIO
      (js_fillPath (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef path)
         (pToJSRef winding))
 
foreign import javascript unsafe "$1[\"stroke\"]($2)" js_strokePath
        :: JSRef CanvasRenderingContext2D -> JSRef Path2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.stroke Mozilla CanvasRenderingContext2D.stroke documentation> 
strokePath ::
           (MonadIO m) => CanvasRenderingContext2D -> Maybe Path2D -> m ()
strokePath self path
  = liftIO
      (js_strokePath (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef path))
 
foreign import javascript unsafe "$1[\"clip\"]($2, $3)" js_clipPath
        ::
        JSRef CanvasRenderingContext2D ->
          JSRef Path2D -> JSRef CanvasWindingRule -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clip Mozilla CanvasRenderingContext2D.clip documentation> 
clipPath ::
         (MonadIO m) =>
           CanvasRenderingContext2D ->
             Maybe Path2D -> CanvasWindingRule -> m ()
clipPath self path winding
  = liftIO
      (js_clipPath (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef path)
         (pToJSRef winding))
 
foreign import javascript unsafe "$1[\"fill\"]($2)" js_fill ::
        JSRef CanvasRenderingContext2D -> JSRef CanvasWindingRule -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fill Mozilla CanvasRenderingContext2D.fill documentation> 
fill ::
     (MonadIO m) =>
       CanvasRenderingContext2D -> CanvasWindingRule -> m ()
fill self winding
  = liftIO
      (js_fill (unCanvasRenderingContext2D self) (pToJSRef winding))
 
foreign import javascript unsafe "$1[\"stroke\"]()" js_stroke ::
        JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.stroke Mozilla CanvasRenderingContext2D.stroke documentation> 
stroke :: (MonadIO m) => CanvasRenderingContext2D -> m ()
stroke self = liftIO (js_stroke (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"clip\"]($2)" js_clip ::
        JSRef CanvasRenderingContext2D -> JSRef CanvasWindingRule -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clip Mozilla CanvasRenderingContext2D.clip documentation> 
clip ::
     (MonadIO m) =>
       CanvasRenderingContext2D -> CanvasWindingRule -> m ()
clip self winding
  = liftIO
      (js_clip (unCanvasRenderingContext2D self) (pToJSRef winding))
 
foreign import javascript unsafe
        "($1[\"isPointInPath\"]($2, $3, $4,\n$5) ? 1 : 0)"
        js_isPointInPathPath ::
        JSRef CanvasRenderingContext2D ->
          JSRef Path2D ->
            Float -> Float -> JSRef CanvasWindingRule -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInPath Mozilla CanvasRenderingContext2D.isPointInPath documentation> 
isPointInPathPath ::
                  (MonadIO m) =>
                    CanvasRenderingContext2D ->
                      Maybe Path2D -> Float -> Float -> CanvasWindingRule -> m Bool
isPointInPathPath self path x y winding
  = liftIO
      (js_isPointInPathPath (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef path)
         x
         y
         (pToJSRef winding))
 
foreign import javascript unsafe
        "($1[\"isPointInStroke\"]($2, $3,\n$4) ? 1 : 0)"
        js_isPointInStrokePath ::
        JSRef CanvasRenderingContext2D ->
          JSRef Path2D -> Float -> Float -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInStroke Mozilla CanvasRenderingContext2D.isPointInStroke documentation> 
isPointInStrokePath ::
                    (MonadIO m) =>
                      CanvasRenderingContext2D ->
                        Maybe Path2D -> Float -> Float -> m Bool
isPointInStrokePath self path x y
  = liftIO
      (js_isPointInStrokePath (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef path)
         x
         y)
 
foreign import javascript unsafe
        "($1[\"isPointInPath\"]($2, $3,\n$4) ? 1 : 0)" js_isPointInPath ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> JSRef CanvasWindingRule -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInPath Mozilla CanvasRenderingContext2D.isPointInPath documentation> 
isPointInPath ::
              (MonadIO m) =>
                CanvasRenderingContext2D ->
                  Float -> Float -> CanvasWindingRule -> m Bool
isPointInPath self x y winding
  = liftIO
      (js_isPointInPath (unCanvasRenderingContext2D self) x y
         (pToJSRef winding))
 
foreign import javascript unsafe
        "($1[\"isPointInStroke\"]($2,\n$3) ? 1 : 0)" js_isPointInStroke ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInStroke Mozilla CanvasRenderingContext2D.isPointInStroke documentation> 
isPointInStroke ::
                (MonadIO m) => CanvasRenderingContext2D -> Float -> Float -> m Bool
isPointInStroke self x y
  = liftIO (js_isPointInStroke (unCanvasRenderingContext2D self) x y)
 
foreign import javascript unsafe "$1[\"measureText\"]($2)"
        js_measureText ::
        JSRef CanvasRenderingContext2D ->
          JSString -> IO (JSRef TextMetrics)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.measureText Mozilla CanvasRenderingContext2D.measureText documentation> 
measureText ::
            (MonadIO m, ToJSString text) =>
              CanvasRenderingContext2D -> text -> m (Maybe TextMetrics)
measureText self text
  = liftIO
      ((js_measureText (unCanvasRenderingContext2D self)
          (toJSString text))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setAlpha\"]($2)" js_setAlpha
        :: JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setAlpha Mozilla CanvasRenderingContext2D.setAlpha documentation> 
setAlpha ::
         (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setAlpha self alpha
  = liftIO (js_setAlpha (unCanvasRenderingContext2D self) alpha)
 
foreign import javascript unsafe
        "$1[\"setCompositeOperation\"]($2)" js_setCompositeOperation ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setCompositeOperation Mozilla CanvasRenderingContext2D.setCompositeOperation documentation> 
setCompositeOperation ::
                      (MonadIO m, ToJSString compositeOperation) =>
                        CanvasRenderingContext2D -> compositeOperation -> m ()
setCompositeOperation self compositeOperation
  = liftIO
      (js_setCompositeOperation (unCanvasRenderingContext2D self)
         (toJSString compositeOperation))
 
foreign import javascript unsafe "$1[\"setLineWidth\"]($2)"
        js_setLineWidthFunction ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setLineWidth Mozilla CanvasRenderingContext2D.setLineWidth documentation> 
setLineWidthFunction ::
                     (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setLineWidthFunction self width
  = liftIO
      (js_setLineWidthFunction (unCanvasRenderingContext2D self) width)
 
foreign import javascript unsafe "$1[\"setLineCap\"]($2)"
        js_setLineCapFunction ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setLineCap Mozilla CanvasRenderingContext2D.setLineCap documentation> 
setLineCapFunction ::
                   (MonadIO m, ToJSString cap) =>
                     CanvasRenderingContext2D -> cap -> m ()
setLineCapFunction self cap
  = liftIO
      (js_setLineCapFunction (unCanvasRenderingContext2D self)
         (toJSString cap))
 
foreign import javascript unsafe "$1[\"setLineJoin\"]($2)"
        js_setLineJoinFunction ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setLineJoin Mozilla CanvasRenderingContext2D.setLineJoin documentation> 
setLineJoinFunction ::
                    (MonadIO m, ToJSString join) =>
                      CanvasRenderingContext2D -> join -> m ()
setLineJoinFunction self join
  = liftIO
      (js_setLineJoinFunction (unCanvasRenderingContext2D self)
         (toJSString join))
 
foreign import javascript unsafe "$1[\"setMiterLimit\"]($2)"
        js_setMiterLimitFunction ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setMiterLimit Mozilla CanvasRenderingContext2D.setMiterLimit documentation> 
setMiterLimitFunction ::
                      (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setMiterLimitFunction self limit
  = liftIO
      (js_setMiterLimitFunction (unCanvasRenderingContext2D self) limit)
 
foreign import javascript unsafe "$1[\"clearShadow\"]()"
        js_clearShadow :: JSRef CanvasRenderingContext2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clearShadow Mozilla CanvasRenderingContext2D.clearShadow documentation> 
clearShadow :: (MonadIO m) => CanvasRenderingContext2D -> m ()
clearShadow self
  = liftIO (js_clearShadow (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"fillText\"]($2, $3, $4, $5)"
        js_fillText ::
        JSRef CanvasRenderingContext2D ->
          JSString -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillText Mozilla CanvasRenderingContext2D.fillText documentation> 
fillText ::
         (MonadIO m, ToJSString text) =>
           CanvasRenderingContext2D -> text -> Float -> Float -> Float -> m ()
fillText self text x y maxWidth
  = liftIO
      (js_fillText (unCanvasRenderingContext2D self) (toJSString text) x
         y
         maxWidth)
 
foreign import javascript unsafe
        "$1[\"strokeText\"]($2, $3, $4, $5)" js_strokeText ::
        JSRef CanvasRenderingContext2D ->
          JSString -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeText Mozilla CanvasRenderingContext2D.strokeText documentation> 
strokeText ::
           (MonadIO m, ToJSString text) =>
             CanvasRenderingContext2D -> text -> Float -> Float -> Float -> m ()
strokeText self text x y maxWidth
  = liftIO
      (js_strokeText (unCanvasRenderingContext2D self) (toJSString text)
         x
         y
         maxWidth)
 
foreign import javascript unsafe "$1[\"setStrokeColor\"]($2, $3)"
        js_setStrokeColor ::
        JSRef CanvasRenderingContext2D -> JSString -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setStrokeColor Mozilla CanvasRenderingContext2D.setStrokeColor documentation> 
setStrokeColor ::
               (MonadIO m, ToJSString color) =>
                 CanvasRenderingContext2D -> color -> Float -> m ()
setStrokeColor self color alpha
  = liftIO
      (js_setStrokeColor (unCanvasRenderingContext2D self)
         (toJSString color)
         alpha)
 
foreign import javascript unsafe "$1[\"setStrokeColor\"]($2, $3)"
        js_setStrokeColorGray ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setStrokeColor Mozilla CanvasRenderingContext2D.setStrokeColor documentation> 
setStrokeColorGray ::
                   (MonadIO m) => CanvasRenderingContext2D -> Float -> Float -> m ()
setStrokeColorGray self grayLevel alpha
  = liftIO
      (js_setStrokeColorGray (unCanvasRenderingContext2D self) grayLevel
         alpha)
 
foreign import javascript unsafe
        "$1[\"setStrokeColor\"]($2, $3, $4,\n$5)" js_setStrokeColorRGB ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setStrokeColor Mozilla CanvasRenderingContext2D.setStrokeColor documentation> 
setStrokeColorRGB ::
                  (MonadIO m) =>
                    CanvasRenderingContext2D ->
                      Float -> Float -> Float -> Float -> m ()
setStrokeColorRGB self r g b a
  = liftIO
      (js_setStrokeColorRGB (unCanvasRenderingContext2D self) r g b a)
 
foreign import javascript unsafe
        "$1[\"setStrokeColor\"]($2, $3, $4,\n$5, $6)" js_setStrokeColorCYMK
        ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setStrokeColor Mozilla CanvasRenderingContext2D.setStrokeColor documentation> 
setStrokeColorCYMK ::
                   (MonadIO m) =>
                     CanvasRenderingContext2D ->
                       Float -> Float -> Float -> Float -> Float -> m ()
setStrokeColorCYMK self c m y k a
  = liftIO
      (js_setStrokeColorCYMK (unCanvasRenderingContext2D self) c m y k a)
 
foreign import javascript unsafe "$1[\"setFillColor\"]($2, $3)"
        js_setFillColor ::
        JSRef CanvasRenderingContext2D -> JSString -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setFillColor Mozilla CanvasRenderingContext2D.setFillColor documentation> 
setFillColor ::
             (MonadIO m, ToJSString color) =>
               CanvasRenderingContext2D -> color -> Float -> m ()
setFillColor self color alpha
  = liftIO
      (js_setFillColor (unCanvasRenderingContext2D self)
         (toJSString color)
         alpha)
 
foreign import javascript unsafe "$1[\"setFillColor\"]($2, $3)"
        js_setFillColorGray ::
        JSRef CanvasRenderingContext2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setFillColor Mozilla CanvasRenderingContext2D.setFillColor documentation> 
setFillColorGray ::
                 (MonadIO m) => CanvasRenderingContext2D -> Float -> Float -> m ()
setFillColorGray self grayLevel alpha
  = liftIO
      (js_setFillColorGray (unCanvasRenderingContext2D self) grayLevel
         alpha)
 
foreign import javascript unsafe
        "$1[\"setFillColor\"]($2, $3, $4,\n$5)" js_setFillColorRGB ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setFillColor Mozilla CanvasRenderingContext2D.setFillColor documentation> 
setFillColorRGB ::
                (MonadIO m) =>
                  CanvasRenderingContext2D ->
                    Float -> Float -> Float -> Float -> m ()
setFillColorRGB self r g b a
  = liftIO
      (js_setFillColorRGB (unCanvasRenderingContext2D self) r g b a)
 
foreign import javascript unsafe
        "$1[\"setFillColor\"]($2, $3, $4,\n$5, $6)" js_setFillColorCYMK ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setFillColor Mozilla CanvasRenderingContext2D.setFillColor documentation> 
setFillColorCYMK ::
                 (MonadIO m) =>
                   CanvasRenderingContext2D ->
                     Float -> Float -> Float -> Float -> Float -> m ()
setFillColorCYMK self c m y k a
  = liftIO
      (js_setFillColorCYMK (unCanvasRenderingContext2D self) c m y k a)
 
foreign import javascript unsafe
        "$1[\"strokeRect\"]($2, $3, $4, $5)" js_strokeRect ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeRect Mozilla CanvasRenderingContext2D.strokeRect documentation> 
strokeRect ::
           (MonadIO m) =>
             CanvasRenderingContext2D ->
               Float -> Float -> Float -> Float -> m ()
strokeRect self x y width height
  = liftIO
      (js_strokeRect (unCanvasRenderingContext2D self) x y width height)
 
foreign import javascript unsafe "$1[\"drawImage\"]($2, $3, $4)"
        js_drawImage ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImage ::
          (MonadIO m) =>
            CanvasRenderingContext2D ->
              Maybe HTMLImageElement -> Float -> Float -> m ()
drawImage self image x y
  = liftIO
      (js_drawImage (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef image)
         x
         y)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6)" js_drawImageScaled ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageScaled ::
                (MonadIO m) =>
                  CanvasRenderingContext2D ->
                    Maybe HTMLImageElement -> Float -> Float -> Float -> Float -> m ()
drawImageScaled self image x y width height
  = liftIO
      (js_drawImageScaled (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef image)
         x
         y
         width
         height)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6, $7, $8, $9, $10)"
        js_drawImagePart ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement ->
            Float ->
              Float ->
                Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImagePart ::
              (MonadIO m) =>
                CanvasRenderingContext2D ->
                  Maybe HTMLImageElement ->
                    Float ->
                      Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
drawImagePart self image sx sy sw sh dx dy dw dh
  = liftIO
      (js_drawImagePart (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef image)
         sx
         sy
         sw
         sh
         dx
         dy
         dw
         dh)
 
foreign import javascript unsafe "$1[\"drawImage\"]($2, $3, $4)"
        js_drawImageFromCanvas ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLCanvasElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromCanvas ::
                    (MonadIO m) =>
                      CanvasRenderingContext2D ->
                        Maybe HTMLCanvasElement -> Float -> Float -> m ()
drawImageFromCanvas self canvas x y
  = liftIO
      (js_drawImageFromCanvas (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef canvas)
         x
         y)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6)"
        js_drawImageFromCanvasScaled ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLCanvasElement ->
            Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromCanvasScaled ::
                          (MonadIO m) =>
                            CanvasRenderingContext2D ->
                              Maybe HTMLCanvasElement -> Float -> Float -> Float -> Float -> m ()
drawImageFromCanvasScaled self canvas x y width height
  = liftIO
      (js_drawImageFromCanvasScaled (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef canvas)
         x
         y
         width
         height)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6, $7, $8, $9, $10)"
        js_drawImageFromCanvasPart ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLCanvasElement ->
            Float ->
              Float ->
                Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromCanvasPart ::
                        (MonadIO m) =>
                          CanvasRenderingContext2D ->
                            Maybe HTMLCanvasElement ->
                              Float ->
                                Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
drawImageFromCanvasPart self canvas sx sy sw sh dx dy dw dh
  = liftIO
      (js_drawImageFromCanvasPart (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef canvas)
         sx
         sy
         sw
         sh
         dx
         dy
         dw
         dh)
 
foreign import javascript unsafe "$1[\"drawImage\"]($2, $3, $4)"
        js_drawImageFromVideo ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLVideoElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromVideo ::
                   (MonadIO m) =>
                     CanvasRenderingContext2D ->
                       Maybe HTMLVideoElement -> Float -> Float -> m ()
drawImageFromVideo self video x y
  = liftIO
      (js_drawImageFromVideo (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef video)
         x
         y)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6)"
        js_drawImageFromVideoScaled ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLVideoElement -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromVideoScaled ::
                         (MonadIO m) =>
                           CanvasRenderingContext2D ->
                             Maybe HTMLVideoElement -> Float -> Float -> Float -> Float -> m ()
drawImageFromVideoScaled self video x y width height
  = liftIO
      (js_drawImageFromVideoScaled (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef video)
         x
         y
         width
         height)
 
foreign import javascript unsafe
        "$1[\"drawImage\"]($2, $3, $4, $5,\n$6, $7, $8, $9, $10)"
        js_drawImageFromVideoPart ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLVideoElement ->
            Float ->
              Float ->
                Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromVideoPart ::
                       (MonadIO m) =>
                         CanvasRenderingContext2D ->
                           Maybe HTMLVideoElement ->
                             Float ->
                               Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
drawImageFromVideoPart self video sx sy sw sh dx dy dw dh
  = liftIO
      (js_drawImageFromVideoPart (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef video)
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
        js_drawImageFromRect ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement ->
            Float ->
              Float ->
                Float ->
                  Float -> Float -> Float -> Float -> Float -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageFromRect Mozilla CanvasRenderingContext2D.drawImageFromRect documentation> 
drawImageFromRect ::
                  (MonadIO m, ToJSString compositeOperation) =>
                    CanvasRenderingContext2D ->
                      Maybe HTMLImageElement ->
                        Float ->
                          Float ->
                            Float ->
                              Float ->
                                Float -> Float -> Float -> Float -> compositeOperation -> m ()
drawImageFromRect self image sx sy sw sh dx dy dw dh
  compositeOperation
  = liftIO
      (js_drawImageFromRect (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef image)
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
        "$1[\"setShadow\"]($2, $3, $4, $5,\n$6)" js_setShadow ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> JSString -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setShadow Mozilla CanvasRenderingContext2D.setShadow documentation> 
setShadow ::
          (MonadIO m, ToJSString color) =>
            CanvasRenderingContext2D ->
              Float -> Float -> Float -> color -> Float -> m ()
setShadow self width height blur color alpha
  = liftIO
      (js_setShadow (unCanvasRenderingContext2D self) width height blur
         (toJSString color)
         alpha)
 
foreign import javascript unsafe
        "$1[\"setShadow\"]($2, $3, $4, $5,\n$6)" js_setShadowGray ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setShadow Mozilla CanvasRenderingContext2D.setShadow documentation> 
setShadowGray ::
              (MonadIO m) =>
                CanvasRenderingContext2D ->
                  Float -> Float -> Float -> Float -> Float -> m ()
setShadowGray self width height blur grayLevel alpha
  = liftIO
      (js_setShadowGray (unCanvasRenderingContext2D self) width height
         blur
         grayLevel
         alpha)
 
foreign import javascript unsafe
        "$1[\"setShadow\"]($2, $3, $4, $5,\n$6, $7, $8)" js_setShadowRGB ::
        JSRef CanvasRenderingContext2D ->
          Float ->
            Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setShadow Mozilla CanvasRenderingContext2D.setShadow documentation> 
setShadowRGB ::
             (MonadIO m) =>
               CanvasRenderingContext2D ->
                 Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
setShadowRGB self width height blur r g b a
  = liftIO
      (js_setShadowRGB (unCanvasRenderingContext2D self) width height
         blur
         r
         g
         b
         a)
 
foreign import javascript unsafe
        "$1[\"setShadow\"]($2, $3, $4, $5,\n$6, $7, $8, $9)"
        js_setShadowCYMK ::
        JSRef CanvasRenderingContext2D ->
          Float ->
            Float ->
              Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setShadow Mozilla CanvasRenderingContext2D.setShadow documentation> 
setShadowCYMK ::
              (MonadIO m) =>
                CanvasRenderingContext2D ->
                  Float ->
                    Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
setShadowCYMK self width height blur c m y k a
  = liftIO
      (js_setShadowCYMK (unCanvasRenderingContext2D self) width height
         blur
         c
         m
         y
         k
         a)
 
foreign import javascript unsafe "$1[\"putImageData\"]($2, $3, $4)"
        js_putImageData ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.putImageData Mozilla CanvasRenderingContext2D.putImageData documentation> 
putImageData ::
             (MonadIO m) =>
               CanvasRenderingContext2D ->
                 Maybe ImageData -> Float -> Float -> m ()
putImageData self imagedata dx dy
  = liftIO
      (js_putImageData (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef imagedata)
         dx
         dy)
 
foreign import javascript unsafe
        "$1[\"putImageData\"]($2, $3, $4,\n$5, $6, $7, $8)"
        js_putImageDataDirty ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData ->
            Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.putImageData Mozilla CanvasRenderingContext2D.putImageData documentation> 
putImageDataDirty ::
                  (MonadIO m) =>
                    CanvasRenderingContext2D ->
                      Maybe ImageData ->
                        Float -> Float -> Float -> Float -> Float -> Float -> m ()
putImageDataDirty self imagedata dx dy dirtyX dirtyY dirtyWidth
  dirtyHeight
  = liftIO
      (js_putImageDataDirty (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef imagedata)
         dx
         dy
         dirtyX
         dirtyY
         dirtyWidth
         dirtyHeight)
 
foreign import javascript unsafe
        "$1[\"webkitPutImageDataHD\"]($2,\n$3, $4)" js_webkitPutImageDataHD
        ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitPutImageDataHD Mozilla CanvasRenderingContext2D.webkitPutImageDataHD documentation> 
webkitPutImageDataHD ::
                     (MonadIO m) =>
                       CanvasRenderingContext2D ->
                         Maybe ImageData -> Float -> Float -> m ()
webkitPutImageDataHD self imagedata dx dy
  = liftIO
      (js_webkitPutImageDataHD (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef imagedata)
         dx
         dy)
 
foreign import javascript unsafe
        "$1[\"webkitPutImageDataHD\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_webkitPutImageDataHDDirty ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData ->
            Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitPutImageDataHD Mozilla CanvasRenderingContext2D.webkitPutImageDataHD documentation> 
webkitPutImageDataHDDirty ::
                          (MonadIO m) =>
                            CanvasRenderingContext2D ->
                              Maybe ImageData ->
                                Float -> Float -> Float -> Float -> Float -> Float -> m ()
webkitPutImageDataHDDirty self imagedata dx dy dirtyX dirtyY
  dirtyWidth dirtyHeight
  = liftIO
      (js_webkitPutImageDataHDDirty (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef imagedata)
         dx
         dy
         dirtyX
         dirtyY
         dirtyWidth
         dirtyHeight)
 
foreign import javascript unsafe "$1[\"createPattern\"]($2, $3)"
        js_createPatternFromCanvas ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLCanvasElement -> JSString -> IO (JSRef CanvasPattern)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createPattern Mozilla CanvasRenderingContext2D.createPattern documentation> 
createPatternFromCanvas ::
                        (MonadIO m, ToJSString repetitionType) =>
                          CanvasRenderingContext2D ->
                            Maybe HTMLCanvasElement ->
                              repetitionType -> m (Maybe CanvasPattern)
createPatternFromCanvas self canvas repetitionType
  = liftIO
      ((js_createPatternFromCanvas (unCanvasRenderingContext2D self)
          (maybe jsNull pToJSRef canvas)
          (toJSString repetitionType))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createPattern\"]($2, $3)"
        js_createPattern ::
        JSRef CanvasRenderingContext2D ->
          JSRef HTMLImageElement -> JSString -> IO (JSRef CanvasPattern)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createPattern Mozilla CanvasRenderingContext2D.createPattern documentation> 
createPattern ::
              (MonadIO m, ToJSString repetitionType) =>
                CanvasRenderingContext2D ->
                  Maybe HTMLImageElement -> repetitionType -> m (Maybe CanvasPattern)
createPattern self image repetitionType
  = liftIO
      ((js_createPattern (unCanvasRenderingContext2D self)
          (maybe jsNull pToJSRef image)
          (toJSString repetitionType))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createImageData\"]($2)"
        js_createImageData ::
        JSRef CanvasRenderingContext2D ->
          JSRef ImageData -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createImageData Mozilla CanvasRenderingContext2D.createImageData documentation> 
createImageData ::
                (MonadIO m) =>
                  CanvasRenderingContext2D -> Maybe ImageData -> m (Maybe ImageData)
createImageData self imagedata
  = liftIO
      ((js_createImageData (unCanvasRenderingContext2D self)
          (maybe jsNull pToJSRef imagedata))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createImageData\"]($2, $3)"
        js_createImageDataSize ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createImageData Mozilla CanvasRenderingContext2D.createImageData documentation> 
createImageDataSize ::
                    (MonadIO m) =>
                      CanvasRenderingContext2D -> Float -> Float -> m (Maybe ImageData)
createImageDataSize self sw sh
  = liftIO
      ((js_createImageDataSize (unCanvasRenderingContext2D self) sw sh)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getImageData\"]($2, $3, $4,\n$5)" js_getImageData ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.getImageData Mozilla CanvasRenderingContext2D.getImageData documentation> 
getImageData ::
             (MonadIO m) =>
               CanvasRenderingContext2D ->
                 Float -> Float -> Float -> Float -> m (Maybe ImageData)
getImageData self sx sy sw sh
  = liftIO
      ((js_getImageData (unCanvasRenderingContext2D self) sx sy sw sh)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitGetImageDataHD\"]($2,\n$3, $4, $5)"
        js_webkitGetImageDataHD ::
        JSRef CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitGetImageDataHD Mozilla CanvasRenderingContext2D.webkitGetImageDataHD documentation> 
webkitGetImageDataHD ::
                     (MonadIO m) =>
                       CanvasRenderingContext2D ->
                         Float -> Float -> Float -> Float -> m (Maybe ImageData)
webkitGetImageDataHD self sx sy sw sh
  = liftIO
      ((js_webkitGetImageDataHD (unCanvasRenderingContext2D self) sx sy
          sw
          sh)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"drawFocusIfNeeded\"]($2)"
        js_drawFocusIfNeeded ::
        JSRef CanvasRenderingContext2D -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawFocusIfNeeded Mozilla CanvasRenderingContext2D.drawFocusIfNeeded documentation> 
drawFocusIfNeeded ::
                  (MonadIO m, IsElement element) =>
                    CanvasRenderingContext2D -> Maybe element -> m ()
drawFocusIfNeeded self element
  = liftIO
      (js_drawFocusIfNeeded (unCanvasRenderingContext2D self)
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe
        "$1[\"drawFocusIfNeeded\"]($2, $3)" js_drawFocusIfNeededPath ::
        JSRef CanvasRenderingContext2D ->
          JSRef Path2D -> JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawFocusIfNeeded Mozilla CanvasRenderingContext2D.drawFocusIfNeeded documentation> 
drawFocusIfNeededPath ::
                      (MonadIO m, IsElement element) =>
                        CanvasRenderingContext2D -> Maybe Path2D -> Maybe element -> m ()
drawFocusIfNeededPath self path element
  = liftIO
      (js_drawFocusIfNeededPath (unCanvasRenderingContext2D self)
         (maybe jsNull pToJSRef path)
         (maybe jsNull (unElement . toElement) element))
 
foreign import javascript unsafe "$1[\"globalAlpha\"] = $2;"
        js_setGlobalAlpha ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalAlpha Mozilla CanvasRenderingContext2D.globalAlpha documentation> 
setGlobalAlpha ::
               (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setGlobalAlpha self val
  = liftIO (js_setGlobalAlpha (unCanvasRenderingContext2D self) val)
 
foreign import javascript unsafe "$1[\"globalAlpha\"]"
        js_getGlobalAlpha :: JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalAlpha Mozilla CanvasRenderingContext2D.globalAlpha documentation> 
getGlobalAlpha ::
               (MonadIO m) => CanvasRenderingContext2D -> m Float
getGlobalAlpha self
  = liftIO (js_getGlobalAlpha (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe
        "$1[\"globalCompositeOperation\"] = $2;"
        js_setGlobalCompositeOperation ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalCompositeOperation Mozilla CanvasRenderingContext2D.globalCompositeOperation documentation> 
setGlobalCompositeOperation ::
                            (MonadIO m, ToJSString val) =>
                              CanvasRenderingContext2D -> val -> m ()
setGlobalCompositeOperation self val
  = liftIO
      (js_setGlobalCompositeOperation (unCanvasRenderingContext2D self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"globalCompositeOperation\"]"
        js_getGlobalCompositeOperation ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalCompositeOperation Mozilla CanvasRenderingContext2D.globalCompositeOperation documentation> 
getGlobalCompositeOperation ::
                            (MonadIO m, FromJSString result) =>
                              CanvasRenderingContext2D -> m result
getGlobalCompositeOperation self
  = liftIO
      (fromJSString <$>
         (js_getGlobalCompositeOperation (unCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"lineWidth\"] = $2;"
        js_setLineWidth :: JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineWidth Mozilla CanvasRenderingContext2D.lineWidth documentation> 
setLineWidth ::
             (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setLineWidth self val
  = liftIO (js_setLineWidth (unCanvasRenderingContext2D self) val)
 
foreign import javascript unsafe "$1[\"lineWidth\"]"
        js_getLineWidth :: JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineWidth Mozilla CanvasRenderingContext2D.lineWidth documentation> 
getLineWidth :: (MonadIO m) => CanvasRenderingContext2D -> m Float
getLineWidth self
  = liftIO (js_getLineWidth (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"lineCap\"] = $2;"
        js_setLineCap ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineCap Mozilla CanvasRenderingContext2D.lineCap documentation> 
setLineCap ::
           (MonadIO m, ToJSString val) =>
             CanvasRenderingContext2D -> val -> m ()
setLineCap self val
  = liftIO
      (js_setLineCap (unCanvasRenderingContext2D self) (toJSString val))
 
foreign import javascript unsafe "$1[\"lineCap\"]" js_getLineCap ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineCap Mozilla CanvasRenderingContext2D.lineCap documentation> 
getLineCap ::
           (MonadIO m, FromJSString result) =>
             CanvasRenderingContext2D -> m result
getLineCap self
  = liftIO
      (fromJSString <$>
         (js_getLineCap (unCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"lineJoin\"] = $2;"
        js_setLineJoin ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineJoin Mozilla CanvasRenderingContext2D.lineJoin documentation> 
setLineJoin ::
            (MonadIO m, ToJSString val) =>
              CanvasRenderingContext2D -> val -> m ()
setLineJoin self val
  = liftIO
      (js_setLineJoin (unCanvasRenderingContext2D self) (toJSString val))
 
foreign import javascript unsafe "$1[\"lineJoin\"]" js_getLineJoin
        :: JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineJoin Mozilla CanvasRenderingContext2D.lineJoin documentation> 
getLineJoin ::
            (MonadIO m, FromJSString result) =>
              CanvasRenderingContext2D -> m result
getLineJoin self
  = liftIO
      (fromJSString <$>
         (js_getLineJoin (unCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"miterLimit\"] = $2;"
        js_setMiterLimit ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.miterLimit Mozilla CanvasRenderingContext2D.miterLimit documentation> 
setMiterLimit ::
              (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setMiterLimit self val
  = liftIO (js_setMiterLimit (unCanvasRenderingContext2D self) val)
 
foreign import javascript unsafe "$1[\"miterLimit\"]"
        js_getMiterLimit :: JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.miterLimit Mozilla CanvasRenderingContext2D.miterLimit documentation> 
getMiterLimit :: (MonadIO m) => CanvasRenderingContext2D -> m Float
getMiterLimit self
  = liftIO (js_getMiterLimit (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"shadowOffsetX\"] = $2;"
        js_setShadowOffsetX ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetX Mozilla CanvasRenderingContext2D.shadowOffsetX documentation> 
setShadowOffsetX ::
                 (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setShadowOffsetX self val
  = liftIO
      (js_setShadowOffsetX (unCanvasRenderingContext2D self) val)
 
foreign import javascript unsafe "$1[\"shadowOffsetX\"]"
        js_getShadowOffsetX :: JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetX Mozilla CanvasRenderingContext2D.shadowOffsetX documentation> 
getShadowOffsetX ::
                 (MonadIO m) => CanvasRenderingContext2D -> m Float
getShadowOffsetX self
  = liftIO (js_getShadowOffsetX (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"shadowOffsetY\"] = $2;"
        js_setShadowOffsetY ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetY Mozilla CanvasRenderingContext2D.shadowOffsetY documentation> 
setShadowOffsetY ::
                 (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setShadowOffsetY self val
  = liftIO
      (js_setShadowOffsetY (unCanvasRenderingContext2D self) val)
 
foreign import javascript unsafe "$1[\"shadowOffsetY\"]"
        js_getShadowOffsetY :: JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetY Mozilla CanvasRenderingContext2D.shadowOffsetY documentation> 
getShadowOffsetY ::
                 (MonadIO m) => CanvasRenderingContext2D -> m Float
getShadowOffsetY self
  = liftIO (js_getShadowOffsetY (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"shadowBlur\"] = $2;"
        js_setShadowBlur ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowBlur Mozilla CanvasRenderingContext2D.shadowBlur documentation> 
setShadowBlur ::
              (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setShadowBlur self val
  = liftIO (js_setShadowBlur (unCanvasRenderingContext2D self) val)
 
foreign import javascript unsafe "$1[\"shadowBlur\"]"
        js_getShadowBlur :: JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowBlur Mozilla CanvasRenderingContext2D.shadowBlur documentation> 
getShadowBlur :: (MonadIO m) => CanvasRenderingContext2D -> m Float
getShadowBlur self
  = liftIO (js_getShadowBlur (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"shadowColor\"] = $2;"
        js_setShadowColor ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowColor Mozilla CanvasRenderingContext2D.shadowColor documentation> 
setShadowColor ::
               (MonadIO m, ToJSString val) =>
                 CanvasRenderingContext2D -> val -> m ()
setShadowColor self val
  = liftIO
      (js_setShadowColor (unCanvasRenderingContext2D self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"shadowColor\"]"
        js_getShadowColor :: JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowColor Mozilla CanvasRenderingContext2D.shadowColor documentation> 
getShadowColor ::
               (MonadIO m, FromJSString result) =>
                 CanvasRenderingContext2D -> m result
getShadowColor self
  = liftIO
      (fromJSString <$>
         (js_getShadowColor (unCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"lineDashOffset\"] = $2;"
        js_setLineDashOffset ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineDashOffset Mozilla CanvasRenderingContext2D.lineDashOffset documentation> 
setLineDashOffset ::
                  (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setLineDashOffset self val
  = liftIO
      (js_setLineDashOffset (unCanvasRenderingContext2D self) val)
 
foreign import javascript unsafe "$1[\"lineDashOffset\"]"
        js_getLineDashOffset :: JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineDashOffset Mozilla CanvasRenderingContext2D.lineDashOffset documentation> 
getLineDashOffset ::
                  (MonadIO m) => CanvasRenderingContext2D -> m Float
getLineDashOffset self
  = liftIO (js_getLineDashOffset (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"webkitLineDash\"] = $2;"
        js_setWebkitLineDash ::
        JSRef CanvasRenderingContext2D -> JSRef Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDash Mozilla CanvasRenderingContext2D.webkitLineDash documentation> 
setWebkitLineDash ::
                  (MonadIO m, IsArray val) =>
                    CanvasRenderingContext2D -> Maybe val -> m ()
setWebkitLineDash self val
  = liftIO
      (js_setWebkitLineDash (unCanvasRenderingContext2D self)
         (maybe jsNull (unArray . toArray) val))
 
foreign import javascript unsafe "$1[\"webkitLineDash\"]"
        js_getWebkitLineDash ::
        JSRef CanvasRenderingContext2D -> IO (JSRef Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDash Mozilla CanvasRenderingContext2D.webkitLineDash documentation> 
getWebkitLineDash ::
                  (MonadIO m) => CanvasRenderingContext2D -> m (Maybe Array)
getWebkitLineDash self
  = liftIO
      ((js_getWebkitLineDash (unCanvasRenderingContext2D self)) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitLineDashOffset\"] = $2;" js_setWebkitLineDashOffset ::
        JSRef CanvasRenderingContext2D -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDashOffset Mozilla CanvasRenderingContext2D.webkitLineDashOffset documentation> 
setWebkitLineDashOffset ::
                        (MonadIO m) => CanvasRenderingContext2D -> Float -> m ()
setWebkitLineDashOffset self val
  = liftIO
      (js_setWebkitLineDashOffset (unCanvasRenderingContext2D self) val)
 
foreign import javascript unsafe "$1[\"webkitLineDashOffset\"]"
        js_getWebkitLineDashOffset ::
        JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDashOffset Mozilla CanvasRenderingContext2D.webkitLineDashOffset documentation> 
getWebkitLineDashOffset ::
                        (MonadIO m) => CanvasRenderingContext2D -> m Float
getWebkitLineDashOffset self
  = liftIO
      (js_getWebkitLineDashOffset (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe "$1[\"font\"] = $2;" js_setFont ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.font Mozilla CanvasRenderingContext2D.font documentation> 
setFont ::
        (MonadIO m, ToJSString val) =>
          CanvasRenderingContext2D -> val -> m ()
setFont self val
  = liftIO
      (js_setFont (unCanvasRenderingContext2D self) (toJSString val))
 
foreign import javascript unsafe "$1[\"font\"]" js_getFont ::
        JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.font Mozilla CanvasRenderingContext2D.font documentation> 
getFont ::
        (MonadIO m, FromJSString result) =>
          CanvasRenderingContext2D -> m result
getFont self
  = liftIO
      (fromJSString <$> (js_getFont (unCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"textAlign\"] = $2;"
        js_setTextAlign ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textAlign Mozilla CanvasRenderingContext2D.textAlign documentation> 
setTextAlign ::
             (MonadIO m, ToJSString val) =>
               CanvasRenderingContext2D -> val -> m ()
setTextAlign self val
  = liftIO
      (js_setTextAlign (unCanvasRenderingContext2D self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"textAlign\"]"
        js_getTextAlign :: JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textAlign Mozilla CanvasRenderingContext2D.textAlign documentation> 
getTextAlign ::
             (MonadIO m, FromJSString result) =>
               CanvasRenderingContext2D -> m result
getTextAlign self
  = liftIO
      (fromJSString <$>
         (js_getTextAlign (unCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"textBaseline\"] = $2;"
        js_setTextBaseline ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textBaseline Mozilla CanvasRenderingContext2D.textBaseline documentation> 
setTextBaseline ::
                (MonadIO m, ToJSString val) =>
                  CanvasRenderingContext2D -> val -> m ()
setTextBaseline self val
  = liftIO
      (js_setTextBaseline (unCanvasRenderingContext2D self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"textBaseline\"]"
        js_getTextBaseline :: JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textBaseline Mozilla CanvasRenderingContext2D.textBaseline documentation> 
getTextBaseline ::
                (MonadIO m, FromJSString result) =>
                  CanvasRenderingContext2D -> m result
getTextBaseline self
  = liftIO
      (fromJSString <$>
         (js_getTextBaseline (unCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"direction\"] = $2;"
        js_setDirection ::
        JSRef CanvasRenderingContext2D -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.direction Mozilla CanvasRenderingContext2D.direction documentation> 
setDirection ::
             (MonadIO m, ToJSString val) =>
               CanvasRenderingContext2D -> val -> m ()
setDirection self val
  = liftIO
      (js_setDirection (unCanvasRenderingContext2D self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"direction\"]"
        js_getDirection :: JSRef CanvasRenderingContext2D -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.direction Mozilla CanvasRenderingContext2D.direction documentation> 
getDirection ::
             (MonadIO m, FromJSString result) =>
               CanvasRenderingContext2D -> m result
getDirection self
  = liftIO
      (fromJSString <$>
         (js_getDirection (unCanvasRenderingContext2D self)))
 
foreign import javascript unsafe "$1[\"strokeStyle\"] = $2;"
        js_setStrokeStyle ::
        JSRef CanvasRenderingContext2D -> JSRef CanvasStyle -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeStyle Mozilla CanvasRenderingContext2D.strokeStyle documentation> 
setStrokeStyle ::
               (MonadIO m, IsCanvasStyle val) =>
                 CanvasRenderingContext2D -> Maybe val -> m ()
setStrokeStyle self val
  = liftIO
      (js_setStrokeStyle (unCanvasRenderingContext2D self)
         (maybe jsNull (unCanvasStyle . toCanvasStyle) val))
 
foreign import javascript unsafe "$1[\"strokeStyle\"]"
        js_getStrokeStyle ::
        JSRef CanvasRenderingContext2D -> IO (JSRef CanvasStyle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeStyle Mozilla CanvasRenderingContext2D.strokeStyle documentation> 
getStrokeStyle ::
               (MonadIO m) => CanvasRenderingContext2D -> m (Maybe CanvasStyle)
getStrokeStyle self
  = liftIO
      ((js_getStrokeStyle (unCanvasRenderingContext2D self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"fillStyle\"] = $2;"
        js_setFillStyle ::
        JSRef CanvasRenderingContext2D -> JSRef CanvasStyle -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillStyle Mozilla CanvasRenderingContext2D.fillStyle documentation> 
setFillStyle ::
             (MonadIO m, IsCanvasStyle val) =>
               CanvasRenderingContext2D -> Maybe val -> m ()
setFillStyle self val
  = liftIO
      (js_setFillStyle (unCanvasRenderingContext2D self)
         (maybe jsNull (unCanvasStyle . toCanvasStyle) val))
 
foreign import javascript unsafe "$1[\"fillStyle\"]"
        js_getFillStyle ::
        JSRef CanvasRenderingContext2D -> IO (JSRef CanvasStyle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillStyle Mozilla CanvasRenderingContext2D.fillStyle documentation> 
getFillStyle ::
             (MonadIO m) => CanvasRenderingContext2D -> m (Maybe CanvasStyle)
getFillStyle self
  = liftIO
      ((js_getFillStyle (unCanvasRenderingContext2D self)) >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitBackingStorePixelRatio\"]"
        js_getWebkitBackingStorePixelRatio ::
        JSRef CanvasRenderingContext2D -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitBackingStorePixelRatio Mozilla CanvasRenderingContext2D.webkitBackingStorePixelRatio documentation> 
getWebkitBackingStorePixelRatio ::
                                (MonadIO m) => CanvasRenderingContext2D -> m Float
getWebkitBackingStorePixelRatio self
  = liftIO
      (js_getWebkitBackingStorePixelRatio
         (unCanvasRenderingContext2D self))
 
foreign import javascript unsafe
        "$1[\"webkitImageSmoothingEnabled\"] = $2;"
        js_setWebkitImageSmoothingEnabled ::
        JSRef CanvasRenderingContext2D -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitImageSmoothingEnabled Mozilla CanvasRenderingContext2D.webkitImageSmoothingEnabled documentation> 
setWebkitImageSmoothingEnabled ::
                               (MonadIO m) => CanvasRenderingContext2D -> Bool -> m ()
setWebkitImageSmoothingEnabled self val
  = liftIO
      (js_setWebkitImageSmoothingEnabled
         (unCanvasRenderingContext2D self)
         val)
 
foreign import javascript unsafe
        "($1[\"webkitImageSmoothingEnabled\"] ? 1 : 0)"
        js_getWebkitImageSmoothingEnabled ::
        JSRef CanvasRenderingContext2D -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitImageSmoothingEnabled Mozilla CanvasRenderingContext2D.webkitImageSmoothingEnabled documentation> 
getWebkitImageSmoothingEnabled ::
                               (MonadIO m) => CanvasRenderingContext2D -> m Bool
getWebkitImageSmoothingEnabled self
  = liftIO
      (js_getWebkitImageSmoothingEnabled
         (unCanvasRenderingContext2D self))