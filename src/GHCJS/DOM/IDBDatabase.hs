{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBDatabase
       (ghcjs_dom_idb_database_create_object_store,
        idbDatabaseCreateObjectStore,
        ghcjs_dom_idb_database_delete_object_store,
        idbDatabaseDeleteObjectStore, ghcjs_dom_idb_database_transaction,
        idbDatabaseTransaction, ghcjs_dom_idb_database_close,
        idbDatabaseClose, ghcjs_dom_idb_database_get_name,
        idbDatabaseGetName, ghcjs_dom_idb_database_get_version,
        idbDatabaseGetVersion,
        ghcjs_dom_idb_database_get_object_store_names,
        idbDatabaseGetObjectStoreNames, idbDatabaseOnabort,
        idbDatabaseOnerror, idbDatabaseOnversionchange, IDBDatabase,
        IsIDBDatabase, castToIDBDatabase, gTypeIDBDatabase, toIDBDatabase)
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

 
foreign import javascript unsafe
        "$1[\"createObjectStore\"]($2, $3)"
        ghcjs_dom_idb_database_create_object_store ::
        JSRef IDBDatabase ->
          JSString -> JSRef Dictionary -> IO (JSRef IDBObjectStore)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
idbDatabaseCreateObjectStore ::
                             (IsIDBDatabase self, ToJSString name, IsDictionary options) =>
                               self -> name -> Maybe options -> IO (Maybe IDBObjectStore)
idbDatabaseCreateObjectStore self name options
  = (ghcjs_dom_idb_database_create_object_store
       (unIDBDatabase (toIDBDatabase self))
       (toJSString name)
       (maybe jsNull (unDictionary . toDictionary) options))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"deleteObjectStore\"]($2)"
        ghcjs_dom_idb_database_delete_object_store ::
        JSRef IDBDatabase -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.deleteObjectStore Mozilla IDBDatabase.deleteObjectStore documentation> 
idbDatabaseDeleteObjectStore ::
                             (IsIDBDatabase self, ToJSString name) => self -> name -> IO ()
idbDatabaseDeleteObjectStore self name
  = ghcjs_dom_idb_database_delete_object_store
      (unIDBDatabase (toIDBDatabase self))
      (toJSString name)
 
foreign import javascript unsafe "$1[\"transaction\"]($2, $3)"
        ghcjs_dom_idb_database_transaction ::
        JSRef IDBDatabase ->
          JSString -> JSString -> IO (JSRef IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
idbDatabaseTransaction ::
                       (IsIDBDatabase self, ToJSString storeName, ToJSString mode) =>
                         self -> storeName -> mode -> IO (Maybe IDBTransaction)
idbDatabaseTransaction self storeName mode
  = (ghcjs_dom_idb_database_transaction
       (unIDBDatabase (toIDBDatabase self))
       (toJSString storeName)
       (toJSString mode))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"transaction\"]($2, $3)"
        ghcjs_dom_idb_database_transaction' ::
        JSRef IDBDatabase ->
          JSRef [storeNames] -> JSString -> IO (JSRef IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction' Mozilla IDBDatabase.transaction' documentation> 
idbDatabaseTransaction' ::
                        (IsIDBDatabase self, ToJSString storeNames, ToJSString mode) =>
                          self -> [storeNames] -> mode -> IO (Maybe IDBTransaction)
idbDatabaseTransaction' self storeNames mode
  = (toJSRef storeNames >>=
       \ storeNames' ->
         ghcjs_dom_idb_database_transaction'
           (unIDBDatabase (toIDBDatabase self))
           storeNames'
       (toJSString mode))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_idb_database_close :: JSRef IDBDatabase -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.close Mozilla IDBDatabase.close documentation> 
idbDatabaseClose :: (IsIDBDatabase self) => self -> IO ()
idbDatabaseClose self
  = ghcjs_dom_idb_database_close (unIDBDatabase (toIDBDatabase self))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_idb_database_get_name :: JSRef IDBDatabase -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.name Mozilla IDBDatabase.name documentation> 
idbDatabaseGetName ::
                   (IsIDBDatabase self, FromJSString result) => self -> IO result
idbDatabaseGetName self
  = fromJSString <$>
      (ghcjs_dom_idb_database_get_name
         (unIDBDatabase (toIDBDatabase self)))
 
foreign import javascript unsafe "$1[\"version\"]"
        ghcjs_dom_idb_database_get_version ::
        JSRef IDBDatabase -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.version Mozilla IDBDatabase.version documentation> 
idbDatabaseGetVersion :: (IsIDBDatabase self) => self -> IO Word64
idbDatabaseGetVersion self
  = round <$>
      (ghcjs_dom_idb_database_get_version
         (unIDBDatabase (toIDBDatabase self)))
 
foreign import javascript unsafe "$1[\"objectStoreNames\"]"
        ghcjs_dom_idb_database_get_object_store_names ::
        JSRef IDBDatabase -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.objectStoreNames Mozilla IDBDatabase.objectStoreNames documentation> 
idbDatabaseGetObjectStoreNames ::
                               (IsIDBDatabase self) => self -> IO (Maybe DOMStringList)
idbDatabaseGetObjectStoreNames self
  = (ghcjs_dom_idb_database_get_object_store_names
       (unIDBDatabase (toIDBDatabase self)))
      >>= fromJSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onabort Mozilla IDBDatabase.onabort documentation> 
idbDatabaseOnabort ::
                   (IsIDBDatabase self) => Signal self (EventM UIEvent self ())
idbDatabaseOnabort = (connect "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onerror Mozilla IDBDatabase.onerror documentation> 
idbDatabaseOnerror ::
                   (IsIDBDatabase self) => Signal self (EventM UIEvent self ())
idbDatabaseOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onversionchange Mozilla IDBDatabase.onversionchange documentation> 
idbDatabaseOnversionchange ::
                           (IsIDBDatabase self) => Signal self (EventM UIEvent self ())
idbDatabaseOnversionchange = (connect "versionchange")
#else
module GHCJS.DOM.IDBDatabase (
  ) where
#endif
