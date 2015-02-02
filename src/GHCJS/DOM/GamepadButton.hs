{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.GamepadButton
       (ghcjs_dom_gamepad_button_get_pressed, gamepadButtonGetPressed,
        ghcjs_dom_gamepad_button_get_value, gamepadButtonGetValue,
        GamepadButton, IsGamepadButton, castToGamepadButton,
        gTypeGamepadButton, toGamepadButton)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "($1[\"pressed\"] ? 1 : 0)"
        ghcjs_dom_gamepad_button_get_pressed ::
        JSRef GamepadButton -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadButton.pressed Mozilla GamepadButton.pressed documentation> 
gamepadButtonGetPressed ::
                        (IsGamepadButton self) => self -> IO Bool
gamepadButtonGetPressed self
  = ghcjs_dom_gamepad_button_get_pressed
      (unGamepadButton (toGamepadButton self))
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_gamepad_button_get_value ::
        JSRef GamepadButton -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadButton.value Mozilla GamepadButton.value documentation> 
gamepadButtonGetValue ::
                      (IsGamepadButton self) => self -> IO Double
gamepadButtonGetValue self
  = ghcjs_dom_gamepad_button_get_value
      (unGamepadButton (toGamepadButton self))
#else
module GHCJS.DOM.GamepadButton (
  ) where
#endif
