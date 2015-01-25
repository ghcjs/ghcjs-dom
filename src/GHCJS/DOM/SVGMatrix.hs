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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"multiply\"]($2)"
        ghcjs_dom_svg_matrix_multiply ::
        JSRef SVGMatrix -> JSRef SVGMatrix -> IO (JSRef SVGMatrix)
 
svgMatrixMultiply ::
                  (IsSVGMatrix self, IsSVGMatrix secondMatrix) =>
                    self -> Maybe secondMatrix -> IO (Maybe SVGMatrix)
svgMatrixMultiply self secondMatrix
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_multiply (unSVGMatrix (toSVGMatrix self))
         (maybe jsNull (unSVGMatrix . toSVGMatrix) secondMatrix))
 
foreign import javascript unsafe "$1[\"inverse\"]()"
        ghcjs_dom_svg_matrix_inverse ::
        JSRef SVGMatrix -> IO (JSRef SVGMatrix)
 
svgMatrixInverse ::
                 (IsSVGMatrix self) => self -> IO (Maybe SVGMatrix)
svgMatrixInverse self
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_inverse (unSVGMatrix (toSVGMatrix self)))
 
foreign import javascript unsafe "$1[\"translate\"]($2, $3)"
        ghcjs_dom_svg_matrix_translate ::
        JSRef SVGMatrix -> Float -> Float -> IO (JSRef SVGMatrix)
 
svgMatrixTranslate ::
                   (IsSVGMatrix self) =>
                     self -> Float -> Float -> IO (Maybe SVGMatrix)
svgMatrixTranslate self x y
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_translate (unSVGMatrix (toSVGMatrix self)) x
         y)
 
foreign import javascript unsafe "$1[\"scale\"]($2)"
        ghcjs_dom_svg_matrix_scale ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)
 
svgMatrixScale ::
               (IsSVGMatrix self) => self -> Float -> IO (Maybe SVGMatrix)
svgMatrixScale self scaleFactor
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_scale (unSVGMatrix (toSVGMatrix self))
         scaleFactor)
 
foreign import javascript unsafe "$1[\"scaleNonUniform\"]($2, $3)"
        ghcjs_dom_svg_matrix_scale_non_uniform ::
        JSRef SVGMatrix -> Float -> Float -> IO (JSRef SVGMatrix)
 
svgMatrixScaleNonUniform ::
                         (IsSVGMatrix self) =>
                           self -> Float -> Float -> IO (Maybe SVGMatrix)
svgMatrixScaleNonUniform self scaleFactorX scaleFactorY
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_scale_non_uniform
         (unSVGMatrix (toSVGMatrix self))
         scaleFactorX
         scaleFactorY)
 
foreign import javascript unsafe "$1[\"rotate\"]($2)"
        ghcjs_dom_svg_matrix_rotate ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)
 
svgMatrixRotate ::
                (IsSVGMatrix self) => self -> Float -> IO (Maybe SVGMatrix)
svgMatrixRotate self angle
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_rotate (unSVGMatrix (toSVGMatrix self))
         angle)
 
foreign import javascript unsafe "$1[\"rotateFromVector\"]($2, $3)"
        ghcjs_dom_svg_matrix_rotate_from_vector ::
        JSRef SVGMatrix -> Float -> Float -> IO (JSRef SVGMatrix)
 
svgMatrixRotateFromVector ::
                          (IsSVGMatrix self) =>
                            self -> Float -> Float -> IO (Maybe SVGMatrix)
svgMatrixRotateFromVector self x y
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_rotate_from_vector
         (unSVGMatrix (toSVGMatrix self))
         x
         y)
 
foreign import javascript unsafe "$1[\"flipX\"]()"
        ghcjs_dom_svg_matrix_flip_x ::
        JSRef SVGMatrix -> IO (JSRef SVGMatrix)
 
svgMatrixFlipX ::
               (IsSVGMatrix self) => self -> IO (Maybe SVGMatrix)
svgMatrixFlipX self
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_flip_x (unSVGMatrix (toSVGMatrix self)))
 
foreign import javascript unsafe "$1[\"flipY\"]()"
        ghcjs_dom_svg_matrix_flip_y ::
        JSRef SVGMatrix -> IO (JSRef SVGMatrix)
 
svgMatrixFlipY ::
               (IsSVGMatrix self) => self -> IO (Maybe SVGMatrix)
svgMatrixFlipY self
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_flip_y (unSVGMatrix (toSVGMatrix self)))
 
foreign import javascript unsafe "$1[\"skewX\"]($2)"
        ghcjs_dom_svg_matrix_skew_x ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)
 
svgMatrixSkewX ::
               (IsSVGMatrix self) => self -> Float -> IO (Maybe SVGMatrix)
svgMatrixSkewX self angle
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_skew_x (unSVGMatrix (toSVGMatrix self))
         angle)
 
foreign import javascript unsafe "$1[\"skewY\"]($2)"
        ghcjs_dom_svg_matrix_skew_y ::
        JSRef SVGMatrix -> Float -> IO (JSRef SVGMatrix)
 
svgMatrixSkewY ::
               (IsSVGMatrix self) => self -> Float -> IO (Maybe SVGMatrix)
svgMatrixSkewY self angle
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_matrix_skew_y (unSVGMatrix (toSVGMatrix self))
         angle)
 
foreign import javascript unsafe "$1[\"a\"] = $2;"
        ghcjs_dom_svg_matrix_set_a :: JSRef SVGMatrix -> Double -> IO ()
 
svgMatrixSetA :: (IsSVGMatrix self) => self -> Double -> IO ()
svgMatrixSetA self val
  = ghcjs_dom_svg_matrix_set_a (unSVGMatrix (toSVGMatrix self)) val
 
foreign import javascript unsafe "$1[\"a\"]"
        ghcjs_dom_svg_matrix_get_a :: JSRef SVGMatrix -> IO Double
 
svgMatrixGetA :: (IsSVGMatrix self) => self -> IO Double
svgMatrixGetA self
  = ghcjs_dom_svg_matrix_get_a (unSVGMatrix (toSVGMatrix self))
 
foreign import javascript unsafe "$1[\"b\"] = $2;"
        ghcjs_dom_svg_matrix_set_b :: JSRef SVGMatrix -> Double -> IO ()
 
svgMatrixSetB :: (IsSVGMatrix self) => self -> Double -> IO ()
svgMatrixSetB self val
  = ghcjs_dom_svg_matrix_set_b (unSVGMatrix (toSVGMatrix self)) val
 
foreign import javascript unsafe "$1[\"b\"]"
        ghcjs_dom_svg_matrix_get_b :: JSRef SVGMatrix -> IO Double
 
svgMatrixGetB :: (IsSVGMatrix self) => self -> IO Double
svgMatrixGetB self
  = ghcjs_dom_svg_matrix_get_b (unSVGMatrix (toSVGMatrix self))
 
foreign import javascript unsafe "$1[\"c\"] = $2;"
        ghcjs_dom_svg_matrix_set_c :: JSRef SVGMatrix -> Double -> IO ()
 
svgMatrixSetC :: (IsSVGMatrix self) => self -> Double -> IO ()
svgMatrixSetC self val
  = ghcjs_dom_svg_matrix_set_c (unSVGMatrix (toSVGMatrix self)) val
 
foreign import javascript unsafe "$1[\"c\"]"
        ghcjs_dom_svg_matrix_get_c :: JSRef SVGMatrix -> IO Double
 
svgMatrixGetC :: (IsSVGMatrix self) => self -> IO Double
svgMatrixGetC self
  = ghcjs_dom_svg_matrix_get_c (unSVGMatrix (toSVGMatrix self))
 
foreign import javascript unsafe "$1[\"d\"] = $2;"
        ghcjs_dom_svg_matrix_set_d :: JSRef SVGMatrix -> Double -> IO ()
 
svgMatrixSetD :: (IsSVGMatrix self) => self -> Double -> IO ()
svgMatrixSetD self val
  = ghcjs_dom_svg_matrix_set_d (unSVGMatrix (toSVGMatrix self)) val
 
foreign import javascript unsafe "$1[\"d\"]"
        ghcjs_dom_svg_matrix_get_d :: JSRef SVGMatrix -> IO Double
 
svgMatrixGetD :: (IsSVGMatrix self) => self -> IO Double
svgMatrixGetD self
  = ghcjs_dom_svg_matrix_get_d (unSVGMatrix (toSVGMatrix self))
 
foreign import javascript unsafe "$1[\"e\"] = $2;"
        ghcjs_dom_svg_matrix_set_e :: JSRef SVGMatrix -> Double -> IO ()
 
svgMatrixSetE :: (IsSVGMatrix self) => self -> Double -> IO ()
svgMatrixSetE self val
  = ghcjs_dom_svg_matrix_set_e (unSVGMatrix (toSVGMatrix self)) val
 
foreign import javascript unsafe "$1[\"e\"]"
        ghcjs_dom_svg_matrix_get_e :: JSRef SVGMatrix -> IO Double
 
svgMatrixGetE :: (IsSVGMatrix self) => self -> IO Double
svgMatrixGetE self
  = ghcjs_dom_svg_matrix_get_e (unSVGMatrix (toSVGMatrix self))
 
foreign import javascript unsafe "$1[\"f\"] = $2;"
        ghcjs_dom_svg_matrix_set_f :: JSRef SVGMatrix -> Double -> IO ()
 
svgMatrixSetF :: (IsSVGMatrix self) => self -> Double -> IO ()
svgMatrixSetF self val
  = ghcjs_dom_svg_matrix_set_f (unSVGMatrix (toSVGMatrix self)) val
 
foreign import javascript unsafe "$1[\"f\"]"
        ghcjs_dom_svg_matrix_get_f :: JSRef SVGMatrix -> IO Double
 
svgMatrixGetF :: (IsSVGMatrix self) => self -> IO Double
svgMatrixGetF self
  = ghcjs_dom_svg_matrix_get_f (unSVGMatrix (toSVGMatrix self))
#else
module GHCJS.DOM.SVGMatrix (
  module Graphics.UI.Gtk.WebKit.DOM.SVGMatrix
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGMatrix
#endif
