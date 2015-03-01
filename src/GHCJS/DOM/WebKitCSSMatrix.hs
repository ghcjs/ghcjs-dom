{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitCSSMatrix
       (js_newWebKitCSSMatrix, newWebKitCSSMatrix, js_setMatrixValue,
        setMatrixValue, js_multiply, multiply, js_inverse, inverse,
        js_translate, translate, js_scale, scale, js_rotate, rotate,
        js_rotateAxisAngle, rotateAxisAngle, js_skewX, skewX, js_skewY,
        skewY, js_toString, toString, js_setA, setA, js_getA, getA,
        js_setB, setB, js_getB, getB, js_setC, setC, js_getC, getC,
        js_setD, setD, js_getD, getD, js_setE, setE, js_getE, getE,
        js_setF, setF, js_getF, getF, js_setM11, setM11, js_getM11, getM11,
        js_setM12, setM12, js_getM12, getM12, js_setM13, setM13, js_getM13,
        getM13, js_setM14, setM14, js_getM14, getM14, js_setM21, setM21,
        js_getM21, getM21, js_setM22, setM22, js_getM22, getM22, js_setM23,
        setM23, js_getM23, getM23, js_setM24, setM24, js_getM24, getM24,
        js_setM31, setM31, js_getM31, getM31, js_setM32, setM32, js_getM32,
        getM32, js_setM33, setM33, js_getM33, getM33, js_setM34, setM34,
        js_getM34, getM34, js_setM41, setM41, js_getM41, getM41, js_setM42,
        setM42, js_getM42, getM42, js_setM43, setM43, js_getM43, getM43,
        js_setM44, setM44, js_getM44, getM44, WebKitCSSMatrix,
        castToWebKitCSSMatrix, gTypeWebKitCSSMatrix)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "new window[\"WebKitCSSMatrix\"]($1)" js_newWebKitCSSMatrix ::
        JSString -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix Mozilla WebKitCSSMatrix documentation> 
newWebKitCSSMatrix ::
                   (MonadIO m, ToJSString cssValue) => cssValue -> m WebKitCSSMatrix
newWebKitCSSMatrix cssValue
  = liftIO
      (js_newWebKitCSSMatrix (toJSString cssValue) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"setMatrixValue\"]($2)"
        js_setMatrixValue :: JSRef WebKitCSSMatrix -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.setMatrixValue Mozilla WebKitCSSMatrix.setMatrixValue documentation> 
setMatrixValue ::
               (MonadIO m, ToJSString string) => WebKitCSSMatrix -> string -> m ()
setMatrixValue self string
  = liftIO
      (js_setMatrixValue (unWebKitCSSMatrix self) (toJSString string))
 
foreign import javascript unsafe "$1[\"multiply\"]($2)" js_multiply
        ::
        JSRef WebKitCSSMatrix ->
          JSRef WebKitCSSMatrix -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.multiply Mozilla WebKitCSSMatrix.multiply documentation> 
multiply ::
         (MonadIO m) =>
           WebKitCSSMatrix ->
             Maybe WebKitCSSMatrix -> m (Maybe WebKitCSSMatrix)
multiply self secondMatrix
  = liftIO
      ((js_multiply (unWebKitCSSMatrix self)
          (maybe jsNull unWebKitCSSMatrix secondMatrix))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"inverse\"]()" js_inverse ::
        JSRef WebKitCSSMatrix -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.inverse Mozilla WebKitCSSMatrix.inverse documentation> 
inverse ::
        (MonadIO m) => WebKitCSSMatrix -> m (Maybe WebKitCSSMatrix)
inverse self
  = liftIO ((js_inverse (unWebKitCSSMatrix self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"translate\"]($2, $3, $4)"
        js_translate ::
        JSRef WebKitCSSMatrix ->
          Double -> Double -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.translate Mozilla WebKitCSSMatrix.translate documentation> 
translate ::
          (MonadIO m) =>
            WebKitCSSMatrix ->
              Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
translate self x y z
  = liftIO
      ((js_translate (unWebKitCSSMatrix self) x y z) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scale\"]($2, $3, $4)"
        js_scale ::
        JSRef WebKitCSSMatrix ->
          Double -> Double -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.scale Mozilla WebKitCSSMatrix.scale documentation> 
scale ::
      (MonadIO m) =>
        WebKitCSSMatrix ->
          Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
scale self scaleX scaleY scaleZ
  = liftIO
      ((js_scale (unWebKitCSSMatrix self) scaleX scaleY scaleZ) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"rotate\"]($2, $3, $4)"
        js_rotate ::
        JSRef WebKitCSSMatrix ->
          Double -> Double -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotate Mozilla WebKitCSSMatrix.rotate documentation> 
rotate ::
       (MonadIO m) =>
         WebKitCSSMatrix ->
           Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
rotate self rotX rotY rotZ
  = liftIO
      ((js_rotate (unWebKitCSSMatrix self) rotX rotY rotZ) >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"rotateAxisAngle\"]($2, $3,\n$4, $5)" js_rotateAxisAngle ::
        JSRef WebKitCSSMatrix ->
          Double -> Double -> Double -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotateAxisAngle Mozilla WebKitCSSMatrix.rotateAxisAngle documentation> 
rotateAxisAngle ::
                (MonadIO m) =>
                  WebKitCSSMatrix ->
                    Double -> Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
rotateAxisAngle self x y z angle
  = liftIO
      ((js_rotateAxisAngle (unWebKitCSSMatrix self) x y z angle) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"skewX\"]($2)" js_skewX ::
        JSRef WebKitCSSMatrix -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewX Mozilla WebKitCSSMatrix.skewX documentation> 
skewX ::
      (MonadIO m) =>
        WebKitCSSMatrix -> Double -> m (Maybe WebKitCSSMatrix)
skewX self angle
  = liftIO ((js_skewX (unWebKitCSSMatrix self) angle) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"skewY\"]($2)" js_skewY ::
        JSRef WebKitCSSMatrix -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewY Mozilla WebKitCSSMatrix.skewY documentation> 
skewY ::
      (MonadIO m) =>
        WebKitCSSMatrix -> Double -> m (Maybe WebKitCSSMatrix)
skewY self angle
  = liftIO ((js_skewY (unWebKitCSSMatrix self) angle) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: JSRef WebKitCSSMatrix -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.toString Mozilla WebKitCSSMatrix.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => WebKitCSSMatrix -> m result
toString self
  = liftIO (fromJSString <$> (js_toString (unWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"a\"] = $2;" js_setA ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.a Mozilla WebKitCSSMatrix.a documentation> 
setA :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setA self val = liftIO (js_setA (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"a\"]" js_getA ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.a Mozilla WebKitCSSMatrix.a documentation> 
getA :: (MonadIO m) => WebKitCSSMatrix -> m Double
getA self = liftIO (js_getA (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"b\"] = $2;" js_setB ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.b Mozilla WebKitCSSMatrix.b documentation> 
setB :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setB self val = liftIO (js_setB (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"b\"]" js_getB ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.b Mozilla WebKitCSSMatrix.b documentation> 
getB :: (MonadIO m) => WebKitCSSMatrix -> m Double
getB self = liftIO (js_getB (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"c\"] = $2;" js_setC ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.c Mozilla WebKitCSSMatrix.c documentation> 
setC :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setC self val = liftIO (js_setC (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"c\"]" js_getC ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.c Mozilla WebKitCSSMatrix.c documentation> 
getC :: (MonadIO m) => WebKitCSSMatrix -> m Double
getC self = liftIO (js_getC (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"d\"] = $2;" js_setD ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.d Mozilla WebKitCSSMatrix.d documentation> 
setD :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setD self val = liftIO (js_setD (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"d\"]" js_getD ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.d Mozilla WebKitCSSMatrix.d documentation> 
getD :: (MonadIO m) => WebKitCSSMatrix -> m Double
getD self = liftIO (js_getD (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"e\"] = $2;" js_setE ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.e Mozilla WebKitCSSMatrix.e documentation> 
setE :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setE self val = liftIO (js_setE (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"e\"]" js_getE ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.e Mozilla WebKitCSSMatrix.e documentation> 
getE :: (MonadIO m) => WebKitCSSMatrix -> m Double
getE self = liftIO (js_getE (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"f\"] = $2;" js_setF ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.f Mozilla WebKitCSSMatrix.f documentation> 
setF :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setF self val = liftIO (js_setF (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"f\"]" js_getF ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.f Mozilla WebKitCSSMatrix.f documentation> 
getF :: (MonadIO m) => WebKitCSSMatrix -> m Double
getF self = liftIO (js_getF (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m11\"] = $2;" js_setM11 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m11 Mozilla WebKitCSSMatrix.m11 documentation> 
setM11 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM11 self val = liftIO (js_setM11 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m11\"]" js_getM11 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m11 Mozilla WebKitCSSMatrix.m11 documentation> 
getM11 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM11 self = liftIO (js_getM11 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m12\"] = $2;" js_setM12 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m12 Mozilla WebKitCSSMatrix.m12 documentation> 
setM12 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM12 self val = liftIO (js_setM12 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m12\"]" js_getM12 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m12 Mozilla WebKitCSSMatrix.m12 documentation> 
getM12 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM12 self = liftIO (js_getM12 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m13\"] = $2;" js_setM13 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m13 Mozilla WebKitCSSMatrix.m13 documentation> 
setM13 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM13 self val = liftIO (js_setM13 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m13\"]" js_getM13 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m13 Mozilla WebKitCSSMatrix.m13 documentation> 
getM13 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM13 self = liftIO (js_getM13 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m14\"] = $2;" js_setM14 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m14 Mozilla WebKitCSSMatrix.m14 documentation> 
setM14 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM14 self val = liftIO (js_setM14 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m14\"]" js_getM14 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m14 Mozilla WebKitCSSMatrix.m14 documentation> 
getM14 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM14 self = liftIO (js_getM14 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m21\"] = $2;" js_setM21 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m21 Mozilla WebKitCSSMatrix.m21 documentation> 
setM21 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM21 self val = liftIO (js_setM21 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m21\"]" js_getM21 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m21 Mozilla WebKitCSSMatrix.m21 documentation> 
getM21 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM21 self = liftIO (js_getM21 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m22\"] = $2;" js_setM22 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m22 Mozilla WebKitCSSMatrix.m22 documentation> 
setM22 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM22 self val = liftIO (js_setM22 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m22\"]" js_getM22 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m22 Mozilla WebKitCSSMatrix.m22 documentation> 
getM22 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM22 self = liftIO (js_getM22 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m23\"] = $2;" js_setM23 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m23 Mozilla WebKitCSSMatrix.m23 documentation> 
setM23 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM23 self val = liftIO (js_setM23 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m23\"]" js_getM23 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m23 Mozilla WebKitCSSMatrix.m23 documentation> 
getM23 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM23 self = liftIO (js_getM23 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m24\"] = $2;" js_setM24 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m24 Mozilla WebKitCSSMatrix.m24 documentation> 
setM24 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM24 self val = liftIO (js_setM24 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m24\"]" js_getM24 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m24 Mozilla WebKitCSSMatrix.m24 documentation> 
getM24 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM24 self = liftIO (js_getM24 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m31\"] = $2;" js_setM31 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m31 Mozilla WebKitCSSMatrix.m31 documentation> 
setM31 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM31 self val = liftIO (js_setM31 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m31\"]" js_getM31 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m31 Mozilla WebKitCSSMatrix.m31 documentation> 
getM31 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM31 self = liftIO (js_getM31 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m32\"] = $2;" js_setM32 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m32 Mozilla WebKitCSSMatrix.m32 documentation> 
setM32 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM32 self val = liftIO (js_setM32 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m32\"]" js_getM32 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m32 Mozilla WebKitCSSMatrix.m32 documentation> 
getM32 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM32 self = liftIO (js_getM32 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m33\"] = $2;" js_setM33 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m33 Mozilla WebKitCSSMatrix.m33 documentation> 
setM33 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM33 self val = liftIO (js_setM33 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m33\"]" js_getM33 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m33 Mozilla WebKitCSSMatrix.m33 documentation> 
getM33 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM33 self = liftIO (js_getM33 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m34\"] = $2;" js_setM34 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m34 Mozilla WebKitCSSMatrix.m34 documentation> 
setM34 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM34 self val = liftIO (js_setM34 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m34\"]" js_getM34 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m34 Mozilla WebKitCSSMatrix.m34 documentation> 
getM34 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM34 self = liftIO (js_getM34 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m41\"] = $2;" js_setM41 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m41 Mozilla WebKitCSSMatrix.m41 documentation> 
setM41 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM41 self val = liftIO (js_setM41 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m41\"]" js_getM41 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m41 Mozilla WebKitCSSMatrix.m41 documentation> 
getM41 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM41 self = liftIO (js_getM41 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m42\"] = $2;" js_setM42 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m42 Mozilla WebKitCSSMatrix.m42 documentation> 
setM42 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM42 self val = liftIO (js_setM42 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m42\"]" js_getM42 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m42 Mozilla WebKitCSSMatrix.m42 documentation> 
getM42 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM42 self = liftIO (js_getM42 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m43\"] = $2;" js_setM43 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m43 Mozilla WebKitCSSMatrix.m43 documentation> 
setM43 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM43 self val = liftIO (js_setM43 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m43\"]" js_getM43 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m43 Mozilla WebKitCSSMatrix.m43 documentation> 
getM43 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM43 self = liftIO (js_getM43 (unWebKitCSSMatrix self))
 
foreign import javascript unsafe "$1[\"m44\"] = $2;" js_setM44 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m44 Mozilla WebKitCSSMatrix.m44 documentation> 
setM44 :: (MonadIO m) => WebKitCSSMatrix -> Double -> m ()
setM44 self val = liftIO (js_setM44 (unWebKitCSSMatrix self) val)
 
foreign import javascript unsafe "$1[\"m44\"]" js_getM44 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m44 Mozilla WebKitCSSMatrix.m44 documentation> 
getM44 :: (MonadIO m) => WebKitCSSMatrix -> m Double
getM44 self = liftIO (js_getM44 (unWebKitCSSMatrix self))
#else
module GHCJS.DOM.WebKitCSSMatrix (
  ) where
#endif
