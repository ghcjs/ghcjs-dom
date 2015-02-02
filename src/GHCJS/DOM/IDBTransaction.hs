{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBTransaction
       (ghcjs_dom_idb_transaction_object_store, idbTransactionObjectStore,
        ghcjs_dom_idb_transaction_abort, idbTransactionAbort,
        ghcjs_dom_idb_transaction_get_mode, idbTransactionGetMode,
        ghcjs_dom_idb_transaction_get_db, idbTransactionGetDb,
        ghcjs_dom_idb_transaction_get_error, idbTransactionGetError,
        idbTransactionOnabort, idbTransactionOncomplete,
        idbTransactionOnerror, IDBTransaction, IsIDBTransaction,
        castToIDBTransaction, gTypeIDBTransaction, toIDBTransaction)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
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
                          (IsIDBTransaction self, ToJSString name) =>
                            self -> name -> IO (Maybe IDBObjectStore)
idbTransactionObjectStore self name
  = (ghcjs_dom_idb_transaction_object_store
       (unIDBTransaction (toIDBTransaction self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_idb_transaction_abort :: JSRef IDBTransaction -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.abort Mozilla IDBTransaction.abort documentation> 
idbTransactionAbort :: (IsIDBTransaction self) => self -> IO ()
idbTransactionAbort self
  = ghcjs_dom_idb_transaction_abort
      (unIDBTransaction (toIDBTransaction self))
 
foreign import javascript unsafe "$1[\"mode\"]"
        ghcjs_dom_idb_transaction_get_mode ::
        JSRef IDBTransaction -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.mode Mozilla IDBTransaction.mode documentation> 
idbTransactionGetMode ::
                      (IsIDBTransaction self, FromJSString result) => self -> IO result
idbTransactionGetMode self
  = fromJSString <$>
      (ghcjs_dom_idb_transaction_get_mode
         (unIDBTransaction (toIDBTransaction self)))
 
foreign import javascript unsafe "$1[\"db\"]"
        ghcjs_dom_idb_transaction_get_db ::
        JSRef IDBTransaction -> IO (JSRef IDBDatabase)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.db Mozilla IDBTransaction.db documentation> 
idbTransactionGetDb ::
                    (IsIDBTransaction self) => self -> IO (Maybe IDBDatabase)
idbTransactionGetDb self
  = (ghcjs_dom_idb_transaction_get_db
       (unIDBTransaction (toIDBTransaction self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_idb_transaction_get_error ::
        JSRef IDBTransaction -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.error Mozilla IDBTransaction.error documentation> 
idbTransactionGetError ::
                       (IsIDBTransaction self) => self -> IO (Maybe DOMError)
idbTransactionGetError self
  = (ghcjs_dom_idb_transaction_get_error
       (unIDBTransaction (toIDBTransaction self)))
      >>= fromJSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onabort Mozilla IDBTransaction.onabort documentation> 
idbTransactionOnabort ::
                      (IsIDBTransaction self) => Signal self (EventM UIEvent self ())
idbTransactionOnabort = (connect "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.oncomplete Mozilla IDBTransaction.oncomplete documentation> 
idbTransactionOncomplete ::
                         (IsIDBTransaction self) => Signal self (EventM UIEvent self ())
idbTransactionOncomplete = (connect "complete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onerror Mozilla IDBTransaction.onerror documentation> 
idbTransactionOnerror ::
                      (IsIDBTransaction self) => Signal self (EventM UIEvent self ())
idbTransactionOnerror = (connect "error")
#else
module GHCJS.DOM.IDBTransaction (
  ) where
#endif
