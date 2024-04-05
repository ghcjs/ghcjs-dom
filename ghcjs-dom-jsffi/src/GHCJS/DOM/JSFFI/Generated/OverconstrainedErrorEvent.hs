{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.OverconstrainedErrorEvent
       (js_newOverconstrainedErrorEvent, newOverconstrainedErrorEvent,
        js_getError, getError, getErrorUnsafe, getErrorUnchecked,
        OverconstrainedErrorEvent(..), gTypeOverconstrainedErrorEvent)
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
        "new window[\"OverconstrainedErrorEvent\"]($1,\n$2)"
        js_newOverconstrainedErrorEvent ::
        JSString ->
          Optional OverconstrainedErrorEventInit ->
            IO OverconstrainedErrorEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedErrorEvent Mozilla OverconstrainedErrorEvent documentation> 
newOverconstrainedErrorEvent ::
                             (MonadIO m, ToJSString type') =>
                               type' ->
                                 Maybe OverconstrainedErrorEventInit -> m OverconstrainedErrorEvent
newOverconstrainedErrorEvent type' eventInitDict
  = liftIO
      (js_newOverconstrainedErrorEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        OverconstrainedErrorEvent -> IO (Nullable OverconstrainedError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedErrorEvent.error Mozilla OverconstrainedErrorEvent.error documentation> 
getError ::
         (MonadIO m) =>
           OverconstrainedErrorEvent -> m (Maybe OverconstrainedError)
getError self = liftIO (nullableToMaybe <$> (js_getError self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedErrorEvent.error Mozilla OverconstrainedErrorEvent.error documentation> 
getErrorUnsafe ::
               (MonadIO m, HasCallStack) =>
                 OverconstrainedErrorEvent -> m OverconstrainedError
getErrorUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getError self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedErrorEvent.error Mozilla OverconstrainedErrorEvent.error documentation> 
getErrorUnchecked ::
                  (MonadIO m) => OverconstrainedErrorEvent -> m OverconstrainedError
getErrorUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getError self))