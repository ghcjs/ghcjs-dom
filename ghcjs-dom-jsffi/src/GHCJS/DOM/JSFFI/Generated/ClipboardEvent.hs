{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ClipboardEvent
       (js_newClipboardEvent, newClipboardEvent, js_getClipboardData,
        getClipboardData, getClipboardDataUnsafe,
        getClipboardDataUnchecked, ClipboardEvent(..), gTypeClipboardEvent)
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
        "new window[\"ClipboardEvent\"]($1,\n$2)" js_newClipboardEvent ::
        JSString -> Optional ClipboardEventInit -> IO ClipboardEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent Mozilla ClipboardEvent documentation> 
newClipboardEvent ::
                  (MonadIO m, ToJSString type') =>
                    type' -> Maybe ClipboardEventInit -> m ClipboardEvent
newClipboardEvent type' eventInitDict
  = liftIO
      (js_newClipboardEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"clipboardData\"]"
        js_getClipboardData :: ClipboardEvent -> IO (Nullable DataTransfer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent.clipboardData Mozilla ClipboardEvent.clipboardData documentation> 
getClipboardData ::
                 (MonadIO m) => ClipboardEvent -> m (Maybe DataTransfer)
getClipboardData self
  = liftIO (nullableToMaybe <$> (js_getClipboardData self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent.clipboardData Mozilla ClipboardEvent.clipboardData documentation> 
getClipboardDataUnsafe ::
                       (MonadIO m, HasCallStack) => ClipboardEvent -> m DataTransfer
getClipboardDataUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getClipboardData self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent.clipboardData Mozilla ClipboardEvent.clipboardData documentation> 
getClipboardDataUnchecked ::
                          (MonadIO m) => ClipboardEvent -> m DataTransfer
getClipboardDataUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getClipboardData self))