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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"setOrientToAuto\"]()"
        ghcjs_dom_svg_marker_element_set_orient_to_auto ::
        JSRef SVGMarkerElement -> IO ()
 
svgMarkerElementSetOrientToAuto ::
                                (IsSVGMarkerElement self) => self -> IO ()
svgMarkerElementSetOrientToAuto self
  = ghcjs_dom_svg_marker_element_set_orient_to_auto
      (unSVGMarkerElement (toSVGMarkerElement self))
 
foreign import javascript unsafe "$1[\"setOrientToAngle\"]($2)"
        ghcjs_dom_svg_marker_element_set_orient_to_angle ::
        JSRef SVGMarkerElement -> JSRef SVGAngle -> IO ()
 
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
 
svgMarkerElementGetRefX ::
                        (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMarkerElementGetRefX self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_marker_element_get_ref_x
         (unSVGMarkerElement (toSVGMarkerElement self)))
 
foreign import javascript unsafe "$1[\"refY\"]"
        ghcjs_dom_svg_marker_element_get_ref_y ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedLength)
 
svgMarkerElementGetRefY ::
                        (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMarkerElementGetRefY self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_marker_element_get_ref_y
         (unSVGMarkerElement (toSVGMarkerElement self)))
 
foreign import javascript unsafe "$1[\"markerUnits\"]"
        ghcjs_dom_svg_marker_element_get_marker_units ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgMarkerElementGetMarkerUnits ::
                               (IsSVGMarkerElement self) =>
                                 self -> IO (Maybe SVGAnimatedEnumeration)
svgMarkerElementGetMarkerUnits self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_marker_element_get_marker_units
         (unSVGMarkerElement (toSVGMarkerElement self)))
 
foreign import javascript unsafe "$1[\"markerWidth\"]"
        ghcjs_dom_svg_marker_element_get_marker_width ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedLength)
 
svgMarkerElementGetMarkerWidth ::
                               (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMarkerElementGetMarkerWidth self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_marker_element_get_marker_width
         (unSVGMarkerElement (toSVGMarkerElement self)))
 
foreign import javascript unsafe "$1[\"markerHeight\"]"
        ghcjs_dom_svg_marker_element_get_marker_height ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedLength)
 
svgMarkerElementGetMarkerHeight ::
                                (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedLength)
svgMarkerElementGetMarkerHeight self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_marker_element_get_marker_height
         (unSVGMarkerElement (toSVGMarkerElement self)))
 
foreign import javascript unsafe "$1[\"orientType\"]"
        ghcjs_dom_svg_marker_element_get_orient_type ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgMarkerElementGetOrientType ::
                              (IsSVGMarkerElement self) =>
                                self -> IO (Maybe SVGAnimatedEnumeration)
svgMarkerElementGetOrientType self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_marker_element_get_orient_type
         (unSVGMarkerElement (toSVGMarkerElement self)))
 
foreign import javascript unsafe "$1[\"orientAngle\"]"
        ghcjs_dom_svg_marker_element_get_orient_angle ::
        JSRef SVGMarkerElement -> IO (JSRef SVGAnimatedAngle)
 
svgMarkerElementGetOrientAngle ::
                               (IsSVGMarkerElement self) => self -> IO (Maybe SVGAnimatedAngle)
svgMarkerElementGetOrientAngle self
  = fmap SVGAnimatedAngle . maybeJSNull <$>
      (ghcjs_dom_svg_marker_element_get_orient_angle
         (unSVGMarkerElement (toSVGMarkerElement self)))
#else
module GHCJS.DOM.SVGMarkerElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGMarkerElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGMarkerElement
#endif
