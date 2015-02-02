{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGCircleElement
       (ghcjs_dom_svg_circle_element_get_cx, svgCircleElementGetCx,
        ghcjs_dom_svg_circle_element_get_cy, svgCircleElementGetCy,
        ghcjs_dom_svg_circle_element_get_r, svgCircleElementGetR,
        SVGCircleElement, IsSVGCircleElement, castToSVGCircleElement,
        gTypeSVGCircleElement, toSVGCircleElement)
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

 
foreign import javascript unsafe "$1[\"cx\"]"
        ghcjs_dom_svg_circle_element_get_cx ::
        JSRef SVGCircleElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cx Mozilla SVGCircleElement.cx documentation> 
svgCircleElementGetCx ::
                      (IsSVGCircleElement self) => self -> IO (Maybe SVGAnimatedLength)
svgCircleElementGetCx self
  = (ghcjs_dom_svg_circle_element_get_cx
       (unSVGCircleElement (toSVGCircleElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"cy\"]"
        ghcjs_dom_svg_circle_element_get_cy ::
        JSRef SVGCircleElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cy Mozilla SVGCircleElement.cy documentation> 
svgCircleElementGetCy ::
                      (IsSVGCircleElement self) => self -> IO (Maybe SVGAnimatedLength)
svgCircleElementGetCy self
  = (ghcjs_dom_svg_circle_element_get_cy
       (unSVGCircleElement (toSVGCircleElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"r\"]"
        ghcjs_dom_svg_circle_element_get_r ::
        JSRef SVGCircleElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.r Mozilla SVGCircleElement.r documentation> 
svgCircleElementGetR ::
                     (IsSVGCircleElement self) => self -> IO (Maybe SVGAnimatedLength)
svgCircleElementGetR self
  = (ghcjs_dom_svg_circle_element_get_r
       (unSVGCircleElement (toSVGCircleElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGCircleElement (
  ) where
#endif
