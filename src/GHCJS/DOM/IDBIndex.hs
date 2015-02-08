{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBIndex
       (ghcjs_dom_idb_index_open_cursorRange, idbIndexOpenCursorRange,
        ghcjs_dom_idb_index_open_cursor, idbIndexOpenCursor,
        ghcjs_dom_idb_index_open_key_cursorRange,
        idbIndexOpenKeyCursorRange, ghcjs_dom_idb_index_open_key_cursor,
        idbIndexOpenKeyCursor, ghcjs_dom_idb_index_getRange,
        idbIndexGetRange, ghcjs_dom_idb_index_get, idbIndexGet,
        ghcjs_dom_idb_index_get_keyRange, idbIndexGetKeyRange,
        ghcjs_dom_idb_index_get_key, idbIndexGetKey,
        ghcjs_dom_idb_index_countRange, idbIndexCountRange,
        ghcjs_dom_idb_index_count, idbIndexCount,
        ghcjs_dom_idb_index_get_name, idbIndexGetName,
        ghcjs_dom_idb_index_get_object_store, idbIndexGetObjectStore,
        ghcjs_dom_idb_index_get_key_path, idbIndexGetKeyPath,
        ghcjs_dom_idb_index_get_multi_entry, idbIndexGetMultiEntry,
        ghcjs_dom_idb_index_get_unique, idbIndexGetUnique, IDBIndex,
        IsIDBIndex, castToIDBIndex, gTypeIDBIndex, toIDBIndex)
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

 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        ghcjs_dom_idb_index_open_cursorRange ::
        JSRef IDBIndex ->
          JSRef IDBKeyRange -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursorRange Mozilla IDBIndex.openCursorRange documentation> 
idbIndexOpenCursorRange ::
                        (MonadIO m, IsIDBIndex self, IsIDBKeyRange range,
                         ToJSString direction) =>
                          self -> Maybe range -> direction -> m (Maybe IDBRequest)
idbIndexOpenCursorRange self range direction
  = liftIO
      ((ghcjs_dom_idb_index_open_cursorRange
          (unIDBIndex (toIDBIndex self))
          (maybe jsNull (unIDBKeyRange . toIDBKeyRange) range)
          (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        ghcjs_dom_idb_index_open_cursor ::
        JSRef IDBIndex -> JSRef a -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
idbIndexOpenCursor ::
                   (MonadIO m, IsIDBIndex self, ToJSString direction) =>
                     self -> JSRef a -> direction -> m (Maybe IDBRequest)
idbIndexOpenCursor self key direction
  = liftIO
      ((ghcjs_dom_idb_index_open_cursor (unIDBIndex (toIDBIndex self))
          key
          (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"openKeyCursor\"]($2, $3)"
        ghcjs_dom_idb_index_open_key_cursorRange ::
        JSRef IDBIndex ->
          JSRef IDBKeyRange -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursorRange Mozilla IDBIndex.openKeyCursorRange documentation> 
idbIndexOpenKeyCursorRange ::
                           (MonadIO m, IsIDBIndex self, IsIDBKeyRange range,
                            ToJSString direction) =>
                             self -> Maybe range -> direction -> m (Maybe IDBRequest)
idbIndexOpenKeyCursorRange self range direction
  = liftIO
      ((ghcjs_dom_idb_index_open_key_cursorRange
          (unIDBIndex (toIDBIndex self))
          (maybe jsNull (unIDBKeyRange . toIDBKeyRange) range)
          (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"openKeyCursor\"]($2, $3)"
        ghcjs_dom_idb_index_open_key_cursor ::
        JSRef IDBIndex -> JSRef a -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
idbIndexOpenKeyCursor ::
                      (MonadIO m, IsIDBIndex self, ToJSString direction) =>
                        self -> JSRef a -> direction -> m (Maybe IDBRequest)
idbIndexOpenKeyCursor self key direction
  = liftIO
      ((ghcjs_dom_idb_index_open_key_cursor
          (unIDBIndex (toIDBIndex self))
          key
          (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"get\"]($2)"
        ghcjs_dom_idb_index_getRange ::
        JSRef IDBIndex -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.range Mozilla IDBIndex.range documentation> 
idbIndexGetRange ::
                 (MonadIO m, IsIDBIndex self, IsIDBKeyRange key) =>
                   self -> Maybe key -> m (Maybe IDBRequest)
idbIndexGetRange self key
  = liftIO
      ((ghcjs_dom_idb_index_getRange (unIDBIndex (toIDBIndex self))
          (maybe jsNull (unIDBKeyRange . toIDBKeyRange) key))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"get\"]($2)"
        ghcjs_dom_idb_index_get ::
        JSRef IDBIndex -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
idbIndexGet ::
            (MonadIO m, IsIDBIndex self) =>
              self -> JSRef a -> m (Maybe IDBRequest)
idbIndexGet self key
  = liftIO
      ((ghcjs_dom_idb_index_get (unIDBIndex (toIDBIndex self)) key) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"getKey\"]($2)"
        ghcjs_dom_idb_index_get_keyRange ::
        JSRef IDBIndex -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyRange Mozilla IDBIndex.keyRange documentation> 
idbIndexGetKeyRange ::
                    (MonadIO m, IsIDBIndex self, IsIDBKeyRange key) =>
                      self -> Maybe key -> m (Maybe IDBRequest)
idbIndexGetKeyRange self key
  = liftIO
      ((ghcjs_dom_idb_index_get_keyRange (unIDBIndex (toIDBIndex self))
          (maybe jsNull (unIDBKeyRange . toIDBKeyRange) key))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getKey\"]($2)"
        ghcjs_dom_idb_index_get_key ::
        JSRef IDBIndex -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.key Mozilla IDBIndex.key documentation> 
idbIndexGetKey ::
               (MonadIO m, IsIDBIndex self) =>
                 self -> JSRef a -> m (Maybe IDBRequest)
idbIndexGetKey self key
  = liftIO
      ((ghcjs_dom_idb_index_get_key (unIDBIndex (toIDBIndex self)) key)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"count\"]($2)"
        ghcjs_dom_idb_index_countRange ::
        JSRef IDBIndex -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.countRange Mozilla IDBIndex.countRange documentation> 
idbIndexCountRange ::
                   (MonadIO m, IsIDBIndex self, IsIDBKeyRange range) =>
                     self -> Maybe range -> m (Maybe IDBRequest)
idbIndexCountRange self range
  = liftIO
      ((ghcjs_dom_idb_index_countRange (unIDBIndex (toIDBIndex self))
          (maybe jsNull (unIDBKeyRange . toIDBKeyRange) range))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"count\"]($2)"
        ghcjs_dom_idb_index_count ::
        JSRef IDBIndex -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
idbIndexCount ::
              (MonadIO m, IsIDBIndex self) =>
                self -> JSRef a -> m (Maybe IDBRequest)
idbIndexCount self key
  = liftIO
      ((ghcjs_dom_idb_index_count (unIDBIndex (toIDBIndex self)) key) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_idb_index_get_name :: JSRef IDBIndex -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.name Mozilla IDBIndex.name documentation> 
idbIndexGetName ::
                (MonadIO m, IsIDBIndex self, FromJSString result) =>
                  self -> m result
idbIndexGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_idb_index_get_name (unIDBIndex (toIDBIndex self))))
 
foreign import javascript unsafe "$1[\"objectStore\"]"
        ghcjs_dom_idb_index_get_object_store ::
        JSRef IDBIndex -> IO (JSRef IDBObjectStore)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
idbIndexGetObjectStore ::
                       (MonadIO m, IsIDBIndex self) => self -> m (Maybe IDBObjectStore)
idbIndexGetObjectStore self
  = liftIO
      ((ghcjs_dom_idb_index_get_object_store
          (unIDBIndex (toIDBIndex self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"keyPath\"]"
        ghcjs_dom_idb_index_get_key_path ::
        JSRef IDBIndex -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
idbIndexGetKeyPath ::
                   (MonadIO m, IsIDBIndex self) => self -> m (Maybe IDBAny)
idbIndexGetKeyPath self
  = liftIO
      ((ghcjs_dom_idb_index_get_key_path (unIDBIndex (toIDBIndex self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"multiEntry\"] ? 1 : 0)"
        ghcjs_dom_idb_index_get_multi_entry :: JSRef IDBIndex -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.multiEntry Mozilla IDBIndex.multiEntry documentation> 
idbIndexGetMultiEntry ::
                      (MonadIO m, IsIDBIndex self) => self -> m Bool
idbIndexGetMultiEntry self
  = liftIO
      (ghcjs_dom_idb_index_get_multi_entry
         (unIDBIndex (toIDBIndex self)))
 
foreign import javascript unsafe "($1[\"unique\"] ? 1 : 0)"
        ghcjs_dom_idb_index_get_unique :: JSRef IDBIndex -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.unique Mozilla IDBIndex.unique documentation> 
idbIndexGetUnique :: (MonadIO m, IsIDBIndex self) => self -> m Bool
idbIndexGetUnique self
  = liftIO
      (ghcjs_dom_idb_index_get_unique (unIDBIndex (toIDBIndex self)))
#else
module GHCJS.DOM.IDBIndex (
  ) where
#endif
