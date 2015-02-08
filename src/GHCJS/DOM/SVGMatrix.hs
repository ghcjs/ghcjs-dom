{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGMatrix
       (ghcjs_dom_svg_matrix_multiply, svgMatrixMultiply,
        ghcjs_dom_svg_matrix_inverse, svgMatrixInverse,
        ghcjs_dom_svg_matrix_translate, svgMatrixTranslate,
        ghcjs_dom_svg_matrix_scale, svgMatrixScale,
        ghcjs_dom_svg_matrix_scale_non_uniform, svgMatrixScaleNonUniform,
        ghcjs_dom_svg_matrix_rotate, svgMatrixRotate,
        ghcjs_dom_svg_matrix_rotate_from_vector, svgMatrixRotateFromVector,
        ghcjs_dom_svg_matrix_flip_x, svgMatrixFlipX,
        ghcjs_dom_svg_matrix_flip_y, svgMatrixFlipY,
        ghcjs_dom_svg_matrix_skew_x, svgMatrixSkewX,
        ghcjs_dom_svg_matrix_skew_y, svgMatrixSkewY,
        ghcjs_dom_svg_matrix_set_a, svgMatrixSetA,
        ghcjs_dom_svg_matrix_get_a, svgMatrixGetA,
        ghcjs_dom_svg_matrix_set_b, svgMatrixSetB,
        ghcjs_dom_svg_matrix_get_b, svgMatrixGetB,
        ghcjs_dom_svg_matrix_set_c, svgMatrixSetC,
        ghcjs_dom_svg_matrix_get_c, svgMatrixGetC,
        ghcjs_dom_svg_matrix_set_d, svgMatrixSetD,
        ghcjs_dom_svg_matrix_get_d, svgMatrixGetD,
        ghcjs_dom_svg_matrix_set_e, svgMatrixSetE,
        ghcjs_dom_svg_matrix_get_e, svgMatrixGetE,
        ghcjs_dom_svg_matrix_set_f, svgMatrixSetF,
        ghcjs_dom_svg_matrix_get_f, svgMatrixGetF, SVGMatrix, IsSVGMatrix,
        castToSVGMatrix, gTypeSVGMatrix, toSVGMatrix)
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

 
foreign import javascript unsafe "$1[\"multiply\"]($2)"
        ghcjs_dom_svg_matrix_multiply ::
        JSRef SVGMatrix -> JSRef SVGMatrix -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
svgMatrixMultiply ::
                  (MonadIO m, IsSVGMatrix self, IsSVGMatrix secondMatrix) =>
                    self -> Maybe secondMatrix -> m (Maybe SVGMatrix)
svgMatrixMultiply self secondMatrix
  = liftIO
      ((ghcjs_dom_svg_matrix_multiply (unSVGMatrix (toSVGMatrix self))
          (maybe jsNull (unSVGMatrix . toSVGMatrix) secondMatrix))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"inverse\"]()"
        ghcjs_dom_svg_matrix_inverse ::
        JSRef SVGMatrix -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
svgMatrixInverse ::
                 (MonadIO m, IsSVGMatrix self) => self -> m (Maybe SVGMatrix)
svgMatrixInverse self
  = liftIO
      ((ghcjs_dom_svg_matrix_inverse (unSVGMatrix (toSVGMatrix self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"translate\"]($2, $3)"
        ghcjs_dom_svg_matrix_translate ::
        JSRef SVGMatrix -> Float -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
svgMatrixTranslate ::
                   (MonadIO m, IsSVGMatrix self) =>
                     self -> Float -> Float -> m (Maybe SVGMatrix)
svgMatrixTranslate self x y
  = liftIO
      ((ghcjs_dom_svg_matrix_translate (unSVGMatrix (toSVGMatrix self)) x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scale\"]($2)"
        ghcjs_dom_svg_matrix_scale ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
svgMatrixScale ::
               (MonadIO m, IsSVGMatrix self) =>
                 self -> Float -> m (Maybe SVGMatrix)
svgMatrixScale self scaleFactor
  = liftIO
      ((ghcjs_dom_svg_matrix_scale (unSVGMatrix (toSVGMatrix self))
          scaleFactor)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scaleNonUniform\"]($2, $3)"
        ghcjs_dom_svg_matrix_scale_non_uniform ::
        JSRef SVGMatrix -> Float -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
svgMatrixScaleNonUniform ::
                         (MonadIO m, IsSVGMatrix self) =>
                           self -> Float -> Float -> m (Maybe SVGMatrix)
svgMatrixScaleNonUniform self scaleFactorX scaleFactorY
  = liftIO
      ((ghcjs_dom_svg_matrix_scale_non_uniform
          (unSVGMatrix (toSVGMatrix self))
          scaleFactorX
          scaleFactorY)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rotate\"]($2)"
        ghcjs_dom_svg_matrix_rotate ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
svgMatrixRotate ::
                (MonadIO m, IsSVGMatrix self) =>
                  self -> Float -> m (Maybe SVGMatrix)
svgMatrixRotate self angle
  = liftIO
      ((ghcjs_dom_svg_matrix_rotate (unSVGMatrix (toSVGMatrix self))
          angle)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rotateFromVector\"]($2, $3)"
        ghcjs_dom_svg_matrix_rotate_from_vector ::
        JSRef SVGMatrix -> Float -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
svgMatrixRotateFromVector ::
                          (MonadIO m, IsSVGMatrix self) =>
                            self -> Float -> Float -> m (Maybe SVGMatrix)
svgMatrixRotateFromVector self x y
  = liftIO
      ((ghcjs_dom_svg_matrix_rotate_from_vector
          (unSVGMatrix (toSVGMatrix self))
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"flipX\"]()"
        ghcjs_dom_svg_matrix_flip_x ::
        JSRef SVGMatrix -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
svgMatrixFlipX ::
               (MonadIO m, IsSVGMatrix self) => self -> m (Maybe SVGMatrix)
svgMatrixFlipX self
  = liftIO
      ((ghcjs_dom_svg_matrix_flip_x (unSVGMatrix (toSVGMatrix self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"flipY\"]()"
        ghcjs_dom_svg_matrix_flip_y ::
        JSRef SVGMatrix -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
svgMatrixFlipY ::
               (MonadIO m, IsSVGMatrix self) => self -> m (Maybe SVGMatrix)
svgMatrixFlipY self
  = liftIO
      ((ghcjs_dom_svg_matrix_flip_y (unSVGMatrix (toSVGMatrix self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"skewX\"]($2)"
        ghcjs_dom_svg_matrix_skew_x ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
svgMatrixSkewX ::
               (MonadIO m, IsSVGMatrix self) =>
                 self -> Float -> m (Maybe SVGMatrix)
svgMatrixSkewX self angle
  = liftIO
      ((ghcjs_dom_svg_matrix_skew_x (unSVGMatrix (toSVGMatrix self))
          angle)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"skewY\"]($2)"
        ghcjs_dom_svg_matrix_skew_y ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
svgMatrixSkewY ::
               (MonadIO m, IsSVGMatrix self) =>
                 self -> Float -> m (Maybe SVGMatrix)
svgMatrixSkewY self angle
  = liftIO
      ((ghcjs_dom_svg_matrix_skew_y (unSVGMatrix (toSVGMatrix self))
          angle)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"a\"] = $2;"
        ghcjs_dom_svg_matrix_set_a :: JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.a Mozilla SVGMatrix.a documentation> 
svgMatrixSetA ::
              (MonadIO m, IsSVGMatrix self) => self -> Double -> m ()
svgMatrixSetA self val
  = liftIO
      (ghcjs_dom_svg_matrix_set_a (unSVGMatrix (toSVGMatrix self)) val)
 
foreign import javascript unsafe "$1[\"a\"]"
        ghcjs_dom_svg_matrix_get_a :: JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.a Mozilla SVGMatrix.a documentation> 
svgMatrixGetA :: (MonadIO m, IsSVGMatrix self) => self -> m Double
svgMatrixGetA self
  = liftIO
      (ghcjs_dom_svg_matrix_get_a (unSVGMatrix (toSVGMatrix self)))
 
foreign import javascript unsafe "$1[\"b\"] = $2;"
        ghcjs_dom_svg_matrix_set_b :: JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.b Mozilla SVGMatrix.b documentation> 
svgMatrixSetB ::
              (MonadIO m, IsSVGMatrix self) => self -> Double -> m ()
svgMatrixSetB self val
  = liftIO
      (ghcjs_dom_svg_matrix_set_b (unSVGMatrix (toSVGMatrix self)) val)
 
foreign import javascript unsafe "$1[\"b\"]"
        ghcjs_dom_svg_matrix_get_b :: JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.b Mozilla SVGMatrix.b documentation> 
svgMatrixGetB :: (MonadIO m, IsSVGMatrix self) => self -> m Double
svgMatrixGetB self
  = liftIO
      (ghcjs_dom_svg_matrix_get_b (unSVGMatrix (toSVGMatrix self)))
 
foreign import javascript unsafe "$1[\"c\"] = $2;"
        ghcjs_dom_svg_matrix_set_c :: JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.c Mozilla SVGMatrix.c documentation> 
svgMatrixSetC ::
              (MonadIO m, IsSVGMatrix self) => self -> Double -> m ()
svgMatrixSetC self val
  = liftIO
      (ghcjs_dom_svg_matrix_set_c (unSVGMatrix (toSVGMatrix self)) val)
 
foreign import javascript unsafe "$1[\"c\"]"
        ghcjs_dom_svg_matrix_get_c :: JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.c Mozilla SVGMatrix.c documentation> 
svgMatrixGetC :: (MonadIO m, IsSVGMatrix self) => self -> m Double
svgMatrixGetC self
  = liftIO
      (ghcjs_dom_svg_matrix_get_c (unSVGMatrix (toSVGMatrix self)))
 
foreign import javascript unsafe "$1[\"d\"] = $2;"
        ghcjs_dom_svg_matrix_set_d :: JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.d Mozilla SVGMatrix.d documentation> 
svgMatrixSetD ::
              (MonadIO m, IsSVGMatrix self) => self -> Double -> m ()
svgMatrixSetD self val
  = liftIO
      (ghcjs_dom_svg_matrix_set_d (unSVGMatrix (toSVGMatrix self)) val)
 
foreign import javascript unsafe "$1[\"d\"]"
        ghcjs_dom_svg_matrix_get_d :: JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.d Mozilla SVGMatrix.d documentation> 
svgMatrixGetD :: (MonadIO m, IsSVGMatrix self) => self -> m Double
svgMatrixGetD self
  = liftIO
      (ghcjs_dom_svg_matrix_get_d (unSVGMatrix (toSVGMatrix self)))
 
foreign import javascript unsafe "$1[\"e\"] = $2;"
        ghcjs_dom_svg_matrix_set_e :: JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.e Mozilla SVGMatrix.e documentation> 
svgMatrixSetE ::
              (MonadIO m, IsSVGMatrix self) => self -> Double -> m ()
svgMatrixSetE self val
  = liftIO
      (ghcjs_dom_svg_matrix_set_e (unSVGMatrix (toSVGMatrix self)) val)
 
foreign import javascript unsafe "$1[\"e\"]"
        ghcjs_dom_svg_matrix_get_e :: JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.e Mozilla SVGMatrix.e documentation> 
svgMatrixGetE :: (MonadIO m, IsSVGMatrix self) => self -> m Double
svgMatrixGetE self
  = liftIO
      (ghcjs_dom_svg_matrix_get_e (unSVGMatrix (toSVGMatrix self)))
 
foreign import javascript unsafe "$1[\"f\"] = $2;"
        ghcjs_dom_svg_matrix_set_f :: JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.f Mozilla SVGMatrix.f documentation> 
svgMatrixSetF ::
              (MonadIO m, IsSVGMatrix self) => self -> Double -> m ()
svgMatrixSetF self val
  = liftIO
      (ghcjs_dom_svg_matrix_set_f (unSVGMatrix (toSVGMatrix self)) val)
 
foreign import javascript unsafe "$1[\"f\"]"
        ghcjs_dom_svg_matrix_get_f :: JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.f Mozilla SVGMatrix.f documentation> 
svgMatrixGetF :: (MonadIO m, IsSVGMatrix self) => self -> m Double
svgMatrixGetF self
  = liftIO
      (ghcjs_dom_svg_matrix_get_f (unSVGMatrix (toSVGMatrix self)))
#else
module GHCJS.DOM.SVGMatrix (
  ) where
#endif
