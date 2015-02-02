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
        ghcjs_dom_svg_image_element_get_x ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.x Mozilla SVGImageElement.x documentation> 
svgImageElementGetX ::
                    (IsSVGImageElement self) => self -> IO (Maybe SVGAnimatedLength)
svgImageElementGetX self
  = (ghcjs_dom_svg_image_element_get_x
       (unSVGImageElement (toSVGImageElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_image_element_get_y ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.y Mozilla SVGImageElement.y documentation> 
svgImageElementGetY ::
                    (IsSVGImageElement self) => self -> IO (Maybe SVGAnimatedLength)
svgImageElementGetY self
  = (ghcjs_dom_svg_image_element_get_y
       (unSVGImageElement (toSVGImageElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_image_element_get_width ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.width Mozilla SVGImageElement.width documentation> 
svgImageElementGetWidth ::
                        (IsSVGImageElement self) => self -> IO (Maybe SVGAnimatedLength)
svgImageElementGetWidth self
  = (ghcjs_dom_svg_image_element_get_width
       (unSVGImageElement (toSVGImageElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_image_element_get_height ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.height Mozilla SVGImageElement.height documentation> 
svgImageElementGetHeight ::
                         (IsSVGImageElement self) => self -> IO (Maybe SVGAnimatedLength)
svgImageElementGetHeight self
  = (ghcjs_dom_svg_image_element_get_height
       (unSVGImageElement (toSVGImageElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        ghcjs_dom_svg_image_element_get_preserve_aspect_ratio ::
        JSRef SVGImageElement -> IO (JSRef SVGAnimatedPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement.preserveAspectRatio Mozilla SVGImageElement.preserveAspectRatio documentation> 
svgImageElementGetPreserveAspectRatio ::
                                      (IsSVGImageElement self) =>
                                        self -> IO (Maybe SVGAnimatedPreserveAspectRatio)
svgImageElementGetPreserveAspectRatio self
  = (ghcjs_dom_svg_image_element_get_preserve_aspect_ratio
       (unSVGImageElement (toSVGImageElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGImageElement (
  ) where
#endif
