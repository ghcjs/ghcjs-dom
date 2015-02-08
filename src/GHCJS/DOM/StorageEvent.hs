{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StorageEvent
       (ghcjs_dom_storage_event_init_storage_event,
        storageEventInitStorageEvent, ghcjs_dom_storage_event_get_key,
        storageEventGetKey, ghcjs_dom_storage_event_get_old_value,
        storageEventGetOldValue, ghcjs_dom_storage_event_get_new_value,
        storageEventGetNewValue, ghcjs_dom_storage_event_get_url,
        storageEventGetUrl, ghcjs_dom_storage_event_get_storage_area,
        storageEventGetStorageArea, StorageEvent, IsStorageEvent,
        castToStorageEvent, gTypeStorageEvent, toStorageEvent)
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

 
foreign import javascript unsafe
        "$1[\"initStorageEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        ghcjs_dom_storage_event_init_storage_event ::
        JSRef StorageEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSString ->
                  JSString -> JSString -> JSString -> JSRef Storage -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.initStorageEvent Mozilla StorageEvent.initStorageEvent documentation> 
storageEventInitStorageEvent ::
                             (MonadIO m, IsStorageEvent self, ToJSString typeArg,
                              ToJSString keyArg, ToJSString oldValueArg, ToJSString newValueArg,
                              ToJSString urlArg, IsStorage storageAreaArg) =>
                               self ->
                                 typeArg ->
                                   Bool ->
                                     Bool ->
                                       keyArg ->
                                         oldValueArg ->
                                           newValueArg -> urlArg -> Maybe storageAreaArg -> m ()
storageEventInitStorageEvent self typeArg canBubbleArg
  cancelableArg keyArg oldValueArg newValueArg urlArg storageAreaArg
  = liftIO
      (ghcjs_dom_storage_event_init_storage_event
         (unStorageEvent (toStorageEvent self))
         (toJSString typeArg)
         canBubbleArg
         cancelableArg
         (toJSString keyArg)
         (toJSString oldValueArg)
         (toJSString newValueArg)
         (toJSString urlArg)
         (maybe jsNull (unStorage . toStorage) storageAreaArg))
 
foreign import javascript unsafe "$1[\"key\"]"
        ghcjs_dom_storage_event_get_key ::
        JSRef StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.key Mozilla StorageEvent.key documentation> 
storageEventGetKey ::
                   (MonadIO m, IsStorageEvent self, FromJSString result) =>
                     self -> m result
storageEventGetKey self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_storage_event_get_key
            (unStorageEvent (toStorageEvent self))))
 
foreign import javascript unsafe "$1[\"oldValue\"]"
        ghcjs_dom_storage_event_get_old_value ::
        JSRef StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.oldValue Mozilla StorageEvent.oldValue documentation> 
storageEventGetOldValue ::
                        (MonadIO m, IsStorageEvent self, FromJSString result) =>
                          self -> m result
storageEventGetOldValue self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_storage_event_get_old_value
            (unStorageEvent (toStorageEvent self))))
 
foreign import javascript unsafe "$1[\"newValue\"]"
        ghcjs_dom_storage_event_get_new_value ::
        JSRef StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.newValue Mozilla StorageEvent.newValue documentation> 
storageEventGetNewValue ::
                        (MonadIO m, IsStorageEvent self, FromJSString result) =>
                          self -> m result
storageEventGetNewValue self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_storage_event_get_new_value
            (unStorageEvent (toStorageEvent self))))
 
foreign import javascript unsafe "$1[\"url\"]"
        ghcjs_dom_storage_event_get_url ::
        JSRef StorageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.url Mozilla StorageEvent.url documentation> 
storageEventGetUrl ::
                   (MonadIO m, IsStorageEvent self, FromJSString result) =>
                     self -> m result
storageEventGetUrl self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_storage_event_get_url
            (unStorageEvent (toStorageEvent self))))
 
foreign import javascript unsafe "$1[\"storageArea\"]"
        ghcjs_dom_storage_event_get_storage_area ::
        JSRef StorageEvent -> IO (JSRef Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent.storageArea Mozilla StorageEvent.storageArea documentation> 
storageEventGetStorageArea ::
                           (MonadIO m, IsStorageEvent self) => self -> m (Maybe Storage)
storageEventGetStorageArea self
  = liftIO
      ((ghcjs_dom_storage_event_get_storage_area
          (unStorageEvent (toStorageEvent self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.StorageEvent (
  ) where
#endif
