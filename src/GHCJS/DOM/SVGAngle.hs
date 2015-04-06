{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAngle
       (js_newValueSpecifiedUnits, newValueSpecifiedUnits,
        js_convertToSpecifiedUnits, convertToSpecifiedUnits,
        pattern SVG_ANGLETYPE_UNKNOWN, pattern SVG_ANGLETYPE_UNSPECIFIED,
        pattern SVG_ANGLETYPE_DEG, pattern SVG_ANGLETYPE_RAD,
        pattern SVG_ANGLETYPE_GRAD, js_getUnitType, getUnitType,
        js_setValue, setValue, js_getValue, getValue,
        js_setValueInSpecifiedUnits, setValueInSpecifiedUnits,
        js_getValueInSpecifiedUnits, getValueInSpecifiedUnits,
        js_setValueAsString, setValueAsString, js_getValueAsString,
        getValueAsString, SVGAngle, castToSVGAngle, gTypeSVGAngle)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
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
        :: JSRef SVGAngle -> Word -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.newValueSpecifiedUnits Mozilla SVGAngle.newValueSpecifiedUnits documentation> 
newValueSpecifiedUnits ::
                       (MonadIO m) => SVGAngle -> Word -> Float -> m ()
newValueSpecifiedUnits self unitType valueInSpecifiedUnits
  = liftIO
      (js_newValueSpecifiedUnits (unSVGAngle self) unitType
         valueInSpecifiedUnits)
 
foreign import javascript unsafe
        "$1[\"convertToSpecifiedUnits\"]($2)" js_convertToSpecifiedUnits ::
        JSRef SVGAngle -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.convertToSpecifiedUnits Mozilla SVGAngle.convertToSpecifiedUnits documentation> 
convertToSpecifiedUnits :: (MonadIO m) => SVGAngle -> Word -> m ()
convertToSpecifiedUnits self unitType
  = liftIO (js_convertToSpecifiedUnits (unSVGAngle self) unitType)
pattern SVG_ANGLETYPE_UNKNOWN = 0
pattern SVG_ANGLETYPE_UNSPECIFIED = 1
pattern SVG_ANGLETYPE_DEG = 2
pattern SVG_ANGLETYPE_RAD = 3
pattern SVG_ANGLETYPE_GRAD = 4
 
foreign import javascript unsafe "$1[\"unitType\"]" js_getUnitType
        :: JSRef SVGAngle -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.unitType Mozilla SVGAngle.unitType documentation> 
getUnitType :: (MonadIO m) => SVGAngle -> m Word
getUnitType self = liftIO (js_getUnitType (unSVGAngle self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef SVGAngle -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.value Mozilla SVGAngle.value documentation> 
setValue :: (MonadIO m) => SVGAngle -> Float -> m ()
setValue self val = liftIO (js_setValue (unSVGAngle self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef SVGAngle -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.value Mozilla SVGAngle.value documentation> 
getValue :: (MonadIO m) => SVGAngle -> m Float
getValue self = liftIO (js_getValue (unSVGAngle self))
 
foreign import javascript unsafe
        "$1[\"valueInSpecifiedUnits\"] = $2;" js_setValueInSpecifiedUnits
        :: JSRef SVGAngle -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueInSpecifiedUnits Mozilla SVGAngle.valueInSpecifiedUnits documentation> 
setValueInSpecifiedUnits ::
                         (MonadIO m) => SVGAngle -> Float -> m ()
setValueInSpecifiedUnits self val
  = liftIO (js_setValueInSpecifiedUnits (unSVGAngle self) val)
 
foreign import javascript unsafe "$1[\"valueInSpecifiedUnits\"]"
        js_getValueInSpecifiedUnits :: JSRef SVGAngle -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueInSpecifiedUnits Mozilla SVGAngle.valueInSpecifiedUnits documentation> 
getValueInSpecifiedUnits :: (MonadIO m) => SVGAngle -> m Float
getValueInSpecifiedUnits self
  = liftIO (js_getValueInSpecifiedUnits (unSVGAngle self))
 
foreign import javascript unsafe "$1[\"valueAsString\"] = $2;"
        js_setValueAsString :: JSRef SVGAngle -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
setValueAsString ::
                 (MonadIO m, ToJSString val) => SVGAngle -> val -> m ()
setValueAsString self val
  = liftIO (js_setValueAsString (unSVGAngle self) (toJSString val))
 
foreign import javascript unsafe "$1[\"valueAsString\"]"
        js_getValueAsString :: JSRef SVGAngle -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
getValueAsString ::
                 (MonadIO m, FromJSString result) => SVGAngle -> m result
getValueAsString self
  = liftIO (fromJSString <$> (js_getValueAsString (unSVGAngle self)))
#else
module GHCJS.DOM.SVGAngle (
  ) where
#endif
