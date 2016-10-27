{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGMatrix
       (js_multiply, multiply, multiply_, multiplyUnsafe,
        multiplyUnchecked, js_inverse, inverse, inverse_, inverseUnsafe,
        inverseUnchecked, js_translate, translate, translate_,
        translateUnsafe, translateUnchecked, js_scale, scale, scale_,
        scaleUnsafe, scaleUnchecked, js_scaleNonUniform, scaleNonUniform,
        scaleNonUniform_, scaleNonUniformUnsafe, scaleNonUniformUnchecked,
        js_rotate, rotate, rotate_, rotateUnsafe, rotateUnchecked,
        js_rotateFromVector, rotateFromVector, rotateFromVector_,
        rotateFromVectorUnsafe, rotateFromVectorUnchecked, js_flipX, flipX,
        flipX_, flipXUnsafe, flipXUnchecked, js_flipY, flipY, flipY_,
        flipYUnsafe, flipYUnchecked, js_skewX, skewX, skewX_, skewXUnsafe,
        skewXUnchecked, js_skewY, skewY, skewY_, skewYUnsafe,
        skewYUnchecked, js_setA, setA, js_getA, getA, js_setB, setB,
        js_getB, getB, js_setC, setC, js_getC, getC, js_setD, setD,
        js_getD, getD, js_setE, setE, js_getE, getE, js_setF, setF,
        js_getF, getF, SVGMatrix(..), gTypeSVGMatrix)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"multiply\"]($2)" js_multiply
        :: SVGMatrix -> Nullable SVGMatrix -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
multiply ::
         (MonadIO m) => SVGMatrix -> Maybe SVGMatrix -> m (Maybe SVGMatrix)
multiply self secondMatrix
  = liftIO
      (nullableToMaybe <$>
         (js_multiply (self) (maybeToNullable secondMatrix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
multiply_ :: (MonadIO m) => SVGMatrix -> Maybe SVGMatrix -> m ()
multiply_ self secondMatrix
  = liftIO (void (js_multiply (self) (maybeToNullable secondMatrix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
multiplyUnsafe ::
               (MonadIO m, HasCallStack) =>
                 SVGMatrix -> Maybe SVGMatrix -> m SVGMatrix
multiplyUnsafe self secondMatrix
  = liftIO
      ((nullableToMaybe <$>
          (js_multiply (self) (maybeToNullable secondMatrix)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
multiplyUnchecked ::
                  (MonadIO m) => SVGMatrix -> Maybe SVGMatrix -> m SVGMatrix
multiplyUnchecked self secondMatrix
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_multiply (self) (maybeToNullable secondMatrix)))
 
foreign import javascript unsafe "$1[\"inverse\"]()" js_inverse ::
        SVGMatrix -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverse :: (MonadIO m) => SVGMatrix -> m (Maybe SVGMatrix)
inverse self = liftIO (nullableToMaybe <$> (js_inverse (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverse_ :: (MonadIO m) => SVGMatrix -> m ()
inverse_ self = liftIO (void (js_inverse (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverseUnsafe ::
              (MonadIO m, HasCallStack) => SVGMatrix -> m SVGMatrix
inverseUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_inverse (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverseUnchecked :: (MonadIO m) => SVGMatrix -> m SVGMatrix
inverseUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_inverse (self)))
 
foreign import javascript unsafe "$1[\"translate\"]($2, $3)"
        js_translate ::
        SVGMatrix -> Float -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translate ::
          (MonadIO m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
translate self x y
  = liftIO (nullableToMaybe <$> (js_translate (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translate_ :: (MonadIO m) => SVGMatrix -> Float -> Float -> m ()
translate_ self x y = liftIO (void (js_translate (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translateUnsafe ::
                (MonadIO m, HasCallStack) =>
                  SVGMatrix -> Float -> Float -> m SVGMatrix
translateUnsafe self x y
  = liftIO
      ((nullableToMaybe <$> (js_translate (self) x y)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translateUnchecked ::
                   (MonadIO m) => SVGMatrix -> Float -> Float -> m SVGMatrix
translateUnchecked self x y
  = liftIO (fromJust . nullableToMaybe <$> (js_translate (self) x y))
 
foreign import javascript unsafe "$1[\"scale\"]($2)" js_scale ::
        SVGMatrix -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scale :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
scale self scaleFactor
  = liftIO (nullableToMaybe <$> (js_scale (self) scaleFactor))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scale_ :: (MonadIO m) => SVGMatrix -> Float -> m ()
scale_ self scaleFactor
  = liftIO (void (js_scale (self) scaleFactor))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scaleUnsafe ::
            (MonadIO m, HasCallStack) => SVGMatrix -> Float -> m SVGMatrix
scaleUnsafe self scaleFactor
  = liftIO
      ((nullableToMaybe <$> (js_scale (self) scaleFactor)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scaleUnchecked :: (MonadIO m) => SVGMatrix -> Float -> m SVGMatrix
scaleUnchecked self scaleFactor
  = liftIO
      (fromJust . nullableToMaybe <$> (js_scale (self) scaleFactor))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
scaleNonUniform_ ::
                 (MonadIO m) => SVGMatrix -> Float -> Float -> m ()
scaleNonUniform_ self scaleFactorX scaleFactorY
  = liftIO
      (void (js_scaleNonUniform (self) scaleFactorX scaleFactorY))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
scaleNonUniformUnsafe ::
                      (MonadIO m, HasCallStack) =>
                        SVGMatrix -> Float -> Float -> m SVGMatrix
scaleNonUniformUnsafe self scaleFactorX scaleFactorY
  = liftIO
      ((nullableToMaybe <$>
          (js_scaleNonUniform (self) scaleFactorX scaleFactorY))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
scaleNonUniformUnchecked ::
                         (MonadIO m) => SVGMatrix -> Float -> Float -> m SVGMatrix
scaleNonUniformUnchecked self scaleFactorX scaleFactorY
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_scaleNonUniform (self) scaleFactorX scaleFactorY))
 
foreign import javascript unsafe "$1[\"rotate\"]($2)" js_rotate ::
        SVGMatrix -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotate :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
rotate self angle
  = liftIO (nullableToMaybe <$> (js_rotate (self) angle))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotate_ :: (MonadIO m) => SVGMatrix -> Float -> m ()
rotate_ self angle = liftIO (void (js_rotate (self) angle))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotateUnsafe ::
             (MonadIO m, HasCallStack) => SVGMatrix -> Float -> m SVGMatrix
rotateUnsafe self angle
  = liftIO
      ((nullableToMaybe <$> (js_rotate (self) angle)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotateUnchecked :: (MonadIO m) => SVGMatrix -> Float -> m SVGMatrix
rotateUnchecked self angle
  = liftIO (fromJust . nullableToMaybe <$> (js_rotate (self) angle))
 
foreign import javascript unsafe "$1[\"rotateFromVector\"]($2, $3)"
        js_rotateFromVector ::
        SVGMatrix -> Float -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVector ::
                 (MonadIO m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
rotateFromVector self x y
  = liftIO (nullableToMaybe <$> (js_rotateFromVector (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVector_ ::
                  (MonadIO m) => SVGMatrix -> Float -> Float -> m ()
rotateFromVector_ self x y
  = liftIO (void (js_rotateFromVector (self) x y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVectorUnsafe ::
                       (MonadIO m, HasCallStack) =>
                         SVGMatrix -> Float -> Float -> m SVGMatrix
rotateFromVectorUnsafe self x y
  = liftIO
      ((nullableToMaybe <$> (js_rotateFromVector (self) x y)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVectorUnchecked ::
                          (MonadIO m) => SVGMatrix -> Float -> Float -> m SVGMatrix
rotateFromVectorUnchecked self x y
  = liftIO
      (fromJust . nullableToMaybe <$> (js_rotateFromVector (self) x y))
 
foreign import javascript unsafe "$1[\"flipX\"]()" js_flipX ::
        SVGMatrix -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipX :: (MonadIO m) => SVGMatrix -> m (Maybe SVGMatrix)
flipX self = liftIO (nullableToMaybe <$> (js_flipX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipX_ :: (MonadIO m) => SVGMatrix -> m ()
flipX_ self = liftIO (void (js_flipX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipXUnsafe ::
            (MonadIO m, HasCallStack) => SVGMatrix -> m SVGMatrix
flipXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_flipX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipXUnchecked :: (MonadIO m) => SVGMatrix -> m SVGMatrix
flipXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_flipX (self)))
 
foreign import javascript unsafe "$1[\"flipY\"]()" js_flipY ::
        SVGMatrix -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipY :: (MonadIO m) => SVGMatrix -> m (Maybe SVGMatrix)
flipY self = liftIO (nullableToMaybe <$> (js_flipY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipY_ :: (MonadIO m) => SVGMatrix -> m ()
flipY_ self = liftIO (void (js_flipY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipYUnsafe ::
            (MonadIO m, HasCallStack) => SVGMatrix -> m SVGMatrix
flipYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_flipY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipYUnchecked :: (MonadIO m) => SVGMatrix -> m SVGMatrix
flipYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_flipY (self)))
 
foreign import javascript unsafe "$1[\"skewX\"]($2)" js_skewX ::
        SVGMatrix -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewX :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewX self angle
  = liftIO (nullableToMaybe <$> (js_skewX (self) angle))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewX_ :: (MonadIO m) => SVGMatrix -> Float -> m ()
skewX_ self angle = liftIO (void (js_skewX (self) angle))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewXUnsafe ::
            (MonadIO m, HasCallStack) => SVGMatrix -> Float -> m SVGMatrix
skewXUnsafe self angle
  = liftIO
      ((nullableToMaybe <$> (js_skewX (self) angle)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewXUnchecked :: (MonadIO m) => SVGMatrix -> Float -> m SVGMatrix
skewXUnchecked self angle
  = liftIO (fromJust . nullableToMaybe <$> (js_skewX (self) angle))
 
foreign import javascript unsafe "$1[\"skewY\"]($2)" js_skewY ::
        SVGMatrix -> Float -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewY :: (MonadIO m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewY self angle
  = liftIO (nullableToMaybe <$> (js_skewY (self) angle))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewY_ :: (MonadIO m) => SVGMatrix -> Float -> m ()
skewY_ self angle = liftIO (void (js_skewY (self) angle))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewYUnsafe ::
            (MonadIO m, HasCallStack) => SVGMatrix -> Float -> m SVGMatrix
skewYUnsafe self angle
  = liftIO
      ((nullableToMaybe <$> (js_skewY (self) angle)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewYUnchecked :: (MonadIO m) => SVGMatrix -> Float -> m SVGMatrix
skewYUnchecked self angle
  = liftIO (fromJust . nullableToMaybe <$> (js_skewY (self) angle))
 
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