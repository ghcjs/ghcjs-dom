{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
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
        getValueAsString, SVGLength(..), gTypeSVGLength)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe
        "$1[\"newValueSpecifiedUnits\"]($2,\n$3)" js_newValueSpecifiedUnits
        :: SVGLength -> Word -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.newValueSpecifiedUnits Mozilla SVGLength.newValueSpecifiedUnits documentation> 
newValueSpecifiedUnits ::
                       (MonadIO m) => SVGLength -> Word -> Float -> m ()
newValueSpecifiedUnits self unitType valueInSpecifiedUnits
  = liftIO
      (js_newValueSpecifiedUnits self unitType valueInSpecifiedUnits)
 
foreign import javascript safe
        "$1[\"convertToSpecifiedUnits\"]($2)" js_convertToSpecifiedUnits ::
        SVGLength -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.convertToSpecifiedUnits Mozilla SVGLength.convertToSpecifiedUnits documentation> 
convertToSpecifiedUnits :: (MonadIO m) => SVGLength -> Word -> m ()
convertToSpecifiedUnits self unitType
  = liftIO (js_convertToSpecifiedUnits self unitType)
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
        :: SVGLength -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.unitType Mozilla SVGLength.unitType documentation> 
getUnitType :: (MonadIO m) => SVGLength -> m Word
getUnitType self = liftIO (js_getUnitType self)
 
foreign import javascript safe "$1[\"value\"] = $2;" js_setValue ::
        SVGLength -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.value Mozilla SVGLength.value documentation> 
setValue :: (MonadIO m) => SVGLength -> Float -> m ()
setValue self val = liftIO (js_setValue self val)
 
foreign import javascript safe "$1[\"value\"]" js_getValue ::
        SVGLength -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.value Mozilla SVGLength.value documentation> 
getValue :: (MonadIO m) => SVGLength -> m Float
getValue self = liftIO (js_getValue self)
 
foreign import javascript safe
        "$1[\"valueInSpecifiedUnits\"] = $2;" js_setValueInSpecifiedUnits
        :: SVGLength -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueInSpecifiedUnits Mozilla SVGLength.valueInSpecifiedUnits documentation> 
setValueInSpecifiedUnits ::
                         (MonadIO m) => SVGLength -> Float -> m ()
setValueInSpecifiedUnits self val
  = liftIO (js_setValueInSpecifiedUnits self val)
 
foreign import javascript unsafe "$1[\"valueInSpecifiedUnits\"]"
        js_getValueInSpecifiedUnits :: SVGLength -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueInSpecifiedUnits Mozilla SVGLength.valueInSpecifiedUnits documentation> 
getValueInSpecifiedUnits :: (MonadIO m) => SVGLength -> m Float
getValueInSpecifiedUnits self
  = liftIO (js_getValueInSpecifiedUnits self)
 
foreign import javascript safe "$1[\"valueAsString\"] = $2;"
        js_setValueAsString :: SVGLength -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueAsString Mozilla SVGLength.valueAsString documentation> 
setValueAsString ::
                 (MonadIO m, ToJSString val) => SVGLength -> val -> m ()
setValueAsString self val
  = liftIO (js_setValueAsString self (toJSString val))
 
foreign import javascript unsafe "$1[\"valueAsString\"]"
        js_getValueAsString :: SVGLength -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLength.valueAsString Mozilla SVGLength.valueAsString documentation> 
getValueAsString ::
                 (MonadIO m, FromJSString result) => SVGLength -> m result
getValueAsString self
  = liftIO (fromJSString <$> (js_getValueAsString self))