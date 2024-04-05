{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSPrimitiveValue
       (js_setFloatValue, setFloatValue, js_getFloatValue, getFloatValue,
        getFloatValue_, js_setStringValue, setStringValue,
        js_getStringValue, getStringValue, getStringValue_,
        js_getCounterValue, getCounterValue, getCounterValue_,
        js_getRectValue, getRectValue, getRectValue_, js_getRGBColorValue,
        getRGBColorValue, getRGBColorValue_, pattern CSS_UNKNOWN,
        pattern CSS_NUMBER, pattern CSS_PERCENTAGE, pattern CSS_EMS,
        pattern CSS_EXS, pattern CSS_PX, pattern CSS_CM, pattern CSS_MM,
        pattern CSS_IN, pattern CSS_PT, pattern CSS_PC, pattern CSS_DEG,
        pattern CSS_RAD, pattern CSS_GRAD, pattern CSS_MS, pattern CSS_S,
        pattern CSS_HZ, pattern CSS_KHZ, pattern CSS_DIMENSION,
        pattern CSS_STRING, pattern CSS_URI, pattern CSS_IDENT,
        pattern CSS_ATTR, pattern CSS_COUNTER, pattern CSS_RECT,
        pattern CSS_RGBCOLOR, pattern CSS_VW, pattern CSS_VH,
        pattern CSS_VMIN, pattern CSS_VMAX, js_getPrimitiveType,
        getPrimitiveType, CSSPrimitiveValue(..), gTypeCSSPrimitiveValue)
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
 
foreign import javascript safe "$1[\"setFloatValue\"]($2, $3)"
        js_setFloatValue ::
        CSSPrimitiveValue -> Optional Word -> Optional Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.setFloatValue Mozilla CSSPrimitiveValue.setFloatValue documentation> 
setFloatValue ::
              (MonadIO m) =>
                CSSPrimitiveValue -> Maybe Word -> Maybe Float -> m ()
setFloatValue self unitType floatValue
  = liftIO
      (js_setFloatValue self (maybeToOptional unitType)
         (maybeToOptional floatValue))
 
foreign import javascript safe "$1[\"getFloatValue\"]($2)"
        js_getFloatValue :: CSSPrimitiveValue -> Optional Word -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getFloatValue Mozilla CSSPrimitiveValue.getFloatValue documentation> 
getFloatValue ::
              (MonadIO m) => CSSPrimitiveValue -> Maybe Word -> m Float
getFloatValue self unitType
  = liftIO (js_getFloatValue self (maybeToOptional unitType))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getFloatValue Mozilla CSSPrimitiveValue.getFloatValue documentation> 
getFloatValue_ ::
               (MonadIO m) => CSSPrimitiveValue -> Maybe Word -> m ()
getFloatValue_ self unitType
  = liftIO (void (js_getFloatValue self (maybeToOptional unitType)))
 
foreign import javascript safe "$1[\"setStringValue\"]($2, $3)"
        js_setStringValue ::
        CSSPrimitiveValue -> Optional Word -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.setStringValue Mozilla CSSPrimitiveValue.setStringValue documentation> 
setStringValue ::
               (MonadIO m, ToJSString stringValue) =>
                 CSSPrimitiveValue -> Maybe Word -> Maybe stringValue -> m ()
setStringValue self stringType stringValue
  = liftIO
      (js_setStringValue self (maybeToOptional stringType)
         (toOptionalJSString stringValue))
 
foreign import javascript safe "$1[\"getStringValue\"]()"
        js_getStringValue :: CSSPrimitiveValue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getStringValue Mozilla CSSPrimitiveValue.getStringValue documentation> 
getStringValue ::
               (MonadIO m, FromJSString result) => CSSPrimitiveValue -> m result
getStringValue self
  = liftIO (fromJSString <$> (js_getStringValue self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getStringValue Mozilla CSSPrimitiveValue.getStringValue documentation> 
getStringValue_ :: (MonadIO m) => CSSPrimitiveValue -> m ()
getStringValue_ self = liftIO (void (js_getStringValue self))
 
foreign import javascript safe "$1[\"getCounterValue\"]()"
        js_getCounterValue :: CSSPrimitiveValue -> IO Counter

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getCounterValue Mozilla CSSPrimitiveValue.getCounterValue documentation> 
getCounterValue :: (MonadIO m) => CSSPrimitiveValue -> m Counter
getCounterValue self = liftIO (js_getCounterValue self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getCounterValue Mozilla CSSPrimitiveValue.getCounterValue documentation> 
getCounterValue_ :: (MonadIO m) => CSSPrimitiveValue -> m ()
getCounterValue_ self = liftIO (void (js_getCounterValue self))
 
foreign import javascript safe "$1[\"getRectValue\"]()"
        js_getRectValue :: CSSPrimitiveValue -> IO Rect

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getRectValue Mozilla CSSPrimitiveValue.getRectValue documentation> 
getRectValue :: (MonadIO m) => CSSPrimitiveValue -> m Rect
getRectValue self = liftIO (js_getRectValue self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getRectValue Mozilla CSSPrimitiveValue.getRectValue documentation> 
getRectValue_ :: (MonadIO m) => CSSPrimitiveValue -> m ()
getRectValue_ self = liftIO (void (js_getRectValue self))
 
foreign import javascript safe "$1[\"getRGBColorValue\"]()"
        js_getRGBColorValue :: CSSPrimitiveValue -> IO RGBColor

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getRGBColorValue Mozilla CSSPrimitiveValue.getRGBColorValue documentation> 
getRGBColorValue :: (MonadIO m) => CSSPrimitiveValue -> m RGBColor
getRGBColorValue self = liftIO (js_getRGBColorValue self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.getRGBColorValue Mozilla CSSPrimitiveValue.getRGBColorValue documentation> 
getRGBColorValue_ :: (MonadIO m) => CSSPrimitiveValue -> m ()
getRGBColorValue_ self = liftIO (void (js_getRGBColorValue self))
pattern CSS_UNKNOWN = 0
pattern CSS_NUMBER = 1
pattern CSS_PERCENTAGE = 2
pattern CSS_EMS = 3
pattern CSS_EXS = 4
pattern CSS_PX = 5
pattern CSS_CM = 6
pattern CSS_MM = 7
pattern CSS_IN = 8
pattern CSS_PT = 9
pattern CSS_PC = 10
pattern CSS_DEG = 11
pattern CSS_RAD = 12
pattern CSS_GRAD = 13
pattern CSS_MS = 14
pattern CSS_S = 15
pattern CSS_HZ = 16
pattern CSS_KHZ = 17
pattern CSS_DIMENSION = 18
pattern CSS_STRING = 19
pattern CSS_URI = 20
pattern CSS_IDENT = 21
pattern CSS_ATTR = 22
pattern CSS_COUNTER = 23
pattern CSS_RECT = 24
pattern CSS_RGBCOLOR = 25
pattern CSS_VW = 26
pattern CSS_VH = 27
pattern CSS_VMIN = 28
pattern CSS_VMAX = 29
 
foreign import javascript unsafe "$1[\"primitiveType\"]"
        js_getPrimitiveType :: CSSPrimitiveValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPrimitiveValue.primitiveType Mozilla CSSPrimitiveValue.primitiveType documentation> 
getPrimitiveType :: (MonadIO m) => CSSPrimitiveValue -> m Word
getPrimitiveType self = liftIO (js_getPrimitiveType self)