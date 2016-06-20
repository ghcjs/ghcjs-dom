{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.GamepadButton
       (js_getPressed, getPressed, js_getValue, getValue, GamepadButton,
        castToGamepadButton, gTypeGamepadButton)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "($1[\"pressed\"] ? 1 : 0)"
        js_getPressed :: GamepadButton -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadButton.pressed Mozilla GamepadButton.pressed documentation> 
getPressed :: (MonadIO m) => GamepadButton -> m Bool
getPressed self = liftIO (js_getPressed (self))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        GamepadButton -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadButton.value Mozilla GamepadButton.value documentation> 
getValue :: (MonadIO m) => GamepadButton -> m Double
getValue self = liftIO (js_getValue (self))