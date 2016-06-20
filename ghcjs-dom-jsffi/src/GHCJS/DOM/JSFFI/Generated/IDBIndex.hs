{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.IDBIndex
       (js_openCursorRange, openCursorRange, js_openCursor, openCursor,
        js_openKeyCursorRange, openKeyCursorRange, js_openKeyCursor,
        openKeyCursor, js_getRange, getRange, js_get, get, js_getKeyRange,
        getKeyRange, js_getKey, getKey, js_countRange, countRange,
        js_count, count, js_getName, getName, js_getObjectStore,
        getObjectStore, js_getKeyPath, getKeyPath, js_getMultiEntry,
        getMultiEntry, js_getUnique, getUnique, IDBIndex, castToIDBIndex,
        gTypeIDBIndex)
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
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        js_openCursorRange ::
        IDBIndex ->
          Nullable IDBKeyRange -> JSString -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange ::
                (MonadIO m, ToJSString direction) =>
                  IDBIndex -> Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openCursorRange self range direction
  = liftIO
      (nullableToMaybe <$>
         (js_openCursorRange (self) (maybeToNullable range)
            (toJSString direction)))
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        js_openCursor ::
        IDBIndex -> JSVal -> JSString -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor ::
           (MonadIO m, ToJSString direction) =>
             IDBIndex -> JSVal -> direction -> m (Maybe IDBRequest)
openCursor self key direction
  = liftIO
      (nullableToMaybe <$>
         (js_openCursor (self) key (toJSString direction)))
 
foreign import javascript unsafe "$1[\"openKeyCursor\"]($2, $3)"
        js_openKeyCursorRange ::
        IDBIndex ->
          Nullable IDBKeyRange -> JSString -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange ::
                   (MonadIO m, ToJSString direction) =>
                     IDBIndex -> Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openKeyCursorRange self range direction
  = liftIO
      (nullableToMaybe <$>
         (js_openKeyCursorRange (self) (maybeToNullable range)
            (toJSString direction)))
 
foreign import javascript unsafe "$1[\"openKeyCursor\"]($2, $3)"
        js_openKeyCursor ::
        IDBIndex -> JSVal -> JSString -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor ::
              (MonadIO m, ToJSString direction) =>
                IDBIndex -> JSVal -> direction -> m (Maybe IDBRequest)
openKeyCursor self key direction
  = liftIO
      (nullableToMaybe <$>
         (js_openKeyCursor (self) key (toJSString direction)))
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_getRange ::
        IDBIndex -> Nullable IDBKeyRange -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange ::
         (MonadIO m) =>
           IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getRange self key
  = liftIO
      (nullableToMaybe <$> (js_getRange (self) (maybeToNullable key)))
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_get ::
        IDBIndex -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get :: (MonadIO m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
get self key = liftIO (nullableToMaybe <$> (js_get (self) key))
 
foreign import javascript unsafe "$1[\"getKey\"]($2)"
        js_getKeyRange ::
        IDBIndex -> Nullable IDBKeyRange -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange ::
            (MonadIO m) =>
              IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getKeyRange self key
  = liftIO
      (nullableToMaybe <$> (js_getKeyRange (self) (maybeToNullable key)))
 
foreign import javascript unsafe "$1[\"getKey\"]($2)" js_getKey ::
        IDBIndex -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey :: (MonadIO m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
getKey self key
  = liftIO (nullableToMaybe <$> (js_getKey (self) key))
 
foreign import javascript unsafe "$1[\"count\"]($2)" js_countRange
        :: IDBIndex -> Nullable IDBKeyRange -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange ::
           (MonadIO m) =>
             IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
countRange self range
  = liftIO
      (nullableToMaybe <$>
         (js_countRange (self) (maybeToNullable range)))
 
foreign import javascript unsafe "$1[\"count\"]($2)" js_count ::
        IDBIndex -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count :: (MonadIO m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
count self key = liftIO (nullableToMaybe <$> (js_count (self) key))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        IDBIndex -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.name Mozilla IDBIndex.name documentation> 
getName :: (MonadIO m, FromJSString result) => IDBIndex -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"objectStore\"]"
        js_getObjectStore :: IDBIndex -> IO (Nullable IDBObjectStore)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
getObjectStore ::
               (MonadIO m) => IDBIndex -> m (Maybe IDBObjectStore)
getObjectStore self
  = liftIO (nullableToMaybe <$> (js_getObjectStore (self)))
 
foreign import javascript unsafe "$1[\"keyPath\"]" js_getKeyPath ::
        IDBIndex -> IO (Nullable IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPath :: (MonadIO m) => IDBIndex -> m (Maybe IDBAny)
getKeyPath self
  = liftIO (nullableToMaybe <$> (js_getKeyPath (self)))
 
foreign import javascript unsafe "($1[\"multiEntry\"] ? 1 : 0)"
        js_getMultiEntry :: IDBIndex -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.multiEntry Mozilla IDBIndex.multiEntry documentation> 
getMultiEntry :: (MonadIO m) => IDBIndex -> m Bool
getMultiEntry self = liftIO (js_getMultiEntry (self))
 
foreign import javascript unsafe "($1[\"unique\"] ? 1 : 0)"
        js_getUnique :: IDBIndex -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.unique Mozilla IDBIndex.unique documentation> 
getUnique :: (MonadIO m) => IDBIndex -> m Bool
getUnique self = liftIO (js_getUnique (self))