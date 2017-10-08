{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.StorageEvent
       (js_newStorageEvent, newStorageEvent, js_initStorageEvent,
        initStorageEvent, js_getKey, getKey, getKeyUnsafe, getKeyUnchecked,
        js_getOldValue, getOldValue, getOldValueUnsafe,
        getOldValueUnchecked, js_getNewValue, getNewValue,
        getNewValueUnsafe, getNewValueUnchecked, js_getUrl, getUrl,
        js_getStorageArea, getStorageArea, getStorageAreaUnsafe,
        getStorageAreaUnchecked, StorageEvent(..), gTypeStorageEvent)
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
        "new window[\"StorageEvent\"]($1,\n$2)" js_newStorageEvent ::
        JSString -> Optional StorageEventInit -> IO StorageEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent Mozilla StorageEvent documentation> 
newStorageEvent ::
                (MonadIO m, ToJSString type') =>
                  type' -> Maybe StorageEventInit -> m StorageEvent
newStorageEvent type' eventInitDict
  = liftIO
      (js_newStorageEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe
        "$1[\"initStorageEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_initStorageEvent ::
        StorageEvent ->
          Optional JSString ->
            Bool ->
              Bool ->
                Optional JSString ->
                  Optional JSString ->
                    Optional JSString -> Optional JSString -> Optional Storage -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.initStorageEvent Mozilla StorageEvent.initStorageEvent documentation> 
initStorageEvent ::
                 (MonadIO m, ToJSString typeArg, ToJSString keyArg,
                  ToJSString oldValueArg, ToJSString newValueArg,
                  ToJSString urlArg) =>
                   StorageEvent ->
                     Maybe typeArg ->
                       Bool ->
                         Bool ->
                           Maybe keyArg ->
                             Maybe oldValueArg ->
                               Maybe newValueArg -> Maybe urlArg -> Maybe Storage -> m ()
initStorageEvent self typeArg canBubbleArg cancelableArg keyArg
  oldValueArg newValueArg urlArg storageAreaArg
  = liftIO
      (js_initStorageEvent self (toOptionalJSString typeArg) canBubbleArg
         cancelableArg
         (toOptionalJSString keyArg)
         (toOptionalJSString oldValueArg)
         (toOptionalJSString newValueArg)
         (toOptionalJSString urlArg)
         (maybeToOptional storageAreaArg))
 
foreign import javascript unsafe "$1[\"key\"]" js_getKey ::
        StorageEvent -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.key Mozilla StorageEvent.key documentation> 
getKey ::
       (MonadIO m, FromJSString result) =>
         StorageEvent -> m (Maybe result)
getKey self = liftIO (fromMaybeJSString <$> (js_getKey self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.key Mozilla StorageEvent.key documentation> 
getKeyUnsafe ::
             (MonadIO m, HasCallStack, FromJSString result) =>
               StorageEvent -> m result
getKeyUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getKey self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.key Mozilla StorageEvent.key documentation> 
getKeyUnchecked ::
                (MonadIO m, FromJSString result) => StorageEvent -> m result
getKeyUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getKey self))
 
foreign import javascript unsafe "$1[\"oldValue\"]" js_getOldValue
        :: StorageEvent -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.oldValue Mozilla StorageEvent.oldValue documentation> 
getOldValue ::
            (MonadIO m, FromJSString result) =>
              StorageEvent -> m (Maybe result)
getOldValue self
  = liftIO (fromMaybeJSString <$> (js_getOldValue self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.oldValue Mozilla StorageEvent.oldValue documentation> 
getOldValueUnsafe ::
                  (MonadIO m, HasCallStack, FromJSString result) =>
                    StorageEvent -> m result
getOldValueUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getOldValue self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.oldValue Mozilla StorageEvent.oldValue documentation> 
getOldValueUnchecked ::
                     (MonadIO m, FromJSString result) => StorageEvent -> m result
getOldValueUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getOldValue self))
 
foreign import javascript unsafe "$1[\"newValue\"]" js_getNewValue
        :: StorageEvent -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.newValue Mozilla StorageEvent.newValue documentation> 
getNewValue ::
            (MonadIO m, FromJSString result) =>
              StorageEvent -> m (Maybe result)
getNewValue self
  = liftIO (fromMaybeJSString <$> (js_getNewValue self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.newValue Mozilla StorageEvent.newValue documentation> 
getNewValueUnsafe ::
                  (MonadIO m, HasCallStack, FromJSString result) =>
                    StorageEvent -> m result
getNewValueUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getNewValue self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.newValue Mozilla StorageEvent.newValue documentation> 
getNewValueUnchecked ::
                     (MonadIO m, FromJSString result) => StorageEvent -> m result
getNewValueUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getNewValue self))
 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.url Mozilla StorageEvent.url documentation> 
getUrl ::
       (MonadIO m, FromJSString result) => StorageEvent -> m result
getUrl self = liftIO (fromJSString <$> (js_getUrl self))
 
foreign import javascript unsafe "$1[\"storageArea\"]"
        js_getStorageArea :: StorageEvent -> IO (Nullable Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.storageArea Mozilla StorageEvent.storageArea documentation> 
getStorageArea :: (MonadIO m) => StorageEvent -> m (Maybe Storage)
getStorageArea self
  = liftIO (nullableToMaybe <$> (js_getStorageArea self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.storageArea Mozilla StorageEvent.storageArea documentation> 
getStorageAreaUnsafe ::
                     (MonadIO m, HasCallStack) => StorageEvent -> m Storage
getStorageAreaUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStorageArea self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.storageArea Mozilla StorageEvent.storageArea documentation> 
getStorageAreaUnchecked :: (MonadIO m) => StorageEvent -> m Storage
getStorageAreaUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getStorageArea self))