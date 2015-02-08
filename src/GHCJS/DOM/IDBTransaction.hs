{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBTransaction
       (ghcjs_dom_idb_transaction_object_store, idbTransactionObjectStore,
        ghcjs_dom_idb_transaction_abort, idbTransactionAbort,
        ghcjs_dom_idb_transaction_get_mode, idbTransactionGetMode,
        ghcjs_dom_idb_transaction_get_db, idbTransactionGetDb,
        ghcjs_dom_idb_transaction_get_error, idbTransactionGetError,
        idbTransactionAbortEvent, idbTransactionComplete,
        idbTransactionError, IDBTransaction, IsIDBTransaction,
        castToIDBTransaction, gTypeIDBTransaction, toIDBTransaction)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"objectStore\"]($2)"
        ghcjs_dom_idb_transaction_object_store ::
        JSRef IDBTransaction -> JSString -> IO (JSRef IDBObjectStore)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
idbTransactionObjectStore ::
                          (MonadIO m, IsIDBTransaction self, ToJSString name) =>
                            self -> name -> m (Maybe IDBObjectStore)
idbTransactionObjectStore self name
  = liftIO
      ((ghcjs_dom_idb_transaction_object_store
          (unIDBTransaction (toIDBTransaction self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_idb_transaction_abort :: JSRef IDBTransaction -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.abort Mozilla IDBTransaction.abort documentation> 
idbTransactionAbort ::
                    (MonadIO m, IsIDBTransaction self) => self -> m ()
idbTransactionAbort self
  = liftIO
      (ghcjs_dom_idb_transaction_abort
         (unIDBTransaction (toIDBTransaction self)))
 
foreign import javascript unsafe "$1[\"mode\"]"
        ghcjs_dom_idb_transaction_get_mode ::
        JSRef IDBTransaction -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.mode Mozilla IDBTransaction.mode documentation> 
idbTransactionGetMode ::
                      (MonadIO m, IsIDBTransaction self, FromJSString result) =>
                        self -> m result
idbTransactionGetMode self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_idb_transaction_get_mode
            (unIDBTransaction (toIDBTransaction self))))
 
foreign import javascript unsafe "$1[\"db\"]"
        ghcjs_dom_idb_transaction_get_db ::
        JSRef IDBTransaction -> IO (JSRef IDBDatabase)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.db Mozilla IDBTransaction.db documentation> 
idbTransactionGetDb ::
                    (MonadIO m, IsIDBTransaction self) => self -> m (Maybe IDBDatabase)
idbTransactionGetDb self
  = liftIO
      ((ghcjs_dom_idb_transaction_get_db
          (unIDBTransaction (toIDBTransaction self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_idb_transaction_get_error ::
        JSRef IDBTransaction -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.error Mozilla IDBTransaction.error documentation> 
idbTransactionGetError ::
                       (MonadIO m, IsIDBTransaction self) => self -> m (Maybe DOMError)
idbTransactionGetError self
  = liftIO
      ((ghcjs_dom_idb_transaction_get_error
          (unIDBTransaction (toIDBTransaction self)))
         >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.abortEvent Mozilla IDBTransaction.abortEvent documentation> 
idbTransactionAbortEvent ::
                         (IsIDBTransaction self, IsEventTarget self) => EventName self Event
idbTransactionAbortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.complete Mozilla IDBTransaction.complete documentation> 
idbTransactionComplete ::
                       (IsIDBTransaction self, IsEventTarget self) => EventName self Event
idbTransactionComplete = unsafeEventName (toJSString "complete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.error Mozilla IDBTransaction.error documentation> 
idbTransactionError ::
                    (IsIDBTransaction self, IsEventTarget self) => EventName self Event
idbTransactionError = unsafeEventName (toJSString "error")
#else
module GHCJS.DOM.IDBTransaction (
  ) where
#endif
