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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_x ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.x Mozilla SVGFilterPrimitiveStandardAttributes.x documentation> 
svgFilterPrimitiveStandardAttributesGetX ::
                                         (IsSVGFilterPrimitiveStandardAttributes self) =>
                                           self -> IO (Maybe SVGAnimatedLength)
svgFilterPrimitiveStandardAttributesGetX self
  = (ghcjs_dom_svg_filter_primitive_standard_attributes_get_x
       (unSVGFilterPrimitiveStandardAttributes
          (toSVGFilterPrimitiveStandardAttributes self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_y ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.y Mozilla SVGFilterPrimitiveStandardAttributes.y documentation> 
svgFilterPrimitiveStandardAttributesGetY ::
                                         (IsSVGFilterPrimitiveStandardAttributes self) =>
                                           self -> IO (Maybe SVGAnimatedLength)
svgFilterPrimitiveStandardAttributesGetY self
  = (ghcjs_dom_svg_filter_primitive_standard_attributes_get_y
       (unSVGFilterPrimitiveStandardAttributes
          (toSVGFilterPrimitiveStandardAttributes self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_width ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.width Mozilla SVGFilterPrimitiveStandardAttributes.width documentation> 
svgFilterPrimitiveStandardAttributesGetWidth ::
                                             (IsSVGFilterPrimitiveStandardAttributes self) =>
                                               self -> IO (Maybe SVGAnimatedLength)
svgFilterPrimitiveStandardAttributesGetWidth self
  = (ghcjs_dom_svg_filter_primitive_standard_attributes_get_width
       (unSVGFilterPrimitiveStandardAttributes
          (toSVGFilterPrimitiveStandardAttributes self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_height ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.height Mozilla SVGFilterPrimitiveStandardAttributes.height documentation> 
svgFilterPrimitiveStandardAttributesGetHeight ::
                                              (IsSVGFilterPrimitiveStandardAttributes self) =>
                                                self -> IO (Maybe SVGAnimatedLength)
svgFilterPrimitiveStandardAttributesGetHeight self
  = (ghcjs_dom_svg_filter_primitive_standard_attributes_get_height
       (unSVGFilterPrimitiveStandardAttributes
          (toSVGFilterPrimitiveStandardAttributes self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"result\"]"
        ghcjs_dom_svg_filter_primitive_standard_attributes_get_result ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.result Mozilla SVGFilterPrimitiveStandardAttributes.result documentation> 
svgFilterPrimitiveStandardAttributesGetResult ::
                                              (IsSVGFilterPrimitiveStandardAttributes self) =>
                                                self -> IO (Maybe SVGAnimatedString)
svgFilterPrimitiveStandardAttributesGetResult self
  = (ghcjs_dom_svg_filter_primitive_standard_attributes_get_result
       (unSVGFilterPrimitiveStandardAttributes
          (toSVGFilterPrimitiveStandardAttributes self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFilterPrimitiveStandardAttributes (
  ) where
#endif
