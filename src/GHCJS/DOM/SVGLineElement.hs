{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGLineElement
       (ghcjs_dom_svg_line_element_get_x1, svgLineElementGetX1,
        ghcjs_dom_svg_line_element_get_y1, svgLineElementGetY1,
        ghcjs_dom_svg_line_element_get_x2, svgLineElementGetX2,
        ghcjs_dom_svg_line_element_get_y2, svgLineElementGetY2,
        SVGLineElement, IsSVGLineElement, castToSVGLineElement,
        gTypeSVGLineElement, toSVGLineElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x1\"]"
        ghcjs_dom_svg_line_element_get_x1 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)
 
svgLineElementGetX1 ::
                    (IsSVGLineElement self) => self -> IO (Maybe SVGAnimatedLength)
svgLineElementGetX1 self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_line_element_get_x1
         (unSVGLineElement (toSVGLineElement self)))
 
foreign import javascript unsafe "$1[\"y1\"]"
        ghcjs_dom_svg_line_element_get_y1 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)
 
svgLineElementGetY1 ::
                    (IsSVGLineElement self) => self -> IO (Maybe SVGAnimatedLength)
svgLineElementGetY1 self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_line_element_get_y1
         (unSVGLineElement (toSVGLineElement self)))
 
foreign import javascript unsafe "$1[\"x2\"]"
        ghcjs_dom_svg_line_element_get_x2 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)
 
svgLineElementGetX2 ::
                    (IsSVGLineElement self) => self -> IO (Maybe SVGAnimatedLength)
svgLineElementGetX2 self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_line_element_get_x2
         (unSVGLineElement (toSVGLineElement self)))
 
foreign import javascript unsafe "$1[\"y2\"]"
        ghcjs_dom_svg_line_element_get_y2 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)
 
svgLineElementGetY2 ::
                    (IsSVGLineElement self) => self -> IO (Maybe SVGAnimatedLength)
svgLineElementGetY2 self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_line_element_get_y2
         (unSVGLineElement (toSVGLineElement self)))
#else
module GHCJS.DOM.SVGLineElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGLineElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGLineElement
#endif
