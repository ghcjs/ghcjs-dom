{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBDatabase
       (js_createObjectStore, createObjectStore, createObjectStore_,
        js_deleteObjectStore, deleteObjectStore, js_transaction,
        transaction, transaction_, js_close, close, js_getName, getName,
        js_getVersion, getVersion, js_getObjectStoreNames,
        getObjectStoreNames, abort, closeEvent, error, versionChange,
        IDBDatabase(..), gTypeIDBDatabase)
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
 
foreign import javascript safe "$1[\"createObjectStore\"]($2, $3)"
        js_createObjectStore ::
        IDBDatabase ->
          JSString -> Optional IDBObjectStoreParameters -> IO IDBObjectStore

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStore ::
                  (MonadIO m, ToJSString name) =>
                    IDBDatabase ->
                      name -> Maybe IDBObjectStoreParameters -> m IDBObjectStore
createObjectStore self name parameters
  = liftIO
      (js_createObjectStore self (toJSString name)
         (maybeToOptional parameters))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStore_ ::
                   (MonadIO m, ToJSString name) =>
                     IDBDatabase -> name -> Maybe IDBObjectStoreParameters -> m ()
createObjectStore_ self name parameters
  = liftIO
      (void
         (js_createObjectStore self (toJSString name)
            (maybeToOptional parameters)))
 
foreign import javascript safe "$1[\"deleteObjectStore\"]($2)"
        js_deleteObjectStore :: IDBDatabase -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.deleteObjectStore Mozilla IDBDatabase.deleteObjectStore documentation> 
deleteObjectStore ::
                  (MonadIO m, ToJSString name) => IDBDatabase -> name -> m ()
deleteObjectStore self name
  = liftIO (js_deleteObjectStore self (toJSString name))
 
foreign import javascript safe "$1[\"transaction\"]($2, $3)"
        js_transaction ::
        IDBDatabase ->
          StringOrStrings -> Optional IDBTransactionMode -> IO IDBTransaction

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction ::
            (MonadIO m, IsStringOrStrings storeNames) =>
              IDBDatabase ->
                storeNames -> Maybe IDBTransactionMode -> m IDBTransaction
transaction self storeNames mode
  = liftIO
      (toJSVal storeNames >>=
         \ storeNames' -> js_transaction self (StringOrStrings storeNames')
         (maybeToOptional mode))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction_ ::
             (MonadIO m, IsStringOrStrings storeNames) =>
               IDBDatabase -> storeNames -> Maybe IDBTransactionMode -> m ()
transaction_ self storeNames mode
  = liftIO
      (void
         (toJSVal storeNames >>=
            \ storeNames' -> js_transaction self (StringOrStrings storeNames')
            (maybeToOptional mode)))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        IDBDatabase -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.close Mozilla IDBDatabase.close documentation> 
close :: (MonadIO m) => IDBDatabase -> m ()
close self = liftIO (js_close self)
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        IDBDatabase -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.name Mozilla IDBDatabase.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => IDBDatabase -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"version\"]" js_getVersion ::
        IDBDatabase -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.version Mozilla IDBDatabase.version documentation> 
getVersion :: (MonadIO m) => IDBDatabase -> m Word64
getVersion self = liftIO (round <$> (js_getVersion self))
 
foreign import javascript unsafe "$1[\"objectStoreNames\"]"
        js_getObjectStoreNames :: IDBDatabase -> IO DOMStringList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.objectStoreNames Mozilla IDBDatabase.objectStoreNames documentation> 
getObjectStoreNames ::
                    (MonadIO m) => IDBDatabase -> m DOMStringList
getObjectStoreNames self = liftIO (js_getObjectStoreNames self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onabort Mozilla IDBDatabase.onabort documentation> 
abort :: EventName IDBDatabase Event
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onclose Mozilla IDBDatabase.onclose documentation> 
closeEvent :: EventName IDBDatabase CloseEvent
closeEvent = unsafeEventNameAsync (toJSString "close")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onerror Mozilla IDBDatabase.onerror documentation> 
error :: EventName IDBDatabase Event
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onversionchange Mozilla IDBDatabase.onversionchange documentation> 
versionChange :: EventName IDBDatabase IDBVersionChangeEvent
versionChange = unsafeEventName (toJSString "versionchange")