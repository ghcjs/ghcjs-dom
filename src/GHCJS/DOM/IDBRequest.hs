{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBRequest
       (js_getResult, getResult, js_getError, getError, js_getSource,
        getSource, js_getTransaction, getTransaction, js_getReadyState,
        getReadyState, success, error, IDBRequest, castToIDBRequest,
        gTypeIDBRequest, IsIDBRequest, toIDBRequest)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"result\"]" js_getResult ::
        JSRef IDBRequest -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
getResult ::
          (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getResult self
  = liftIO
      ((js_getResult (unIDBRequest (toIDBRequest self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        JSRef IDBRequest -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
getError ::
         (MonadIO m, IsIDBRequest self) => self -> m (Maybe DOMError)
getError self
  = liftIO
      ((js_getError (unIDBRequest (toIDBRequest self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"source\"]" js_getSource ::
        JSRef IDBRequest -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
getSource ::
          (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getSource self
  = liftIO
      ((js_getSource (unIDBRequest (toIDBRequest self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"transaction\"]"
        js_getTransaction :: JSRef IDBRequest -> IO (JSRef IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
getTransaction ::
               (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBTransaction)
getTransaction self
  = liftIO
      ((js_getTransaction (unIDBRequest (toIDBRequest self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: JSRef IDBRequest -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.readyState Mozilla IDBRequest.readyState documentation> 
getReadyState ::
              (MonadIO m, IsIDBRequest self, FromJSString result) =>
                self -> m result
getReadyState self
  = liftIO
      (fromJSString <$>
         (js_getReadyState (unIDBRequest (toIDBRequest self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.onsuccess Mozilla IDBRequest.onsuccess documentation> 
success ::
        (IsIDBRequest self, IsEventTarget self) => EventName self Event
success = unsafeEventName (toJSString "success")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.onerror Mozilla IDBRequest.onerror documentation> 
error ::
      (IsIDBRequest self, IsEventTarget self) => EventName self Event
error = unsafeEventName (toJSString "error")
#else
module GHCJS.DOM.IDBRequest (
  ) where
#endif
