{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPolylineElement
       (ghcjs_dom_svg_polyline_element_get_points,
        svgPolylineElementGetPoints,
        ghcjs_dom_svg_polyline_element_get_animated_points,
        svgPolylineElementGetAnimatedPoints, SVGPolylineElement,
        IsSVGPolylineElement, castToSVGPolylineElement,
        gTypeSVGPolylineElement, toSVGPolylineElement)
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
        ghcjs_dom_svg_polyline_element_get_points ::
        JSRef SVGPolylineElement -> IO (JSRef SVGPointList)
 
svgPolylineElementGetPoints ::
                            (IsSVGPolylineElement self) => self -> IO (Maybe SVGPointList)
svgPolylineElementGetPoints self
  = fmap SVGPointList . maybeJSNull <$>
      (ghcjs_dom_svg_polyline_element_get_points
         (unSVGPolylineElement (toSVGPolylineElement self)))
 
foreign import javascript unsafe "$1[\"animatedPoints\"]"
        ghcjs_dom_svg_polyline_element_get_animated_points ::
        JSRef SVGPolylineElement -> IO (JSRef SVGPointList)
 
svgPolylineElementGetAnimatedPoints ::
                                    (IsSVGPolylineElement self) => self -> IO (Maybe SVGPointList)
svgPolylineElementGetAnimatedPoints self
  = fmap SVGPointList . maybeJSNull <$>
      (ghcjs_dom_svg_polyline_element_get_animated_points
         (unSVGPolylineElement (toSVGPolylineElement self)))
#else
module GHCJS.DOM.SVGPolylineElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPolylineElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPolylineElement
#endif
