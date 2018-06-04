{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.FocusEvent
       (js_newFocusEvent, newFocusEvent, js_getRelatedTarget,
        getRelatedTarget, getRelatedTargetUnsafe,
        getRelatedTargetUnchecked, FocusEvent(..), gTypeFocusEvent)
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
        "new window[\"FocusEvent\"]($1, $2)" js_newFocusEvent ::
        JSString -> Optional FocusEventInit -> IO FocusEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent Mozilla FocusEvent documentation> 
newFocusEvent ::
              (MonadIO m, ToJSString type') =>
                type' -> Maybe FocusEventInit -> m FocusEvent
newFocusEvent type' eventInitDict
  = liftIO
      (js_newFocusEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"relatedTarget\"]"
        js_getRelatedTarget :: FocusEvent -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent.relatedTarget Mozilla FocusEvent.relatedTarget documentation> 
getRelatedTarget ::
                 (MonadIO m) => FocusEvent -> m (Maybe EventTarget)
getRelatedTarget self
  = liftIO (nullableToMaybe <$> (js_getRelatedTarget self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent.relatedTarget Mozilla FocusEvent.relatedTarget documentation> 
getRelatedTargetUnsafe ::
                       (MonadIO m, HasCallStack) => FocusEvent -> m EventTarget
getRelatedTargetUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRelatedTarget self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FocusEvent.relatedTarget Mozilla FocusEvent.relatedTarget documentation> 
getRelatedTargetUnchecked ::
                          (MonadIO m) => FocusEvent -> m EventTarget
getRelatedTargetUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getRelatedTarget self))