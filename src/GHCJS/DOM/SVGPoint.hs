{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPoint
       (ghcjs_dom_svg_point_matrix_transform, svgPointMatrixTransform,
        ghcjs_dom_svg_point_set_x, svgPointSetX, ghcjs_dom_svg_point_get_x,
        svgPointGetX, ghcjs_dom_svg_point_set_y, svgPointSetY,
        ghcjs_dom_svg_point_get_y, svgPointGetY, SVGPoint, IsSVGPoint,
        castToSVGPoint, gTypeSVGPoint, toSVGPoint)
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

 
foreign import javascript unsafe "$1[\"matrixTransform\"]($2)"
        ghcjs_dom_svg_point_matrix_transform ::
        JSRef SVGPoint -> JSRef SVGMatrix -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.matrixTransform Mozilla SVGPoint.matrixTransform documentation> 
svgPointMatrixTransform ::
                        (IsSVGPoint self, IsSVGMatrix matrix) =>
                          self -> Maybe matrix -> IO (Maybe SVGPoint)
svgPointMatrixTransform self matrix
  = (ghcjs_dom_svg_point_matrix_transform
       (unSVGPoint (toSVGPoint self))
       (maybe jsNull (unSVGMatrix . toSVGMatrix) matrix))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_point_set_x :: JSRef SVGPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
svgPointSetX :: (IsSVGPoint self) => self -> Float -> IO ()
svgPointSetX self val
  = ghcjs_dom_svg_point_set_x (unSVGPoint (toSVGPoint self)) val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_point_get_x :: JSRef SVGPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
svgPointGetX :: (IsSVGPoint self) => self -> IO Float
svgPointGetX self
  = ghcjs_dom_svg_point_get_x (unSVGPoint (toSVGPoint self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_point_set_y :: JSRef SVGPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
svgPointSetY :: (IsSVGPoint self) => self -> Float -> IO ()
svgPointSetY self val
  = ghcjs_dom_svg_point_set_y (unSVGPoint (toSVGPoint self)) val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_point_get_y :: JSRef SVGPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
svgPointGetY :: (IsSVGPoint self) => self -> IO Float
svgPointGetY self
  = ghcjs_dom_svg_point_get_y (unSVGPoint (toSVGPoint self))
#else
module GHCJS.DOM.SVGPoint (
  ) where
#endif
