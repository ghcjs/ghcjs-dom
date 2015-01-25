{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGUseElement
       (ghcjs_dom_svg_use_element_get_x, svgUseElementGetX,
        ghcjs_dom_svg_use_element_get_y, svgUseElementGetY,
        ghcjs_dom_svg_use_element_get_width, svgUseElementGetWidth,
        ghcjs_dom_svg_use_element_get_height, svgUseElementGetHeight,
        ghcjs_dom_svg_use_element_get_instance_root,
        svgUseElementGetInstanceRoot,
        ghcjs_dom_svg_use_element_get_animated_instance_root,
        svgUseElementGetAnimatedInstanceRoot, SVGUseElement,
        IsSVGUseElement, castToSVGUseElement, gTypeSVGUseElement,
        toSVGUseElement)
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
        ghcjs_dom_svg_use_element_get_x ::
        JSRef SVGUseElement -> IO (JSRef SVGAnimatedLength)
 
svgUseElementGetX ::
                  (IsSVGUseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgUseElementGetX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_use_element_get_x
         (unSVGUseElement (toSVGUseElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_use_element_get_y ::
        JSRef SVGUseElement -> IO (JSRef SVGAnimatedLength)
 
svgUseElementGetY ::
                  (IsSVGUseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgUseElementGetY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_use_element_get_y
         (unSVGUseElement (toSVGUseElement self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_use_element_get_width ::
        JSRef SVGUseElement -> IO (JSRef SVGAnimatedLength)
 
svgUseElementGetWidth ::
                      (IsSVGUseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgUseElementGetWidth self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_use_element_get_width
         (unSVGUseElement (toSVGUseElement self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_use_element_get_height ::
        JSRef SVGUseElement -> IO (JSRef SVGAnimatedLength)
 
svgUseElementGetHeight ::
                       (IsSVGUseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgUseElementGetHeight self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_use_element_get_height
         (unSVGUseElement (toSVGUseElement self)))
 
foreign import javascript unsafe "$1[\"instanceRoot\"]"
        ghcjs_dom_svg_use_element_get_instance_root ::
        JSRef SVGUseElement -> IO (JSRef SVGElementInstance)
 
svgUseElementGetInstanceRoot ::
                             (IsSVGUseElement self) => self -> IO (Maybe SVGElementInstance)
svgUseElementGetInstanceRoot self
  = fmap SVGElementInstance . maybeJSNull <$>
      (ghcjs_dom_svg_use_element_get_instance_root
         (unSVGUseElement (toSVGUseElement self)))
 
foreign import javascript unsafe "$1[\"animatedInstanceRoot\"]"
        ghcjs_dom_svg_use_element_get_animated_instance_root ::
        JSRef SVGUseElement -> IO (JSRef SVGElementInstance)
 
svgUseElementGetAnimatedInstanceRoot ::
                                     (IsSVGUseElement self) => self -> IO (Maybe SVGElementInstance)
svgUseElementGetAnimatedInstanceRoot self
  = fmap SVGElementInstance . maybeJSNull <$>
      (ghcjs_dom_svg_use_element_get_animated_instance_root
         (unSVGUseElement (toSVGUseElement self)))
#else
module GHCJS.DOM.SVGUseElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGUseElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGUseElement
#endif
