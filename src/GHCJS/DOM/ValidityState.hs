{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ValidityState
       (ghcjs_dom_validity_state_get_value_missing,
        validityStateGetValueMissing,
        ghcjs_dom_validity_state_get_type_mismatch,
        validityStateGetTypeMismatch,
        ghcjs_dom_validity_state_get_pattern_mismatch,
        validityStateGetPatternMismatch,
        ghcjs_dom_validity_state_get_too_long, validityStateGetTooLong,
        ghcjs_dom_validity_state_get_range_underflow,
        validityStateGetRangeUnderflow,
        ghcjs_dom_validity_state_get_range_overflow,
        validityStateGetRangeOverflow,
        ghcjs_dom_validity_state_get_step_mismatch,
        validityStateGetStepMismatch,
        ghcjs_dom_validity_state_get_bad_input, validityStateGetBadInput,
        ghcjs_dom_validity_state_get_custom_error,
        validityStateGetCustomError, ghcjs_dom_validity_state_get_valid,
        validityStateGetValid, ValidityState, IsValidityState,
        castToValidityState, gTypeValidityState, toValidityState)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "($1[\"valueMissing\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_value_missing ::
        JSRef ValidityState -> IO Bool
 
validityStateGetValueMissing ::
                             (IsValidityState self) => self -> IO Bool
validityStateGetValueMissing self
  = ghcjs_dom_validity_state_get_value_missing
      (unValidityState (toValidityState self))
 
foreign import javascript unsafe "($1[\"typeMismatch\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_type_mismatch ::
        JSRef ValidityState -> IO Bool
 
validityStateGetTypeMismatch ::
                             (IsValidityState self) => self -> IO Bool
validityStateGetTypeMismatch self
  = ghcjs_dom_validity_state_get_type_mismatch
      (unValidityState (toValidityState self))
 
foreign import javascript unsafe
        "($1[\"patternMismatch\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_pattern_mismatch ::
        JSRef ValidityState -> IO Bool
 
validityStateGetPatternMismatch ::
                                (IsValidityState self) => self -> IO Bool
validityStateGetPatternMismatch self
  = ghcjs_dom_validity_state_get_pattern_mismatch
      (unValidityState (toValidityState self))
 
foreign import javascript unsafe "($1[\"tooLong\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_too_long ::
        JSRef ValidityState -> IO Bool
 
validityStateGetTooLong ::
                        (IsValidityState self) => self -> IO Bool
validityStateGetTooLong self
  = ghcjs_dom_validity_state_get_too_long
      (unValidityState (toValidityState self))
 
foreign import javascript unsafe "($1[\"rangeUnderflow\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_range_underflow ::
        JSRef ValidityState -> IO Bool
 
validityStateGetRangeUnderflow ::
                               (IsValidityState self) => self -> IO Bool
validityStateGetRangeUnderflow self
  = ghcjs_dom_validity_state_get_range_underflow
      (unValidityState (toValidityState self))
 
foreign import javascript unsafe "($1[\"rangeOverflow\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_range_overflow ::
        JSRef ValidityState -> IO Bool
 
validityStateGetRangeOverflow ::
                              (IsValidityState self) => self -> IO Bool
validityStateGetRangeOverflow self
  = ghcjs_dom_validity_state_get_range_overflow
      (unValidityState (toValidityState self))
 
foreign import javascript unsafe "($1[\"stepMismatch\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_step_mismatch ::
        JSRef ValidityState -> IO Bool
 
validityStateGetStepMismatch ::
                             (IsValidityState self) => self -> IO Bool
validityStateGetStepMismatch self
  = ghcjs_dom_validity_state_get_step_mismatch
      (unValidityState (toValidityState self))
 
foreign import javascript unsafe "($1[\"badInput\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_bad_input ::
        JSRef ValidityState -> IO Bool
 
validityStateGetBadInput ::
                         (IsValidityState self) => self -> IO Bool
validityStateGetBadInput self
  = ghcjs_dom_validity_state_get_bad_input
      (unValidityState (toValidityState self))
 
foreign import javascript unsafe "($1[\"customError\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_custom_error ::
        JSRef ValidityState -> IO Bool
 
validityStateGetCustomError ::
                            (IsValidityState self) => self -> IO Bool
validityStateGetCustomError self
  = ghcjs_dom_validity_state_get_custom_error
      (unValidityState (toValidityState self))
 
foreign import javascript unsafe "($1[\"valid\"] ? 1 : 0)"
        ghcjs_dom_validity_state_get_valid ::
        JSRef ValidityState -> IO Bool
 
validityStateGetValid :: (IsValidityState self) => self -> IO Bool
validityStateGetValid self
  = ghcjs_dom_validity_state_get_valid
      (unValidityState (toValidityState self))
#else
module GHCJS.DOM.ValidityState (
  module Graphics.UI.Gtk.WebKit.DOM.ValidityState
  ) where
import Graphics.UI.Gtk.WebKit.DOM.ValidityState
#endif
