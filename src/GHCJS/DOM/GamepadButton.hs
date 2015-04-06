{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.GamepadButton
       (js_getPressed, getPressed, js_getValue, getValue, GamepadButton,
        castToGamepadButton, gTypeGamepadButton)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "($1[\"pressed\"] ? 1 : 0)"
        js_getPressed :: JSRef GamepadButton -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadButton.pressed Mozilla GamepadButton.pressed documentation> 
getPressed :: (MonadIO m) => GamepadButton -> m Bool
getPressed self = liftIO (js_getPressed (unGamepadButton self))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef GamepadButton -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadButton.value Mozilla GamepadButton.value documentation> 
getValue :: (MonadIO m) => GamepadButton -> m Double
getValue self = liftIO (js_getValue (unGamepadButton self))
#else
module GHCJS.DOM.GamepadButton (
  ) where
#endif
