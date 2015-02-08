{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.GamepadEvent
       (ghcjs_dom_gamepad_event_get_gamepad, gamepadEventGetGamepad,
        GamepadEvent, IsGamepadEvent, castToGamepadEvent,
        gTypeGamepadEvent, toGamepadEvent)
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

 
foreign import javascript unsafe "$1[\"gamepad\"]"
        ghcjs_dom_gamepad_event_get_gamepad ::
        JSRef GamepadEvent -> IO (JSRef Gamepad)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent.gamepad Mozilla GamepadEvent.gamepad documentation> 
gamepadEventGetGamepad ::
                       (MonadIO m, IsGamepadEvent self) => self -> m (Maybe Gamepad)
gamepadEventGetGamepad self
  = liftIO
      ((ghcjs_dom_gamepad_event_get_gamepad
          (unGamepadEvent (toGamepadEvent self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.GamepadEvent (
  ) where
#endif
