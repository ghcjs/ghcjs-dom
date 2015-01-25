{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFilterPrimitiveStandardAttributes
       (ghcjs_dom_svg_filter_primitive_standard_attributes_get_x,
        svgFilterPrimitiveStandardAttributesGetX,
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_y,
        svgFilterPrimitiveStandardAttributesGetY,
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_width,
        svgFilterPrimitiveStandardAttributesGetWidth,
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_height,
        svgFilterPrimitiveStandardAttributesGetHeight,
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_result,
        svgFilterPrimitiveStandardAttributesGetResult,
        SVGFilterPrimitiveStandardAttributes,
        IsSVGFilterPrimitiveStandardAttributes,
        castToSVGFilterPrimitiveStandardAttributes,
        gTypeSVGFilterPrimitiveStandardAttributes,
        toSVGFilterPrimitiveStandardAttributes)
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
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_x ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)
 
svgFilterPrimitiveStandardAttributesGetX ::
                                         (IsSVGFilterPrimitiveStandardAttributes self) =>
                                           self -> IO (Maybe SVGAnimatedLength)
svgFilterPrimitiveStandardAttributesGetX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_filter_primitive_standard_attributes_get_x
         (unSVGFilterPrimitiveStandardAttributes
            (toSVGFilterPrimitiveStandardAttributes self)))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_y ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)
 
svgFilterPrimitiveStandardAttributesGetY ::
                                         (IsSVGFilterPrimitiveStandardAttributes self) =>
                                           self -> IO (Maybe SVGAnimatedLength)
svgFilterPrimitiveStandardAttributesGetY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_filter_primitive_standard_attributes_get_y
         (unSVGFilterPrimitiveStandardAttributes
            (toSVGFilterPrimitiveStandardAttributes self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_width ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)
 
svgFilterPrimitiveStandardAttributesGetWidth ::
                                             (IsSVGFilterPrimitiveStandardAttributes self) =>
                                               self -> IO (Maybe SVGAnimatedLength)
svgFilterPrimitiveStandardAttributesGetWidth self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_filter_primitive_standard_attributes_get_width
         (unSVGFilterPrimitiveStandardAttributes
            (toSVGFilterPrimitiveStandardAttributes self)))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_height ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)
 
svgFilterPrimitiveStandardAttributesGetHeight ::
                                              (IsSVGFilterPrimitiveStandardAttributes self) =>
                                                self -> IO (Maybe SVGAnimatedLength)
svgFilterPrimitiveStandardAttributesGetHeight self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_filter_primitive_standard_attributes_get_height
         (unSVGFilterPrimitiveStandardAttributes
            (toSVGFilterPrimitiveStandardAttributes self)))
 
foreign import javascript unsafe "$1[\"result\"]"
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_result ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedString)
 
svgFilterPrimitiveStandardAttributesGetResult ::
                                              (IsSVGFilterPrimitiveStandardAttributes self) =>
                                                self -> IO (Maybe SVGAnimatedString)
svgFilterPrimitiveStandardAttributesGetResult self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svg_filter_primitive_standard_attributes_get_result
         (unSVGFilterPrimitiveStandardAttributes
            (toSVGFilterPrimitiveStandardAttributes self)))
#else
module GHCJS.DOM.SVGFilterPrimitiveStandardAttributes (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFilterPrimitiveStandardAttributes
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFilterPrimitiveStandardAttributes
#endif
