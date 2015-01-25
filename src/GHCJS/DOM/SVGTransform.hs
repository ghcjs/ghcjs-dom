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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"setMatrix\"]($2)"
        ghcjs_dom_svg_transform_set_matrix ::
        JSRef SVGTransform -> JSRef SVGMatrix -> IO ()
 
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
 
svgTransformSetSkewX ::
                     (IsSVGTransform self) => self -> Float -> IO ()
svgTransformSetSkewX self angle
  = ghcjs_dom_svg_transform_set_skew_x
      (unSVGTransform (toSVGTransform self))
      angle
 
foreign import javascript unsafe "$1[\"setSkewY\"]($2)"
        ghcjs_dom_svg_transform_set_skew_y ::
        JSRef SVGTransform -> Float -> IO ()
 
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
 
svgTransformGetMatrix ::
                      (IsSVGTransform self) => self -> IO (Maybe SVGMatrix)
svgTransformGetMatrix self
  = fmap SVGMatrix . maybeJSNull <$>
      (ghcjs_dom_svg_transform_get_matrix
         (unSVGTransform (toSVGTransform self)))
 
foreign import javascript unsafe "$1[\"angle\"]"
        ghcjs_dom_svg_transform_get_angle :: JSRef SVGTransform -> IO Float
 
svgTransformGetAngle :: (IsSVGTransform self) => self -> IO Float
svgTransformGetAngle self
  = ghcjs_dom_svg_transform_get_angle
      (unSVGTransform (toSVGTransform self))
#else
module GHCJS.DOM.SVGTransform (
  module Graphics.UI.Gtk.WebKit.DOM.SVGTransform
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGTransform
#endif
