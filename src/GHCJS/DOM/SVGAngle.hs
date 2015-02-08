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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"newValueSpecifiedUnits\"]($2,\n$3)"
        ghcjs_dom_svg_angle_new_value_specified_units ::
        JSRef SVGAngle -> Word -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.newValueSpecifiedUnits Mozilla SVGAngle.newValueSpecifiedUnits documentation> 
svgAngleNewValueSpecifiedUnits ::
                               (MonadIO m, IsSVGAngle self) => self -> Word -> Float -> m ()
svgAngleNewValueSpecifiedUnits self unitType valueInSpecifiedUnits
  = liftIO
      (ghcjs_dom_svg_angle_new_value_specified_units
         (unSVGAngle (toSVGAngle self))
         unitType
         valueInSpecifiedUnits)
 
foreign import javascript unsafe
        "$1[\"convertToSpecifiedUnits\"]($2)"
        ghcjs_dom_svg_angle_convert_to_specified_units ::
        JSRef SVGAngle -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.convertToSpecifiedUnits Mozilla SVGAngle.convertToSpecifiedUnits documentation> 
svgAngleConvertToSpecifiedUnits ::
                                (MonadIO m, IsSVGAngle self) => self -> Word -> m ()
svgAngleConvertToSpecifiedUnits self unitType
  = liftIO
      (ghcjs_dom_svg_angle_convert_to_specified_units
         (unSVGAngle (toSVGAngle self))
         unitType)
cSVG_ANGLETYPE_UNKNOWN = 0
cSVG_ANGLETYPE_UNSPECIFIED = 1
cSVG_ANGLETYPE_DEG = 2
cSVG_ANGLETYPE_RAD = 3
cSVG_ANGLETYPE_GRAD = 4
 
foreign import javascript unsafe "$1[\"unitType\"]"
        ghcjs_dom_svg_angle_get_unit_type :: JSRef SVGAngle -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.unitType Mozilla SVGAngle.unitType documentation> 
svgAngleGetUnitType ::
                    (MonadIO m, IsSVGAngle self) => self -> m Word
svgAngleGetUnitType self
  = liftIO
      (ghcjs_dom_svg_angle_get_unit_type (unSVGAngle (toSVGAngle self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_svg_angle_set_value :: JSRef SVGAngle -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.value Mozilla SVGAngle.value documentation> 
svgAngleSetValue ::
                 (MonadIO m, IsSVGAngle self) => self -> Float -> m ()
svgAngleSetValue self val
  = liftIO
      (ghcjs_dom_svg_angle_set_value (unSVGAngle (toSVGAngle self)) val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_svg_angle_get_value :: JSRef SVGAngle -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.value Mozilla SVGAngle.value documentation> 
svgAngleGetValue :: (MonadIO m, IsSVGAngle self) => self -> m Float
svgAngleGetValue self
  = liftIO
      (ghcjs_dom_svg_angle_get_value (unSVGAngle (toSVGAngle self)))
 
foreign import javascript unsafe
        "$1[\"valueInSpecifiedUnits\"] = $2;"
        ghcjs_dom_svg_angle_set_value_in_specified_units ::
        JSRef SVGAngle -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueInSpecifiedUnits Mozilla SVGAngle.valueInSpecifiedUnits documentation> 
svgAngleSetValueInSpecifiedUnits ::
                                 (MonadIO m, IsSVGAngle self) => self -> Float -> m ()
svgAngleSetValueInSpecifiedUnits self val
  = liftIO
      (ghcjs_dom_svg_angle_set_value_in_specified_units
         (unSVGAngle (toSVGAngle self))
         val)
 
foreign import javascript unsafe "$1[\"valueInSpecifiedUnits\"]"
        ghcjs_dom_svg_angle_get_value_in_specified_units ::
        JSRef SVGAngle -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueInSpecifiedUnits Mozilla SVGAngle.valueInSpecifiedUnits documentation> 
svgAngleGetValueInSpecifiedUnits ::
                                 (MonadIO m, IsSVGAngle self) => self -> m Float
svgAngleGetValueInSpecifiedUnits self
  = liftIO
      (ghcjs_dom_svg_angle_get_value_in_specified_units
         (unSVGAngle (toSVGAngle self)))
 
foreign import javascript unsafe "$1[\"valueAsString\"] = $2;"
        ghcjs_dom_svg_angle_set_value_as_string ::
        JSRef SVGAngle -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
svgAngleSetValueAsString ::
                         (MonadIO m, IsSVGAngle self, ToJSString val) => self -> val -> m ()
svgAngleSetValueAsString self val
  = liftIO
      (ghcjs_dom_svg_angle_set_value_as_string
         (unSVGAngle (toSVGAngle self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"valueAsString\"]"
        ghcjs_dom_svg_angle_get_value_as_string ::
        JSRef SVGAngle -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
svgAngleGetValueAsString ::
                         (MonadIO m, IsSVGAngle self, FromJSString result) =>
                           self -> m result
svgAngleGetValueAsString self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_angle_get_value_as_string
            (unSVGAngle (toSVGAngle self))))
#else
module GHCJS.DOM.SVGAngle (
  ) where
#endif
