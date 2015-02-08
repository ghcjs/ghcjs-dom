{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Gamepad
       (ghcjs_dom_gamepad_get_id, gamepadGetId,
        ghcjs_dom_gamepad_get_index, gamepadGetIndex,
        ghcjs_dom_gamepad_get_connected, gamepadGetConnected,
        ghcjs_dom_gamepad_get_timestamp, gamepadGetTimestamp,
        ghcjs_dom_gamepad_get_mapping, gamepadGetMapping,
        ghcjs_dom_gamepad_get_axes, gamepadGetAxes,
        ghcjs_dom_gamepad_get_buttons, gamepadGetButtons, Gamepad,
        IsGamepad, castToGamepad, gTypeGamepad, toGamepad)
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

 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_gamepad_get_id :: JSRef Gamepad -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.id Mozilla Gamepad.id documentation> 
gamepadGetId ::
             (MonadIO m, IsGamepad self, FromJSString result) =>
               self -> m result
gamepadGetId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_gamepad_get_id (unGamepad (toGamepad self))))
 
foreign import javascript unsafe "$1[\"index\"]"
        ghcjs_dom_gamepad_get_index :: JSRef Gamepad -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.index Mozilla Gamepad.index documentation> 
gamepadGetIndex :: (MonadIO m, IsGamepad self) => self -> m Word
gamepadGetIndex self
  = liftIO (ghcjs_dom_gamepad_get_index (unGamepad (toGamepad self)))
 
foreign import javascript unsafe "($1[\"connected\"] ? 1 : 0)"
        ghcjs_dom_gamepad_get_connected :: JSRef Gamepad -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.connected Mozilla Gamepad.connected documentation> 
gamepadGetConnected ::
                    (MonadIO m, IsGamepad self) => self -> m Bool
gamepadGetConnected self
  = liftIO
      (ghcjs_dom_gamepad_get_connected (unGamepad (toGamepad self)))
 
foreign import javascript unsafe "$1[\"timestamp\"]"
        ghcjs_dom_gamepad_get_timestamp :: JSRef Gamepad -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.timestamp Mozilla Gamepad.timestamp documentation> 
gamepadGetTimestamp ::
                    (MonadIO m, IsGamepad self) => self -> m Double
gamepadGetTimestamp self
  = liftIO
      (ghcjs_dom_gamepad_get_timestamp (unGamepad (toGamepad self)))
 
foreign import javascript unsafe "$1[\"mapping\"]"
        ghcjs_dom_gamepad_get_mapping :: JSRef Gamepad -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.mapping Mozilla Gamepad.mapping documentation> 
gamepadGetMapping ::
                  (MonadIO m, IsGamepad self, FromJSString result) =>
                    self -> m result
gamepadGetMapping self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_gamepad_get_mapping (unGamepad (toGamepad self))))
 
foreign import javascript unsafe "$1[\"axes\"]"
        ghcjs_dom_gamepad_get_axes :: JSRef Gamepad -> IO (JSRef [Double])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.axes Mozilla Gamepad.axes documentation> 
gamepadGetAxes :: (MonadIO m, IsGamepad self) => self -> m [Double]
gamepadGetAxes self
  = liftIO
      ((ghcjs_dom_gamepad_get_axes (unGamepad (toGamepad self))) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"buttons\"]"
        ghcjs_dom_gamepad_get_buttons ::
        JSRef Gamepad -> IO (JSRef [Maybe GamepadButton])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Gamepad.buttons Mozilla Gamepad.buttons documentation> 
gamepadGetButtons ::
                  (MonadIO m, IsGamepad self) => self -> m [Maybe GamepadButton]
gamepadGetButtons self
  = liftIO
      ((ghcjs_dom_gamepad_get_buttons (unGamepad (toGamepad self))) >>=
         fromJSRefUnchecked)
#else
module GHCJS.DOM.Gamepad (
  ) where
#endif
