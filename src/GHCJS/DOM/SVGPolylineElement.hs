{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPolylineElement
       (ghcjs_dom_svg_polyline_element_get_points,
        svgPolylineElementGetPoints,
        ghcjs_dom_svg_polyline_element_get_animated_points,
        svgPolylineElementGetAnimatedPoints, SVGPolylineElement,
        IsSVGPolylineElement, castToSVGPolylineElement,
        gTypeSVGPolylineElement, toSVGPolylineElement)
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

 
foreign import javascript unsafe "$1[\"points\"]"
        ghcjs_dom_svg_polyline_element_get_points ::
        JSRef SVGPolylineElement -> IO (JSRef SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement.points Mozilla SVGPolylineElement.points documentation> 
svgPolylineElementGetPoints ::
                            (IsSVGPolylineElement self) => self -> IO (Maybe SVGPointList)
svgPolylineElementGetPoints self
  = (ghcjs_dom_svg_polyline_element_get_points
       (unSVGPolylineElement (toSVGPolylineElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"animatedPoints\"]"
        ghcjs_dom_svg_polyline_element_get_animated_points ::
        JSRef SVGPolylineElement -> IO (JSRef SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolylineElement.animatedPoints Mozilla SVGPolylineElement.animatedPoints documentation> 
svgPolylineElementGetAnimatedPoints ::
                                    (IsSVGPolylineElement self) => self -> IO (Maybe SVGPointList)
svgPolylineElementGetAnimatedPoints self
  = (ghcjs_dom_svg_polyline_element_get_animated_points
       (unSVGPolylineElement (toSVGPolylineElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGPolylineElement (
  ) where
#endif
