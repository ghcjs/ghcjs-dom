{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.IDBDatabase
       (js_createObjectStore, createObjectStore, js_deleteObjectStore,
        deleteObjectStore, js_transaction, transaction, js_transaction',
        transaction', js_close, close, js_getName, getName, js_getVersion,
        getVersion, js_getObjectStoreNames, getObjectStoreNames, abort,
        error, versionChange, IDBDatabase, castToIDBDatabase,
        gTypeIDBDatabase)
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
 
foreign import javascript unsafe
        "$1[\"createObjectStore\"]($2, $3)" js_createObjectStore ::
        IDBDatabase ->
          JSString -> Nullable Dictionary -> IO (Nullable IDBObjectStore)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStore ::
                  (MonadIO m, ToJSString name, IsDictionary options) =>
                    IDBDatabase -> name -> Maybe options -> m (Maybe IDBObjectStore)
createObjectStore self name options
  = liftIO
      (nullableToMaybe <$>
         (js_createObjectStore (self) (toJSString name)
            (maybeToNullable (fmap toDictionary options))))
 
foreign import javascript unsafe "$1[\"deleteObjectStore\"]($2)"
        js_deleteObjectStore :: IDBDatabase -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.deleteObjectStore Mozilla IDBDatabase.deleteObjectStore documentation> 
deleteObjectStore ::
                  (MonadIO m, ToJSString name) => IDBDatabase -> name -> m ()
deleteObjectStore self name
  = liftIO (js_deleteObjectStore (self) (toJSString name))
 
foreign import javascript unsafe "$1[\"transaction\"]($2, $3)"
        js_transaction ::
        IDBDatabase -> JSString -> JSString -> IO (Nullable IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction ::
            (MonadIO m, ToJSString storeName, ToJSString mode) =>
              IDBDatabase -> storeName -> mode -> m (Maybe IDBTransaction)
transaction self storeName mode
  = liftIO
      (nullableToMaybe <$>
         (js_transaction (self) (toJSString storeName) (toJSString mode)))
 
foreign import javascript unsafe "$1[\"transaction\"]($2, $3)"
        js_transaction' ::
        IDBDatabase -> JSVal -> JSString -> IO (Nullable IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction' ::
             (MonadIO m, ToJSString storeNames, ToJSString mode) =>
               IDBDatabase -> [storeNames] -> mode -> m (Maybe IDBTransaction)
transaction' self storeNames mode
  = liftIO
      (nullableToMaybe <$>
         (toJSVal storeNames >>=
            \ storeNames' -> js_transaction' (self) storeNames'
            (toJSString mode)))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        IDBDatabase -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.close Mozilla IDBDatabase.close documentation> 
close :: (MonadIO m) => IDBDatabase -> m ()
close self = liftIO (js_close (self))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        IDBDatabase -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.name Mozilla IDBDatabase.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => IDBDatabase -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"version\"]" js_getVersion ::
        IDBDatabase -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.version Mozilla IDBDatabase.version documentation> 
getVersion :: (MonadIO m) => IDBDatabase -> m Word64
getVersion self = liftIO (round <$> (js_getVersion (self)))
 
foreign import javascript unsafe "$1[\"objectStoreNames\"]"
        js_getObjectStoreNames ::
        IDBDatabase -> IO (Nullable DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.objectStoreNames Mozilla IDBDatabase.objectStoreNames documentation> 
getObjectStoreNames ::
                    (MonadIO m) => IDBDatabase -> m (Maybe DOMStringList)
getObjectStoreNames self
  = liftIO (nullableToMaybe <$> (js_getObjectStoreNames (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onabort Mozilla IDBDatabase.onabort documentation> 
abort :: EventName IDBDatabase Event
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onerror Mozilla IDBDatabase.onerror documentation> 
error :: EventName IDBDatabase Event
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onversionchange Mozilla IDBDatabase.onversionchange documentation> 
versionChange :: EventName IDBDatabase IDBVersionChangeEvent
versionChange = unsafeEventName (toJSString "versionchange")