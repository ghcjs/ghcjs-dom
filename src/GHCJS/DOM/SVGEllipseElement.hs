{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGEllipseElement
       (ghcjs_dom_svg_ellipse_element_get_cx, svgEllipseElementGetCx,
        ghcjs_dom_svg_ellipse_element_get_cy, svgEllipseElementGetCy,
        ghcjs_dom_svg_ellipse_element_get_rx, svgEllipseElementGetRx,
        ghcjs_dom_svg_ellipse_element_get_ry, svgEllipseElementGetRy,
        SVGEllipseElement, IsSVGEllipseElement, castToSVGEllipseElement,
        gTypeSVGEllipseElement, toSVGEllipseElement)
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
        ghcjs_dom_svg_ellipse_element_get_cx ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)
 
svgEllipseElementGetCx ::
                       (IsSVGEllipseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgEllipseElementGetCx self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_ellipse_element_get_cx
         (unSVGEllipseElement (toSVGEllipseElement self)))
 
foreign import javascript unsafe "$1[\"cy\"]"
        ghcjs_dom_svg_ellipse_element_get_cy ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)
 
svgEllipseElementGetCy ::
                       (IsSVGEllipseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgEllipseElementGetCy self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_ellipse_element_get_cy
         (unSVGEllipseElement (toSVGEllipseElement self)))
 
foreign import javascript unsafe "$1[\"rx\"]"
        ghcjs_dom_svg_ellipse_element_get_rx ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)
 
svgEllipseElementGetRx ::
                       (IsSVGEllipseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgEllipseElementGetRx self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_ellipse_element_get_rx
         (unSVGEllipseElement (toSVGEllipseElement self)))
 
foreign import javascript unsafe "$1[\"ry\"]"
        ghcjs_dom_svg_ellipse_element_get_ry ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)
 
svgEllipseElementGetRy ::
                       (IsSVGEllipseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgEllipseElementGetRy self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_ellipse_element_get_ry
         (unSVGEllipseElement (toSVGEllipseElement self)))
#else
module GHCJS.DOM.SVGEllipseElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGEllipseElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGEllipseElement
#endif
