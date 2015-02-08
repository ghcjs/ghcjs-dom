{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AudioParam
       (ghcjs_dom_audio_param_set_value_at_time, audioParamSetValueAtTime,
        ghcjs_dom_audio_param_linear_ramp_to_value_at_time,
        audioParamLinearRampToValueAtTime,
        ghcjs_dom_audio_param_exponential_ramp_to_value_at_time,
        audioParamExponentialRampToValueAtTime,
        ghcjs_dom_audio_param_set_target_at_time,
        audioParamSetTargetAtTime,
        ghcjs_dom_audio_param_set_value_curve_at_time,
        audioParamSetValueCurveAtTime,
        ghcjs_dom_audio_param_cancel_scheduled_values,
        audioParamCancelScheduledValues,
        ghcjs_dom_audio_param_set_target_value_at_time,
        audioParamSetTargetValueAtTime, ghcjs_dom_audio_param_set_value,
        audioParamSetValue, ghcjs_dom_audio_param_get_value,
        audioParamGetValue, ghcjs_dom_audio_param_get_min_value,
        audioParamGetMinValue, ghcjs_dom_audio_param_get_max_value,
        audioParamGetMaxValue, ghcjs_dom_audio_param_get_default_value,
        audioParamGetDefaultValue, ghcjs_dom_audio_param_get_name,
        audioParamGetName, ghcjs_dom_audio_param_get_units,
        audioParamGetUnits, AudioParam, IsAudioParam, castToAudioParam,
        gTypeAudioParam, toAudioParam)
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

 
foreign import javascript unsafe "$1[\"setValueAtTime\"]($2, $3)"
        ghcjs_dom_audio_param_set_value_at_time ::
        JSRef AudioParam -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.valueAtTime Mozilla AudioParam.valueAtTime documentation> 
audioParamSetValueAtTime ::
                         (MonadIO m, IsAudioParam self) => self -> Float -> Float -> m ()
audioParamSetValueAtTime self value time
  = liftIO
      (ghcjs_dom_audio_param_set_value_at_time
         (unAudioParam (toAudioParam self))
         value
         time)
 
foreign import javascript unsafe
        "$1[\"linearRampToValueAtTime\"]($2,\n$3)"
        ghcjs_dom_audio_param_linear_ramp_to_value_at_time ::
        JSRef AudioParam -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.linearRampToValueAtTime Mozilla AudioParam.linearRampToValueAtTime documentation> 
audioParamLinearRampToValueAtTime ::
                                  (MonadIO m, IsAudioParam self) => self -> Float -> Float -> m ()
audioParamLinearRampToValueAtTime self value time
  = liftIO
      (ghcjs_dom_audio_param_linear_ramp_to_value_at_time
         (unAudioParam (toAudioParam self))
         value
         time)
 
foreign import javascript unsafe
        "$1[\"exponentialRampToValueAtTime\"]($2,\n$3)"
        ghcjs_dom_audio_param_exponential_ramp_to_value_at_time ::
        JSRef AudioParam -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.exponentialRampToValueAtTime Mozilla AudioParam.exponentialRampToValueAtTime documentation> 
audioParamExponentialRampToValueAtTime ::
                                       (MonadIO m, IsAudioParam self) =>
                                         self -> Float -> Float -> m ()
audioParamExponentialRampToValueAtTime self value time
  = liftIO
      (ghcjs_dom_audio_param_exponential_ramp_to_value_at_time
         (unAudioParam (toAudioParam self))
         value
         time)
 
foreign import javascript unsafe
        "$1[\"setTargetAtTime\"]($2, $3,\n$4)"
        ghcjs_dom_audio_param_set_target_at_time ::
        JSRef AudioParam -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.targetAtTime Mozilla AudioParam.targetAtTime documentation> 
audioParamSetTargetAtTime ::
                          (MonadIO m, IsAudioParam self) =>
                            self -> Float -> Float -> Float -> m ()
audioParamSetTargetAtTime self target time timeConstant
  = liftIO
      (ghcjs_dom_audio_param_set_target_at_time
         (unAudioParam (toAudioParam self))
         target
         time
         timeConstant)
 
foreign import javascript unsafe
        "$1[\"setValueCurveAtTime\"]($2,\n$3, $4)"
        ghcjs_dom_audio_param_set_value_curve_at_time ::
        JSRef AudioParam -> JSRef Float32Array -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.valueCurveAtTime Mozilla AudioParam.valueCurveAtTime documentation> 
audioParamSetValueCurveAtTime ::
                              (MonadIO m, IsAudioParam self, IsFloat32Array values) =>
                                self -> Maybe values -> Float -> Float -> m ()
audioParamSetValueCurveAtTime self values time duration
  = liftIO
      (ghcjs_dom_audio_param_set_value_curve_at_time
         (unAudioParam (toAudioParam self))
         (maybe jsNull (unFloat32Array . toFloat32Array) values)
         time
         duration)
 
foreign import javascript unsafe
        "$1[\"cancelScheduledValues\"]($2)"
        ghcjs_dom_audio_param_cancel_scheduled_values ::
        JSRef AudioParam -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.cancelScheduledValues Mozilla AudioParam.cancelScheduledValues documentation> 
audioParamCancelScheduledValues ::
                                (MonadIO m, IsAudioParam self) => self -> Float -> m ()
audioParamCancelScheduledValues self startTime
  = liftIO
      (ghcjs_dom_audio_param_cancel_scheduled_values
         (unAudioParam (toAudioParam self))
         startTime)
 
foreign import javascript unsafe
        "$1[\"setTargetValueAtTime\"]($2,\n$3, $4)"
        ghcjs_dom_audio_param_set_target_value_at_time ::
        JSRef AudioParam -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.targetValueAtTime Mozilla AudioParam.targetValueAtTime documentation> 
audioParamSetTargetValueAtTime ::
                               (MonadIO m, IsAudioParam self) =>
                                 self -> Float -> Float -> Float -> m ()
audioParamSetTargetValueAtTime self targetValue time timeConstant
  = liftIO
      (ghcjs_dom_audio_param_set_target_value_at_time
         (unAudioParam (toAudioParam self))
         targetValue
         time
         timeConstant)
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_audio_param_set_value ::
        JSRef AudioParam -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.value Mozilla AudioParam.value documentation> 
audioParamSetValue ::
                   (MonadIO m, IsAudioParam self) => self -> Float -> m ()
audioParamSetValue self val
  = liftIO
      (ghcjs_dom_audio_param_set_value (unAudioParam (toAudioParam self))
         val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_audio_param_get_value :: JSRef AudioParam -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.value Mozilla AudioParam.value documentation> 
audioParamGetValue ::
                   (MonadIO m, IsAudioParam self) => self -> m Float
audioParamGetValue self
  = liftIO
      (ghcjs_dom_audio_param_get_value
         (unAudioParam (toAudioParam self)))
 
foreign import javascript unsafe "$1[\"minValue\"]"
        ghcjs_dom_audio_param_get_min_value :: JSRef AudioParam -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.minValue Mozilla AudioParam.minValue documentation> 
audioParamGetMinValue ::
                      (MonadIO m, IsAudioParam self) => self -> m Float
audioParamGetMinValue self
  = liftIO
      (ghcjs_dom_audio_param_get_min_value
         (unAudioParam (toAudioParam self)))
 
foreign import javascript unsafe "$1[\"maxValue\"]"
        ghcjs_dom_audio_param_get_max_value :: JSRef AudioParam -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.maxValue Mozilla AudioParam.maxValue documentation> 
audioParamGetMaxValue ::
                      (MonadIO m, IsAudioParam self) => self -> m Float
audioParamGetMaxValue self
  = liftIO
      (ghcjs_dom_audio_param_get_max_value
         (unAudioParam (toAudioParam self)))
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        ghcjs_dom_audio_param_get_default_value ::
        JSRef AudioParam -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.defaultValue Mozilla AudioParam.defaultValue documentation> 
audioParamGetDefaultValue ::
                          (MonadIO m, IsAudioParam self) => self -> m Float
audioParamGetDefaultValue self
  = liftIO
      (ghcjs_dom_audio_param_get_default_value
         (unAudioParam (toAudioParam self)))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_audio_param_get_name :: JSRef AudioParam -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.name Mozilla AudioParam.name documentation> 
audioParamGetName ::
                  (MonadIO m, IsAudioParam self, FromJSString result) =>
                    self -> m result
audioParamGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_audio_param_get_name
            (unAudioParam (toAudioParam self))))
 
foreign import javascript unsafe "$1[\"units\"]"
        ghcjs_dom_audio_param_get_units :: JSRef AudioParam -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioParam.units Mozilla AudioParam.units documentation> 
audioParamGetUnits ::
                   (MonadIO m, IsAudioParam self) => self -> m Word
audioParamGetUnits self
  = liftIO
      (ghcjs_dom_audio_param_get_units
         (unAudioParam (toAudioParam self)))
#else
module GHCJS.DOM.AudioParam (
  ) where
#endif
