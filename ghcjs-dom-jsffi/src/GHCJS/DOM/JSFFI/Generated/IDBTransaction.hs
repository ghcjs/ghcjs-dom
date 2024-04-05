{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBTransaction
       (js_objectStore, objectStore, objectStore_, js_abort, abort,
        js_getObjectStoreNames, getObjectStoreNames, js_getMode, getMode,
        js_getDb, getDb, js_getError, getError, abortEvent, complete,
        error, IDBTransaction(..), gTypeIDBTransaction)
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
 
foreign import javascript safe "$1[\"objectStore\"]($2)"
        js_objectStore :: IDBTransaction -> JSString -> IO IDBObjectStore

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStore ::
            (MonadIO m, ToJSString name) =>
              IDBTransaction -> name -> m IDBObjectStore
objectStore self name
  = liftIO (js_objectStore self (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStore_ ::
             (MonadIO m, ToJSString name) => IDBTransaction -> name -> m ()
objectStore_ self name
  = liftIO (void (js_objectStore self (toJSString name)))
 
foreign import javascript safe "$1[\"abort\"]()" js_abort ::
        IDBTransaction -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.abort Mozilla IDBTransaction.abort documentation> 
abort :: (MonadIO m) => IDBTransaction -> m ()
abort self = liftIO (js_abort self)
 
foreign import javascript unsafe "$1[\"objectStoreNames\"]"
        js_getObjectStoreNames :: IDBTransaction -> IO DOMStringList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStoreNames Mozilla IDBTransaction.objectStoreNames documentation> 
getObjectStoreNames ::
                    (MonadIO m) => IDBTransaction -> m DOMStringList
getObjectStoreNames self = liftIO (js_getObjectStoreNames self)
 
foreign import javascript unsafe "$1[\"mode\"]" js_getMode ::
        IDBTransaction -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.mode Mozilla IDBTransaction.mode documentation> 
getMode :: (MonadIO m) => IDBTransaction -> m IDBTransactionMode
getMode self = liftIO ((js_getMode self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"db\"]" js_getDb ::
        IDBTransaction -> IO IDBDatabase

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.db Mozilla IDBTransaction.db documentation> 
getDb :: (MonadIO m) => IDBTransaction -> m IDBDatabase
getDb self = liftIO (js_getDb self)
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        IDBTransaction -> IO DOMError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.error Mozilla IDBTransaction.error documentation> 
getError :: (MonadIO m) => IDBTransaction -> m DOMError
getError self = liftIO (js_getError self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onabort Mozilla IDBTransaction.onabort documentation> 
abortEvent :: EventName IDBTransaction Event
abortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.oncomplete Mozilla IDBTransaction.oncomplete documentation> 
complete :: EventName IDBTransaction Event
complete = unsafeEventName (toJSString "complete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onerror Mozilla IDBTransaction.onerror documentation> 
error :: EventName IDBTransaction Event
error = unsafeEventName (toJSString "error")