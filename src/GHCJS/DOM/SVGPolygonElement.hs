{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPolygonElement
       (ghcjs_dom_svg_polygon_element_get_points,
        svgPolygonElementGetPoints,
        ghcjs_dom_svg_polygon_element_get_animated_points,
        svgPolygonElementGetAnimatedPoints, SVGPolygonElement,
        IsSVGPolygonElement, castToSVGPolygonElement,
        gTypeSVGPolygonElement, toSVGPolygonElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"points\"]"
        ghcjs_dom_svg_polygon_element_get_points ::
        JSRef SVGPolygonElement -> IO (JSRef SVGPointList)
 
svgPolygonElementGetPoints ::
                           (IsSVGPolygonElement self) => self -> IO (Maybe SVGPointList)
svgPolygonElementGetPoints self
  = fmap SVGPointList . maybeJSNull <$>
      (ghcjs_dom_svg_polygon_element_get_points
         (unSVGPolygonElement (toSVGPolygonElement self)))
 
foreign import javascript unsafe "$1[\"animatedPoints\"]"
        ghcjs_dom_svg_polygon_element_get_animated_points ::
        JSRef SVGPolygonElement -> IO (JSRef SVGPointList)
 
svgPolygonElementGetAnimatedPoints ::
                                   (IsSVGPolygonElement self) => self -> IO (Maybe SVGPointList)
svgPolygonElementGetAnimatedPoints self
  = fmap SVGPointList . maybeJSNull <$>
      (ghcjs_dom_svg_polygon_element_get_animated_points
         (unSVGPolygonElement (toSVGPolygonElement self)))
#else
module GHCJS.DOM.SVGPolygonElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPolygonElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPolygonElement
#endif
