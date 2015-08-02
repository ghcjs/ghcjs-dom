{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.IDBObjectStore
       (js_put, put, js_add, add, js_deleteRange, deleteRange, js_delete,
        delete, js_getRange, getRange, js_get, get, js_clear, clear,
        js_openCursorRange, openCursorRange, js_openCursor, openCursor,
        js_createIndex', createIndex', js_createIndex, createIndex,
        js_index, index, js_deleteIndex, deleteIndex, js_countRange,
        countRange, js_count, count, js_getName, getName, js_getKeyPath,
        getKeyPath, js_getIndexNames, getIndexNames, js_getTransaction,
        getTransaction, js_getAutoIncrement, getAutoIncrement,
        IDBObjectStore, castToIDBObjectStore, gTypeIDBObjectStore)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"put\"]($2, $3)" js_put ::
        JSRef IDBObjectStore -> JSRef a -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
put ::
    (MonadIO m) =>
      IDBObjectStore -> JSRef a -> JSRef a -> m (Maybe IDBRequest)
put self value key
  = liftIO ((js_put (unIDBObjectStore self) value key) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)" js_add ::
        JSRef IDBObjectStore -> JSRef a -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add ::
    (MonadIO m) =>
      IDBObjectStore -> JSRef a -> JSRef a -> m (Maybe IDBRequest)
add self value key
  = liftIO ((js_add (unIDBObjectStore self) value key) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"delete\"]($2)"
        js_deleteRange ::
        JSRef IDBObjectStore -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange ::
            (MonadIO m) =>
              IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
deleteRange self keyRange
  = liftIO
      ((js_deleteRange (unIDBObjectStore self)
          (maybe jsNull pToJSRef keyRange))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"delete\"]($2)" js_delete ::
        JSRef IDBObjectStore -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete ::
       (MonadIO m) => IDBObjectStore -> JSRef a -> m (Maybe IDBRequest)
delete self key
  = liftIO ((js_delete (unIDBObjectStore self) key) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_getRange ::
        JSRef IDBObjectStore -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange ::
         (MonadIO m) =>
           IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getRange self key
  = liftIO
      ((js_getRange (unIDBObjectStore self) (maybe jsNull pToJSRef key))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_get ::
        JSRef IDBObjectStore -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get ::
    (MonadIO m) => IDBObjectStore -> JSRef a -> m (Maybe IDBRequest)
get self key
  = liftIO ((js_get (unIDBObjectStore self) key) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        JSRef IDBObjectStore -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear :: (MonadIO m) => IDBObjectStore -> m (Maybe IDBRequest)
clear self
  = liftIO ((js_clear (unIDBObjectStore self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        js_openCursorRange ::
        JSRef IDBObjectStore ->
          JSRef IDBKeyRange -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRange ::
                (MonadIO m, ToJSString direction) =>
                  IDBObjectStore ->
                    Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openCursorRange self range direction
  = liftIO
      ((js_openCursorRange (unIDBObjectStore self)
          (maybe jsNull pToJSRef range)
          (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        js_openCursor ::
        JSRef IDBObjectStore ->
          JSRef a -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor ::
           (MonadIO m, ToJSString direction) =>
             IDBObjectStore -> JSRef a -> direction -> m (Maybe IDBRequest)
openCursor self key direction
  = liftIO
      ((js_openCursor (unIDBObjectStore self) key (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createIndex\"]($2, $3, $4)"
        js_createIndex' ::
        JSRef IDBObjectStore ->
          JSString ->
            JSRef [keyPath] -> JSRef Dictionary -> IO (JSRef IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex' ::
             (MonadIO m, ToJSString name, ToJSString keyPath,
              IsDictionary options) =>
               IDBObjectStore ->
                 name -> [keyPath] -> Maybe options -> m (Maybe IDBIndex)
createIndex' self name keyPath options
  = liftIO
      ((toJSRef keyPath >>=
          \ keyPath' ->
            js_createIndex' (unIDBObjectStore self) (toJSString name) keyPath'
          (maybe jsNull (unDictionary . toDictionary) options))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createIndex\"]($2, $3, $4)"
        js_createIndex ::
        JSRef IDBObjectStore ->
          JSString -> JSString -> JSRef Dictionary -> IO (JSRef IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex ::
            (MonadIO m, ToJSString name, ToJSString keyPath,
             IsDictionary options) =>
              IDBObjectStore ->
                name -> keyPath -> Maybe options -> m (Maybe IDBIndex)
createIndex self name keyPath options
  = liftIO
      ((js_createIndex (unIDBObjectStore self) (toJSString name)
          (toJSString keyPath)
          (maybe jsNull (unDictionary . toDictionary) options))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"index\"]($2)" js_index ::
        JSRef IDBObjectStore -> JSString -> IO (JSRef IDBIndex)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index ::
      (MonadIO m, ToJSString name) =>
        IDBObjectStore -> name -> m (Maybe IDBIndex)
index self name
  = liftIO
      ((js_index (unIDBObjectStore self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteIndex\"]($2)"
        js_deleteIndex :: JSRef IDBObjectStore -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.deleteIndex Mozilla IDBObjectStore.deleteIndex documentation> 
deleteIndex ::
            (MonadIO m, ToJSString name) => IDBObjectStore -> name -> m ()
deleteIndex self name
  = liftIO (js_deleteIndex (unIDBObjectStore self) (toJSString name))
 
foreign import javascript unsafe "$1[\"count\"]($2)" js_countRange
        ::
        JSRef IDBObjectStore -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRange ::
           (MonadIO m) =>
             IDBObjectStore -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
countRange self range
  = liftIO
      ((js_countRange (unIDBObjectStore self)
          (maybe jsNull pToJSRef range))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"count\"]($2)" js_count ::
        JSRef IDBObjectStore -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count ::
      (MonadIO m) => IDBObjectStore -> JSRef a -> m (Maybe IDBRequest)
count self key
  = liftIO ((js_count (unIDBObjectStore self) key) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef IDBObjectStore -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
getName ::
        (MonadIO m, FromJSString result) =>
          IDBObjectStore -> m (Maybe result)
getName self
  = liftIO
      (fromMaybeJSString <$> (js_getName (unIDBObjectStore self)))
 
foreign import javascript unsafe "$1[\"keyPath\"]" js_getKeyPath ::
        JSRef IDBObjectStore -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPath :: (MonadIO m) => IDBObjectStore -> m (Maybe IDBAny)
getKeyPath self
  = liftIO ((js_getKeyPath (unIDBObjectStore self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"indexNames\"]"
        js_getIndexNames ::
        JSRef IDBObjectStore -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
getIndexNames ::
              (MonadIO m) => IDBObjectStore -> m (Maybe DOMStringList)
getIndexNames self
  = liftIO ((js_getIndexNames (unIDBObjectStore self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"transaction\"]"
        js_getTransaction ::
        JSRef IDBObjectStore -> IO (JSRef IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
getTransaction ::
               (MonadIO m) => IDBObjectStore -> m (Maybe IDBTransaction)
getTransaction self
  = liftIO
      ((js_getTransaction (unIDBObjectStore self)) >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"autoIncrement\"] ? 1 : 0)"
        js_getAutoIncrement :: JSRef IDBObjectStore -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.autoIncrement Mozilla IDBObjectStore.autoIncrement documentation> 
getAutoIncrement :: (MonadIO m) => IDBObjectStore -> m Bool
getAutoIncrement self
  = liftIO (js_getAutoIncrement (unIDBObjectStore self))