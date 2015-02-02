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

 
foreign import javascript unsafe "$1[\"setFilterRes\"]($2, $3)"
        ghcjs_dom_svg_filter_element_set_filter_res ::
        JSRef SVGFilterElement -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterRes Mozilla SVGFilterElement.filterRes documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterUnits Mozilla SVGFilterElement.filterUnits documentation> 
svgFilterElementGetFilterUnits ::
                               (IsSVGFilterElement self) =>
                                 self -> IO (Maybe SVGAnimatedEnumeration)
svgFilterElementGetFilterUnits self
  = (ghcjs_dom_svg_filter_element_get_filter_units
       (unSVGFilterElement (toSVGFilterElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"primitiveUnits\"]"
        ghcjs_dom_svg_filter_element_get_primitive_units ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.primitiveUnits Mozilla SVGFilterElement.primitiveUnits documentation> 
svgFilterElementGetPrimitiveUnits ::
                                  (IsSVGFilterElement self) =>
                                    self -> IO (Maybe SVGAnimatedEnumeration)
svgFilterElementGetPrimitiveUnits self
  = (ghcjs_dom_svg_filter_element_get_primitive_units
       (unSVGFilterElement (toSVGFilterElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_filter_element_get_x ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.x Mozilla SVGFilterElement.x documentation> 
svgFilterElementGetX ::
                     (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedLength)
svgFilterElementGetX self
  = (ghcjs_dom_svg_filter_element_get_x
       (unSVGFilterElement (toSVGFilterElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_filter_element_get_y ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.y Mozilla SVGFilterElement.y documentation> 
svgFilterElementGetY ::
                     (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedLength)
svgFilterElementGetY self
  = (ghcjs_dom_svg_filter_element_get_y
       (unSVGFilterElement (toSVGFilterElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_filter_element_get_width ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.width Mozilla SVGFilterElement.width documentation> 
svgFilterElementGetWidth ::
                         (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedLength)
svgFilterElementGetWidth self
  = (ghcjs_dom_svg_filter_element_get_width
       (unSVGFilterElement (toSVGFilterElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_filter_element_get_height ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.height Mozilla SVGFilterElement.height documentation> 
svgFilterElementGetHeight ::
                          (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedLength)
svgFilterElementGetHeight self
  = (ghcjs_dom_svg_filter_element_get_height
       (unSVGFilterElement (toSVGFilterElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"filterResX\"]"
        ghcjs_dom_svg_filter_element_get_filter_res_x ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResX Mozilla SVGFilterElement.filterResX documentation> 
svgFilterElementGetFilterResX ::
                              (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedInteger)
svgFilterElementGetFilterResX self
  = (ghcjs_dom_svg_filter_element_get_filter_res_x
       (unSVGFilterElement (toSVGFilterElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"filterResY\"]"
        ghcjs_dom_svg_filter_element_get_filter_res_y ::
        JSRef SVGFilterElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResY Mozilla SVGFilterElement.filterResY documentation> 
svgFilterElementGetFilterResY ::
                              (IsSVGFilterElement self) => self -> IO (Maybe SVGAnimatedInteger)
svgFilterElementGetFilterResY self
  = (ghcjs_dom_svg_filter_element_get_filter_res_y
       (unSVGFilterElement (toSVGFilterElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFilterElement (
  ) where
#endif
