{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAngle
       (ghcjs_dom_svg_angle_new_value_specified_units,
        svgAngleNewValueSpecifiedUnits,
        ghcjs_dom_svg_angle_convert_to_specified_units,
        svgAngleConvertToSpecifiedUnits, cSVG_ANGLETYPE_UNKNOWN,
        cSVG_ANGLETYPE_UNSPECIFIED, cSVG_ANGLETYPE_DEG, cSVG_ANGLETYPE_RAD,
        cSVG_ANGLETYPE_GRAD, ghcjs_dom_svg_angle_get_unit_type,
        svgAngleGetUnitType, ghcjs_dom_svg_angle_set_value,
        svgAngleSetValue, ghcjs_dom_svg_angle_get_value, svgAngleGetValue,
        ghcjs_dom_svg_angle_set_value_in_specified_units,
        svgAngleSetValueInSpecifiedUnits,
        ghcjs_dom_svg_angle_get_value_in_specified_units,
        svgAngleGetValueInSpecifiedUnits,
        ghcjs_dom_svg_angle_set_value_as_string, svgAngleSetValueAsString,
        ghcjs_dom_svg_angle_get_value_as_string, svgAngleGetValueAsString,
        SVGAngle, IsSVGAngle, castToSVGAngle, gTypeSVGAngle, toSVGAngle)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "$1[\"newValueSpecifiedUnits\"]($2,\n$3)"
        ghcjs_dom_svg_angle_new_value_specified_units ::
        JSRef SVGAngle -> Word -> Float -> IO ()
 
svgAngleNewValueSpecifiedUnits ::
                               (IsSVGAngle self) => self -> Word -> Float -> IO ()
svgAngleNewValueSpecifiedUnits self unitType valueInSpecifiedUnits
  = ghcjs_dom_svg_angle_new_value_specified_units
      (unSVGAngle (toSVGAngle self))
      unitType
      valueInSpecifiedUnits
 
foreign import javascript unsafe
        "$1[\"convertToSpecifiedUnits\"]($2)"
        ghcjs_dom_svg_angle_convert_to_specified_units ::
        JSRef SVGAngle -> Word -> IO ()
 
svgAngleConvertToSpecifiedUnits ::
                                (IsSVGAngle self) => self -> Word -> IO ()
svgAngleConvertToSpecifiedUnits self unitType
  = ghcjs_dom_svg_angle_convert_to_specified_units
      (unSVGAngle (toSVGAngle self))
      unitType
cSVG_ANGLETYPE_UNKNOWN = 0
cSVG_ANGLETYPE_UNSPECIFIED = 1
cSVG_ANGLETYPE_DEG = 2
cSVG_ANGLETYPE_RAD = 3
cSVG_ANGLETYPE_GRAD = 4
 
foreign import javascript unsafe "$1[\"unitType\"]"
        ghcjs_dom_svg_angle_get_unit_type :: JSRef SVGAngle -> IO Word
 
svgAngleGetUnitType :: (IsSVGAngle self) => self -> IO Word
svgAngleGetUnitType self
  = ghcjs_dom_svg_angle_get_unit_type (unSVGAngle (toSVGAngle self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_svg_angle_set_value :: JSRef SVGAngle -> Float -> IO ()
 
svgAngleSetValue :: (IsSVGAngle self) => self -> Float -> IO ()
svgAngleSetValue self val
  = ghcjs_dom_svg_angle_set_value (unSVGAngle (toSVGAngle self)) val
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_svg_angle_get_value :: JSRef SVGAngle -> IO Float
 
svgAngleGetValue :: (IsSVGAngle self) => self -> IO Float
svgAngleGetValue self
  = ghcjs_dom_svg_angle_get_value (unSVGAngle (toSVGAngle self))
 
foreign import javascript unsafe
        "$1[\"valueInSpecifiedUnits\"] = $2;"
        ghcjs_dom_svg_angle_set_value_in_specified_units ::
        JSRef SVGAngle -> Float -> IO ()
 
svgAngleSetValueInSpecifiedUnits ::
                                 (IsSVGAngle self) => self -> Float -> IO ()
svgAngleSetValueInSpecifiedUnits self val
  = ghcjs_dom_svg_angle_set_value_in_specified_units
      (unSVGAngle (toSVGAngle self))
      val
 
foreign import javascript unsafe "$1[\"valueInSpecifiedUnits\"]"
        ghcjs_dom_svg_angle_get_value_in_specified_units ::
        JSRef SVGAngle -> IO Float
 
svgAngleGetValueInSpecifiedUnits ::
                                 (IsSVGAngle self) => self -> IO Float
svgAngleGetValueInSpecifiedUnits self
  = ghcjs_dom_svg_angle_get_value_in_specified_units
      (unSVGAngle (toSVGAngle self))
 
foreign import javascript unsafe "$1[\"valueAsString\"] = $2;"
        ghcjs_dom_svg_angle_set_value_as_string ::
        JSRef SVGAngle -> JSString -> IO ()
 
svgAngleSetValueAsString ::
                         (IsSVGAngle self, ToJSString val) => self -> val -> IO ()
svgAngleSetValueAsString self val
  = ghcjs_dom_svg_angle_set_value_as_string
      (unSVGAngle (toSVGAngle self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"valueAsString\"]"
        ghcjs_dom_svg_angle_get_value_as_string ::
        JSRef SVGAngle -> IO JSString
 
svgAngleGetValueAsString ::
                         (IsSVGAngle self, FromJSString result) => self -> IO result
svgAngleGetValueAsString self
  = fromJSString <$>
      (ghcjs_dom_svg_angle_get_value_as_string
         (unSVGAngle (toSVGAngle self)))
#else
module GHCJS.DOM.SVGAngle (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAngle
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAngle
#endif
