{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBObjectStore
       (js_put, put, put_, js_add, add, add_, js_deleteRange, deleteRange,
        deleteRange_, js_delete, delete, delete_, js_getRange, getRange,
        getRange_, js_get, get, get_, js_getKeyRange, getKeyRange,
        getKeyRange_, js_getKey, getKey, getKey_, js_clear, clear, clear_,
        js_openCursorRange, openCursorRange, openCursorRange_,
        js_openCursor, openCursor, openCursor_, js_openKeyCursorRange,
        openKeyCursorRange, openKeyCursorRange_, js_openKeyCursor,
        openKeyCursor, openKeyCursor_, js_getAllRange, getAllRange,
        getAllRange_, js_getAll, getAll, getAll_, js_getAllKeysRange,
        getAllKeysRange, getAllKeysRange_, js_getAllKeys, getAllKeys,
        getAllKeys_, js_createIndex, createIndex, createIndex_, js_index,
        index, index_, js_deleteIndex, deleteIndex, js_countRange,
        countRange, countRange_, js_count, count, count_, js_setName,
        setName, js_getName, getName, js_getKeyPath, getKeyPath,
        getKeyPathUnsafe, getKeyPathUnchecked, js_getIndexNames,
        getIndexNames, js_getTransaction, getTransaction,
        js_getAutoIncrement, getAutoIncrement, IDBObjectStore(..),
        gTypeIDBObjectStore)
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
 
foreign import javascript safe "$1[\"put\"]($2, $3)" js_put ::
        IDBObjectStore -> JSVal -> Optional JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
put ::
    (MonadIO m, ToJSVal value, ToJSVal key) =>
      IDBObjectStore -> value -> Maybe key -> m IDBRequest
put self value key
  = liftIO
      (mapM toJSVal key >>=
         \ key' ->
           toJSVal value >>= \ value' -> js_put self value'
             (maybeToOptional key'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.put Mozilla IDBObjectStore.put documentation> 
put_ ::
     (MonadIO m, ToJSVal value, ToJSVal key) =>
       IDBObjectStore -> value -> Maybe key -> m ()
put_ self value key
  = liftIO
      (void
         (mapM toJSVal key >>=
            \ key' ->
              toJSVal value >>= \ value' -> js_put self value'
                (maybeToOptional key')))
 
foreign import javascript safe "$1[\"add\"]($2, $3)" js_add ::
        IDBObjectStore -> JSVal -> Optional JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add ::
    (MonadIO m, ToJSVal value, ToJSVal key) =>
      IDBObjectStore -> value -> Maybe key -> m IDBRequest
add self value key
  = liftIO
      (mapM toJSVal key >>=
         \ key' ->
           toJSVal value >>= \ value' -> js_add self value'
             (maybeToOptional key'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.add Mozilla IDBObjectStore.add documentation> 
add_ ::
     (MonadIO m, ToJSVal value, ToJSVal key) =>
       IDBObjectStore -> value -> Maybe key -> m ()
add_ self value key
  = liftIO
      (void
         (mapM toJSVal key >>=
            \ key' ->
              toJSVal value >>= \ value' -> js_add self value'
                (maybeToOptional key')))
 
foreign import javascript safe "$1[\"delete\"]($2)" js_deleteRange
        :: IDBObjectStore -> Optional IDBKeyRange -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange ::
            (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
deleteRange self keyRange
  = liftIO (js_deleteRange self (maybeToOptional keyRange))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
deleteRange_ ::
             (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
deleteRange_ self keyRange
  = liftIO (void (js_deleteRange self (maybeToOptional keyRange)))
 
foreign import javascript safe "$1[\"delete\"]($2)" js_delete ::
        IDBObjectStore -> JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete ::
       (MonadIO m, ToJSVal key) => IDBObjectStore -> key -> m IDBRequest
delete self key
  = liftIO (toJSVal key >>= \ key' -> js_delete self key')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.delete Mozilla IDBObjectStore.delete documentation> 
delete_ ::
        (MonadIO m, ToJSVal key) => IDBObjectStore -> key -> m ()
delete_ self key
  = liftIO (void (toJSVal key >>= \ key' -> js_delete self key'))
 
foreign import javascript safe "$1[\"get\"]($2)" js_getRange ::
        IDBObjectStore -> Optional IDBKeyRange -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange ::
         (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
getRange self key = liftIO (js_getRange self (maybeToOptional key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
getRange_ ::
          (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
getRange_ self key
  = liftIO (void (js_getRange self (maybeToOptional key)))
 
foreign import javascript safe "$1[\"get\"]($2)" js_get ::
        IDBObjectStore -> JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get ::
    (MonadIO m, ToJSVal key) => IDBObjectStore -> key -> m IDBRequest
get self key = liftIO (toJSVal key >>= \ key' -> js_get self key')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.get Mozilla IDBObjectStore.get documentation> 
get_ :: (MonadIO m, ToJSVal key) => IDBObjectStore -> key -> m ()
get_ self key
  = liftIO (void (toJSVal key >>= \ key' -> js_get self key'))
 
foreign import javascript safe "$1[\"getKey\"]($2)" js_getKeyRange
        :: IDBObjectStore -> Optional IDBKeyRange -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getKey Mozilla IDBObjectStore.getKey documentation> 
getKeyRange ::
            (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
getKeyRange self key
  = liftIO (js_getKeyRange self (maybeToOptional key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getKey Mozilla IDBObjectStore.getKey documentation> 
getKeyRange_ ::
             (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
getKeyRange_ self key
  = liftIO (void (js_getKeyRange self (maybeToOptional key)))
 
foreign import javascript safe "$1[\"getKey\"]($2)" js_getKey ::
        IDBObjectStore -> JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getKey Mozilla IDBObjectStore.getKey documentation> 
getKey ::
       (MonadIO m, ToJSVal key) => IDBObjectStore -> key -> m IDBRequest
getKey self key
  = liftIO (toJSVal key >>= \ key' -> js_getKey self key')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getKey Mozilla IDBObjectStore.getKey documentation> 
getKey_ ::
        (MonadIO m, ToJSVal key) => IDBObjectStore -> key -> m ()
getKey_ self key
  = liftIO (void (toJSVal key >>= \ key' -> js_getKey self key'))
 
foreign import javascript safe "$1[\"clear\"]()" js_clear ::
        IDBObjectStore -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear :: (MonadIO m) => IDBObjectStore -> m IDBRequest
clear self = liftIO (js_clear self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.clear Mozilla IDBObjectStore.clear documentation> 
clear_ :: (MonadIO m) => IDBObjectStore -> m ()
clear_ self = liftIO (void (js_clear self))
 
foreign import javascript safe "$1[\"openCursor\"]($2, $3)"
        js_openCursorRange ::
        IDBObjectStore ->
          Optional IDBKeyRange ->
            Optional IDBCursorDirection -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRange ::
                (MonadIO m) =>
                  IDBObjectStore ->
                    Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m IDBRequest
openCursorRange self range direction
  = liftIO
      (js_openCursorRange self (maybeToOptional range)
         (maybeToOptional direction))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursorRange_ ::
                 (MonadIO m) =>
                   IDBObjectStore ->
                     Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m ()
openCursorRange_ self range direction
  = liftIO
      (void
         (js_openCursorRange self (maybeToOptional range)
            (maybeToOptional direction)))
 
foreign import javascript safe "$1[\"openCursor\"]($2, $3)"
        js_openCursor ::
        IDBObjectStore ->
          JSVal -> Optional IDBCursorDirection -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor ::
           (MonadIO m, ToJSVal key) =>
             IDBObjectStore -> key -> Maybe IDBCursorDirection -> m IDBRequest
openCursor self key direction
  = liftIO
      (toJSVal key >>= \ key' -> js_openCursor self key'
         (maybeToOptional direction))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openCursor Mozilla IDBObjectStore.openCursor documentation> 
openCursor_ ::
            (MonadIO m, ToJSVal key) =>
              IDBObjectStore -> key -> Maybe IDBCursorDirection -> m ()
openCursor_ self key direction
  = liftIO
      (void
         (toJSVal key >>= \ key' -> js_openCursor self key'
            (maybeToOptional direction)))
 
foreign import javascript safe "$1[\"openKeyCursor\"]($2, $3)"
        js_openKeyCursorRange ::
        IDBObjectStore ->
          Optional IDBKeyRange ->
            Optional IDBCursorDirection -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openKeyCursor Mozilla IDBObjectStore.openKeyCursor documentation> 
openKeyCursorRange ::
                   (MonadIO m) =>
                     IDBObjectStore ->
                       Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m IDBRequest
openKeyCursorRange self range direction
  = liftIO
      (js_openKeyCursorRange self (maybeToOptional range)
         (maybeToOptional direction))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openKeyCursor Mozilla IDBObjectStore.openKeyCursor documentation> 
openKeyCursorRange_ ::
                    (MonadIO m) =>
                      IDBObjectStore ->
                        Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m ()
openKeyCursorRange_ self range direction
  = liftIO
      (void
         (js_openKeyCursorRange self (maybeToOptional range)
            (maybeToOptional direction)))
 
foreign import javascript safe "$1[\"openKeyCursor\"]($2, $3)"
        js_openKeyCursor ::
        IDBObjectStore ->
          JSVal -> Optional IDBCursorDirection -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openKeyCursor Mozilla IDBObjectStore.openKeyCursor documentation> 
openKeyCursor ::
              (MonadIO m, ToJSVal key) =>
                IDBObjectStore -> key -> Maybe IDBCursorDirection -> m IDBRequest
openKeyCursor self key direction
  = liftIO
      (toJSVal key >>= \ key' -> js_openKeyCursor self key'
         (maybeToOptional direction))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.openKeyCursor Mozilla IDBObjectStore.openKeyCursor documentation> 
openKeyCursor_ ::
               (MonadIO m, ToJSVal key) =>
                 IDBObjectStore -> key -> Maybe IDBCursorDirection -> m ()
openKeyCursor_ self key direction
  = liftIO
      (void
         (toJSVal key >>= \ key' -> js_openKeyCursor self key'
            (maybeToOptional direction)))
 
foreign import javascript safe "$1[\"getAll\"]($2, $3)"
        js_getAllRange ::
        IDBObjectStore ->
          Optional IDBKeyRange -> Optional Word -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAll Mozilla IDBObjectStore.getAll documentation> 
getAllRange ::
            (MonadIO m) =>
              IDBObjectStore -> Maybe IDBKeyRange -> Maybe Word -> m IDBRequest
getAllRange self range count
  = liftIO
      (js_getAllRange self (maybeToOptional range)
         (maybeToOptional count))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAll Mozilla IDBObjectStore.getAll documentation> 
getAllRange_ ::
             (MonadIO m) =>
               IDBObjectStore -> Maybe IDBKeyRange -> Maybe Word -> m ()
getAllRange_ self range count
  = liftIO
      (void
         (js_getAllRange self (maybeToOptional range)
            (maybeToOptional count)))
 
foreign import javascript safe "$1[\"getAll\"]($2, $3)" js_getAll
        :: IDBObjectStore -> JSVal -> Optional Word -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAll Mozilla IDBObjectStore.getAll documentation> 
getAll ::
       (MonadIO m, ToJSVal key) =>
         IDBObjectStore -> key -> Maybe Word -> m IDBRequest
getAll self key count
  = liftIO
      (toJSVal key >>= \ key' -> js_getAll self key'
         (maybeToOptional count))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAll Mozilla IDBObjectStore.getAll documentation> 
getAll_ ::
        (MonadIO m, ToJSVal key) =>
          IDBObjectStore -> key -> Maybe Word -> m ()
getAll_ self key count
  = liftIO
      (void
         (toJSVal key >>= \ key' -> js_getAll self key'
            (maybeToOptional count)))
 
foreign import javascript safe "$1[\"getAllKeys\"]($2, $3)"
        js_getAllKeysRange ::
        IDBObjectStore ->
          Optional IDBKeyRange -> Optional Word -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAllKeys Mozilla IDBObjectStore.getAllKeys documentation> 
getAllKeysRange ::
                (MonadIO m) =>
                  IDBObjectStore -> Maybe IDBKeyRange -> Maybe Word -> m IDBRequest
getAllKeysRange self range count
  = liftIO
      (js_getAllKeysRange self (maybeToOptional range)
         (maybeToOptional count))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAllKeys Mozilla IDBObjectStore.getAllKeys documentation> 
getAllKeysRange_ ::
                 (MonadIO m) =>
                   IDBObjectStore -> Maybe IDBKeyRange -> Maybe Word -> m ()
getAllKeysRange_ self range count
  = liftIO
      (void
         (js_getAllKeysRange self (maybeToOptional range)
            (maybeToOptional count)))
 
foreign import javascript safe "$1[\"getAllKeys\"]($2, $3)"
        js_getAllKeys ::
        IDBObjectStore -> JSVal -> Optional Word -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAllKeys Mozilla IDBObjectStore.getAllKeys documentation> 
getAllKeys ::
           (MonadIO m, ToJSVal key) =>
             IDBObjectStore -> key -> Maybe Word -> m IDBRequest
getAllKeys self key count
  = liftIO
      (toJSVal key >>= \ key' -> js_getAllKeys self key'
         (maybeToOptional count))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.getAllKeys Mozilla IDBObjectStore.getAllKeys documentation> 
getAllKeys_ ::
            (MonadIO m, ToJSVal key) =>
              IDBObjectStore -> key -> Maybe Word -> m ()
getAllKeys_ self key count
  = liftIO
      (void
         (toJSVal key >>= \ key' -> js_getAllKeys self key'
            (maybeToOptional count)))
 
foreign import javascript safe "$1[\"createIndex\"]($2, $3, $4)"
        js_createIndex ::
        IDBObjectStore ->
          JSString ->
            StringOrStrings -> Optional IDBIndexParameters -> IO IDBIndex

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex ::
            (MonadIO m, ToJSString name, IsStringOrStrings keyPath) =>
              IDBObjectStore ->
                name -> keyPath -> Maybe IDBIndexParameters -> m IDBIndex
createIndex self name keyPath options
  = liftIO
      (toJSVal keyPath >>=
         \ keyPath' ->
           js_createIndex self (toJSString name) (StringOrStrings keyPath')
         (maybeToOptional options))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.createIndex Mozilla IDBObjectStore.createIndex documentation> 
createIndex_ ::
             (MonadIO m, ToJSString name, IsStringOrStrings keyPath) =>
               IDBObjectStore ->
                 name -> keyPath -> Maybe IDBIndexParameters -> m ()
createIndex_ self name keyPath options
  = liftIO
      (void
         (toJSVal keyPath >>=
            \ keyPath' ->
              js_createIndex self (toJSString name) (StringOrStrings keyPath')
            (maybeToOptional options)))
 
foreign import javascript safe "$1[\"index\"]($2)" js_index ::
        IDBObjectStore -> JSString -> IO IDBIndex

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index ::
      (MonadIO m, ToJSString name) =>
        IDBObjectStore -> name -> m IDBIndex
index self name = liftIO (js_index self (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.index Mozilla IDBObjectStore.index documentation> 
index_ ::
       (MonadIO m, ToJSString name) => IDBObjectStore -> name -> m ()
index_ self name = liftIO (void (js_index self (toJSString name)))
 
foreign import javascript safe "$1[\"deleteIndex\"]($2)"
        js_deleteIndex :: IDBObjectStore -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.deleteIndex Mozilla IDBObjectStore.deleteIndex documentation> 
deleteIndex ::
            (MonadIO m, ToJSString name) => IDBObjectStore -> name -> m ()
deleteIndex self name
  = liftIO (js_deleteIndex self (toJSString name))
 
foreign import javascript safe "$1[\"count\"]($2)" js_countRange ::
        IDBObjectStore -> Optional IDBKeyRange -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRange ::
           (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m IDBRequest
countRange self range
  = liftIO (js_countRange self (maybeToOptional range))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
countRange_ ::
            (MonadIO m) => IDBObjectStore -> Maybe IDBKeyRange -> m ()
countRange_ self range
  = liftIO (void (js_countRange self (maybeToOptional range)))
 
foreign import javascript safe "$1[\"count\"]($2)" js_count ::
        IDBObjectStore -> JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count ::
      (MonadIO m, ToJSVal key) => IDBObjectStore -> key -> m IDBRequest
count self key
  = liftIO (toJSVal key >>= \ key' -> js_count self key')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.count Mozilla IDBObjectStore.count documentation> 
count_ :: (MonadIO m, ToJSVal key) => IDBObjectStore -> key -> m ()
count_ self key
  = liftIO (void (toJSVal key >>= \ key' -> js_count self key'))
 
foreign import javascript safe "$1[\"name\"] = $2;" js_setName ::
        IDBObjectStore -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => IDBObjectStore -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        IDBObjectStore -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.name Mozilla IDBObjectStore.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => IDBObjectStore -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"keyPath\"]" js_getKeyPath ::
        IDBObjectStore -> IO (Nullable IDBKeyPath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPath :: (MonadIO m) => IDBObjectStore -> m (Maybe IDBKeyPath)
getKeyPath self = liftIO (nullableToMaybe <$> (js_getKeyPath self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPathUnsafe ::
                 (MonadIO m, HasCallStack) => IDBObjectStore -> m IDBKeyPath
getKeyPathUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getKeyPath self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.keyPath Mozilla IDBObjectStore.keyPath documentation> 
getKeyPathUnchecked ::
                    (MonadIO m) => IDBObjectStore -> m IDBKeyPath
getKeyPathUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getKeyPath self))
 
foreign import javascript unsafe "$1[\"indexNames\"]"
        js_getIndexNames :: IDBObjectStore -> IO DOMStringList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.indexNames Mozilla IDBObjectStore.indexNames documentation> 
getIndexNames :: (MonadIO m) => IDBObjectStore -> m DOMStringList
getIndexNames self = liftIO (js_getIndexNames self)
 
foreign import javascript unsafe "$1[\"transaction\"]"
        js_getTransaction :: IDBObjectStore -> IO IDBTransaction

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.transaction Mozilla IDBObjectStore.transaction documentation> 
getTransaction :: (MonadIO m) => IDBObjectStore -> m IDBTransaction
getTransaction self = liftIO (js_getTransaction self)
 
foreign import javascript unsafe "($1[\"autoIncrement\"] ? 1 : 0)"
        js_getAutoIncrement :: IDBObjectStore -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBObjectStore.autoIncrement Mozilla IDBObjectStore.autoIncrement documentation> 
getAutoIncrement :: (MonadIO m) => IDBObjectStore -> m Bool
getAutoIncrement self = liftIO (js_getAutoIncrement self)