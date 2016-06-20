{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.IDBTransaction
       (js_objectStore, objectStore, js_abort, abort, js_getMode, getMode,
        js_getDb, getDb, js_getError, getError, abortEvent, complete,
        error, IDBTransaction, castToIDBTransaction, gTypeIDBTransaction)
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
 
foreign import javascript unsafe "$1[\"objectStore\"]($2)"
        js_objectStore ::
        IDBTransaction -> JSString -> IO (Nullable IDBObjectStore)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStore ::
            (MonadIO m, ToJSString name) =>
              IDBTransaction -> name -> m (Maybe IDBObjectStore)
objectStore self name
  = liftIO
      (nullableToMaybe <$> (js_objectStore (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        IDBTransaction -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.abort Mozilla IDBTransaction.abort documentation> 
abort :: (MonadIO m) => IDBTransaction -> m ()
abort self = liftIO (js_abort (self))
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        IDBTransaction -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.mode Mozilla IDBTransaction.mode documentation> 
getMode ::
        (MonadIO m, FromJSString result) => IDBTransaction -> m result
getMode self = liftIO (fromJSString <$> (js_getMode (self)))
 
foreign import javascript unsafe "$1[\"db\"]" js_getDb ::
        IDBTransaction -> IO (Nullable IDBDatabase)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.db Mozilla IDBTransaction.db documentation> 
getDb :: (MonadIO m) => IDBTransaction -> m (Maybe IDBDatabase)
getDb self = liftIO (nullableToMaybe <$> (js_getDb (self)))
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        IDBTransaction -> IO (Nullable DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.error Mozilla IDBTransaction.error documentation> 
getError :: (MonadIO m) => IDBTransaction -> m (Maybe DOMError)
getError self = liftIO (nullableToMaybe <$> (js_getError (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onabort Mozilla IDBTransaction.onabort documentation> 
abortEvent :: EventName IDBTransaction Event
abortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.oncomplete Mozilla IDBTransaction.oncomplete documentation> 
complete :: EventName IDBTransaction Event
complete = unsafeEventName (toJSString "complete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onerror Mozilla IDBTransaction.onerror documentation> 
error :: EventName IDBTransaction Event
error = unsafeEventName (toJSString "error")