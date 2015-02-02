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

 
foreign import javascript unsafe "$1[\"maskUnits\"]"
        ghcjs_dom_svg_mask_element_get_mask_units ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.maskUnits Mozilla SVGMaskElement.maskUnits documentation> 
svgMaskElementGetMaskUnits ::
                           (IsSVGMaskElement self) =>
                             self -> IO (Maybe SVGAnimatedEnumeration)
svgMaskElementGetMaskUnits self
  = (ghcjs_dom_svg_mask_element_get_mask_units
       (unSVGMaskElement (toSVGMaskElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"maskContentUnits\"]"
        ghcjs_dom_svg_mask_element_get_mask_content_units ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.maskContentUnits Mozilla SVGMaskElement.maskContentUnits documentation> 
svgMaskElementGetMaskContentUnits ::
                                  (IsSVGMaskElement self) =>
                                    self -> IO (Maybe SVGAnimatedEnumeration)
svgMaskElementGetMaskContentUnits self
  = (ghcjs_dom_svg_mask_element_get_mask_content_units
       (unSVGMaskElement (toSVGMaskElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_mask_element_get_x ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.x Mozilla SVGMaskElement.x documentation> 
svgMaskElementGetX ::
                   (IsSVGMaskElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMaskElementGetX self
  = (ghcjs_dom_svg_mask_element_get_x
       (unSVGMaskElement (toSVGMaskElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_mask_element_get_y ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.y Mozilla SVGMaskElement.y documentation> 
svgMaskElementGetY ::
                   (IsSVGMaskElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMaskElementGetY self
  = (ghcjs_dom_svg_mask_element_get_y
       (unSVGMaskElement (toSVGMaskElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_mask_element_get_width ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.width Mozilla SVGMaskElement.width documentation> 
svgMaskElementGetWidth ::
                       (IsSVGMaskElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMaskElementGetWidth self
  = (ghcjs_dom_svg_mask_element_get_width
       (unSVGMaskElement (toSVGMaskElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_mask_element_get_height ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.height Mozilla SVGMaskElement.height documentation> 
svgMaskElementGetHeight ::
                        (IsSVGMaskElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMaskElementGetHeight self
  = (ghcjs_dom_svg_mask_element_get_height
       (unSVGMaskElement (toSVGMaskElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGMaskElement (
  ) where
#endif
