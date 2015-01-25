{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGCircleElement
       (ghcjs_dom_svg_circle_element_get_cx, svgCircleElementGetCx,
        ghcjs_dom_svg_circle_element_get_cy, svgCircleElementGetCy,
        ghcjs_dom_svg_circle_element_get_r, svgCircleElementGetR,
        SVGCircleElement, IsSVGCircleElement, castToSVGCircleElement,
        gTypeSVGCircleElement, toSVGCircleElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"cx\"]"
        ghcjs_dom_svg_circle_element_get_cx ::
        JSRef SVGCircleElement -> IO (JSRef SVGAnimatedLength)
 
svgCircleElementGetCx ::
                      (IsSVGCircleElement self) => self -> IO (Maybe SVGAnimatedLength)
svgCircleElementGetCx self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_circle_element_get_cx
         (unSVGCircleElement (toSVGCircleElement self)))
 
foreign import javascript unsafe "$1[\"cy\"]"
        ghcjs_dom_svg_circle_element_get_cy ::
        JSRef SVGCircleElement -> IO (JSRef SVGAnimatedLength)
 
svgCircleElementGetCy ::
                      (IsSVGCircleElement self) => self -> IO (Maybe SVGAnimatedLength)
svgCircleElementGetCy self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_circle_element_get_cy
         (unSVGCircleElement (toSVGCircleElement self)))
 
foreign import javascript unsafe "$1[\"r\"]"
        ghcjs_dom_svg_circle_element_get_r ::
        JSRef SVGCircleElement -> IO (JSRef SVGAnimatedLength)
 
svgCircleElementGetR ::
                     (IsSVGCircleElement self) => self -> IO (Maybe SVGAnimatedLength)
svgCircleElementGetR self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_circle_element_get_r
         (unSVGCircleElement (toSVGCircleElement self)))
#else
module GHCJS.DOM.SVGCircleElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGCircleElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGCircleElement
#endif
