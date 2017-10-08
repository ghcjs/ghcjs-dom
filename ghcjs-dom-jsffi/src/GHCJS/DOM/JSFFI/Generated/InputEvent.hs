{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.InputEvent
       (js_newInputEvent, newInputEvent, js_getTargetRanges,
        getTargetRanges, getTargetRanges_, js_getInputType, getInputType,
        js_getData, getData, getDataUnsafe, getDataUnchecked,
        js_getDataTransfer, getDataTransfer, getDataTransferUnsafe,
        getDataTransferUnchecked, InputEvent(..), gTypeInputEvent)
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
        "new window[\"InputEvent\"]($1, $2)" js_newInputEvent ::
        JSString -> Optional InputEventInit -> IO InputEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent Mozilla InputEvent documentation> 
newInputEvent ::
              (MonadIO m, ToJSString type') =>
                type' -> Maybe InputEventInit -> m InputEvent
newInputEvent type' eventInitDict
  = liftIO
      (js_newInputEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"getTargetRanges\"]()"
        js_getTargetRanges :: InputEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.getTargetRanges Mozilla InputEvent.getTargetRanges documentation> 
getTargetRanges :: (MonadIO m) => InputEvent -> m [StaticRange]
getTargetRanges self
  = liftIO ((js_getTargetRanges self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.getTargetRanges Mozilla InputEvent.getTargetRanges documentation> 
getTargetRanges_ :: (MonadIO m) => InputEvent -> m ()
getTargetRanges_ self = liftIO (void (js_getTargetRanges self))
 
foreign import javascript unsafe "$1[\"inputType\"]"
        js_getInputType :: InputEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.inputType Mozilla InputEvent.inputType documentation> 
getInputType ::
             (MonadIO m, FromJSString result) => InputEvent -> m result
getInputType self
  = liftIO (fromJSString <$> (js_getInputType self))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        InputEvent -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.data Mozilla InputEvent.data documentation> 
getData ::
        (MonadIO m, FromJSString result) => InputEvent -> m (Maybe result)
getData self = liftIO (fromMaybeJSString <$> (js_getData self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.data Mozilla InputEvent.data documentation> 
getDataUnsafe ::
              (MonadIO m, HasCallStack, FromJSString result) =>
                InputEvent -> m result
getDataUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getData self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.data Mozilla InputEvent.data documentation> 
getDataUnchecked ::
                 (MonadIO m, FromJSString result) => InputEvent -> m result
getDataUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getData self))
 
foreign import javascript unsafe "$1[\"dataTransfer\"]"
        js_getDataTransfer :: InputEvent -> IO (Nullable DataTransfer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.dataTransfer Mozilla InputEvent.dataTransfer documentation> 
getDataTransfer ::
                (MonadIO m) => InputEvent -> m (Maybe DataTransfer)
getDataTransfer self
  = liftIO (nullableToMaybe <$> (js_getDataTransfer self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.dataTransfer Mozilla InputEvent.dataTransfer documentation> 
getDataTransferUnsafe ::
                      (MonadIO m, HasCallStack) => InputEvent -> m DataTransfer
getDataTransferUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDataTransfer self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InputEvent.dataTransfer Mozilla InputEvent.dataTransfer documentation> 
getDataTransferUnchecked ::
                         (MonadIO m) => InputEvent -> m DataTransfer
getDataTransferUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getDataTransfer self))