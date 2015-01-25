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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"matrixTransform\"]($2)"
        ghcjs_dom_svg_point_matrix_transform ::
        JSRef SVGPoint -> JSRef SVGMatrix -> IO (JSRef SVGPoint)
 
svgPointMatrixTransform ::
                        (IsSVGPoint self, IsSVGMatrix matrix) =>
                          self -> Maybe matrix -> IO (Maybe SVGPoint)
svgPointMatrixTransform self matrix
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_point_matrix_transform
         (unSVGPoint (toSVGPoint self))
         (maybe jsNull (unSVGMatrix . toSVGMatrix) matrix))
 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_point_set_x :: JSRef SVGPoint -> Float -> IO ()
 
svgPointSetX :: (IsSVGPoint self) => self -> Float -> IO ()
svgPointSetX self val
  = ghcjs_dom_svg_point_set_x (unSVGPoint (toSVGPoint self)) val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_point_get_x :: JSRef SVGPoint -> IO Float
 
svgPointGetX :: (IsSVGPoint self) => self -> IO Float
svgPointGetX self
  = ghcjs_dom_svg_point_get_x (unSVGPoint (toSVGPoint self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_point_set_y :: JSRef SVGPoint -> Float -> IO ()
 
svgPointSetY :: (IsSVGPoint self) => self -> Float -> IO ()
svgPointSetY self val
  = ghcjs_dom_svg_point_set_y (unSVGPoint (toSVGPoint self)) val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_point_get_y :: JSRef SVGPoint -> IO Float
 
svgPointGetY :: (IsSVGPoint self) => self -> IO Float
svgPointGetY self
  = ghcjs_dom_svg_point_get_y (unSVGPoint (toSVGPoint self))
#else
module GHCJS.DOM.SVGPoint (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPoint
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPoint
#endif
