{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPatternElement
       (ghcjs_dom_svg_pattern_element_get_pattern_units,
        svgPatternElementGetPatternUnits,
        ghcjs_dom_svg_pattern_element_get_pattern_content_units,
        svgPatternElementGetPatternContentUnits,
        ghcjs_dom_svg_pattern_element_get_pattern_transform,
        svgPatternElementGetPatternTransform,
        ghcjs_dom_svg_pattern_element_get_x, svgPatternElementGetX,
        ghcjs_dom_svg_pattern_element_get_y, svgPatternElementGetY,
        ghcjs_dom_svg_pattern_element_get_width, svgPatternElementGetWidth,
        ghcjs_dom_svg_pattern_element_get_height,
        svgPatternElementGetHeight, SVGPatternElement, IsSVGPatternElement,
        castToSVGPatternElement, gTypeSVGPatternElement,
        toSVGPatternElement)
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

 
foreign import javascript unsafe "$1[\"patternUnits\"]"
        ghcjs_dom_svg_pattern_element_get_pattern_units ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternUnits Mozilla SVGPatternElement.patternUnits documentation> 
svgPatternElementGetPatternUnits ::
                                 (IsSVGPatternElement self) =>
                                   self -> IO (Maybe SVGAnimatedEnumeration)
svgPatternElementGetPatternUnits self
  = (ghcjs_dom_svg_pattern_element_get_pattern_units
       (unSVGPatternElement (toSVGPatternElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"patternContentUnits\"]"
        ghcjs_dom_svg_pattern_element_get_pattern_content_units ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternContentUnits Mozilla SVGPatternElement.patternContentUnits documentation> 
svgPatternElementGetPatternContentUnits ::
                                        (IsSVGPatternElement self) =>
                                          self -> IO (Maybe SVGAnimatedEnumeration)
svgPatternElementGetPatternContentUnits self
  = (ghcjs_dom_svg_pattern_element_get_pattern_content_units
       (unSVGPatternElement (toSVGPatternElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"patternTransform\"]"
        ghcjs_dom_svg_pattern_element_get_pattern_transform ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.patternTransform Mozilla SVGPatternElement.patternTransform documentation> 
svgPatternElementGetPatternTransform ::
                                     (IsSVGPatternElement self) =>
                                       self -> IO (Maybe SVGAnimatedTransformList)
svgPatternElementGetPatternTransform self
  = (ghcjs_dom_svg_pattern_element_get_pattern_transform
       (unSVGPatternElement (toSVGPatternElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_pattern_element_get_x ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.x Mozilla SVGPatternElement.x documentation> 
svgPatternElementGetX ::
                      (IsSVGPatternElement self) => self -> IO (Maybe SVGAnimatedLength)
svgPatternElementGetX self
  = (ghcjs_dom_svg_pattern_element_get_x
       (unSVGPatternElement (toSVGPatternElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_pattern_element_get_y ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.y Mozilla SVGPatternElement.y documentation> 
svgPatternElementGetY ::
                      (IsSVGPatternElement self) => self -> IO (Maybe SVGAnimatedLength)
svgPatternElementGetY self
  = (ghcjs_dom_svg_pattern_element_get_y
       (unSVGPatternElement (toSVGPatternElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_pattern_element_get_width ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.width Mozilla SVGPatternElement.width documentation> 
svgPatternElementGetWidth ::
                          (IsSVGPatternElement self) => self -> IO (Maybe SVGAnimatedLength)
svgPatternElementGetWidth self
  = (ghcjs_dom_svg_pattern_element_get_width
       (unSVGPatternElement (toSVGPatternElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_pattern_element_get_height ::
        JSRef SVGPatternElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPatternElement.height Mozilla SVGPatternElement.height documentation> 
svgPatternElementGetHeight ::
                           (IsSVGPatternElement self) => self -> IO (Maybe SVGAnimatedLength)
svgPatternElementGetHeight self
  = (ghcjs_dom_svg_pattern_element_get_height
       (unSVGPatternElement (toSVGPatternElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGPatternElement (
  ) where
#endif
