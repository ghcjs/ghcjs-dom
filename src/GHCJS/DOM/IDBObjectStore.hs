{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBObjectStore
       (ghcjs_dom_idb_object_store_put, idbObjectStorePut,
        ghcjs_dom_idb_object_store_add, idbObjectStoreAdd,
        ghcjs_dom_idb_object_store_deleteRange, idbObjectStoreDeleteRange,
        ghcjs_dom_idb_object_store_delete, idbObjectStoreDelete,
        ghcjs_dom_idb_object_store_getRange, idbObjectStoreGetRange,
        ghcjs_dom_idb_object_store_get, idbObjectStoreGet,
        ghcjs_dom_idb_object_store_clear, idbObjectStoreClear,
        ghcjs_dom_idb_object_store_open_cursorRange,
        idbObjectStoreOpenCursorRange,
        ghcjs_dom_idb_object_store_open_cursor, idbObjectStoreOpenCursor,
        ghcjs_dom_idb_object_store_create_index, idbObjectStoreCreateIndex,
        ghcjs_dom_idb_object_store_index, idbObjectStoreIndex,
        ghcjs_dom_idb_object_store_delete_index, idbObjectStoreDeleteIndex,
        ghcjs_dom_idb_object_store_countRange, idbObjectStoreCountRange,
        ghcjs_dom_idb_object_store_count, idbObjectStoreCount,
        ghcjs_dom_idb_object_store_get_name, idbObjectStoreGetName,
        ghcjs_dom_idb_object_store_get_key_path, idbObjectStoreGetKeyPath,
        ghcjs_dom_idb_object_store_get_index_names,
        idbObjectStoreGetIndexNames,
        ghcjs_dom_idb_object_store_get_transaction,
        idbObjectStoreGetTransaction,
        ghcjs_dom_idb_object_store_get_auto_increment,
        idbObjectStoreGetAutoIncrement, IDBObjectStore, IsIDBObjectStore,
        castToIDBObjectStore, gTypeIDBObjectStore, toIDBObjectStore)
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

 
foreign import javascript unsafe "$1[\"put\"]($2, $3)"
        ghcjs_dom_idb_object_store_put ::
        JSRef IDBObjectStore -> JSRef a -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
idbObjectStorePut ::
                  (MonadIO m, IsIDBObjectStore self) =>
                    self -> JSRef a -> JSRef a -> m (Maybe IDBRequest)
idbObjectStorePut self value key
  = liftIO
      ((ghcjs_dom_idb_object_store_put
          (unIDBObjectStore (toIDBObjectStore self))
          value
          key)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)"
        ghcjs_dom_idb_object_store_add ::
        JSRef IDBObjectStore -> JSRef a -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
idbObjectStoreAdd ::
                  (MonadIO m, IsIDBObjectStore self) =>
                    self -> JSRef a -> JSRef a -> m (Maybe IDBRequest)
idbObjectStoreAdd self value key
  = liftIO
      ((ghcjs_dom_idb_object_store_add
          (unIDBObjectStore (toIDBObjectStore self))
          value
          key)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"delete\"]($2)"
        ghcjs_dom_idb_object_store_deleteRange ::
        JSRef IDBObjectStore -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.deleteRange Mozilla IDBObjectStore.deleteRange documentation> 
idbObjectStoreDeleteRange ::
                          (MonadIO m, IsIDBObjectStore self, IsIDBKeyRange keyRange) =>
                            self -> Maybe keyRange -> m (Maybe IDBRequest)
idbObjectStoreDeleteRange self keyRange
  = liftIO
      ((ghcjs_dom_idb_object_store_deleteRange
          (unIDBObjectStore (toIDBObjectStore self))
          (maybe jsNull (unIDBKeyRange . toIDBKeyRange) keyRange))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"delete\"]($2)"
        ghcjs_dom_idb_object_store_delete ::
        JSRef IDBObjectStore -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
idbObjectStoreDelete ::
                     (MonadIO m, IsIDBObjectStore self) =>
                       self -> JSRef a -> m (Maybe IDBRequest)
idbObjectStoreDelete self key
  = liftIO
      ((ghcjs_dom_idb_object_store_delete
          (unIDBObjectStore (toIDBObjectStore self))
          key)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"get\"]($2)"
        ghcjs_dom_idb_object_store_getRange ::
        JSRef IDBObjectStore -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.range Mozilla IDBObjectStore.range documentation> 
idbObjectStoreGetRange ::
                       (MonadIO m, IsIDBObjectStore self, IsIDBKeyRange key) =>
                         self -> Maybe key -> m (Maybe IDBRequest)
idbObjectStoreGetRange self key
  = liftIO
      ((ghcjs_dom_idb_object_store_getRange
          (unIDBObjectStore (toIDBObjectStore self))
          (maybe jsNull (unIDBKeyRange . toIDBKeyRange) key))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"get\"]($2)"
        ghcjs_dom_idb_object_store_get ::
        JSRef IDBObjectStore -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
idbObjectStoreGet ::
                  (MonadIO m, IsIDBObjectStore self) =>
                    self -> JSRef a -> m (Maybe IDBRequest)
idbObjectStoreGet self key
  = liftIO
      ((ghcjs_dom_idb_object_store_get
          (unIDBObjectStore (toIDBObjectStore self))
          key)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_idb_object_store_clear ::
        JSRef IDBObjectStore -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
idbObjectStoreClear ::
                    (MonadIO m, IsIDBObjectStore self) => self -> m (Maybe IDBRequest)
idbObjectStoreClear self
  = liftIO
      ((ghcjs_dom_idb_object_store_clear
          (unIDBObjectStore (toIDBObjectStore self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        ghcjs_dom_idb_object_store_open_cursorRange ::
        JSRef IDBObjectStore ->
          JSRef IDBKeyRange -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursorRange Mozilla IDBObjectStore.openCursorRange documentation> 
idbObjectStoreOpenCursorRange ::
                              (MonadIO m, IsIDBObjectStore self, IsIDBKeyRange range,
                               ToJSString direction) =>
                                self -> Maybe range -> direction -> m (Maybe IDBRequest)
idbObjectStoreOpenCursorRange self range direction
  = liftIO
      ((ghcjs_dom_idb_object_store_open_cursorRange
          (unIDBObjectStore (toIDBObjectStore self))
          (maybe jsNull (unIDBKeyRange . toIDBKeyRange) range)
          (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        ghcjs_dom_idb_object_store_open_cursor ::
        JSRef IDBObjectStore ->
          JSRef a -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
idbObjectStoreOpenCursor ::
                         (MonadIO m, IsIDBObjectStore self, ToJSString direction) =>
                           self -> JSRef a -> direction -> m (Maybe IDBRequest)
idbObjectStoreOpenCursor self key direction
  = liftIO
      ((ghcjs_dom_idb_object_store_open_cursor
          (unIDBObjectStore (toIDBObjectStore self))
          key
          (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createIndex\"]($2, $3, $4)"
        ghcjs_dom_idb_object_store_create_index' ::
        JSRef IDBObjectStore ->
          JSString ->
            JSRef [keyPath] -> JSRef Dictionary -> IO (JSRef IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex' Mozilla IDBObjectStore.createIndex' documentation> 
idbObjectStoreCreateIndex' ::
                           (MonadIO m, IsIDBObjectStore self, ToJSString name,
                            ToJSString keyPath, IsDictionary options) =>
                             self -> name -> [keyPath] -> Maybe options -> m (Maybe IDBIndex)
idbObjectStoreCreateIndex' self name keyPath options
  = liftIO
      ((toJSRef keyPath >>=
          \ keyPath' ->
            ghcjs_dom_idb_object_store_create_index'
              (unIDBObjectStore (toIDBObjectStore self))
              (toJSString name)
              keyPath'
          (maybe jsNull (unDictionary . toDictionary) options))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createIndex\"]($2, $3, $4)"
        ghcjs_dom_idb_object_store_create_index ::
        JSRef IDBObjectStore ->
          JSString -> JSString -> JSRef Dictionary -> IO (JSRef IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
idbObjectStoreCreateIndex ::
                          (MonadIO m, IsIDBObjectStore self, ToJSString name,
                           ToJSString keyPath, IsDictionary options) =>
                            self -> name -> keyPath -> Maybe options -> m (Maybe IDBIndex)
idbObjectStoreCreateIndex self name keyPath options
  = liftIO
      ((ghcjs_dom_idb_object_store_create_index
          (unIDBObjectStore (toIDBObjectStore self))
          (toJSString name)
          (toJSString keyPath)
          (maybe jsNull (unDictionary . toDictionary) options))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"index\"]($2)"
        ghcjs_dom_idb_object_store_index ::
        JSRef IDBObjectStore -> JSString -> IO (JSRef IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
idbObjectStoreIndex ::
                    (MonadIO m, IsIDBObjectStore self, ToJSString name) =>
                      self -> name -> m (Maybe IDBIndex)
idbObjectStoreIndex self name
  = liftIO
      ((ghcjs_dom_idb_object_store_index
          (unIDBObjectStore (toIDBObjectStore self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteIndex\"]($2)"
        ghcjs_dom_idb_object_store_delete_index ::
        JSRef IDBObjectStore -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.deleteIndex Mozilla IDBObjectStore.deleteIndex documentation> 
idbObjectStoreDeleteIndex ::
                          (MonadIO m, IsIDBObjectStore self, ToJSString name) =>
                            self -> name -> m ()
idbObjectStoreDeleteIndex self name
  = liftIO
      (ghcjs_dom_idb_object_store_delete_index
         (unIDBObjectStore (toIDBObjectStore self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"count\"]($2)"
        ghcjs_dom_idb_object_store_countRange ::
        JSRef IDBObjectStore -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.countRange Mozilla IDBObjectStore.countRange documentation> 
idbObjectStoreCountRange ::
                         (MonadIO m, IsIDBObjectStore self, IsIDBKeyRange range) =>
                           self -> Maybe range -> m (Maybe IDBRequest)
idbObjectStoreCountRange self range
  = liftIO
      ((ghcjs_dom_idb_object_store_countRange
          (unIDBObjectStore (toIDBObjectStore self))
          (maybe jsNull (unIDBKeyRange . toIDBKeyRange) range))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"count\"]($2)"
        ghcjs_dom_idb_object_store_count ::
        JSRef IDBObjectStore -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
idbObjectStoreCount ::
                    (MonadIO m, IsIDBObjectStore self) =>
                      self -> JSRef a -> m (Maybe IDBRequest)
idbObjectStoreCount self key
  = liftIO
      ((ghcjs_dom_idb_object_store_count
          (unIDBObjectStore (toIDBObjectStore self))
          key)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_idb_object_store_get_name ::
        JSRef IDBObjectStore -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
idbObjectStoreGetName ::
                      (MonadIO m, IsIDBObjectStore self, FromJSString result) =>
                        self -> m result
idbObjectStoreGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_idb_object_store_get_name
            (unIDBObjectStore (toIDBObjectStore self))))
 
foreign import javascript unsafe "$1[\"keyPath\"]"
        ghcjs_dom_idb_object_store_get_key_path ::
        JSRef IDBObjectStore -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
idbObjectStoreGetKeyPath ::
                         (MonadIO m, IsIDBObjectStore self) => self -> m (Maybe IDBAny)
idbObjectStoreGetKeyPath self
  = liftIO
      ((ghcjs_dom_idb_object_store_get_key_path
          (unIDBObjectStore (toIDBObjectStore self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"indexNames\"]"
        ghcjs_dom_idb_object_store_get_index_names ::
        JSRef IDBObjectStore -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
idbObjectStoreGetIndexNames ::
                            (MonadIO m, IsIDBObjectStore self) =>
                              self -> m (Maybe DOMStringList)
idbObjectStoreGetIndexNames self
  = liftIO
      ((ghcjs_dom_idb_object_store_get_index_names
          (unIDBObjectStore (toIDBObjectStore self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"transaction\"]"
        ghcjs_dom_idb_object_store_get_transaction ::
        JSRef IDBObjectStore -> IO (JSRef IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
idbObjectStoreGetTransaction ::
                             (MonadIO m, IsIDBObjectStore self) =>
                               self -> m (Maybe IDBTransaction)
idbObjectStoreGetTransaction self
  = liftIO
      ((ghcjs_dom_idb_object_store_get_transaction
          (unIDBObjectStore (toIDBObjectStore self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"autoIncrement\"] ? 1 : 0)"
        ghcjs_dom_idb_object_store_get_auto_increment ::
        JSRef IDBObjectStore -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.autoIncrement Mozilla IDBObjectStore.autoIncrement documentation> 
idbObjectStoreGetAutoIncrement ::
                               (MonadIO m, IsIDBObjectStore self) => self -> m Bool
idbObjectStoreGetAutoIncrement self
  = liftIO
      (ghcjs_dom_idb_object_store_get_auto_increment
         (unIDBObjectStore (toIDBObjectStore self)))
#else
module GHCJS.DOM.IDBObjectStore (
  ) where
#endif
