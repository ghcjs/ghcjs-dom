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
        ghcjs_dom_svg_use_element_get_x ::
        JSRef SVGUseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.x Mozilla SVGUseElement.x documentation> 
svgUseElementGetX ::
                  (IsSVGUseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgUseElementGetX self
  = (ghcjs_dom_svg_use_element_get_x
       (unSVGUseElement (toSVGUseElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_use_element_get_y ::
        JSRef SVGUseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.y Mozilla SVGUseElement.y documentation> 
svgUseElementGetY ::
                  (IsSVGUseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgUseElementGetY self
  = (ghcjs_dom_svg_use_element_get_y
       (unSVGUseElement (toSVGUseElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_use_element_get_width ::
        JSRef SVGUseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.width Mozilla SVGUseElement.width documentation> 
svgUseElementGetWidth ::
                      (IsSVGUseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgUseElementGetWidth self
  = (ghcjs_dom_svg_use_element_get_width
       (unSVGUseElement (toSVGUseElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_use_element_get_height ::
        JSRef SVGUseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.height Mozilla SVGUseElement.height documentation> 
svgUseElementGetHeight ::
                       (IsSVGUseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgUseElementGetHeight self
  = (ghcjs_dom_svg_use_element_get_height
       (unSVGUseElement (toSVGUseElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"instanceRoot\"]"
        ghcjs_dom_svg_use_element_get_instance_root ::
        JSRef SVGUseElement -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.instanceRoot Mozilla SVGUseElement.instanceRoot documentation> 
svgUseElementGetInstanceRoot ::
                             (IsSVGUseElement self) => self -> IO (Maybe SVGElementInstance)
svgUseElementGetInstanceRoot self
  = (ghcjs_dom_svg_use_element_get_instance_root
       (unSVGUseElement (toSVGUseElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"animatedInstanceRoot\"]"
        ghcjs_dom_svg_use_element_get_animated_instance_root ::
        JSRef SVGUseElement -> IO (JSRef SVGElementInstance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.animatedInstanceRoot Mozilla SVGUseElement.animatedInstanceRoot documentation> 
svgUseElementGetAnimatedInstanceRoot ::
                                     (IsSVGUseElement self) => self -> IO (Maybe SVGElementInstance)
svgUseElementGetAnimatedInstanceRoot self
  = (ghcjs_dom_svg_use_element_get_animated_instance_root
       (unSVGUseElement (toSVGUseElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGUseElement (
  ) where
#endif
