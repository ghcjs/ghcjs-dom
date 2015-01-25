{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGRectElement
       (ghcjs_dom_svg_rect_element_get_x, svgRectElementGetX,
        ghcjs_dom_svg_rect_element_get_y, svgRectElementGetY,
        ghcjs_dom_svg_rect_element_get_width, svgRectElementGetWidth,
        ghcjs_dom_svg_rect_element_get_height, svgRectElementGetHeight,
        ghcjs_dom_svg_rect_element_get_rx, svgRectElementGetRx,
        ghcjs_dom_svg_rect_element_get_ry, svgRectElementGetRy,
        SVGRectElement, IsSVGRectElement, castToSVGRectElement,
        gTypeSVGRectElement, toSVGRectElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_rect_element_get_x ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)
 
svgRectElementGetX ::
                   (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_rect_element_get_x
         (unSVGRectElement (toSVGRectElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_rect_element_get_y ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)
 
svgRectElementGetY ::
                   (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_rect_element_get_y
         (unSVGRectElement (toSVGRectElement self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_rect_element_get_width ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)
 
svgRectElementGetWidth ::
                       (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetWidth self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_rect_element_get_width
         (unSVGRectElement (toSVGRectElement self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_rect_element_get_height ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)
 
svgRectElementGetHeight ::
                        (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetHeight self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_rect_element_get_height
         (unSVGRectElement (toSVGRectElement self)))
 
foreign import javascript unsafe "$1[\"rx\"]"
        ghcjs_dom_svg_rect_element_get_rx ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)
 
svgRectElementGetRx ::
                    (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetRx self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_rect_element_get_rx
         (unSVGRectElement (toSVGRectElement self)))
 
foreign import javascript unsafe "$1[\"ry\"]"
        ghcjs_dom_svg_rect_element_get_ry ::
        JSRef SVGRectElement -> IO (JSRef SVGAnimatedLength)
 
svgRectElementGetRy ::
                    (IsSVGRectElement self) => self -> IO (Maybe SVGAnimatedLength)
svgRectElementGetRy self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_rect_element_get_ry
         (unSVGRectElement (toSVGRectElement self)))
#else
module GHCJS.DOM.SVGRectElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGRectElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGRectElement
#endif
