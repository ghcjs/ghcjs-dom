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
                  (IsIDBObjectStore self) =>
                    self -> JSRef a -> JSRef a -> IO (Maybe IDBRequest)
idbObjectStorePut self value key
  = (ghcjs_dom_idb_object_store_put
       (unIDBObjectStore (toIDBObjectStore self))
       value
       key)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)"
        ghcjs_dom_idb_object_store_add ::
        JSRef IDBObjectStore -> JSRef a -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
idbObjectStoreAdd ::
                  (IsIDBObjectStore self) =>
                    self -> JSRef a -> JSRef a -> IO (Maybe IDBRequest)
idbObjectStoreAdd self value key
  = (ghcjs_dom_idb_object_store_add
       (unIDBObjectStore (toIDBObjectStore self))
       value
       key)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"delete\"]($2)"
        ghcjs_dom_idb_object_store_deleteRange ::
        JSRef IDBObjectStore -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.deleteRange Mozilla IDBObjectStore.deleteRange documentation> 
idbObjectStoreDeleteRange ::
                          (IsIDBObjectStore self, IsIDBKeyRange keyRange) =>
                            self -> Maybe keyRange -> IO (Maybe IDBRequest)
idbObjectStoreDeleteRange self keyRange
  = (ghcjs_dom_idb_object_store_deleteRange
       (unIDBObjectStore (toIDBObjectStore self))
       (maybe jsNull (unIDBKeyRange . toIDBKeyRange) keyRange))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"delete\"]($2)"
        ghcjs_dom_idb_object_store_delete ::
        JSRef IDBObjectStore -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
idbObjectStoreDelete ::
                     (IsIDBObjectStore self) => self -> JSRef a -> IO (Maybe IDBRequest)
idbObjectStoreDelete self key
  = (ghcjs_dom_idb_object_store_delete
       (unIDBObjectStore (toIDBObjectStore self))
       key)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"get\"]($2)"
        ghcjs_dom_idb_object_store_getRange ::
        JSRef IDBObjectStore -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.range Mozilla IDBObjectStore.range documentation> 
idbObjectStoreGetRange ::
                       (IsIDBObjectStore self, IsIDBKeyRange key) =>
                         self -> Maybe key -> IO (Maybe IDBRequest)
idbObjectStoreGetRange self key
  = (ghcjs_dom_idb_object_store_getRange
       (unIDBObjectStore (toIDBObjectStore self))
       (maybe jsNull (unIDBKeyRange . toIDBKeyRange) key))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"get\"]($2)"
        ghcjs_dom_idb_object_store_get ::
        JSRef IDBObjectStore -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
idbObjectStoreGet ::
                  (IsIDBObjectStore self) => self -> JSRef a -> IO (Maybe IDBRequest)
idbObjectStoreGet self key
  = (ghcjs_dom_idb_object_store_get
       (unIDBObjectStore (toIDBObjectStore self))
       key)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_idb_object_store_clear ::
        JSRef IDBObjectStore -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
idbObjectStoreClear ::
                    (IsIDBObjectStore self) => self -> IO (Maybe IDBRequest)
idbObjectStoreClear self
  = (ghcjs_dom_idb_object_store_clear
       (unIDBObjectStore (toIDBObjectStore self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        ghcjs_dom_idb_object_store_open_cursorRange ::
        JSRef IDBObjectStore ->
          JSRef IDBKeyRange -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursorRange Mozilla IDBObjectStore.openCursorRange documentation> 
idbObjectStoreOpenCursorRange ::
                              (IsIDBObjectStore self, IsIDBKeyRange range,
                               ToJSString direction) =>
                                self -> Maybe range -> direction -> IO (Maybe IDBRequest)
idbObjectStoreOpenCursorRange self range direction
  = (ghcjs_dom_idb_object_store_open_cursorRange
       (unIDBObjectStore (toIDBObjectStore self))
       (maybe jsNull (unIDBKeyRange . toIDBKeyRange) range)
       (toJSString direction))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        ghcjs_dom_idb_object_store_open_cursor ::
        JSRef IDBObjectStore ->
          JSRef a -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
idbObjectStoreOpenCursor ::
                         (IsIDBObjectStore self, ToJSString direction) =>
                           self -> JSRef a -> direction -> IO (Maybe IDBRequest)
idbObjectStoreOpenCursor self key direction
  = (ghcjs_dom_idb_object_store_open_cursor
       (unIDBObjectStore (toIDBObjectStore self))
       key
       (toJSString direction))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createIndex\"]($2, $3, $4)"
        ghcjs_dom_idb_object_store_create_index' ::
        JSRef IDBObjectStore ->
          JSString ->
            JSRef [keyPath] -> JSRef Dictionary -> IO (JSRef IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex' Mozilla IDBObjectStore.createIndex' documentation> 
idbObjectStoreCreateIndex' ::
                           (IsIDBObjectStore self, ToJSString name, ToJSString keyPath,
                            IsDictionary options) =>
                             self -> name -> [keyPath] -> Maybe options -> IO (Maybe IDBIndex)
idbObjectStoreCreateIndex' self name keyPath options
  = (toJSRef keyPath >>=
       \ keyPath' ->
         ghcjs_dom_idb_object_store_create_index'
           (unIDBObjectStore (toIDBObjectStore self))
           (toJSString name)
           keyPath'
       (maybe jsNull (unDictionary . toDictionary) options))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createIndex\"]($2, $3, $4)"
        ghcjs_dom_idb_object_store_create_index ::
        JSRef IDBObjectStore ->
          JSString -> JSString -> JSRef Dictionary -> IO (JSRef IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
idbObjectStoreCreateIndex ::
                          (IsIDBObjectStore self, ToJSString name, ToJSString keyPath,
                           IsDictionary options) =>
                            self -> name -> keyPath -> Maybe options -> IO (Maybe IDBIndex)
idbObjectStoreCreateIndex self name keyPath options
  = (ghcjs_dom_idb_object_store_create_index
       (unIDBObjectStore (toIDBObjectStore self))
       (toJSString name)
       (toJSString keyPath)
       (maybe jsNull (unDictionary . toDictionary) options))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"index\"]($2)"
        ghcjs_dom_idb_object_store_index ::
        JSRef IDBObjectStore -> JSString -> IO (JSRef IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
idbObjectStoreIndex ::
                    (IsIDBObjectStore self, ToJSString name) =>
                      self -> name -> IO (Maybe IDBIndex)
idbObjectStoreIndex self name
  = (ghcjs_dom_idb_object_store_index
       (unIDBObjectStore (toIDBObjectStore self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"deleteIndex\"]($2)"
        ghcjs_dom_idb_object_store_delete_index ::
        JSRef IDBObjectStore -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.deleteIndex Mozilla IDBObjectStore.deleteIndex documentation> 
idbObjectStoreDeleteIndex ::
                          (IsIDBObjectStore self, ToJSString name) => self -> name -> IO ()
idbObjectStoreDeleteIndex self name
  = ghcjs_dom_idb_object_store_delete_index
      (unIDBObjectStore (toIDBObjectStore self))
      (toJSString name)
 
foreign import javascript unsafe "$1[\"count\"]($2)"
        ghcjs_dom_idb_object_store_countRange ::
        JSRef IDBObjectStore -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.countRange Mozilla IDBObjectStore.countRange documentation> 
idbObjectStoreCountRange ::
                         (IsIDBObjectStore self, IsIDBKeyRange range) =>
                           self -> Maybe range -> IO (Maybe IDBRequest)
idbObjectStoreCountRange self range
  = (ghcjs_dom_idb_object_store_countRange
       (unIDBObjectStore (toIDBObjectStore self))
       (maybe jsNull (unIDBKeyRange . toIDBKeyRange) range))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"count\"]($2)"
        ghcjs_dom_idb_object_store_count ::
        JSRef IDBObjectStore -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
idbObjectStoreCount ::
                    (IsIDBObjectStore self) => self -> JSRef a -> IO (Maybe IDBRequest)
idbObjectStoreCount self key
  = (ghcjs_dom_idb_object_store_count
       (unIDBObjectStore (toIDBObjectStore self))
       key)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_idb_object_store_get_name ::
        JSRef IDBObjectStore -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
idbObjectStoreGetName ::
                      (IsIDBObjectStore self, FromJSString result) => self -> IO result
idbObjectStoreGetName self
  = fromJSString <$>
      (ghcjs_dom_idb_object_store_get_name
         (unIDBObjectStore (toIDBObjectStore self)))
 
foreign import javascript unsafe "$1[\"keyPath\"]"
        ghcjs_dom_idb_object_store_get_key_path ::
        JSRef IDBObjectStore -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
idbObjectStoreGetKeyPath ::
                         (IsIDBObjectStore self) => self -> IO (Maybe IDBAny)
idbObjectStoreGetKeyPath self
  = (ghcjs_dom_idb_object_store_get_key_path
       (unIDBObjectStore (toIDBObjectStore self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"indexNames\"]"
        ghcjs_dom_idb_object_store_get_index_names ::
        JSRef IDBObjectStore -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
idbObjectStoreGetIndexNames ::
                            (IsIDBObjectStore self) => self -> IO (Maybe DOMStringList)
idbObjectStoreGetIndexNames self
  = (ghcjs_dom_idb_object_store_get_index_names
       (unIDBObjectStore (toIDBObjectStore self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"transaction\"]"
        ghcjs_dom_idb_object_store_get_transaction ::
        JSRef IDBObjectStore -> IO (JSRef IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
idbObjectStoreGetTransaction ::
                             (IsIDBObjectStore self) => self -> IO (Maybe IDBTransaction)
idbObjectStoreGetTransaction self
  = (ghcjs_dom_idb_object_store_get_transaction
       (unIDBObjectStore (toIDBObjectStore self)))
      >>= fromJSRef
 
foreign import javascript unsafe "($1[\"autoIncrement\"] ? 1 : 0)"
        ghcjs_dom_idb_object_store_get_auto_increment ::
        JSRef IDBObjectStore -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.autoIncrement Mozilla IDBObjectStore.autoIncrement documentation> 
idbObjectStoreGetAutoIncrement ::
                               (IsIDBObjectStore self) => self -> IO Bool
idbObjectStoreGetAutoIncrement self
  = ghcjs_dom_idb_object_store_get_auto_increment
      (unIDBObjectStore (toIDBObjectStore self))
#else
module GHCJS.DOM.IDBObjectStore (
  ) where
#endif
