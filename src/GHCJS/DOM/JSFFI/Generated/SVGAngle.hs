{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAngle
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
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "$1[\"newValueSpecifiedUnits\"]($2,\n$3)" js_newValueSpecifiedUnits
        :: SVGAngle -> Word -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.newValueSpecifiedUnits Mozilla SVGAngle.newValueSpecifiedUnits documentation> 
newValueSpecifiedUnits ::
                       (MonadIO m) => SVGAngle -> Word -> Float -> m ()
newValueSpecifiedUnits self unitType valueInSpecifiedUnits
  = liftIO
      (js_newValueSpecifiedUnits (self) unitType valueInSpecifiedUnits)
 
foreign import javascript unsafe
        "$1[\"convertToSpecifiedUnits\"]($2)" js_convertToSpecifiedUnits ::
        SVGAngle -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.convertToSpecifiedUnits Mozilla SVGAngle.convertToSpecifiedUnits documentation> 
convertToSpecifiedUnits :: (MonadIO m) => SVGAngle -> Word -> m ()
convertToSpecifiedUnits self unitType
  = liftIO (js_convertToSpecifiedUnits (self) unitType)
pattern SVG_ANGLETYPE_UNKNOWN = 0
pattern SVG_ANGLETYPE_UNSPECIFIED = 1
pattern SVG_ANGLETYPE_DEG = 2
pattern SVG_ANGLETYPE_RAD = 3
pattern SVG_ANGLETYPE_GRAD = 4
 
foreign import javascript unsafe "$1[\"unitType\"]" js_getUnitType
        :: SVGAngle -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.unitType Mozilla SVGAngle.unitType documentation> 
getUnitType :: (MonadIO m) => SVGAngle -> m Word
getUnitType self = liftIO (js_getUnitType (self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: SVGAngle -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.value Mozilla SVGAngle.value documentation> 
setValue :: (MonadIO m) => SVGAngle -> Float -> m ()
setValue self val = liftIO (js_setValue (self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        SVGAngle -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.value Mozilla SVGAngle.value documentation> 
getValue :: (MonadIO m) => SVGAngle -> m Float
getValue self = liftIO (js_getValue (self))
 
foreign import javascript unsafe
        "$1[\"valueInSpecifiedUnits\"] = $2;" js_setValueInSpecifiedUnits
        :: SVGAngle -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueInSpecifiedUnits Mozilla SVGAngle.valueInSpecifiedUnits documentation> 
setValueInSpecifiedUnits ::
                         (MonadIO m) => SVGAngle -> Float -> m ()
setValueInSpecifiedUnits self val
  = liftIO (js_setValueInSpecifiedUnits (self) val)
 
foreign import javascript unsafe "$1[\"valueInSpecifiedUnits\"]"
        js_getValueInSpecifiedUnits :: SVGAngle -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueInSpecifiedUnits Mozilla SVGAngle.valueInSpecifiedUnits documentation> 
getValueInSpecifiedUnits :: (MonadIO m) => SVGAngle -> m Float
getValueInSpecifiedUnits self
  = liftIO (js_getValueInSpecifiedUnits (self))
 
foreign import javascript unsafe "$1[\"valueAsString\"] = $2;"
        js_setValueAsString :: SVGAngle -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
setValueAsString ::
                 (MonadIO m, ToJSString val) => SVGAngle -> Maybe val -> m ()
setValueAsString self val
  = liftIO (js_setValueAsString (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"valueAsString\"]"
        js_getValueAsString :: SVGAngle -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAngle.valueAsString Mozilla SVGAngle.valueAsString documentation> 
getValueAsString ::
                 (MonadIO m, FromJSString result) => SVGAngle -> m (Maybe result)
getValueAsString self
  = liftIO (fromMaybeJSString <$> (js_getValueAsString (self)))