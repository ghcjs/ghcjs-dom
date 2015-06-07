{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AudioParam
       (js_setValueAtTime, setValueAtTime, js_linearRampToValueAtTime,
        linearRampToValueAtTime, js_exponentialRampToValueAtTime,
        exponentialRampToValueAtTime, js_setTargetAtTime, setTargetAtTime,
        js_setValueCurveAtTime, setValueCurveAtTime,
        js_cancelScheduledValues, cancelScheduledValues,
        js_setTargetValueAtTime, setTargetValueAtTime, js_setValue,
        setValue, js_getValue, getValue, js_getMinValue, getMinValue,
        js_getMaxValue, getMaxValue, js_getDefaultValue, getDefaultValue,
        js_getName, getName, js_getUnits, getUnits, AudioParam,
        castToAudioParam, gTypeAudioParam)
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
 
foreign import javascript unsafe "$1[\"setValueAtTime\"]($2, $3)"
        js_setValueAtTime :: JSRef AudioParam -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.setValueAtTime Mozilla AudioParam.setValueAtTime documentation> 
setValueAtTime ::
               (MonadIO m) => AudioParam -> Float -> Float -> m ()
setValueAtTime self value time
  = liftIO (js_setValueAtTime (unAudioParam self) value time)
 
foreign import javascript unsafe
        "$1[\"linearRampToValueAtTime\"]($2,\n$3)"
        js_linearRampToValueAtTime ::
        JSRef AudioParam -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.linearRampToValueAtTime Mozilla AudioParam.linearRampToValueAtTime documentation> 
linearRampToValueAtTime ::
                        (MonadIO m) => AudioParam -> Float -> Float -> m ()
linearRampToValueAtTime self value time
  = liftIO
      (js_linearRampToValueAtTime (unAudioParam self) value time)
 
foreign import javascript unsafe
        "$1[\"exponentialRampToValueAtTime\"]($2,\n$3)"
        js_exponentialRampToValueAtTime ::
        JSRef AudioParam -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.exponentialRampToValueAtTime Mozilla AudioParam.exponentialRampToValueAtTime documentation> 
exponentialRampToValueAtTime ::
                             (MonadIO m) => AudioParam -> Float -> Float -> m ()
exponentialRampToValueAtTime self value time
  = liftIO
      (js_exponentialRampToValueAtTime (unAudioParam self) value time)
 
foreign import javascript unsafe
        "$1[\"setTargetAtTime\"]($2, $3,\n$4)" js_setTargetAtTime ::
        JSRef AudioParam -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.setTargetAtTime Mozilla AudioParam.setTargetAtTime documentation> 
setTargetAtTime ::
                (MonadIO m) => AudioParam -> Float -> Float -> Float -> m ()
setTargetAtTime self target time timeConstant
  = liftIO
      (js_setTargetAtTime (unAudioParam self) target time timeConstant)
 
foreign import javascript unsafe
        "$1[\"setValueCurveAtTime\"]($2,\n$3, $4)" js_setValueCurveAtTime
        ::
        JSRef AudioParam -> JSRef Float32Array -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.setValueCurveAtTime Mozilla AudioParam.setValueCurveAtTime documentation> 
setValueCurveAtTime ::
                    (MonadIO m, IsFloat32Array values) =>
                      AudioParam -> Maybe values -> Float -> Float -> m ()
setValueCurveAtTime self values time duration
  = liftIO
      (js_setValueCurveAtTime (unAudioParam self)
         (maybe jsNull (unFloat32Array . toFloat32Array) values)
         time
         duration)
 
foreign import javascript unsafe
        "$1[\"cancelScheduledValues\"]($2)" js_cancelScheduledValues ::
        JSRef AudioParam -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.cancelScheduledValues Mozilla AudioParam.cancelScheduledValues documentation> 
cancelScheduledValues :: (MonadIO m) => AudioParam -> Float -> m ()
cancelScheduledValues self startTime
  = liftIO (js_cancelScheduledValues (unAudioParam self) startTime)
 
foreign import javascript unsafe
        "$1[\"setTargetValueAtTime\"]($2,\n$3, $4)" js_setTargetValueAtTime
        :: JSRef AudioParam -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.setTargetValueAtTime Mozilla AudioParam.setTargetValueAtTime documentation> 
setTargetValueAtTime ::
                     (MonadIO m) => AudioParam -> Float -> Float -> Float -> m ()
setTargetValueAtTime self targetValue time timeConstant
  = liftIO
      (js_setTargetValueAtTime (unAudioParam self) targetValue time
         timeConstant)
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef AudioParam -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.value Mozilla AudioParam.value documentation> 
setValue :: (MonadIO m) => AudioParam -> Float -> m ()
setValue self val = liftIO (js_setValue (unAudioParam self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef AudioParam -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.value Mozilla AudioParam.value documentation> 
getValue :: (MonadIO m) => AudioParam -> m Float
getValue self = liftIO (js_getValue (unAudioParam self))
 
foreign import javascript unsafe "$1[\"minValue\"]" js_getMinValue
        :: JSRef AudioParam -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.minValue Mozilla AudioParam.minValue documentation> 
getMinValue :: (MonadIO m) => AudioParam -> m Float
getMinValue self = liftIO (js_getMinValue (unAudioParam self))
 
foreign import javascript unsafe "$1[\"maxValue\"]" js_getMaxValue
        :: JSRef AudioParam -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.maxValue Mozilla AudioParam.maxValue documentation> 
getMaxValue :: (MonadIO m) => AudioParam -> m Float
getMaxValue self = liftIO (js_getMaxValue (unAudioParam self))
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        js_getDefaultValue :: JSRef AudioParam -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.defaultValue Mozilla AudioParam.defaultValue documentation> 
getDefaultValue :: (MonadIO m) => AudioParam -> m Float
getDefaultValue self
  = liftIO (js_getDefaultValue (unAudioParam self))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef AudioParam -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.name Mozilla AudioParam.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => AudioParam -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unAudioParam self)))
 
foreign import javascript unsafe "$1[\"units\"]" js_getUnits ::
        JSRef AudioParam -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.units Mozilla AudioParam.units documentation> 
getUnits :: (MonadIO m) => AudioParam -> m Word
getUnits self = liftIO (js_getUnits (unAudioParam self))