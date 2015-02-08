{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGLength
       (ghcjs_dom_svg_length_new_value_specified_units,
        svgLengthNewValueSpecifiedUnits,
        ghcjs_dom_svg_length_convert_to_specified_units,
        svgLengthConvertToSpecifiedUnits, cSVG_LENGTHTYPE_UNKNOWN,
        cSVG_LENGTHTYPE_NUMBER, cSVG_LENGTHTYPE_PERCENTAGE,
        cSVG_LENGTHTYPE_EMS, cSVG_LENGTHTYPE_EXS, cSVG_LENGTHTYPE_PX,
        cSVG_LENGTHTYPE_CM, cSVG_LENGTHTYPE_MM, cSVG_LENGTHTYPE_IN,
        cSVG_LENGTHTYPE_PT, cSVG_LENGTHTYPE_PC,
        ghcjs_dom_svg_length_get_unit_type, svgLengthGetUnitType,
        ghcjs_dom_svg_length_set_value, svgLengthSetValue,
        ghcjs_dom_svg_length_get_value, svgLengthGetValue,
        ghcjs_dom_svg_length_set_value_in_specified_units,
        svgLengthSetValueInSpecifiedUnits,
        ghcjs_dom_svg_length_get_value_in_specified_units,
        svgLengthGetValueInSpecifiedUnits,
        ghcjs_dom_svg_length_set_value_as_string,
        svgLengthSetValueAsString,
        ghcjs_dom_svg_length_get_value_as_string,
        svgLengthGetValueAsString, SVGLength, IsSVGLength, castToSVGLength,
        gTypeSVGLength, toSVGLength)
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
        ghcjs_dom_svg_length_new_value_specified_units ::
        JSRef SVGLength -> Word -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.newValueSpecifiedUnits Mozilla SVGLength.newValueSpecifiedUnits documentation> 
svgLengthNewValueSpecifiedUnits ::
                                (MonadIO m, IsSVGLength self) => self -> Word -> Float -> m ()
svgLengthNewValueSpecifiedUnits self unitType valueInSpecifiedUnits
  = liftIO
      (ghcjs_dom_svg_length_new_value_specified_units
         (unSVGLength (toSVGLength self))
         unitType
         valueInSpecifiedUnits)
 
foreign import javascript unsafe
        "$1[\"convertToSpecifiedUnits\"]($2)"
        ghcjs_dom_svg_length_convert_to_specified_units ::
        JSRef SVGLength -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.convertToSpecifiedUnits Mozilla SVGLength.convertToSpecifiedUnits documentation> 
svgLengthConvertToSpecifiedUnits ::
                                 (MonadIO m, IsSVGLength self) => self -> Word -> m ()
svgLengthConvertToSpecifiedUnits self unitType
  = liftIO
      (ghcjs_dom_svg_length_convert_to_specified_units
         (unSVGLength (toSVGLength self))
         unitType)
cSVG_LENGTHTYPE_UNKNOWN = 0
cSVG_LENGTHTYPE_NUMBER = 1
cSVG_LENGTHTYPE_PERCENTAGE = 2
cSVG_LENGTHTYPE_EMS = 3
cSVG_LENGTHTYPE_EXS = 4
cSVG_LENGTHTYPE_PX = 5
cSVG_LENGTHTYPE_CM = 6
cSVG_LENGTHTYPE_MM = 7
cSVG_LENGTHTYPE_IN = 8
cSVG_LENGTHTYPE_PT = 9
cSVG_LENGTHTYPE_PC = 10
 
foreign import javascript unsafe "$1[\"unitType\"]"
        ghcjs_dom_svg_length_get_unit_type :: JSRef SVGLength -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.unitType Mozilla SVGLength.unitType documentation> 
svgLengthGetUnitType ::
                     (MonadIO m, IsSVGLength self) => self -> m Word
svgLengthGetUnitType self
  = liftIO
      (ghcjs_dom_svg_length_get_unit_type
         (unSVGLength (toSVGLength self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_svg_length_set_value :: JSRef SVGLength -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.value Mozilla SVGLength.value documentation> 
svgLengthSetValue ::
                  (MonadIO m, IsSVGLength self) => self -> Float -> m ()
svgLengthSetValue self val
  = liftIO
      (ghcjs_dom_svg_length_set_value (unSVGLength (toSVGLength self))
         val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_svg_length_get_value :: JSRef SVGLength -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.value Mozilla SVGLength.value documentation> 
svgLengthGetValue ::
                  (MonadIO m, IsSVGLength self) => self -> m Float
svgLengthGetValue self
  = liftIO
      (ghcjs_dom_svg_length_get_value (unSVGLength (toSVGLength self)))
 
foreign import javascript unsafe
        "$1[\"valueInSpecifiedUnits\"] = $2;"
        ghcjs_dom_svg_length_set_value_in_specified_units ::
        JSRef SVGLength -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueInSpecifiedUnits Mozilla SVGLength.valueInSpecifiedUnits documentation> 
svgLengthSetValueInSpecifiedUnits ::
                                  (MonadIO m, IsSVGLength self) => self -> Float -> m ()
svgLengthSetValueInSpecifiedUnits self val
  = liftIO
      (ghcjs_dom_svg_length_set_value_in_specified_units
         (unSVGLength (toSVGLength self))
         val)
 
foreign import javascript unsafe "$1[\"valueInSpecifiedUnits\"]"
        ghcjs_dom_svg_length_get_value_in_specified_units ::
        JSRef SVGLength -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueInSpecifiedUnits Mozilla SVGLength.valueInSpecifiedUnits documentation> 
svgLengthGetValueInSpecifiedUnits ::
                                  (MonadIO m, IsSVGLength self) => self -> m Float
svgLengthGetValueInSpecifiedUnits self
  = liftIO
      (ghcjs_dom_svg_length_get_value_in_specified_units
         (unSVGLength (toSVGLength self)))
 
foreign import javascript unsafe "$1[\"valueAsString\"] = $2;"
        ghcjs_dom_svg_length_set_value_as_string ::
        JSRef SVGLength -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueAsString Mozilla SVGLength.valueAsString documentation> 
svgLengthSetValueAsString ::
                          (MonadIO m, IsSVGLength self, ToJSString val) =>
                            self -> val -> m ()
svgLengthSetValueAsString self val
  = liftIO
      (ghcjs_dom_svg_length_set_value_as_string
         (unSVGLength (toSVGLength self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"valueAsString\"]"
        ghcjs_dom_svg_length_get_value_as_string ::
        JSRef SVGLength -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueAsString Mozilla SVGLength.valueAsString documentation> 
svgLengthGetValueAsString ::
                          (MonadIO m, IsSVGLength self, FromJSString result) =>
                            self -> m result
svgLengthGetValueAsString self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_length_get_value_as_string
            (unSVGLength (toSVGLength self))))
#else
module GHCJS.DOM.SVGLength (
  ) where
#endif
