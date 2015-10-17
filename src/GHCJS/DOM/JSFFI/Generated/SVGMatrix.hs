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
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"multiply\"]($2)" js_multiply
        :: SVGMatrix -> Nullable SVGMatrix -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
multiply ::
         (MonadIO m) => SVGMatrix -> Maybe SVGMatrix -> m (Maybe SVGMatrix)
multiply self secondMatrix
  = liftIO
      (nullableToMaybe <$>
         (js_multiply (self) (maybeToNullable secondMatrix)))
 
foreign import javascript unsafe "$1[\"inverse\"]()" js_inverse ::
        SVGMatrix -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverse :: (MonadIO m) => SVGMatrix -> m (Maybe SVGMatrix)
inverse self = liftIO (nullableToMaybe <$> (js_inverse (self)))
 
foreign import javascript unsafe "$1[\"translate\"]($2, $3)"
        js_translate ::
        SVGMatrix -> Float -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translate ::
          (MonadIO m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
translate self x y
  = liftIO (nullableToMaybe <$> (js_translate (self) x y))
 
foreign import javascript unsafe "$1[\"scale\"]($2)" js_scale ::
        SVGMatrix -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scale :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
scale self scaleFactor
  = liftIO (nullableToMaybe <$> (js_scale (self) scaleFactor))
 
foreign import javascript unsafe "$1[\"scaleNonUniform\"]($2, $3)"
        js_scaleNonUniform ::
        SVGMatrix -> Float -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
scaleNonUniform ::
                (MonadIO m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
scaleNonUniform self scaleFactorX scaleFactorY
  = liftIO
      (nullableToMaybe <$>
         (js_scaleNonUniform (self) scaleFactorX scaleFactorY))
 
foreign import javascript unsafe "$1[\"rotate\"]($2)" js_rotate ::
        SVGMatrix -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotate :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
rotate self angle
  = liftIO (nullableToMaybe <$> (js_rotate (self) angle))
 
foreign import javascript unsafe "$1[\"rotateFromVector\"]($2, $3)"
        js_rotateFromVector ::
        SVGMatrix -> Float -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVector ::
                 (MonadIO m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
rotateFromVector self x y
  = liftIO (nullableToMaybe <$> (js_rotateFromVector (self) x y))
 
foreign import javascript unsafe "$1[\"flipX\"]()" js_flipX ::
        SVGMatrix -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipX :: (MonadIO m) => SVGMatrix -> m (Maybe SVGMatrix)
flipX self = liftIO (nullableToMaybe <$> (js_flipX (self)))
 
foreign import javascript unsafe "$1[\"flipY\"]()" js_flipY ::
        SVGMatrix -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipY :: (MonadIO m) => SVGMatrix -> m (Maybe SVGMatrix)
flipY self = liftIO (nullableToMaybe <$> (js_flipY (self)))
 
foreign import javascript unsafe "$1[\"skewX\"]($2)" js_skewX ::
        SVGMatrix -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewX :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewX self angle
  = liftIO (nullableToMaybe <$> (js_skewX (self) angle))
 
foreign import javascript unsafe "$1[\"skewY\"]($2)" js_skewY ::
        SVGMatrix -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewY :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewY self angle
  = liftIO (nullableToMaybe <$> (js_skewY (self) angle))
 
foreign import javascript unsafe "$1[\"a\"] = $2;" js_setA ::
        SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.a Mozilla SVGMatrix.a documentation> 
setA :: (MonadIO m) => SVGMatrix -> Double -> m ()
setA self val = liftIO (js_setA (self) val)
 
foreign import javascript unsafe "$1[\"a\"]" js_getA ::
        SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.a Mozilla SVGMatrix.a documentation> 
getA :: (MonadIO m) => SVGMatrix -> m Double
getA self = liftIO (js_getA (self))
 
foreign import javascript unsafe "$1[\"b\"] = $2;" js_setB ::
        SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.b Mozilla SVGMatrix.b documentation> 
setB :: (MonadIO m) => SVGMatrix -> Double -> m ()
setB self val = liftIO (js_setB (self) val)
 
foreign import javascript unsafe "$1[\"b\"]" js_getB ::
        SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.b Mozilla SVGMatrix.b documentation> 
getB :: (MonadIO m) => SVGMatrix -> m Double
getB self = liftIO (js_getB (self))
 
foreign import javascript unsafe "$1[\"c\"] = $2;" js_setC ::
        SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.c Mozilla SVGMatrix.c documentation> 
setC :: (MonadIO m) => SVGMatrix -> Double -> m ()
setC self val = liftIO (js_setC (self) val)
 
foreign import javascript unsafe "$1[\"c\"]" js_getC ::
        SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.c Mozilla SVGMatrix.c documentation> 
getC :: (MonadIO m) => SVGMatrix -> m Double
getC self = liftIO (js_getC (self))
 
foreign import javascript unsafe "$1[\"d\"] = $2;" js_setD ::
        SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.d Mozilla SVGMatrix.d documentation> 
setD :: (MonadIO m) => SVGMatrix -> Double -> m ()
setD self val = liftIO (js_setD (self) val)
 
foreign import javascript unsafe "$1[\"d\"]" js_getD ::
        SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.d Mozilla SVGMatrix.d documentation> 
getD :: (MonadIO m) => SVGMatrix -> m Double
getD self = liftIO (js_getD (self))
 
foreign import javascript unsafe "$1[\"e\"] = $2;" js_setE ::
        SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.e Mozilla SVGMatrix.e documentation> 
setE :: (MonadIO m) => SVGMatrix -> Double -> m ()
setE self val = liftIO (js_setE (self) val)
 
foreign import javascript unsafe "$1[\"e\"]" js_getE ::
        SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.e Mozilla SVGMatrix.e documentation> 
getE :: (MonadIO m) => SVGMatrix -> m Double
getE self = liftIO (js_getE (self))
 
foreign import javascript unsafe "$1[\"f\"] = $2;" js_setF ::
        SVGMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.f Mozilla SVGMatrix.f documentation> 
setF :: (MonadIO m) => SVGMatrix -> Double -> m ()
setF self val = liftIO (js_setF (self) val)
 
foreign import javascript unsafe "$1[\"f\"]" js_getF ::
        SVGMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.f Mozilla SVGMatrix.f documentation> 
getF :: (MonadIO m) => SVGMatrix -> m Double
getF self = liftIO (js_getF (self))