{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGMatrix
       (js_multiply, multiply, js_inverse, inverse, js_translate,
        translate, js_scale, scale, js_scaleNonUniform, scaleNonUniform,
        js_rotate, rotate, js_rotateFromVector, rotateFromVector, js_flipX,
        flipX, js_flipY, flipY, js_skewX, skewX, js_skewY, skewY, js_setA,
        setA, js_getA, getA, js_setB, setB, js_getB, getB, js_setC, setC,
        js_getC, getC, js_setD, setD, js_getD, getD, js_setE, setE,
        js_getE, getE, js_setF, setF, js_getF, getF, SVGMatrix,
        castToSVGMatrix, gTypeSVGMatrix)
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
 
foreign import javascript unsafe "$1[\"multiply\"]($2)" js_multiply
        :: JSRef SVGMatrix -> JSRef SVGMatrix -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
multiply ::
         (MonadIO m) => SVGMatrix -> Maybe SVGMatrix -> m (Maybe SVGMatrix)
multiply self secondMatrix
  = liftIO
      ((js_multiply (unSVGMatrix self)
          (maybe jsNull pToJSRef secondMatrix))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"inverse\"]()" js_inverse ::
        JSRef SVGMatrix -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverse :: (MonadIO m) => SVGMatrix -> m (Maybe SVGMatrix)
inverse self
  = liftIO ((js_inverse (unSVGMatrix self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"translate\"]($2, $3)"
        js_translate ::
        JSRef SVGMatrix -> Float -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translate ::
          (MonadIO m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
translate self x y
  = liftIO ((js_translate (unSVGMatrix self) x y) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scale\"]($2)" js_scale ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scale :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
scale self scaleFactor
  = liftIO ((js_scale (unSVGMatrix self) scaleFactor) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scaleNonUniform\"]($2, $3)"
        js_scaleNonUniform ::
        JSRef SVGMatrix -> Float -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
scaleNonUniform ::
                (MonadIO m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
scaleNonUniform self scaleFactorX scaleFactorY
  = liftIO
      ((js_scaleNonUniform (unSVGMatrix self) scaleFactorX scaleFactorY)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rotate\"]($2)" js_rotate ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotate :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
rotate self angle
  = liftIO ((js_rotate (unSVGMatrix self) angle) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rotateFromVector\"]($2, $3)"
        js_rotateFromVector ::
        JSRef SVGMatrix -> Float -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVector ::
                 (MonadIO m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
rotateFromVector self x y
  = liftIO
      ((js_rotateFromVector (unSVGMatrix self) x y) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"flipX\"]()" js_flipX ::
        JSRef SVGMatrix -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipX :: (MonadIO m) => SVGMatrix -> m (Maybe SVGMatrix)
flipX self = liftIO ((js_flipX (unSVGMatrix self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"flipY\"]()" js_flipY ::
        JSRef SVGMatrix -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipY :: (MonadIO m) => SVGMatrix -> m (Maybe SVGMatrix)
flipY self = liftIO ((js_flipY (unSVGMatrix self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"skewX\"]($2)" js_skewX ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewX :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewX self angle
  = liftIO ((js_skewX (unSVGMatrix self) angle) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"skewY\"]($2)" js_skewY ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewY :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewY self angle
  = liftIO ((js_skewY (unSVGMatrix self) angle) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"a\"] = $2;" js_setA ::
        JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.a Mozilla SVGMatrix.a documentation> 
setA :: (MonadIO m) => SVGMatrix -> Double -> m ()
setA self val = liftIO (js_setA (unSVGMatrix self) val)
 
foreign import javascript unsafe "$1[\"a\"]" js_getA ::
        JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.a Mozilla SVGMatrix.a documentation> 
getA :: (MonadIO m) => SVGMatrix -> m Double
getA self = liftIO (js_getA (unSVGMatrix self))
 
foreign import javascript unsafe "$1[\"b\"] = $2;" js_setB ::
        JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.b Mozilla SVGMatrix.b documentation> 
setB :: (MonadIO m) => SVGMatrix -> Double -> m ()
setB self val = liftIO (js_setB (unSVGMatrix self) val)
 
foreign import javascript unsafe "$1[\"b\"]" js_getB ::
        JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.b Mozilla SVGMatrix.b documentation> 
getB :: (MonadIO m) => SVGMatrix -> m Double
getB self = liftIO (js_getB (unSVGMatrix self))
 
foreign import javascript unsafe "$1[\"c\"] = $2;" js_setC ::
        JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.c Mozilla SVGMatrix.c documentation> 
setC :: (MonadIO m) => SVGMatrix -> Double -> m ()
setC self val = liftIO (js_setC (unSVGMatrix self) val)
 
foreign import javascript unsafe "$1[\"c\"]" js_getC ::
        JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.c Mozilla SVGMatrix.c documentation> 
getC :: (MonadIO m) => SVGMatrix -> m Double
getC self = liftIO (js_getC (unSVGMatrix self))
 
foreign import javascript unsafe "$1[\"d\"] = $2;" js_setD ::
        JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.d Mozilla SVGMatrix.d documentation> 
setD :: (MonadIO m) => SVGMatrix -> Double -> m ()
setD self val = liftIO (js_setD (unSVGMatrix self) val)
 
foreign import javascript unsafe "$1[\"d\"]" js_getD ::
        JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.d Mozilla SVGMatrix.d documentation> 
getD :: (MonadIO m) => SVGMatrix -> m Double
getD self = liftIO (js_getD (unSVGMatrix self))
 
foreign import javascript unsafe "$1[\"e\"] = $2;" js_setE ::
        JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.e Mozilla SVGMatrix.e documentation> 
setE :: (MonadIO m) => SVGMatrix -> Double -> m ()
setE self val = liftIO (js_setE (unSVGMatrix self) val)
 
foreign import javascript unsafe "$1[\"e\"]" js_getE ::
        JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.e Mozilla SVGMatrix.e documentation> 
getE :: (MonadIO m) => SVGMatrix -> m Double
getE self = liftIO (js_getE (unSVGMatrix self))
 
foreign import javascript unsafe "$1[\"f\"] = $2;" js_setF ::
        JSRef SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.f Mozilla SVGMatrix.f documentation> 
setF :: (MonadIO m) => SVGMatrix -> Double -> m ()
setF self val = liftIO (js_setF (unSVGMatrix self) val)
 
foreign import javascript unsafe "$1[\"f\"]" js_getF ::
        JSRef SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.f Mozilla SVGMatrix.f documentation> 
getF :: (MonadIO m) => SVGMatrix -> m Double
getF self = liftIO (js_getF (unSVGMatrix self))