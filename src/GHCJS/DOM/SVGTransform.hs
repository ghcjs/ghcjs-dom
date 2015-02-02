{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTransform
       (ghcjs_dom_svg_transform_set_matrix, svgTransformSetMatrix,
        ghcjs_dom_svg_transform_set_translate, svgTransformSetTranslate,
        ghcjs_dom_svg_transform_set_scale, svgTransformSetScale,
        ghcjs_dom_svg_transform_set_rotate, svgTransformSetRotate,
        ghcjs_dom_svg_transform_set_skew_x, svgTransformSetSkewX,
        ghcjs_dom_svg_transform_set_skew_y, svgTransformSetSkewY,
        cSVG_TRANSFORM_UNKNOWN, cSVG_TRANSFORM_MATRIX,
        cSVG_TRANSFORM_TRANSLATE, cSVG_TRANSFORM_SCALE,
        cSVG_TRANSFORM_ROTATE, cSVG_TRANSFORM_SKEWX, cSVG_TRANSFORM_SKEWY,
        ghcjs_dom_svg_transform_get_matrix, svgTransformGetMatrix,
        ghcjs_dom_svg_transform_get_angle, svgTransformGetAngle,
        SVGTransform, IsSVGTransform, castToSVGTransform,
        gTypeSVGTransform, toSVGTransform)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"setMatrix\"]($2)"
        ghcjs_dom_svg_transform_set_matrix ::
        JSRef SVGTransform -> JSRef SVGMatrix -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.matrix Mozilla SVGTransform.matrix documentation> 
svgTransformSetMatrix ::
                      (IsSVGTransform self, IsSVGMatrix matrix) =>
                        self -> Maybe matrix -> IO ()
svgTransformSetMatrix self matrix
  = ghcjs_dom_svg_transform_set_matrix
      (unSVGTransform (toSVGTransform self))
      (maybe jsNull (unSVGMatrix . toSVGMatrix) matrix)
 
foreign import javascript unsafe "$1[\"setTranslate\"]($2, $3)"
        ghcjs_dom_svg_transform_set_translate ::
        JSRef SVGTransform -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.translate Mozilla SVGTransform.translate documentation> 
svgTransformSetTranslate ::
                         (IsSVGTransform self) => self -> Float -> Float -> IO ()
svgTransformSetTranslate self tx ty
  = ghcjs_dom_svg_transform_set_translate
      (unSVGTransform (toSVGTransform self))
      tx
      ty
 
foreign import javascript unsafe "$1[\"setScale\"]($2, $3)"
        ghcjs_dom_svg_transform_set_scale ::
        JSRef SVGTransform -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.scale Mozilla SVGTransform.scale documentation> 
svgTransformSetScale ::
                     (IsSVGTransform self) => self -> Float -> Float -> IO ()
svgTransformSetScale self sx sy
  = ghcjs_dom_svg_transform_set_scale
      (unSVGTransform (toSVGTransform self))
      sx
      sy
 
foreign import javascript unsafe "$1[\"setRotate\"]($2, $3, $4)"
        ghcjs_dom_svg_transform_set_rotate ::
        JSRef SVGTransform -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.rotate Mozilla SVGTransform.rotate documentation> 
svgTransformSetRotate ::
                      (IsSVGTransform self) => self -> Float -> Float -> Float -> IO ()
svgTransformSetRotate self angle cx cy
  = ghcjs_dom_svg_transform_set_rotate
      (unSVGTransform (toSVGTransform self))
      angle
      cx
      cy
 
foreign import javascript unsafe "$1[\"setSkewX\"]($2)"
        ghcjs_dom_svg_transform_set_skew_x ::
        JSRef SVGTransform -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.skewX Mozilla SVGTransform.skewX documentation> 
svgTransformSetSkewX ::
                     (IsSVGTransform self) => self -> Float -> IO ()
svgTransformSetSkewX self angle
  = ghcjs_dom_svg_transform_set_skew_x
      (unSVGTransform (toSVGTransform self))
      angle
 
foreign import javascript unsafe "$1[\"setSkewY\"]($2)"
        ghcjs_dom_svg_transform_set_skew_y ::
        JSRef SVGTransform -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.skewY Mozilla SVGTransform.skewY documentation> 
svgTransformSetSkewY ::
                     (IsSVGTransform self) => self -> Float -> IO ()
svgTransformSetSkewY self angle
  = ghcjs_dom_svg_transform_set_skew_y
      (unSVGTransform (toSVGTransform self))
      angle
cSVG_TRANSFORM_UNKNOWN = 0
cSVG_TRANSFORM_MATRIX = 1
cSVG_TRANSFORM_TRANSLATE = 2
cSVG_TRANSFORM_SCALE = 3
cSVG_TRANSFORM_ROTATE = 4
cSVG_TRANSFORM_SKEWX = 5
cSVG_TRANSFORM_SKEWY = 6
 
foreign import javascript unsafe "$1[\"matrix\"]"
        ghcjs_dom_svg_transform_get_matrix ::
        JSRef SVGTransform -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.matrix Mozilla SVGTransform.matrix documentation> 
svgTransformGetMatrix ::
                      (IsSVGTransform self) => self -> IO (Maybe SVGMatrix)
svgTransformGetMatrix self
  = (ghcjs_dom_svg_transform_get_matrix
       (unSVGTransform (toSVGTransform self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"angle\"]"
        ghcjs_dom_svg_transform_get_angle :: JSRef SVGTransform -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.angle Mozilla SVGTransform.angle documentation> 
svgTransformGetAngle :: (IsSVGTransform self) => self -> IO Float
svgTransformGetAngle self
  = ghcjs_dom_svg_transform_get_angle
      (unSVGTransform (toSVGTransform self))
#else
module GHCJS.DOM.SVGTransform (
  ) where
#endif
