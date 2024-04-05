{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.GamepadEvent
       (js_newGamepadEvent, newGamepadEvent, js_getGamepad, getGamepad,
        getGamepadUnsafe, getGamepadUnchecked, GamepadEvent(..),
        gTypeGamepadEvent)
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
 
foreign import javascript unsafe
        "new window[\"GamepadEvent\"]($1,\n$2)" js_newGamepadEvent ::
        JSString -> GamepadEventInit -> IO GamepadEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent Mozilla GamepadEvent documentation> 
newGamepadEvent ::
                (MonadIO m, ToJSString type') =>
                  type' -> GamepadEventInit -> m GamepadEvent
newGamepadEvent type' eventInitDict
  = liftIO (js_newGamepadEvent (toJSString type') eventInitDict)
 
foreign import javascript unsafe "$1[\"gamepad\"]" js_getGamepad ::
        GamepadEvent -> IO (Nullable Gamepad)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent.gamepad Mozilla GamepadEvent.gamepad documentation> 
getGamepad :: (MonadIO m) => GamepadEvent -> m (Maybe Gamepad)
getGamepad self = liftIO (nullableToMaybe <$> (js_getGamepad self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent.gamepad Mozilla GamepadEvent.gamepad documentation> 
getGamepadUnsafe ::
                 (MonadIO m, HasCallStack) => GamepadEvent -> m Gamepad
getGamepadUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getGamepad self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GamepadEvent.gamepad Mozilla GamepadEvent.gamepad documentation> 
getGamepadUnchecked :: (MonadIO m) => GamepadEvent -> m Gamepad
getGamepadUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getGamepad self))