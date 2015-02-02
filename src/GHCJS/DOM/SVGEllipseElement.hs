{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGEllipseElement
       (ghcjs_dom_svg_ellipse_element_get_cx, svgEllipseElementGetCx,
        ghcjs_dom_svg_ellipse_element_get_cy, svgEllipseElementGetCy,
        ghcjs_dom_svg_ellipse_element_get_rx, svgEllipseElementGetRx,
        ghcjs_dom_svg_ellipse_element_get_ry, svgEllipseElementGetRy,
        SVGEllipseElement, IsSVGEllipseElement, castToSVGEllipseElement,
        gTypeSVGEllipseElement, toSVGEllipseElement)
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
        ghcjs_dom_svg_ellipse_element_get_cx ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
svgEllipseElementGetCx ::
                       (IsSVGEllipseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgEllipseElementGetCx self
  = (ghcjs_dom_svg_ellipse_element_get_cx
       (unSVGEllipseElement (toSVGEllipseElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"cy\"]"
        ghcjs_dom_svg_ellipse_element_get_cy ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
svgEllipseElementGetCy ::
                       (IsSVGEllipseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgEllipseElementGetCy self
  = (ghcjs_dom_svg_ellipse_element_get_cy
       (unSVGEllipseElement (toSVGEllipseElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"rx\"]"
        ghcjs_dom_svg_ellipse_element_get_rx ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
svgEllipseElementGetRx ::
                       (IsSVGEllipseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgEllipseElementGetRx self
  = (ghcjs_dom_svg_ellipse_element_get_rx
       (unSVGEllipseElement (toSVGEllipseElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"ry\"]"
        ghcjs_dom_svg_ellipse_element_get_ry ::
        JSRef SVGEllipseElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
svgEllipseElementGetRy ::
                       (IsSVGEllipseElement self) => self -> IO (Maybe SVGAnimatedLength)
svgEllipseElementGetRy self
  = (ghcjs_dom_svg_ellipse_element_get_ry
       (unSVGEllipseElement (toSVGEllipseElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGEllipseElement (
  ) where
#endif
