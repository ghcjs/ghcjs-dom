{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGMarkerElement
       (ghcjs_dom_svg_marker_element_set_orient_to_auto,
        svgMarkerElementSetOrientToAuto,
        ghcjs_dom_svg_marker_element_set_orient_to_angle,
        svgMarkerElementSetOrientToAngle, cSVG_MARKERUNITS_UNKNOWN,
        cSVG_MARKERUNITS_USERSPACEONUSE, cSVG_MARKERUNITS_STROKEWIDTH,
        cSVG_MARKER_ORIENT_UNKNOWN, cSVG_MARKER_ORIENT_AUTO,
        cSVG_MARKER_ORIENT_ANGLE, ghcjs_dom_svg_marker_element_get_ref_x,
        svgMarkerElementGetRefX, ghcjs_dom_svg_marker_element_get_ref_y,
        svgMarkerElementGetRefY,
        ghcjs_dom_svg_marker_element_get_marker_units,
        svgMarkerElementGetMarkerUnits,
        ghcjs_dom_svg_marker_element_get_marker_width,
        svgMarkerElementGetMarkerWidth,
        ghcjs_dom_svg_marker_element_get_marker_height,
        svgMarkerElementGetMarkerHeight,
        ghcjs_dom_svg_marker_element_get_orient_type,
        svgMarkerElementGetOrientType,
        ghcjs_dom_svg_marker_element_get_orient_angle,
        svgMarkerElementGetOrientAngle, SVGMarkerElement,
        IsSVGMarkerElement, castToSVGMarkerElement, gTypeSVGMarkerElement,
        toSVGMarkerElement)
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

 
foreign import javascript unsafe "$1[\"setOrientToAuto\"]()"
        ghcjs_dom_svg_marker_element_set_orient_to_auto ::
        JSRef SVGMarkerElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientToAuto Mozilla SVGMarkerElement.orientToAuto documentation> 
svgMarkerElementSetOrientToAuto ::
                                (IsSVGMarkerElement self) => self -> IO ()
svgMarkerElementSetOrientToAuto self
  = ghcjs_dom_svg_marker_element_set_orient_to_auto
      (unSVGMarkerElement (toSVGMarkerElement self))
 
foreign import javascript unsafe "$1[\"setOrientToAngle\"]($2)"
        ghcjs_dom_svg_marker_element_set_orient_to_angle ::
        JSRef SVGMarkerElement -> JSRef SVGAngle -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientToAngle Mozilla SVGMarkerElement.orientToAngle documentation> 
svgMarkerElementSetOrientToAngle ::
                                 (IsSVGMarkerElement self, IsSVGAngle angle) =>
                                   self -> Maybe angle -> IO ()
svgMarkerElementSetOrientToAngle self angle
  = ghcjs_dom_svg_marker_element_set_orient_to_angle
      (unSVGMarkerElement (toSVGMarkerElement self))
      (maybe jsNull (unSVGAngle . toSVGAngle) angle)
cSVG_MARKERUNITS_UNKNOWN = 0
cSVG_MARKERUNITS_USERSPACEONUSE = 1
cSVG_MARKERUNITS_STROKEWIDTH = 2
cSVG_MARKER_ORIENT_UNKNOWN = 0
cSVG_MARKER_ORIENT_AUTO = 1
cSVG_MARKER_ORIENT_ANGLE = 2
 
foreign import javascript unsafe "$1[\"refX\"]"
        ghcjs_dom_svg_marker_element_get_ref_x ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.refX Mozilla SVGMarkerElement.refX documentation> 
svgMarkerElementGetRefX ::
                        (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMarkerElementGetRefX self
  = (ghcjs_dom_svg_marker_element_get_ref_x
       (unSVGMarkerElement (toSVGMarkerElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"refY\"]"
        ghcjs_dom_svg_marker_element_get_ref_y ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.refY Mozilla SVGMarkerElement.refY documentation> 
svgMarkerElementGetRefY ::
                        (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMarkerElementGetRefY self
  = (ghcjs_dom_svg_marker_element_get_ref_y
       (unSVGMarkerElement (toSVGMarkerElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"markerUnits\"]"
        ghcjs_dom_svg_marker_element_get_marker_units ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerUnits Mozilla SVGMarkerElement.markerUnits documentation> 
svgMarkerElementGetMarkerUnits ::
                               (IsSVGMarkerElement self) =>
                                 self -> IO (Maybe SVGAnimatedEnumeration)
svgMarkerElementGetMarkerUnits self
  = (ghcjs_dom_svg_marker_element_get_marker_units
       (unSVGMarkerElement (toSVGMarkerElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"markerWidth\"]"
        ghcjs_dom_svg_marker_element_get_marker_width ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerWidth Mozilla SVGMarkerElement.markerWidth documentation> 
svgMarkerElementGetMarkerWidth ::
                               (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMarkerElementGetMarkerWidth self
  = (ghcjs_dom_svg_marker_element_get_marker_width
       (unSVGMarkerElement (toSVGMarkerElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"markerHeight\"]"
        ghcjs_dom_svg_marker_element_get_marker_height ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerHeight Mozilla SVGMarkerElement.markerHeight documentation> 
svgMarkerElementGetMarkerHeight ::
                                (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMarkerElementGetMarkerHeight self
  = (ghcjs_dom_svg_marker_element_get_marker_height
       (unSVGMarkerElement (toSVGMarkerElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"orientType\"]"
        ghcjs_dom_svg_marker_element_get_orient_type ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientType Mozilla SVGMarkerElement.orientType documentation> 
svgMarkerElementGetOrientType ::
                              (IsSVGMarkerElement self) =>
                                self -> IO (Maybe SVGAnimatedEnumeration)
svgMarkerElementGetOrientType self
  = (ghcjs_dom_svg_marker_element_get_orient_type
       (unSVGMarkerElement (toSVGMarkerElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"orientAngle\"]"
        ghcjs_dom_svg_marker_element_get_orient_angle ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedAngle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientAngle Mozilla SVGMarkerElement.orientAngle documentation> 
svgMarkerElementGetOrientAngle ::
                               (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedAngle)
svgMarkerElementGetOrientAngle self
  = (ghcjs_dom_svg_marker_element_get_orient_angle
       (unSVGMarkerElement (toSVGMarkerElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGMarkerElement (
  ) where
#endif
