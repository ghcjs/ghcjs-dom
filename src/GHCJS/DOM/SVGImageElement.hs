{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGImageElement
       (ghcjs_dom_svg_image_element_get_x, svgImageElementGetX,
        ghcjs_dom_svg_image_element_get_y, svgImageElementGetY,
        ghcjs_dom_svg_image_element_get_width, svgImageElementGetWidth,
        ghcjs_dom_svg_image_element_get_height, svgImageElementGetHeight,
        ghcjs_dom_svg_image_element_get_preserve_aspect_ratio,
        svgImageElementGetPreserveAspectRatio, SVGImageElement,
        IsSVGImageElement, castToSVGImageElement, gTypeSVGImageElement,
        toSVGImageElement)
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
        ghcjs_dom_svg_image_element_get_x ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)
 
svgImageElementGetX ::
                    (IsSVGImageElement self) => self -> IO (Maybe SVGAnimatedLength)
svgImageElementGetX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_image_element_get_x
         (unSVGImageElement (toSVGImageElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_image_element_get_y ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)
 
svgImageElementGetY ::
                    (IsSVGImageElement self) => self -> IO (Maybe SVGAnimatedLength)
svgImageElementGetY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_image_element_get_y
         (unSVGImageElement (toSVGImageElement self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_image_element_get_width ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)
 
svgImageElementGetWidth ::
                        (IsSVGImageElement self) => self -> IO (Maybe SVGAnimatedLength)
svgImageElementGetWidth self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_image_element_get_width
         (unSVGImageElement (toSVGImageElement self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_image_element_get_height ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)
 
svgImageElementGetHeight ::
                         (IsSVGImageElement self) => self -> IO (Maybe SVGAnimatedLength)
svgImageElementGetHeight self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_image_element_get_height
         (unSVGImageElement (toSVGImageElement self)))
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        ghcjs_dom_svg_image_element_get_preserve_aspect_ratio ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedPreserveAspectRatio)
 
svgImageElementGetPreserveAspectRatio ::
                                      (IsSVGImageElement self) =>
                                        self -> IO (Maybe SVGAnimatedPreserveAspectRatio)
svgImageElementGetPreserveAspectRatio self
  = fmap SVGAnimatedPreserveAspectRatio . maybeJSNull <$>
      (ghcjs_dom_svg_image_element_get_preserve_aspect_ratio
         (unSVGImageElement (toSVGImageElement self)))
#else
module GHCJS.DOM.SVGImageElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGImageElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGImageElement
#endif
