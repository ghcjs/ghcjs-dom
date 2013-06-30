{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.ValidityState
       (webkit_dom_validity_state_get_value_missing,
        validityStateGetValueMissing,
        webkit_dom_validity_state_get_type_mismatch,
        validityStateGetTypeMismatch,
        webkit_dom_validity_state_get_pattern_mismatch,
        validityStateGetPatternMismatch,
        webkit_dom_validity_state_get_too_long, validityStateGetTooLong,
        webkit_dom_validity_state_get_range_underflow,
        validityStateGetRangeUnderflow,
        webkit_dom_validity_state_get_range_overflow,
        validityStateGetRangeOverflow,
        webkit_dom_validity_state_get_step_mismatch,
        validityStateGetStepMismatch,
        webkit_dom_validity_state_get_custom_error,
        validityStateGetCustomError, webkit_dom_validity_state_get_valid,
        validityStateGetValid)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"valueMissing\"] ? 1 : 0)"
        webkit_dom_validity_state_get_value_missing ::
        JSRef ValidityState -> IO JSBool
#else 
webkit_dom_validity_state_get_value_missing ::
                                              JSRef ValidityState -> IO JSBool
webkit_dom_validity_state_get_value_missing = undefined
#endif
 
validityStateGetValueMissing ::
                             (ValidityStateClass self) => self -> IO Bool
validityStateGetValueMissing self
  = fromJSBool <$>
      (webkit_dom_validity_state_get_value_missing
         (unValidityState (toValidityState self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"typeMismatch\"] ? 1 : 0)"
        webkit_dom_validity_state_get_type_mismatch ::
        JSRef ValidityState -> IO JSBool
#else 
webkit_dom_validity_state_get_type_mismatch ::
                                              JSRef ValidityState -> IO JSBool
webkit_dom_validity_state_get_type_mismatch = undefined
#endif
 
validityStateGetTypeMismatch ::
                             (ValidityStateClass self) => self -> IO Bool
validityStateGetTypeMismatch self
  = fromJSBool <$>
      (webkit_dom_validity_state_get_type_mismatch
         (unValidityState (toValidityState self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"patternMismatch\"] ? 1 : 0)"
        webkit_dom_validity_state_get_pattern_mismatch ::
        JSRef ValidityState -> IO JSBool
#else 
webkit_dom_validity_state_get_pattern_mismatch ::
                                                 JSRef ValidityState -> IO JSBool
webkit_dom_validity_state_get_pattern_mismatch = undefined
#endif
 
validityStateGetPatternMismatch ::
                                (ValidityStateClass self) => self -> IO Bool
validityStateGetPatternMismatch self
  = fromJSBool <$>
      (webkit_dom_validity_state_get_pattern_mismatch
         (unValidityState (toValidityState self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"tooLong\"] ? 1 : 0)"
        webkit_dom_validity_state_get_too_long ::
        JSRef ValidityState -> IO JSBool
#else 
webkit_dom_validity_state_get_too_long ::
                                         JSRef ValidityState -> IO JSBool
webkit_dom_validity_state_get_too_long = undefined
#endif
 
validityStateGetTooLong ::
                        (ValidityStateClass self) => self -> IO Bool
validityStateGetTooLong self
  = fromJSBool <$>
      (webkit_dom_validity_state_get_too_long
         (unValidityState (toValidityState self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"rangeUnderflow\"] ? 1 : 0)"
        webkit_dom_validity_state_get_range_underflow ::
        JSRef ValidityState -> IO JSBool
#else 
webkit_dom_validity_state_get_range_underflow ::
                                                JSRef ValidityState -> IO JSBool
webkit_dom_validity_state_get_range_underflow = undefined
#endif
 
validityStateGetRangeUnderflow ::
                               (ValidityStateClass self) => self -> IO Bool
validityStateGetRangeUnderflow self
  = fromJSBool <$>
      (webkit_dom_validity_state_get_range_underflow
         (unValidityState (toValidityState self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"rangeOverflow\"] ? 1 : 0)"
        webkit_dom_validity_state_get_range_overflow ::
        JSRef ValidityState -> IO JSBool
#else 
webkit_dom_validity_state_get_range_overflow ::
                                               JSRef ValidityState -> IO JSBool
webkit_dom_validity_state_get_range_overflow = undefined
#endif
 
validityStateGetRangeOverflow ::
                              (ValidityStateClass self) => self -> IO Bool
validityStateGetRangeOverflow self
  = fromJSBool <$>
      (webkit_dom_validity_state_get_range_overflow
         (unValidityState (toValidityState self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"stepMismatch\"] ? 1 : 0)"
        webkit_dom_validity_state_get_step_mismatch ::
        JSRef ValidityState -> IO JSBool
#else 
webkit_dom_validity_state_get_step_mismatch ::
                                              JSRef ValidityState -> IO JSBool
webkit_dom_validity_state_get_step_mismatch = undefined
#endif
 
validityStateGetStepMismatch ::
                             (ValidityStateClass self) => self -> IO Bool
validityStateGetStepMismatch self
  = fromJSBool <$>
      (webkit_dom_validity_state_get_step_mismatch
         (unValidityState (toValidityState self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"customError\"] ? 1 : 0)"
        webkit_dom_validity_state_get_custom_error ::
        JSRef ValidityState -> IO JSBool
#else 
webkit_dom_validity_state_get_custom_error ::
                                             JSRef ValidityState -> IO JSBool
webkit_dom_validity_state_get_custom_error = undefined
#endif
 
validityStateGetCustomError ::
                            (ValidityStateClass self) => self -> IO Bool
validityStateGetCustomError self
  = fromJSBool <$>
      (webkit_dom_validity_state_get_custom_error
         (unValidityState (toValidityState self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"valid\"] ? 1 : 0)"
        webkit_dom_validity_state_get_valid ::
        JSRef ValidityState -> IO JSBool
#else 
webkit_dom_validity_state_get_valid ::
                                      JSRef ValidityState -> IO JSBool
webkit_dom_validity_state_get_valid = undefined
#endif
 
validityStateGetValid ::
                      (ValidityStateClass self) => self -> IO Bool
validityStateGetValid self
  = fromJSBool <$>
      (webkit_dom_validity_state_get_valid
         (unValidityState (toValidityState self)))