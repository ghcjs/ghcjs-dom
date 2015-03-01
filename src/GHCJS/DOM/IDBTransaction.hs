{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBTransaction
       (js_objectStore, objectStore, js_abort, abort, js_getMode, getMode,
        js_getDb, getDb, js_getError, getError, abortEvent, complete,
        error, IDBTransaction, castToIDBTransaction, gTypeIDBTransaction)
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

 
foreign import javascript unsafe "$1[\"objectStore\"]($2)"
        js_objectStore ::
        JSRef IDBTransaction -> JSString -> IO (JSRef IDBObjectStore)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStore ::
            (MonadIO m, ToJSString name) =>
              IDBTransaction -> name -> m (Maybe IDBObjectStore)
objectStore self name
  = liftIO
      ((js_objectStore (unIDBTransaction self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        JSRef IDBTransaction -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.abort Mozilla IDBTransaction.abort documentation> 
abort :: (MonadIO m) => IDBTransaction -> m ()
abort self = liftIO (js_abort (unIDBTransaction self))
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        JSRef IDBTransaction -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.mode Mozilla IDBTransaction.mode documentation> 
getMode ::
        (MonadIO m, FromJSString result) => IDBTransaction -> m result
getMode self
  = liftIO (fromJSString <$> (js_getMode (unIDBTransaction self)))
 
foreign import javascript unsafe "$1[\"db\"]" js_getDb ::
        JSRef IDBTransaction -> IO (JSRef IDBDatabase)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.db Mozilla IDBTransaction.db documentation> 
getDb :: (MonadIO m) => IDBTransaction -> m (Maybe IDBDatabase)
getDb self
  = liftIO ((js_getDb (unIDBTransaction self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        JSRef IDBTransaction -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.error Mozilla IDBTransaction.error documentation> 
getError :: (MonadIO m) => IDBTransaction -> m (Maybe DOMError)
getError self
  = liftIO ((js_getError (unIDBTransaction self)) >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onabort Mozilla IDBTransaction.onabort documentation> 
abortEvent :: EventName IDBTransaction Event
abortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.oncomplete Mozilla IDBTransaction.oncomplete documentation> 
complete :: EventName IDBTransaction Event
complete = unsafeEventName (toJSString "complete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onerror Mozilla IDBTransaction.onerror documentation> 
error :: EventName IDBTransaction Event
error = unsafeEventName (toJSString "error")
#else
module GHCJS.DOM.IDBTransaction (
  ) where
#endif
