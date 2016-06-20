{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StorageEvent
       (js_initStorageEvent, initStorageEvent, js_getKey, getKey,
        js_getOldValue, getOldValue, js_getNewValue, getNewValue,
        js_getUrl, getUrl, js_getStorageArea, getStorageArea, StorageEvent,
        castToStorageEvent, gTypeStorageEvent)
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
 
foreign import javascript unsafe
        "$1[\"initStorageEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_initStorageEvent ::
        StorageEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSString ->
                  Nullable JSString ->
                    Nullable JSString -> JSString -> Nullable Storage -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.initStorageEvent Mozilla StorageEvent.initStorageEvent documentation> 
initStorageEvent ::
                 (MonadIO m, ToJSString typeArg, ToJSString keyArg,
                  ToJSString oldValueArg, ToJSString newValueArg,
                  ToJSString urlArg) =>
                   StorageEvent ->
                     typeArg ->
                       Bool ->
                         Bool ->
                           keyArg ->
                             Maybe oldValueArg ->
                               Maybe newValueArg -> urlArg -> Maybe Storage -> m ()
initStorageEvent self typeArg canBubbleArg cancelableArg keyArg
  oldValueArg newValueArg urlArg storageAreaArg
  = liftIO
      (js_initStorageEvent (self) (toJSString typeArg) canBubbleArg
         cancelableArg
         (toJSString keyArg)
         (toMaybeJSString oldValueArg)
         (toMaybeJSString newValueArg)
         (toJSString urlArg)
         (maybeToNullable storageAreaArg))
 
foreign import javascript unsafe "$1[\"key\"]" js_getKey ::
        StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.key Mozilla StorageEvent.key documentation> 
getKey ::
       (MonadIO m, FromJSString result) => StorageEvent -> m result
getKey self = liftIO (fromJSString <$> (js_getKey (self)))
 
foreign import javascript unsafe "$1[\"oldValue\"]" js_getOldValue
        :: StorageEvent -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.oldValue Mozilla StorageEvent.oldValue documentation> 
getOldValue ::
            (MonadIO m, FromJSString result) =>
              StorageEvent -> m (Maybe result)
getOldValue self
  = liftIO (fromMaybeJSString <$> (js_getOldValue (self)))
 
foreign import javascript unsafe "$1[\"newValue\"]" js_getNewValue
        :: StorageEvent -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.newValue Mozilla StorageEvent.newValue documentation> 
getNewValue ::
            (MonadIO m, FromJSString result) =>
              StorageEvent -> m (Maybe result)
getNewValue self
  = liftIO (fromMaybeJSString <$> (js_getNewValue (self)))
 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.url Mozilla StorageEvent.url documentation> 
getUrl ::
       (MonadIO m, FromJSString result) => StorageEvent -> m result
getUrl self = liftIO (fromJSString <$> (js_getUrl (self)))
 
foreign import javascript unsafe "$1[\"storageArea\"]"
        js_getStorageArea :: StorageEvent -> IO (Nullable Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.storageArea Mozilla StorageEvent.storageArea documentation> 
getStorageArea :: (MonadIO m) => StorageEvent -> m (Maybe Storage)
getStorageArea self
  = liftIO (nullableToMaybe <$> (js_getStorageArea (self)))