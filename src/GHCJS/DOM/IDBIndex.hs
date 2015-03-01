{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBIndex
       (js_openCursorRange, openCursorRange, js_openCursor, openCursor,
        js_openKeyCursorRange, openKeyCursorRange, js_openKeyCursor,
        openKeyCursor, js_getRange, getRange, js_get, get, js_getKeyRange,
        getKeyRange, js_getKey, getKey, js_countRange, countRange,
        js_count, count, js_getName, getName, js_getObjectStore,
        getObjectStore, js_getKeyPath, getKeyPath, js_getMultiEntry,
        getMultiEntry, js_getUnique, getUnique, IDBIndex, castToIDBIndex,
        gTypeIDBIndex)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        js_openCursorRange ::
        JSRef IDBIndex ->
          JSRef IDBKeyRange -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursorRange ::
                (MonadIO m, ToJSString direction) =>
                  IDBIndex -> Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openCursorRange self range direction
  = liftIO
      ((js_openCursorRange (unIDBIndex self)
          (maybe jsNull unIDBKeyRange range)
          (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"openCursor\"]($2, $3)"
        js_openCursor ::
        JSRef IDBIndex -> JSRef a -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openCursor Mozilla IDBIndex.openCursor documentation> 
openCursor ::
           (MonadIO m, ToJSString direction) =>
             IDBIndex -> JSRef a -> direction -> m (Maybe IDBRequest)
openCursor self key direction
  = liftIO
      ((js_openCursor (unIDBIndex self) key (toJSString direction)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"openKeyCursor\"]($2, $3)"
        js_openKeyCursorRange ::
        JSRef IDBIndex ->
          JSRef IDBKeyRange -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursorRange ::
                   (MonadIO m, ToJSString direction) =>
                     IDBIndex -> Maybe IDBKeyRange -> direction -> m (Maybe IDBRequest)
openKeyCursorRange self range direction
  = liftIO
      ((js_openKeyCursorRange (unIDBIndex self)
          (maybe jsNull unIDBKeyRange range)
          (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"openKeyCursor\"]($2, $3)"
        js_openKeyCursor ::
        JSRef IDBIndex -> JSRef a -> JSString -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.openKeyCursor Mozilla IDBIndex.openKeyCursor documentation> 
openKeyCursor ::
              (MonadIO m, ToJSString direction) =>
                IDBIndex -> JSRef a -> direction -> m (Maybe IDBRequest)
openKeyCursor self key direction
  = liftIO
      ((js_openKeyCursor (unIDBIndex self) key (toJSString direction))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_getRange ::
        JSRef IDBIndex -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
getRange ::
         (MonadIO m) =>
           IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getRange self key
  = liftIO
      ((js_getRange (unIDBIndex self) (maybe jsNull unIDBKeyRange key))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_get ::
        JSRef IDBIndex -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.get Mozilla IDBIndex.get documentation> 
get :: (MonadIO m) => IDBIndex -> JSRef a -> m (Maybe IDBRequest)
get self key
  = liftIO ((js_get (unIDBIndex self) key) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getKey\"]($2)"
        js_getKeyRange ::
        JSRef IDBIndex -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKeyRange ::
            (MonadIO m) =>
              IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
getKeyRange self key
  = liftIO
      ((js_getKeyRange (unIDBIndex self)
          (maybe jsNull unIDBKeyRange key))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getKey\"]($2)" js_getKey ::
        JSRef IDBIndex -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.getKey Mozilla IDBIndex.getKey documentation> 
getKey ::
       (MonadIO m) => IDBIndex -> JSRef a -> m (Maybe IDBRequest)
getKey self key
  = liftIO ((js_getKey (unIDBIndex self) key) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"count\"]($2)" js_countRange
        :: JSRef IDBIndex -> JSRef IDBKeyRange -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
countRange ::
           (MonadIO m) =>
             IDBIndex -> Maybe IDBKeyRange -> m (Maybe IDBRequest)
countRange self range
  = liftIO
      ((js_countRange (unIDBIndex self)
          (maybe jsNull unIDBKeyRange range))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"count\"]($2)" js_count ::
        JSRef IDBIndex -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.count Mozilla IDBIndex.count documentation> 
count :: (MonadIO m) => IDBIndex -> JSRef a -> m (Maybe IDBRequest)
count self key
  = liftIO ((js_count (unIDBIndex self) key) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef IDBIndex -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.name Mozilla IDBIndex.name documentation> 
getName :: (MonadIO m, FromJSString result) => IDBIndex -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unIDBIndex self)))
 
foreign import javascript unsafe "$1[\"objectStore\"]"
        js_getObjectStore :: JSRef IDBIndex -> IO (JSRef IDBObjectStore)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.objectStore Mozilla IDBIndex.objectStore documentation> 
getObjectStore ::
               (MonadIO m) => IDBIndex -> m (Maybe IDBObjectStore)
getObjectStore self
  = liftIO ((js_getObjectStore (unIDBIndex self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"keyPath\"]" js_getKeyPath ::
        JSRef IDBIndex -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.keyPath Mozilla IDBIndex.keyPath documentation> 
getKeyPath :: (MonadIO m) => IDBIndex -> m (Maybe IDBAny)
getKeyPath self
  = liftIO ((js_getKeyPath (unIDBIndex self)) >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"multiEntry\"] ? 1 : 0)"
        js_getMultiEntry :: JSRef IDBIndex -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.multiEntry Mozilla IDBIndex.multiEntry documentation> 
getMultiEntry :: (MonadIO m) => IDBIndex -> m Bool
getMultiEntry self = liftIO (js_getMultiEntry (unIDBIndex self))
 
foreign import javascript unsafe "($1[\"unique\"] ? 1 : 0)"
        js_getUnique :: JSRef IDBIndex -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBIndex.unique Mozilla IDBIndex.unique documentation> 
getUnique :: (MonadIO m) => IDBIndex -> m Bool
getUnique self = liftIO (js_getUnique (unIDBIndex self))
#else
module GHCJS.DOM.IDBIndex (
  ) where
#endif
