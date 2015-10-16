{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.IDBRequest
       (js_getResult, getResult, js_getError, getError, js_getSource,
        getSource, js_getTransaction, getTransaction, js_getReadyState,
        getReadyState, success, error, IDBRequest, castToIDBRequest,
        gTypeIDBRequest, IsIDBRequest, toIDBRequest)
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
 
foreign import javascript unsafe "$1[\"result\"]" js_getResult ::
        IDBRequest -> IO (Nullable IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
getResult ::
          (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getResult self
  = liftIO (nullableToMaybe <$> (js_getResult (toIDBRequest self)))
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        IDBRequest -> IO (Nullable DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
getError ::
         (MonadIO m, IsIDBRequest self) => self -> m (Maybe DOMError)
getError self
  = liftIO (nullableToMaybe <$> (js_getError (toIDBRequest self)))
 
foreign import javascript unsafe "$1[\"source\"]" js_getSource ::
        IDBRequest -> IO (Nullable IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
getSource ::
          (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getSource self
  = liftIO (nullableToMaybe <$> (js_getSource (toIDBRequest self)))
 
foreign import javascript unsafe "$1[\"transaction\"]"
        js_getTransaction :: IDBRequest -> IO (Nullable IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
getTransaction ::
               (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBTransaction)
getTransaction self
  = liftIO
      (nullableToMaybe <$> (js_getTransaction (toIDBRequest self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: IDBRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.readyState Mozilla IDBRequest.readyState documentation> 
getReadyState ::
              (MonadIO m, IsIDBRequest self, FromJSString result) =>
                self -> m result
getReadyState self
  = liftIO (fromJSString <$> (js_getReadyState (toIDBRequest self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.onsuccess Mozilla IDBRequest.onsuccess documentation> 
success ::
        (IsIDBRequest self, IsEventTarget self) => EventName self Event
success = unsafeEventName (toJSString "success")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.onerror Mozilla IDBRequest.onerror documentation> 
error ::
      (IsIDBRequest self, IsEventTarget self) => EventName self Event
error = unsafeEventName (toJSString "error")