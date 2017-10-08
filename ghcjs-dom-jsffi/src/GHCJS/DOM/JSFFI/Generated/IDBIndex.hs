{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBIndex
       (js_openCursorRange, openCursorRange, openCursorRange_,
        js_openCursor, openCursor, openCursor_, js_openKeyCursorRange,
        openKeyCursorRange, openKeyCursorRange_, js_openKeyCursor,
        openKeyCursor, openKeyCursor_, js_getRange, getRange, getRange_,
        js_get, get, get_, js_getKeyRange, getKeyRange, getKeyRange_,
        js_getKey, getKey, getKey_, js_getAllRange, getAllRange,
        getAllRange_, js_getAll, getAll, getAll_, js_getAllKeysRange,
        getAllKeysRange, getAllKeysRange_, js_getAllKeys, getAllKeys,
        getAllKeys_, js_countRange, countRange, countRange_, js_count,
        count, count_, js_setName, setName, js_getName, getName,
        js_getObjectStore, getObjectStore, js_getKeyPath, getKeyPath,
        getKeyPathUnsafe, getKeyPathUnchecked, js_getMultiEntry,
        getMultiEntry, js_getUnique, getUnique, IDBIndex(..),
        gTypeIDBIndex)
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
 
foreign import javascript safe "$1[\"openCursor\"]($2, $3)"
        js_openCursorRange ::
        IDBIndex ->
          Optional IDBKeyRange ->
            Optional IDBCursorDirection -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange ::
                (MonadIO m) =>
                  IDBIndex ->
                    Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m IDBRequest
openCursorRange self range direction
  = liftIO
      (js_openCursorRange self (maybeToOptional range)
         (maybeToOptional direction))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange_ ::
                 (MonadIO m) =>
                   IDBIndex -> Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m ()
openCursorRange_ self range direction
  = liftIO
      (void
         (js_openCursorRange self (maybeToOptional range)
            (maybeToOptional direction)))
 
foreign import javascript safe "$1[\"openCursor\"]($2, $3)"
        js_openCursor ::
        IDBIndex -> JSVal -> Optional IDBCursorDirection -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor ::
           (MonadIO m, ToJSVal key) =>
             IDBIndex -> key -> Maybe IDBCursorDirection -> m IDBRequest
openCursor self key direction
  = liftIO
      (toJSVal key >>= \ key' -> js_openCursor self key'
         (maybeToOptional direction))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor_ ::
            (MonadIO m, ToJSVal key) =>
              IDBIndex -> key -> Maybe IDBCursorDirection -> m ()
openCursor_ self key direction
  = liftIO
      (void
         (toJSVal key >>= \ key' -> js_openCursor self key'
            (maybeToOptional direction)))
 
foreign import javascript safe "$1[\"openKeyCursor\"]($2, $3)"
        js_openKeyCursorRange ::
        IDBIndex ->
          Optional IDBKeyRange ->
            Optional IDBCursorDirection -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange ::
                   (MonadIO m) =>
                     IDBIndex ->
                       Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m IDBRequest
openKeyCursorRange self range direction
  = liftIO
      (js_openKeyCursorRange self (maybeToOptional range)
         (maybeToOptional direction))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange_ ::
                    (MonadIO m) =>
                      IDBIndex -> Maybe IDBKeyRange -> Maybe IDBCursorDirection -> m ()
openKeyCursorRange_ self range direction
  = liftIO
      (void
         (js_openKeyCursorRange self (maybeToOptional range)
            (maybeToOptional direction)))
 
foreign import javascript safe "$1[\"openKeyCursor\"]($2, $3)"
        js_openKeyCursor ::
        IDBIndex -> JSVal -> Optional IDBCursorDirection -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor ::
              (MonadIO m, ToJSVal key) =>
                IDBIndex -> key -> Maybe IDBCursorDirection -> m IDBRequest
openKeyCursor self key direction
  = liftIO
      (toJSVal key >>= \ key' -> js_openKeyCursor self key'
         (maybeToOptional direction))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor_ ::
               (MonadIO m, ToJSVal key) =>
                 IDBIndex -> key -> Maybe IDBCursorDirection -> m ()
openKeyCursor_ self key direction
  = liftIO
      (void
         (toJSVal key >>= \ key' -> js_openKeyCursor self key'
            (maybeToOptional direction)))
 
foreign import javascript safe "$1[\"get\"]($2)" js_getRange ::
        IDBIndex -> Optional IDBKeyRange -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange ::
         (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getRange self key = liftIO (js_getRange self (maybeToOptional key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange_ :: (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m ()
getRange_ self key
  = liftIO (void (js_getRange self (maybeToOptional key)))
 
foreign import javascript safe "$1[\"get\"]($2)" js_get ::
        IDBIndex -> JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get :: (MonadIO m, ToJSVal key) => IDBIndex -> key -> m IDBRequest
get self key = liftIO (toJSVal key >>= \ key' -> js_get self key')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get_ :: (MonadIO m, ToJSVal key) => IDBIndex -> key -> m ()
get_ self key
  = liftIO (void (toJSVal key >>= \ key' -> js_get self key'))
 
foreign import javascript safe "$1[\"getKey\"]($2)" js_getKeyRange
        :: IDBIndex -> Optional IDBKeyRange -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange ::
            (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getKeyRange self key
  = liftIO (js_getKeyRange self (maybeToOptional key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange_ ::
             (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m ()
getKeyRange_ self key
  = liftIO (void (js_getKeyRange self (maybeToOptional key)))
 
foreign import javascript safe "$1[\"getKey\"]($2)" js_getKey ::
        IDBIndex -> JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey ::
       (MonadIO m, ToJSVal key) => IDBIndex -> key -> m IDBRequest
getKey self key
  = liftIO (toJSVal key >>= \ key' -> js_getKey self key')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey_ :: (MonadIO m, ToJSVal key) => IDBIndex -> key -> m ()
getKey_ self key
  = liftIO (void (toJSVal key >>= \ key' -> js_getKey self key'))
 
foreign import javascript safe "$1[\"getAll\"]($2, $3)"
        js_getAllRange ::
        IDBIndex -> Optional IDBKeyRange -> Optional Word -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAll Mozilla IDBIndex.getAll documentation> 
getAllRange ::
            (MonadIO m) =>
              IDBIndex -> Maybe IDBKeyRange -> Maybe Word -> m IDBRequest
getAllRange self range count
  = liftIO
      (js_getAllRange self (maybeToOptional range)
         (maybeToOptional count))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAll Mozilla IDBIndex.getAll documentation> 
getAllRange_ ::
             (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> Maybe Word -> m ()
getAllRange_ self range count
  = liftIO
      (void
         (js_getAllRange self (maybeToOptional range)
            (maybeToOptional count)))
 
foreign import javascript safe "$1[\"getAll\"]($2, $3)" js_getAll
        :: IDBIndex -> JSVal -> Optional Word -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAll Mozilla IDBIndex.getAll documentation> 
getAll ::
       (MonadIO m, ToJSVal key) =>
         IDBIndex -> key -> Maybe Word -> m IDBRequest
getAll self key count
  = liftIO
      (toJSVal key >>= \ key' -> js_getAll self key'
         (maybeToOptional count))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAll Mozilla IDBIndex.getAll documentation> 
getAll_ ::
        (MonadIO m, ToJSVal key) => IDBIndex -> key -> Maybe Word -> m ()
getAll_ self key count
  = liftIO
      (void
         (toJSVal key >>= \ key' -> js_getAll self key'
            (maybeToOptional count)))
 
foreign import javascript safe "$1[\"getAllKeys\"]($2, $3)"
        js_getAllKeysRange ::
        IDBIndex -> Optional IDBKeyRange -> Optional Word -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAllKeys Mozilla IDBIndex.getAllKeys documentation> 
getAllKeysRange ::
                (MonadIO m) =>
                  IDBIndex -> Maybe IDBKeyRange -> Maybe Word -> m IDBRequest
getAllKeysRange self range count
  = liftIO
      (js_getAllKeysRange self (maybeToOptional range)
         (maybeToOptional count))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAllKeys Mozilla IDBIndex.getAllKeys documentation> 
getAllKeysRange_ ::
                 (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> Maybe Word -> m ()
getAllKeysRange_ self range count
  = liftIO
      (void
         (js_getAllKeysRange self (maybeToOptional range)
            (maybeToOptional count)))
 
foreign import javascript safe "$1[\"getAllKeys\"]($2, $3)"
        js_getAllKeys ::
        IDBIndex -> JSVal -> Optional Word -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAllKeys Mozilla IDBIndex.getAllKeys documentation> 
getAllKeys ::
           (MonadIO m, ToJSVal key) =>
             IDBIndex -> key -> Maybe Word -> m IDBRequest
getAllKeys self key count
  = liftIO
      (toJSVal key >>= \ key' -> js_getAllKeys self key'
         (maybeToOptional count))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getAllKeys Mozilla IDBIndex.getAllKeys documentation> 
getAllKeys_ ::
            (MonadIO m, ToJSVal key) => IDBIndex -> key -> Maybe Word -> m ()
getAllKeys_ self key count
  = liftIO
      (void
         (toJSVal key >>= \ key' -> js_getAllKeys self key'
            (maybeToOptional count)))
 
foreign import javascript safe "$1[\"count\"]($2)" js_countRange ::
        IDBIndex -> Optional IDBKeyRange -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange ::
           (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
countRange self range
  = liftIO (js_countRange self (maybeToOptional range))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange_ :: (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m ()
countRange_ self range
  = liftIO (void (js_countRange self (maybeToOptional range)))
 
foreign import javascript safe "$1[\"count\"]($2)" js_count ::
        IDBIndex -> JSVal -> IO IDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count ::
      (MonadIO m, ToJSVal key) => IDBIndex -> key -> m IDBRequest
count self key
  = liftIO (toJSVal key >>= \ key' -> js_count self key')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count_ :: (MonadIO m, ToJSVal key) => IDBIndex -> key -> m ()
count_ self key
  = liftIO (void (toJSVal key >>= \ key' -> js_count self key'))
 
foreign import javascript safe "$1[\"name\"] = $2;" js_setName ::
        IDBIndex -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.name Mozilla IDBIndex.name documentation> 
setName :: (MonadIO m, ToJSString val) => IDBIndex -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        IDBIndex -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.name Mozilla IDBIndex.name documentation> 
getName :: (MonadIO m, FromJSString result) => IDBIndex -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"objectStore\"]"
        js_getObjectStore :: IDBIndex -> IO IDBObjectStore

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
getObjectStore :: (MonadIO m) => IDBIndex -> m IDBObjectStore
getObjectStore self = liftIO (js_getObjectStore self)
 
foreign import javascript unsafe "$1[\"keyPath\"]" js_getKeyPath ::
        IDBIndex -> IO (Nullable IDBKeyPath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPath :: (MonadIO m) => IDBIndex -> m (Maybe IDBKeyPath)
getKeyPath self = liftIO (nullableToMaybe <$> (js_getKeyPath self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPathUnsafe ::
                 (MonadIO m, HasCallStack) => IDBIndex -> m IDBKeyPath
getKeyPathUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getKeyPath self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPathUnchecked :: (MonadIO m) => IDBIndex -> m IDBKeyPath
getKeyPathUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getKeyPath self))
 
foreign import javascript unsafe "($1[\"multiEntry\"] ? 1 : 0)"
        js_getMultiEntry :: IDBIndex -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.multiEntry Mozilla IDBIndex.multiEntry documentation> 
getMultiEntry :: (MonadIO m) => IDBIndex -> m Bool
getMultiEntry self = liftIO (js_getMultiEntry self)
 
foreign import javascript unsafe "($1[\"unique\"] ? 1 : 0)"
        js_getUnique :: IDBIndex -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.unique Mozilla IDBIndex.unique documentation> 
getUnique :: (MonadIO m) => IDBIndex -> m Bool
getUnique self = liftIO (js_getUnique self)