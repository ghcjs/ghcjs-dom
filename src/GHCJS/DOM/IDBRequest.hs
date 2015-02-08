{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBRequest
       (ghcjs_dom_idb_request_get_result, idbRequestGetResult,
        ghcjs_dom_idb_request_get_error, idbRequestGetError,
        ghcjs_dom_idb_request_get_source, idbRequestGetSource,
        ghcjs_dom_idb_request_get_transaction, idbRequestGetTransaction,
        ghcjs_dom_idb_request_get_ready_state, idbRequestGetReadyState,
        idbRequestSuccess, idbRequestError, IDBRequest, IsIDBRequest,
        castToIDBRequest, gTypeIDBRequest, toIDBRequest)
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

 
foreign import javascript unsafe "$1[\"result\"]"
        ghcjs_dom_idb_request_get_result ::
        JSRef IDBRequest -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
idbRequestGetResult ::
                    (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBAny)
idbRequestGetResult self
  = liftIO
      ((ghcjs_dom_idb_request_get_result
          (unIDBRequest (toIDBRequest self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_idb_request_get_error ::
        JSRef IDBRequest -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
idbRequestGetError ::
                   (MonadIO m, IsIDBRequest self) => self -> m (Maybe DOMError)
idbRequestGetError self
  = liftIO
      ((ghcjs_dom_idb_request_get_error
          (unIDBRequest (toIDBRequest self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"source\"]"
        ghcjs_dom_idb_request_get_source ::
        JSRef IDBRequest -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
idbRequestGetSource ::
                    (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBAny)
idbRequestGetSource self
  = liftIO
      ((ghcjs_dom_idb_request_get_source
          (unIDBRequest (toIDBRequest self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"transaction\"]"
        ghcjs_dom_idb_request_get_transaction ::
        JSRef IDBRequest -> IO (JSRef IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
idbRequestGetTransaction ::
                         (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBTransaction)
idbRequestGetTransaction self
  = liftIO
      ((ghcjs_dom_idb_request_get_transaction
          (unIDBRequest (toIDBRequest self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_idb_request_get_ready_state ::
        JSRef IDBRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.readyState Mozilla IDBRequest.readyState documentation> 
idbRequestGetReadyState ::
                        (MonadIO m, IsIDBRequest self, FromJSString result) =>
                          self -> m result
idbRequestGetReadyState self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_idb_request_get_ready_state
            (unIDBRequest (toIDBRequest self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.success Mozilla IDBRequest.success documentation> 
idbRequestSuccess ::
                  (IsIDBRequest self, IsEventTarget self) => EventName self Event
idbRequestSuccess = unsafeEventName (toJSString "success")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
idbRequestError ::
                (IsIDBRequest self, IsEventTarget self) => EventName self Event
idbRequestError = unsafeEventName (toJSString "error")
#else
module GHCJS.DOM.IDBRequest (
  ) where
#endif
