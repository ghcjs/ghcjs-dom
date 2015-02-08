{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitCSSMatrix
       (ghcjs_dom_webkit_css_matrix_new, webKitCSSMatrixNew,
        ghcjs_dom_webkit_css_matrix_set_matrix_value,
        webKitCSSMatrixSetMatrixValue,
        ghcjs_dom_webkit_css_matrix_multiply, webKitCSSMatrixMultiply,
        ghcjs_dom_webkit_css_matrix_inverse, webKitCSSMatrixInverse,
        ghcjs_dom_webkit_css_matrix_translate, webKitCSSMatrixTranslate,
        ghcjs_dom_webkit_css_matrix_scale, webKitCSSMatrixScale,
        ghcjs_dom_webkit_css_matrix_rotate, webKitCSSMatrixRotate,
        ghcjs_dom_webkit_css_matrix_rotate_axis_angle,
        webKitCSSMatrixRotateAxisAngle, ghcjs_dom_webkit_css_matrix_skew_x,
        webKitCSSMatrixSkewX, ghcjs_dom_webkit_css_matrix_skew_y,
        webKitCSSMatrixSkewY, ghcjs_dom_webkit_css_matrix_to_string,
        webKitCSSMatrixToString, ghcjs_dom_webkit_css_matrix_set_a,
        webKitCSSMatrixSetA, ghcjs_dom_webkit_css_matrix_get_a,
        webKitCSSMatrixGetA, ghcjs_dom_webkit_css_matrix_set_b,
        webKitCSSMatrixSetB, ghcjs_dom_webkit_css_matrix_get_b,
        webKitCSSMatrixGetB, ghcjs_dom_webkit_css_matrix_set_c,
        webKitCSSMatrixSetC, ghcjs_dom_webkit_css_matrix_get_c,
        webKitCSSMatrixGetC, ghcjs_dom_webkit_css_matrix_set_d,
        webKitCSSMatrixSetD, ghcjs_dom_webkit_css_matrix_get_d,
        webKitCSSMatrixGetD, ghcjs_dom_webkit_css_matrix_set_e,
        webKitCSSMatrixSetE, ghcjs_dom_webkit_css_matrix_get_e,
        webKitCSSMatrixGetE, ghcjs_dom_webkit_css_matrix_set_f,
        webKitCSSMatrixSetF, ghcjs_dom_webkit_css_matrix_get_f,
        webKitCSSMatrixGetF, ghcjs_dom_webkit_css_matrix_set_m11,
        webKitCSSMatrixSetM11, ghcjs_dom_webkit_css_matrix_get_m11,
        webKitCSSMatrixGetM11, ghcjs_dom_webkit_css_matrix_set_m12,
        webKitCSSMatrixSetM12, ghcjs_dom_webkit_css_matrix_get_m12,
        webKitCSSMatrixGetM12, ghcjs_dom_webkit_css_matrix_set_m13,
        webKitCSSMatrixSetM13, ghcjs_dom_webkit_css_matrix_get_m13,
        webKitCSSMatrixGetM13, ghcjs_dom_webkit_css_matrix_set_m14,
        webKitCSSMatrixSetM14, ghcjs_dom_webkit_css_matrix_get_m14,
        webKitCSSMatrixGetM14, ghcjs_dom_webkit_css_matrix_set_m21,
        webKitCSSMatrixSetM21, ghcjs_dom_webkit_css_matrix_get_m21,
        webKitCSSMatrixGetM21, ghcjs_dom_webkit_css_matrix_set_m22,
        webKitCSSMatrixSetM22, ghcjs_dom_webkit_css_matrix_get_m22,
        webKitCSSMatrixGetM22, ghcjs_dom_webkit_css_matrix_set_m23,
        webKitCSSMatrixSetM23, ghcjs_dom_webkit_css_matrix_get_m23,
        webKitCSSMatrixGetM23, ghcjs_dom_webkit_css_matrix_set_m24,
        webKitCSSMatrixSetM24, ghcjs_dom_webkit_css_matrix_get_m24,
        webKitCSSMatrixGetM24, ghcjs_dom_webkit_css_matrix_set_m31,
        webKitCSSMatrixSetM31, ghcjs_dom_webkit_css_matrix_get_m31,
        webKitCSSMatrixGetM31, ghcjs_dom_webkit_css_matrix_set_m32,
        webKitCSSMatrixSetM32, ghcjs_dom_webkit_css_matrix_get_m32,
        webKitCSSMatrixGetM32, ghcjs_dom_webkit_css_matrix_set_m33,
        webKitCSSMatrixSetM33, ghcjs_dom_webkit_css_matrix_get_m33,
        webKitCSSMatrixGetM33, ghcjs_dom_webkit_css_matrix_set_m34,
        webKitCSSMatrixSetM34, ghcjs_dom_webkit_css_matrix_get_m34,
        webKitCSSMatrixGetM34, ghcjs_dom_webkit_css_matrix_set_m41,
        webKitCSSMatrixSetM41, ghcjs_dom_webkit_css_matrix_get_m41,
        webKitCSSMatrixGetM41, ghcjs_dom_webkit_css_matrix_set_m42,
        webKitCSSMatrixSetM42, ghcjs_dom_webkit_css_matrix_get_m42,
        webKitCSSMatrixGetM42, ghcjs_dom_webkit_css_matrix_set_m43,
        webKitCSSMatrixSetM43, ghcjs_dom_webkit_css_matrix_get_m43,
        webKitCSSMatrixGetM43, ghcjs_dom_webkit_css_matrix_set_m44,
        webKitCSSMatrixSetM44, ghcjs_dom_webkit_css_matrix_get_m44,
        webKitCSSMatrixGetM44, WebKitCSSMatrix, IsWebKitCSSMatrix,
        castToWebKitCSSMatrix, gTypeWebKitCSSMatrix, toWebKitCSSMatrix)
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

 
foreign import javascript unsafe
        "new window[\"WebKitCSSMatrix\"]($1)"
        ghcjs_dom_webkit_css_matrix_new ::
        JSString -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix Mozilla WebKitCSSMatrix documentation> 
webKitCSSMatrixNew ::
                   (MonadIO m, ToJSString cssValue) => cssValue -> m WebKitCSSMatrix
webKitCSSMatrixNew cssValue
  = liftIO
      (ghcjs_dom_webkit_css_matrix_new (toJSString cssValue) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"setMatrixValue\"]($2)"
        ghcjs_dom_webkit_css_matrix_set_matrix_value ::
        JSRef WebKitCSSMatrix -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.matrixValue Mozilla WebKitCSSMatrix.matrixValue documentation> 
webKitCSSMatrixSetMatrixValue ::
                              (MonadIO m, IsWebKitCSSMatrix self, ToJSString string) =>
                                self -> string -> m ()
webKitCSSMatrixSetMatrixValue self string
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_matrix_value
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         (toJSString string))
 
foreign import javascript unsafe "$1[\"multiply\"]($2)"
        ghcjs_dom_webkit_css_matrix_multiply ::
        JSRef WebKitCSSMatrix ->
          JSRef WebKitCSSMatrix -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.multiply Mozilla WebKitCSSMatrix.multiply documentation> 
webKitCSSMatrixMultiply ::
                        (MonadIO m, IsWebKitCSSMatrix self,
                         IsWebKitCSSMatrix secondMatrix) =>
                          self -> Maybe secondMatrix -> m (Maybe WebKitCSSMatrix)
webKitCSSMatrixMultiply self secondMatrix
  = liftIO
      ((ghcjs_dom_webkit_css_matrix_multiply
          (unWebKitCSSMatrix (toWebKitCSSMatrix self))
          (maybe jsNull (unWebKitCSSMatrix . toWebKitCSSMatrix)
             secondMatrix))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"inverse\"]()"
        ghcjs_dom_webkit_css_matrix_inverse ::
        JSRef WebKitCSSMatrix -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.inverse Mozilla WebKitCSSMatrix.inverse documentation> 
webKitCSSMatrixInverse ::
                       (MonadIO m, IsWebKitCSSMatrix self) =>
                         self -> m (Maybe WebKitCSSMatrix)
webKitCSSMatrixInverse self
  = liftIO
      ((ghcjs_dom_webkit_css_matrix_inverse
          (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"translate\"]($2, $3, $4)"
        ghcjs_dom_webkit_css_matrix_translate ::
        JSRef WebKitCSSMatrix ->
          Double -> Double -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.translate Mozilla WebKitCSSMatrix.translate documentation> 
webKitCSSMatrixTranslate ::
                         (MonadIO m, IsWebKitCSSMatrix self) =>
                           self -> Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
webKitCSSMatrixTranslate self x y z
  = liftIO
      ((ghcjs_dom_webkit_css_matrix_translate
          (unWebKitCSSMatrix (toWebKitCSSMatrix self))
          x
          y
          z)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scale\"]($2, $3, $4)"
        ghcjs_dom_webkit_css_matrix_scale ::
        JSRef WebKitCSSMatrix ->
          Double -> Double -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.scale Mozilla WebKitCSSMatrix.scale documentation> 
webKitCSSMatrixScale ::
                     (MonadIO m, IsWebKitCSSMatrix self) =>
                       self -> Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
webKitCSSMatrixScale self scaleX scaleY scaleZ
  = liftIO
      ((ghcjs_dom_webkit_css_matrix_scale
          (unWebKitCSSMatrix (toWebKitCSSMatrix self))
          scaleX
          scaleY
          scaleZ)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rotate\"]($2, $3, $4)"
        ghcjs_dom_webkit_css_matrix_rotate ::
        JSRef WebKitCSSMatrix ->
          Double -> Double -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotate Mozilla WebKitCSSMatrix.rotate documentation> 
webKitCSSMatrixRotate ::
                      (MonadIO m, IsWebKitCSSMatrix self) =>
                        self -> Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
webKitCSSMatrixRotate self rotX rotY rotZ
  = liftIO
      ((ghcjs_dom_webkit_css_matrix_rotate
          (unWebKitCSSMatrix (toWebKitCSSMatrix self))
          rotX
          rotY
          rotZ)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"rotateAxisAngle\"]($2, $3,\n$4, $5)"
        ghcjs_dom_webkit_css_matrix_rotate_axis_angle ::
        JSRef WebKitCSSMatrix ->
          Double -> Double -> Double -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotateAxisAngle Mozilla WebKitCSSMatrix.rotateAxisAngle documentation> 
webKitCSSMatrixRotateAxisAngle ::
                               (MonadIO m, IsWebKitCSSMatrix self) =>
                                 self ->
                                   Double -> Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
webKitCSSMatrixRotateAxisAngle self x y z angle
  = liftIO
      ((ghcjs_dom_webkit_css_matrix_rotate_axis_angle
          (unWebKitCSSMatrix (toWebKitCSSMatrix self))
          x
          y
          z
          angle)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"skewX\"]($2)"
        ghcjs_dom_webkit_css_matrix_skew_x ::
        JSRef WebKitCSSMatrix -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewX Mozilla WebKitCSSMatrix.skewX documentation> 
webKitCSSMatrixSkewX ::
                     (MonadIO m, IsWebKitCSSMatrix self) =>
                       self -> Double -> m (Maybe WebKitCSSMatrix)
webKitCSSMatrixSkewX self angle
  = liftIO
      ((ghcjs_dom_webkit_css_matrix_skew_x
          (unWebKitCSSMatrix (toWebKitCSSMatrix self))
          angle)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"skewY\"]($2)"
        ghcjs_dom_webkit_css_matrix_skew_y ::
        JSRef WebKitCSSMatrix -> Double -> IO (JSRef WebKitCSSMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewY Mozilla WebKitCSSMatrix.skewY documentation> 
webKitCSSMatrixSkewY ::
                     (MonadIO m, IsWebKitCSSMatrix self) =>
                       self -> Double -> m (Maybe WebKitCSSMatrix)
webKitCSSMatrixSkewY self angle
  = liftIO
      ((ghcjs_dom_webkit_css_matrix_skew_y
          (unWebKitCSSMatrix (toWebKitCSSMatrix self))
          angle)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"toString\"]()"
        ghcjs_dom_webkit_css_matrix_to_string ::
        JSRef WebKitCSSMatrix -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.toString Mozilla WebKitCSSMatrix.toString documentation> 
webKitCSSMatrixToString ::
                        (MonadIO m, IsWebKitCSSMatrix self, FromJSString result) =>
                          self -> m result
webKitCSSMatrixToString self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_webkit_css_matrix_to_string
            (unWebKitCSSMatrix (toWebKitCSSMatrix self))))
 
foreign import javascript unsafe "$1[\"a\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_a ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.a Mozilla WebKitCSSMatrix.a documentation> 
webKitCSSMatrixSetA ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetA self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_a
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"a\"]"
        ghcjs_dom_webkit_css_matrix_get_a ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.a Mozilla WebKitCSSMatrix.a documentation> 
webKitCSSMatrixGetA ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetA self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_a
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"b\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_b ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.b Mozilla WebKitCSSMatrix.b documentation> 
webKitCSSMatrixSetB ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetB self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_b
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"b\"]"
        ghcjs_dom_webkit_css_matrix_get_b ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.b Mozilla WebKitCSSMatrix.b documentation> 
webKitCSSMatrixGetB ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetB self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_b
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"c\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_c ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.c Mozilla WebKitCSSMatrix.c documentation> 
webKitCSSMatrixSetC ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetC self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_c
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"c\"]"
        ghcjs_dom_webkit_css_matrix_get_c ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.c Mozilla WebKitCSSMatrix.c documentation> 
webKitCSSMatrixGetC ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetC self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_c
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"d\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_d ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.d Mozilla WebKitCSSMatrix.d documentation> 
webKitCSSMatrixSetD ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetD self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_d
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"d\"]"
        ghcjs_dom_webkit_css_matrix_get_d ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.d Mozilla WebKitCSSMatrix.d documentation> 
webKitCSSMatrixGetD ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetD self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_d
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"e\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_e ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.e Mozilla WebKitCSSMatrix.e documentation> 
webKitCSSMatrixSetE ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetE self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_e
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"e\"]"
        ghcjs_dom_webkit_css_matrix_get_e ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.e Mozilla WebKitCSSMatrix.e documentation> 
webKitCSSMatrixGetE ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetE self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_e
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"f\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_f ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.f Mozilla WebKitCSSMatrix.f documentation> 
webKitCSSMatrixSetF ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetF self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_f
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"f\"]"
        ghcjs_dom_webkit_css_matrix_get_f ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.f Mozilla WebKitCSSMatrix.f documentation> 
webKitCSSMatrixGetF ::
                    (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetF self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_f
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m11\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m11 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m11 Mozilla WebKitCSSMatrix.m11 documentation> 
webKitCSSMatrixSetM11 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM11 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m11
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m11\"]"
        ghcjs_dom_webkit_css_matrix_get_m11 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m11 Mozilla WebKitCSSMatrix.m11 documentation> 
webKitCSSMatrixGetM11 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM11 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m11
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m12\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m12 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m12 Mozilla WebKitCSSMatrix.m12 documentation> 
webKitCSSMatrixSetM12 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM12 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m12
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m12\"]"
        ghcjs_dom_webkit_css_matrix_get_m12 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m12 Mozilla WebKitCSSMatrix.m12 documentation> 
webKitCSSMatrixGetM12 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM12 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m12
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m13\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m13 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m13 Mozilla WebKitCSSMatrix.m13 documentation> 
webKitCSSMatrixSetM13 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM13 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m13
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m13\"]"
        ghcjs_dom_webkit_css_matrix_get_m13 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m13 Mozilla WebKitCSSMatrix.m13 documentation> 
webKitCSSMatrixGetM13 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM13 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m13
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m14\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m14 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m14 Mozilla WebKitCSSMatrix.m14 documentation> 
webKitCSSMatrixSetM14 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM14 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m14
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m14\"]"
        ghcjs_dom_webkit_css_matrix_get_m14 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m14 Mozilla WebKitCSSMatrix.m14 documentation> 
webKitCSSMatrixGetM14 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM14 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m14
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m21\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m21 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m21 Mozilla WebKitCSSMatrix.m21 documentation> 
webKitCSSMatrixSetM21 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM21 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m21
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m21\"]"
        ghcjs_dom_webkit_css_matrix_get_m21 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m21 Mozilla WebKitCSSMatrix.m21 documentation> 
webKitCSSMatrixGetM21 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM21 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m21
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m22\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m22 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m22 Mozilla WebKitCSSMatrix.m22 documentation> 
webKitCSSMatrixSetM22 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM22 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m22
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m22\"]"
        ghcjs_dom_webkit_css_matrix_get_m22 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m22 Mozilla WebKitCSSMatrix.m22 documentation> 
webKitCSSMatrixGetM22 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM22 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m22
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m23\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m23 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m23 Mozilla WebKitCSSMatrix.m23 documentation> 
webKitCSSMatrixSetM23 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM23 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m23
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m23\"]"
        ghcjs_dom_webkit_css_matrix_get_m23 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m23 Mozilla WebKitCSSMatrix.m23 documentation> 
webKitCSSMatrixGetM23 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM23 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m23
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m24\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m24 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m24 Mozilla WebKitCSSMatrix.m24 documentation> 
webKitCSSMatrixSetM24 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM24 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m24
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m24\"]"
        ghcjs_dom_webkit_css_matrix_get_m24 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m24 Mozilla WebKitCSSMatrix.m24 documentation> 
webKitCSSMatrixGetM24 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM24 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m24
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m31\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m31 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m31 Mozilla WebKitCSSMatrix.m31 documentation> 
webKitCSSMatrixSetM31 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM31 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m31
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m31\"]"
        ghcjs_dom_webkit_css_matrix_get_m31 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m31 Mozilla WebKitCSSMatrix.m31 documentation> 
webKitCSSMatrixGetM31 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM31 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m31
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m32\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m32 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m32 Mozilla WebKitCSSMatrix.m32 documentation> 
webKitCSSMatrixSetM32 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM32 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m32
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m32\"]"
        ghcjs_dom_webkit_css_matrix_get_m32 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m32 Mozilla WebKitCSSMatrix.m32 documentation> 
webKitCSSMatrixGetM32 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM32 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m32
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m33\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m33 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m33 Mozilla WebKitCSSMatrix.m33 documentation> 
webKitCSSMatrixSetM33 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM33 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m33
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m33\"]"
        ghcjs_dom_webkit_css_matrix_get_m33 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m33 Mozilla WebKitCSSMatrix.m33 documentation> 
webKitCSSMatrixGetM33 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM33 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m33
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m34\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m34 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m34 Mozilla WebKitCSSMatrix.m34 documentation> 
webKitCSSMatrixSetM34 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM34 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m34
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m34\"]"
        ghcjs_dom_webkit_css_matrix_get_m34 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m34 Mozilla WebKitCSSMatrix.m34 documentation> 
webKitCSSMatrixGetM34 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM34 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m34
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m41\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m41 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m41 Mozilla WebKitCSSMatrix.m41 documentation> 
webKitCSSMatrixSetM41 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM41 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m41
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m41\"]"
        ghcjs_dom_webkit_css_matrix_get_m41 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m41 Mozilla WebKitCSSMatrix.m41 documentation> 
webKitCSSMatrixGetM41 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM41 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m41
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m42\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m42 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m42 Mozilla WebKitCSSMatrix.m42 documentation> 
webKitCSSMatrixSetM42 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM42 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m42
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m42\"]"
        ghcjs_dom_webkit_css_matrix_get_m42 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m42 Mozilla WebKitCSSMatrix.m42 documentation> 
webKitCSSMatrixGetM42 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM42 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m42
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m43\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m43 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m43 Mozilla WebKitCSSMatrix.m43 documentation> 
webKitCSSMatrixSetM43 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM43 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m43
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m43\"]"
        ghcjs_dom_webkit_css_matrix_get_m43 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m43 Mozilla WebKitCSSMatrix.m43 documentation> 
webKitCSSMatrixGetM43 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM43 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m43
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
 
foreign import javascript unsafe "$1[\"m44\"] = $2;"
        ghcjs_dom_webkit_css_matrix_set_m44 ::
        JSRef WebKitCSSMatrix -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m44 Mozilla WebKitCSSMatrix.m44 documentation> 
webKitCSSMatrixSetM44 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> Double -> m ()
webKitCSSMatrixSetM44 self val
  = liftIO
      (ghcjs_dom_webkit_css_matrix_set_m44
         (unWebKitCSSMatrix (toWebKitCSSMatrix self))
         val)
 
foreign import javascript unsafe "$1[\"m44\"]"
        ghcjs_dom_webkit_css_matrix_get_m44 ::
        JSRef WebKitCSSMatrix -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m44 Mozilla WebKitCSSMatrix.m44 documentation> 
webKitCSSMatrixGetM44 ::
                      (MonadIO m, IsWebKitCSSMatrix self) => self -> m Double
webKitCSSMatrixGetM44 self
  = liftIO
      (ghcjs_dom_webkit_css_matrix_get_m44
         (unWebKitCSSMatrix (toWebKitCSSMatrix self)))
#else
module GHCJS.DOM.WebKitCSSMatrix (
  ) where
#endif
