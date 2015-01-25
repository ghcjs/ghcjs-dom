{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGMaskElement
       (ghcjs_dom_svg_mask_element_get_mask_units,
        svgMaskElementGetMaskUnits,
        ghcjs_dom_svg_mask_element_get_mask_content_units,
        svgMaskElementGetMaskContentUnits,
        ghcjs_dom_svg_mask_element_get_x, svgMaskElementGetX,
        ghcjs_dom_svg_mask_element_get_y, svgMaskElementGetY,
        ghcjs_dom_svg_mask_element_get_width, svgMaskElementGetWidth,
        ghcjs_dom_svg_mask_element_get_height, svgMaskElementGetHeight,
        SVGMaskElement, IsSVGMaskElement, castToSVGMaskElement,
        gTypeSVGMaskElement, toSVGMaskElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"maskUnits\"]"
        ghcjs_dom_svg_mask_element_get_mask_units ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgMaskElementGetMaskUnits ::
                           (IsSVGMaskElement self) =>
                             self -> IO (Maybe SVGAnimatedEnumeration)
svgMaskElementGetMaskUnits self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_mask_element_get_mask_units
         (unSVGMaskElement (toSVGMaskElement self)))
 
foreign import javascript unsafe "$1[\"maskContentUnits\"]"
        ghcjs_dom_svg_mask_element_get_mask_content_units ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgMaskElementGetMaskContentUnits ::
                                  (IsSVGMaskElement self) =>
                                    self -> IO (Maybe SVGAnimatedEnumeration)
svgMaskElementGetMaskContentUnits self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_mask_element_get_mask_content_units
         (unSVGMaskElement (toSVGMaskElement self)))
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_mask_element_get_x ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)
 
svgMaskElementGetX ::
                   (IsSVGMaskElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMaskElementGetX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_mask_element_get_x
         (unSVGMaskElement (toSVGMaskElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_mask_element_get_y ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)
 
svgMaskElementGetY ::
                   (IsSVGMaskElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMaskElementGetY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_mask_element_get_y
         (unSVGMaskElement (toSVGMaskElement self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_mask_element_get_width ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)
 
svgMaskElementGetWidth ::
                       (IsSVGMaskElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMaskElementGetWidth self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_mask_element_get_width
         (unSVGMaskElement (toSVGMaskElement self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_mask_element_get_height ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)
 
svgMaskElementGetHeight ::
                        (IsSVGMaskElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMaskElementGetHeight self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_mask_element_get_height
         (unSVGMaskElement (toSVGMaskElement self)))
#else
module GHCJS.DOM.SVGMaskElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGMaskElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGMaskElement
#endif
