{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBDatabase
       (js_createObjectStore, createObjectStore, createObjectStore_,
        createObjectStoreUnsafe, createObjectStoreUnchecked,
        js_deleteObjectStore, deleteObjectStore, js_transaction,
        transaction, transaction_, transactionUnsafe, transactionUnchecked,
        js_transaction', transaction', transaction'_, transaction'Unsafe,
        transaction'Unchecked, js_close, close, js_getName, getName,
        js_getVersion, getVersion, js_getObjectStoreNames,
        getObjectStoreNames, getObjectStoreNamesUnsafe,
        getObjectStoreNamesUnchecked, abort, error, versionChange,
        IDBDatabase(..), gTypeIDBDatabase)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStore_ ::
                   (MonadIO m, ToJSString name, IsDictionary options) =>
                     IDBDatabase -> name -> Maybe options -> m ()
createObjectStore_ self name options
  = liftIO
      (void
         (js_createObjectStore (self) (toJSString name)
            (maybeToNullable (fmap toDictionary options))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStoreUnsafe ::
                        (MonadIO m, ToJSString name, IsDictionary options, HasCallStack) =>
                          IDBDatabase -> name -> Maybe options -> m IDBObjectStore
createObjectStoreUnsafe self name options
  = liftIO
      ((nullableToMaybe <$>
          (js_createObjectStore (self) (toJSString name)
             (maybeToNullable (fmap toDictionary options))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.createObjectStore Mozilla IDBDatabase.createObjectStore documentation> 
createObjectStoreUnchecked ::
                           (MonadIO m, ToJSString name, IsDictionary options) =>
                             IDBDatabase -> name -> Maybe options -> m IDBObjectStore
createObjectStoreUnchecked self name options
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction_ ::
             (MonadIO m, ToJSString storeName, ToJSString mode) =>
               IDBDatabase -> storeName -> mode -> m ()
transaction_ self storeName mode
  = liftIO
      (void
         (js_transaction (self) (toJSString storeName) (toJSString mode)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transactionUnsafe ::
                  (MonadIO m, ToJSString storeName, ToJSString mode, HasCallStack) =>
                    IDBDatabase -> storeName -> mode -> m IDBTransaction
transactionUnsafe self storeName mode
  = liftIO
      ((nullableToMaybe <$>
          (js_transaction (self) (toJSString storeName) (toJSString mode)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transactionUnchecked ::
                     (MonadIO m, ToJSString storeName, ToJSString mode) =>
                       IDBDatabase -> storeName -> mode -> m IDBTransaction
transactionUnchecked self storeName mode
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction'_ ::
              (MonadIO m, ToJSString storeNames, ToJSString mode) =>
                IDBDatabase -> [storeNames] -> mode -> m ()
transaction'_ self storeNames mode
  = liftIO
      (void
         (toJSVal storeNames >>=
            \ storeNames' -> js_transaction' (self) storeNames'
            (toJSString mode)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction'Unsafe ::
                   (MonadIO m, ToJSString storeNames, ToJSString mode,
                    HasCallStack) =>
                     IDBDatabase -> [storeNames] -> mode -> m IDBTransaction
transaction'Unsafe self storeNames mode
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal storeNames >>=
             \ storeNames' -> js_transaction' (self) storeNames'
             (toJSString mode)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.transaction Mozilla IDBDatabase.transaction documentation> 
transaction'Unchecked ::
                      (MonadIO m, ToJSString storeNames, ToJSString mode) =>
                        IDBDatabase -> [storeNames] -> mode -> m IDBTransaction
transaction'Unchecked self storeNames mode
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.objectStoreNames Mozilla IDBDatabase.objectStoreNames documentation> 
getObjectStoreNamesUnsafe ::
                          (MonadIO m, HasCallStack) => IDBDatabase -> m DOMStringList
getObjectStoreNamesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getObjectStoreNames (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.objectStoreNames Mozilla IDBDatabase.objectStoreNames documentation> 
getObjectStoreNamesUnchecked ::
                             (MonadIO m) => IDBDatabase -> m DOMStringList
getObjectStoreNamesUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getObjectStoreNames (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onabort Mozilla IDBDatabase.onabort documentation> 
abort :: EventName IDBDatabase Event
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onerror Mozilla IDBDatabase.onerror documentation> 
error :: EventName IDBDatabase Event
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBDatabase.onversionchange Mozilla IDBDatabase.onversionchange documentation> 
versionChange :: EventName IDBDatabase IDBVersionChangeEvent
versionChange = unsafeEventName (toJSString "versionchange")