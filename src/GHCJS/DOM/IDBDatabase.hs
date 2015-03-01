{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBDatabase
       (js_createObjectStore, createObjectStore, js_deleteObjectStore,
        deleteObjectStore, js_transaction, transaction, js_transaction',
        transaction', js_close, close, js_getName, getName, js_getVersion,
        getVersion, js_getObjectStoreNames, getObjectStoreNames, abort,
        error, versionChange, IDBDatabase, castToIDBDatabase,
        gTypeIDBDatabase)
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

 
foreign import javascript unsafe
        "$1[\"createObjectStore\"]($2, $3)" js_createObjectStore ::
        JSRef IDBDatabase ->
          JSString -> JSRef Dictionary -> IO (JSRef IDBObjectStore)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStore ::
                  (MonadIO m, ToJSString name, IsDictionary options) =>
                    IDBDatabase -> name -> Maybe options -> m (Maybe IDBObjectStore)
createObjectStore self name options
  = liftIO
      ((js_createObjectStore (unIDBDatabase self) (toJSString name)
          (maybe jsNull (unDictionary . toDictionary) options))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteObjectStore\"]($2)"
        js_deleteObjectStore :: JSRef IDBDatabase -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.deleteObjectStore Mozilla IDBDatabase.deleteObjectStore documentation> 
deleteObjectStore ::
                  (MonadIO m, ToJSString name) => IDBDatabase -> name -> m ()
deleteObjectStore self name
  = liftIO
      (js_deleteObjectStore (unIDBDatabase self) (toJSString name))
 
foreign import javascript unsafe "$1[\"transaction\"]($2, $3)"
        js_transaction ::
        JSRef IDBDatabase ->
          JSString -> JSString -> IO (JSRef IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction ::
            (MonadIO m, ToJSString storeName, ToJSString mode) =>
              IDBDatabase -> storeName -> mode -> m (Maybe IDBTransaction)
transaction self storeName mode
  = liftIO
      ((js_transaction (unIDBDatabase self) (toJSString storeName)
          (toJSString mode))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"transaction\"]($2, $3)"
        js_transaction' ::
        JSRef IDBDatabase ->
          JSRef [storeNames] -> JSString -> IO (JSRef IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction' ::
             (MonadIO m, ToJSString storeNames, ToJSString mode) =>
               IDBDatabase -> [storeNames] -> mode -> m (Maybe IDBTransaction)
transaction' self storeNames mode
  = liftIO
      ((toJSRef storeNames >>=
          \ storeNames' -> js_transaction' (unIDBDatabase self) storeNames'
          (toJSString mode))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        JSRef IDBDatabase -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.close Mozilla IDBDatabase.close documentation> 
close :: (MonadIO m) => IDBDatabase -> m ()
close self = liftIO (js_close (unIDBDatabase self))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef IDBDatabase -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.name Mozilla IDBDatabase.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => IDBDatabase -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unIDBDatabase self)))
 
foreign import javascript unsafe "$1[\"version\"]" js_getVersion ::
        JSRef IDBDatabase -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.version Mozilla IDBDatabase.version documentation> 
getVersion :: (MonadIO m) => IDBDatabase -> m Word64
getVersion self
  = liftIO (round <$> (js_getVersion (unIDBDatabase self)))
 
foreign import javascript unsafe "$1[\"objectStoreNames\"]"
        js_getObjectStoreNames ::
        JSRef IDBDatabase -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.objectStoreNames Mozilla IDBDatabase.objectStoreNames documentation> 
getObjectStoreNames ::
                    (MonadIO m) => IDBDatabase -> m (Maybe DOMStringList)
getObjectStoreNames self
  = liftIO
      ((js_getObjectStoreNames (unIDBDatabase self)) >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onabort Mozilla IDBDatabase.onabort documentation> 
abort :: EventName IDBDatabase Event
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onerror Mozilla IDBDatabase.onerror documentation> 
error :: EventName IDBDatabase Event
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onversionchange Mozilla IDBDatabase.onversionchange documentation> 
versionChange :: EventName IDBDatabase IDBVersionChangeEvent
versionChange = unsafeEventName (toJSString "versionchange")
#else
module GHCJS.DOM.IDBDatabase (
  ) where
#endif
