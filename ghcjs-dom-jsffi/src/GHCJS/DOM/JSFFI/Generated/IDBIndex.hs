{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBIndex
       (js_openCursorRange, openCursorRange, openCursorRange_,
        openCursorRangeUnsafe, openCursorRangeUnchecked, js_openCursor,
        openCursor, openCursor_, openCursorUnsafe, openCursorUnchecked,
        js_openKeyCursorRange, openKeyCursorRange, openKeyCursorRange_,
        openKeyCursorRangeUnsafe, openKeyCursorRangeUnchecked,
        js_openKeyCursor, openKeyCursor, openKeyCursor_,
        openKeyCursorUnsafe, openKeyCursorUnchecked, js_getRange, getRange,
        getRange_, getRangeUnsafe, getRangeUnchecked, js_get, get, get_,
        getUnsafe, getUnchecked, js_getKeyRange, getKeyRange, getKeyRange_,
        getKeyRangeUnsafe, getKeyRangeUnchecked, js_getKey, getKey,
        getKey_, getKeyUnsafe, getKeyUnchecked, js_countRange, countRange,
        countRange_, countRangeUnsafe, countRangeUnchecked, js_count,
        count, count_, countUnsafe, countUnchecked, js_getName, getName,
        js_getObjectStore, getObjectStore, getObjectStoreUnsafe,
        getObjectStoreUnchecked, js_getKeyPath, getKeyPath,
        getKeyPathUnsafe, getKeyPathUnchecked, js_getMultiEntry,
        getMultiEntry, js_getUnique, getUnique, IDBIndex(..),
        gTypeIDBIndex)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange_ ::
                 (MonadIO m, ToJSString direction) =>
                   IDBIndex -> Maybe IDBKeyRange -> direction -> m ()
openCursorRange_ self range direction
  = liftIO
      (void
         (js_openCursorRange (self) (maybeToNullable range)
            (toJSString direction)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRangeUnsafe ::
                      (MonadIO m, ToJSString direction, HasCallStack) =>
                        IDBIndex -> Maybe IDBKeyRange -> direction -> m IDBRequest
openCursorRangeUnsafe self range direction
  = liftIO
      ((nullableToMaybe <$>
          (js_openCursorRange (self) (maybeToNullable range)
             (toJSString direction)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRangeUnchecked ::
                         (MonadIO m, ToJSString direction) =>
                           IDBIndex -> Maybe IDBKeyRange -> direction -> m IDBRequest
openCursorRangeUnchecked self range direction
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor_ ::
            (MonadIO m, ToJSString direction) =>
              IDBIndex -> JSVal -> direction -> m ()
openCursor_ self key direction
  = liftIO (void (js_openCursor (self) key (toJSString direction)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorUnsafe ::
                 (MonadIO m, ToJSString direction, HasCallStack) =>
                   IDBIndex -> JSVal -> direction -> m IDBRequest
openCursorUnsafe self key direction
  = liftIO
      ((nullableToMaybe <$>
          (js_openCursor (self) key (toJSString direction)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorUnchecked ::
                    (MonadIO m, ToJSString direction) =>
                      IDBIndex -> JSVal -> direction -> m IDBRequest
openCursorUnchecked self key direction
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange_ ::
                    (MonadIO m, ToJSString direction) =>
                      IDBIndex -> Maybe IDBKeyRange -> direction -> m ()
openKeyCursorRange_ self range direction
  = liftIO
      (void
         (js_openKeyCursorRange (self) (maybeToNullable range)
            (toJSString direction)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRangeUnsafe ::
                         (MonadIO m, ToJSString direction, HasCallStack) =>
                           IDBIndex -> Maybe IDBKeyRange -> direction -> m IDBRequest
openKeyCursorRangeUnsafe self range direction
  = liftIO
      ((nullableToMaybe <$>
          (js_openKeyCursorRange (self) (maybeToNullable range)
             (toJSString direction)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRangeUnchecked ::
                            (MonadIO m, ToJSString direction) =>
                              IDBIndex -> Maybe IDBKeyRange -> direction -> m IDBRequest
openKeyCursorRangeUnchecked self range direction
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor_ ::
               (MonadIO m, ToJSString direction) =>
                 IDBIndex -> JSVal -> direction -> m ()
openKeyCursor_ self key direction
  = liftIO
      (void (js_openKeyCursor (self) key (toJSString direction)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorUnsafe ::
                    (MonadIO m, ToJSString direction, HasCallStack) =>
                      IDBIndex -> JSVal -> direction -> m IDBRequest
openKeyCursorUnsafe self key direction
  = liftIO
      ((nullableToMaybe <$>
          (js_openKeyCursor (self) key (toJSString direction)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorUnchecked ::
                       (MonadIO m, ToJSString direction) =>
                         IDBIndex -> JSVal -> direction -> m IDBRequest
openKeyCursorUnchecked self key direction
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange_ :: (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m ()
getRange_ self key
  = liftIO (void (js_getRange (self) (maybeToNullable key)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRangeUnsafe ::
               (MonadIO m, HasCallStack) =>
                 IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getRangeUnsafe self key
  = liftIO
      ((nullableToMaybe <$> (js_getRange (self) (maybeToNullable key)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRangeUnchecked ::
                  (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getRangeUnchecked self key
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getRange (self) (maybeToNullable key)))
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_get ::
        IDBIndex -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get :: (MonadIO m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
get self key = liftIO (nullableToMaybe <$> (js_get (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get_ :: (MonadIO m) => IDBIndex -> JSVal -> m ()
get_ self key = liftIO (void (js_get (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getUnsafe ::
          (MonadIO m, HasCallStack) => IDBIndex -> JSVal -> m IDBRequest
getUnsafe self key
  = liftIO
      ((nullableToMaybe <$> (js_get (self) key)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getUnchecked :: (MonadIO m) => IDBIndex -> JSVal -> m IDBRequest
getUnchecked self key
  = liftIO (fromJust . nullableToMaybe <$> (js_get (self) key))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange_ ::
             (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m ()
getKeyRange_ self key
  = liftIO (void (js_getKeyRange (self) (maybeToNullable key)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRangeUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getKeyRangeUnsafe self key
  = liftIO
      ((nullableToMaybe <$>
          (js_getKeyRange (self) (maybeToNullable key)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRangeUnchecked ::
                     (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
getKeyRangeUnchecked self key
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getKeyRange (self) (maybeToNullable key)))
 
foreign import javascript unsafe "$1[\"getKey\"]($2)" js_getKey ::
        IDBIndex -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey :: (MonadIO m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
getKey self key
  = liftIO (nullableToMaybe <$> (js_getKey (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey_ :: (MonadIO m) => IDBIndex -> JSVal -> m ()
getKey_ self key = liftIO (void (js_getKey (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyUnsafe ::
             (MonadIO m, HasCallStack) => IDBIndex -> JSVal -> m IDBRequest
getKeyUnsafe self key
  = liftIO
      ((nullableToMaybe <$> (js_getKey (self) key)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyUnchecked :: (MonadIO m) => IDBIndex -> JSVal -> m IDBRequest
getKeyUnchecked self key
  = liftIO (fromJust . nullableToMaybe <$> (js_getKey (self) key))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange_ :: (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m ()
countRange_ self range
  = liftIO (void (js_countRange (self) (maybeToNullable range)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRangeUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
countRangeUnsafe self range
  = liftIO
      ((nullableToMaybe <$>
          (js_countRange (self) (maybeToNullable range)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRangeUnchecked ::
                    (MonadIO m) => IDBIndex -> Maybe IDBKeyRange -> m IDBRequest
countRangeUnchecked self range
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_countRange (self) (maybeToNullable range)))
 
foreign import javascript unsafe "$1[\"count\"]($2)" js_count ::
        IDBIndex -> JSVal -> IO (Nullable IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count :: (MonadIO m) => IDBIndex -> JSVal -> m (Maybe IDBRequest)
count self key = liftIO (nullableToMaybe <$> (js_count (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count_ :: (MonadIO m) => IDBIndex -> JSVal -> m ()
count_ self key = liftIO (void (js_count (self) key))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countUnsafe ::
            (MonadIO m, HasCallStack) => IDBIndex -> JSVal -> m IDBRequest
countUnsafe self key
  = liftIO
      ((nullableToMaybe <$> (js_count (self) key)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countUnchecked :: (MonadIO m) => IDBIndex -> JSVal -> m IDBRequest
countUnchecked self key
  = liftIO (fromJust . nullableToMaybe <$> (js_count (self) key))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
getObjectStoreUnsafe ::
                     (MonadIO m, HasCallStack) => IDBIndex -> m IDBObjectStore
getObjectStoreUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getObjectStore (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
getObjectStoreUnchecked ::
                        (MonadIO m) => IDBIndex -> m IDBObjectStore
getObjectStoreUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getObjectStore (self)))
 
foreign import javascript unsafe "$1[\"keyPath\"]" js_getKeyPath ::
        IDBIndex -> IO (Nullable IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPath :: (MonadIO m) => IDBIndex -> m (Maybe IDBAny)
getKeyPath self
  = liftIO (nullableToMaybe <$> (js_getKeyPath (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPathUnsafe ::
                 (MonadIO m, HasCallStack) => IDBIndex -> m IDBAny
getKeyPathUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getKeyPath (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPathUnchecked :: (MonadIO m) => IDBIndex -> m IDBAny
getKeyPathUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getKeyPath (self)))
 
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