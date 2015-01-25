{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGForeignObjectElement
       (ghcjs_dom_svg_foreign_object_element_get_x,
        svgForeignObjectElementGetX,
        ghcjs_dom_svg_foreign_object_element_get_y,
        svgForeignObjectElementGetY,
        ghcjs_dom_svg_foreign_object_element_get_width,
        svgForeignObjectElementGetWidth,
        ghcjs_dom_svg_foreign_object_element_get_height,
        svgForeignObjectElementGetHeight, SVGForeignObjectElement,
        IsSVGForeignObjectElement, castToSVGForeignObjectElement,
        gTypeSVGForeignObjectElement, toSVGForeignObjectElement)
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
        ghcjs_dom_svg_foreign_object_element_get_x ::
        JSRef SVGForeignObjectElement -> IO (JSRef SVGAnimatedLength)
 
svgForeignObjectElementGetX ::
                            (IsSVGForeignObjectElement self) =>
                              self -> IO (Maybe SVGAnimatedLength)
svgForeignObjectElementGetX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_foreign_object_element_get_x
         (unSVGForeignObjectElement (toSVGForeignObjectElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_foreign_object_element_get_y ::
        JSRef SVGForeignObjectElement -> IO (JSRef SVGAnimatedLength)
 
svgForeignObjectElementGetY ::
                            (IsSVGForeignObjectElement self) =>
                              self -> IO (Maybe SVGAnimatedLength)
svgForeignObjectElementGetY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_foreign_object_element_get_y
         (unSVGForeignObjectElement (toSVGForeignObjectElement self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_foreign_object_element_get_width ::
        JSRef SVGForeignObjectElement -> IO (JSRef SVGAnimatedLength)
 
svgForeignObjectElementGetWidth ::
                                (IsSVGForeignObjectElement self) =>
                                  self -> IO (Maybe SVGAnimatedLength)
svgForeignObjectElementGetWidth self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_foreign_object_element_get_width
         (unSVGForeignObjectElement (toSVGForeignObjectElement self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_foreign_object_element_get_height ::
        JSRef SVGForeignObjectElement -> IO (JSRef SVGAnimatedLength)
 
svgForeignObjectElementGetHeight ::
                                 (IsSVGForeignObjectElement self) =>
                                   self -> IO (Maybe SVGAnimatedLength)
svgForeignObjectElementGetHeight self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_foreign_object_element_get_height
         (unSVGForeignObjectElement (toSVGForeignObjectElement self)))
#else
module GHCJS.DOM.SVGForeignObjectElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGForeignObjectElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGForeignObjectElement
#endif
