{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGLength
       (js_newValueSpecifiedUnits, newValueSpecifiedUnits,
        js_convertToSpecifiedUnits, convertToSpecifiedUnits,
        pattern SVG_LENGTHTYPE_UNKNOWN, pattern SVG_LENGTHTYPE_NUMBER,
        pattern SVG_LENGTHTYPE_PERCENTAGE, pattern SVG_LENGTHTYPE_EMS,
        pattern SVG_LENGTHTYPE_EXS, pattern SVG_LENGTHTYPE_PX,
        pattern SVG_LENGTHTYPE_CM, pattern SVG_LENGTHTYPE_MM,
        pattern SVG_LENGTHTYPE_IN, pattern SVG_LENGTHTYPE_PT,
        pattern SVG_LENGTHTYPE_PC, js_getUnitType, getUnitType,
        js_setValue, setValue, js_getValue, getValue,
        js_setValueInSpecifiedUnits, setValueInSpecifiedUnits,
        js_getValueInSpecifiedUnits, getValueInSpecifiedUnits,
        js_setValueAsString, setValueAsString, js_getValueAsString,
        getValueAsString, SVGLength, castToSVGLength, gTypeSVGLength)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "$1[\"newValueSpecifiedUnits\"]($2,\n$3)" js_newValueSpecifiedUnits
        :: JSRef SVGLength -> Word -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.newValueSpecifiedUnits Mozilla SVGLength.newValueSpecifiedUnits documentation> 
newValueSpecifiedUnits ::
                       (MonadIO m) => SVGLength -> Word -> Float -> m ()
newValueSpecifiedUnits self unitType valueInSpecifiedUnits
  = liftIO
      (js_newValueSpecifiedUnits (unSVGLength self) unitType
         valueInSpecifiedUnits)
 
foreign import javascript unsafe
        "$1[\"convertToSpecifiedUnits\"]($2)" js_convertToSpecifiedUnits ::
        JSRef SVGLength -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.convertToSpecifiedUnits Mozilla SVGLength.convertToSpecifiedUnits documentation> 
convertToSpecifiedUnits :: (MonadIO m) => SVGLength -> Word -> m ()
convertToSpecifiedUnits self unitType
  = liftIO (js_convertToSpecifiedUnits (unSVGLength self) unitType)
pattern SVG_LENGTHTYPE_UNKNOWN = 0
pattern SVG_LENGTHTYPE_NUMBER = 1
pattern SVG_LENGTHTYPE_PERCENTAGE = 2
pattern SVG_LENGTHTYPE_EMS = 3
pattern SVG_LENGTHTYPE_EXS = 4
pattern SVG_LENGTHTYPE_PX = 5
pattern SVG_LENGTHTYPE_CM = 6
pattern SVG_LENGTHTYPE_MM = 7
pattern SVG_LENGTHTYPE_IN = 8
pattern SVG_LENGTHTYPE_PT = 9
pattern SVG_LENGTHTYPE_PC = 10
 
foreign import javascript unsafe "$1[\"unitType\"]" js_getUnitType
        :: JSRef SVGLength -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.unitType Mozilla SVGLength.unitType documentation> 
getUnitType :: (MonadIO m) => SVGLength -> m Word
getUnitType self = liftIO (js_getUnitType (unSVGLength self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef SVGLength -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.value Mozilla SVGLength.value documentation> 
setValue :: (MonadIO m) => SVGLength -> Float -> m ()
setValue self val = liftIO (js_setValue (unSVGLength self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef SVGLength -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.value Mozilla SVGLength.value documentation> 
getValue :: (MonadIO m) => SVGLength -> m Float
getValue self = liftIO (js_getValue (unSVGLength self))
 
foreign import javascript unsafe
        "$1[\"valueInSpecifiedUnits\"] = $2;" js_setValueInSpecifiedUnits
        :: JSRef SVGLength -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueInSpecifiedUnits Mozilla SVGLength.valueInSpecifiedUnits documentation> 
setValueInSpecifiedUnits ::
                         (MonadIO m) => SVGLength -> Float -> m ()
setValueInSpecifiedUnits self val
  = liftIO (js_setValueInSpecifiedUnits (unSVGLength self) val)
 
foreign import javascript unsafe "$1[\"valueInSpecifiedUnits\"]"
        js_getValueInSpecifiedUnits :: JSRef SVGLength -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueInSpecifiedUnits Mozilla SVGLength.valueInSpecifiedUnits documentation> 
getValueInSpecifiedUnits :: (MonadIO m) => SVGLength -> m Float
getValueInSpecifiedUnits self
  = liftIO (js_getValueInSpecifiedUnits (unSVGLength self))
 
foreign import javascript unsafe "$1[\"valueAsString\"] = $2;"
        js_setValueAsString :: JSRef SVGLength -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueAsString Mozilla SVGLength.valueAsString documentation> 
setValueAsString ::
                 (MonadIO m, ToJSString val) => SVGLength -> val -> m ()
setValueAsString self val
  = liftIO (js_setValueAsString (unSVGLength self) (toJSString val))
 
foreign import javascript unsafe "$1[\"valueAsString\"]"
        js_getValueAsString :: JSRef SVGLength -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueAsString Mozilla SVGLength.valueAsString documentation> 
getValueAsString ::
                 (MonadIO m, FromJSString result) => SVGLength -> m result
getValueAsString self
  = liftIO
      (fromJSString <$> (js_getValueAsString (unSVGLength self)))