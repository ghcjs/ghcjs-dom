{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFilterElement
       (ghcjs_dom_svg_filter_element_set_filter_res,
        svgFilterElementSetFilterRes,
        ghcjs_dom_svg_filter_element_get_filter_units,
        svgFilterElementGetFilterUnits,
        ghcjs_dom_svg_filter_element_get_primitive_units,
        svgFilterElementGetPrimitiveUnits,
        ghcjs_dom_svg_filter_element_get_x, svgFilterElementGetX,
        ghcjs_dom_svg_filter_element_get_y, svgFilterElementGetY,
        ghcjs_dom_svg_filter_element_get_width, svgFilterElementGetWidth,
        ghcjs_dom_svg_filter_element_get_height, svgFilterElementGetHeight,
        ghcjs_dom_svg_filter_element_get_filter_res_x,
        svgFilterElementGetFilterResX,
        ghcjs_dom_svg_filter_element_get_filter_res_y,
        svgFilterElementGetFilterResY, SVGFilterElement,
        IsSVGFilterElement, castToSVGFilterElement, gTypeSVGFilterElement,
        toSVGFilterElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"setFilterRes\"]($2, $3)"
        ghcjs_dom_svg_filter_element_set_filter_res ::
        JSRef SVGFilterElement -> Word -> Word -> IO ()
 
svgFilterElementSetFilterRes ::
                             (IsSVGFilterElement self) => self -> Word -> Word -> IO ()
svgFilterElementSetFilterRes self filterResX filterResY
  = ghcjs_dom_svg_filter_element_set_filter_res
      (unSVGFilterElement (toSVGFilterElement self))
      filterResX
      filterResY
 
foreign import javascript unsafe "$1[\"filterUnits\"]"
        ghcjs_dom_svg_filter_element_get_filter_units ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgFilterElementGetFilterUnits ::
                               (IsSVGFilterElement self) =>
                                 self -> IO (Maybe SVGAnimatedEnumeration)
svgFilterElementGetFilterUnits self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_filter_element_get_filter_units
         (unSVGFilterElement (toSVGFilterElement self)))
 
foreign import javascript unsafe "$1[\"primitiveUnits\"]"
        ghcjs_dom_svg_filter_element_get_primitive_units ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgFilterElementGetPrimitiveUnits ::
                                  (IsSVGFilterElement self) =>
                                    self -> IO (Maybe SVGAnimatedEnumeration)
svgFilterElementGetPrimitiveUnits self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_filter_element_get_primitive_units
         (unSVGFilterElement (toSVGFilterElement self)))
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_filter_element_get_x ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)
 
svgFilterElementGetX ::
                     (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedLength)
svgFilterElementGetX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_filter_element_get_x
         (unSVGFilterElement (toSVGFilterElement self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_filter_element_get_y ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)
 
svgFilterElementGetY ::
                     (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedLength)
svgFilterElementGetY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_filter_element_get_y
         (unSVGFilterElement (toSVGFilterElement self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_filter_element_get_width ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)
 
svgFilterElementGetWidth ::
                         (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedLength)
svgFilterElementGetWidth self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_filter_element_get_width
         (unSVGFilterElement (toSVGFilterElement self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_filter_element_get_height ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)
 
svgFilterElementGetHeight ::
                          (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedLength)
svgFilterElementGetHeight self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_filter_element_get_height
         (unSVGFilterElement (toSVGFilterElement self)))
 
foreign import javascript unsafe "$1[\"filterResX\"]"
        ghcjs_dom_svg_filter_element_get_filter_res_x ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedInteger)
 
svgFilterElementGetFilterResX ::
                              (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedInteger)
svgFilterElementGetFilterResX self
  = fmap SVGAnimatedInteger . maybeJSNull <$>
      (ghcjs_dom_svg_filter_element_get_filter_res_x
         (unSVGFilterElement (toSVGFilterElement self)))
 
foreign import javascript unsafe "$1[\"filterResY\"]"
        ghcjs_dom_svg_filter_element_get_filter_res_y ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedInteger)
 
svgFilterElementGetFilterResY ::
                              (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedInteger)
svgFilterElementGetFilterResY self
  = fmap SVGAnimatedInteger . maybeJSNull <$>
      (ghcjs_dom_svg_filter_element_get_filter_res_y
         (unSVGFilterElement (toSVGFilterElement self)))
#else
module GHCJS.DOM.SVGFilterElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFilterElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFilterElement
#endif
