{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBRequest
       (js_getResult, getResult, getResultUnsafe, getResultUnchecked,
        js_getError, getError, getErrorUnsafe, getErrorUnchecked,
        js_getSource, getSource, getSourceUnsafe, getSourceUnchecked,
        js_getTransaction, getTransaction, getTransactionUnsafe,
        getTransactionUnchecked, js_getReadyState, getReadyState, success,
        error, IDBRequest(..), gTypeIDBRequest, IsIDBRequest, toIDBRequest)
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
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"result\"]" js_getResult ::
        IDBRequest -> IO (Nullable IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
getResult ::
          (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getResult self
  = liftIO (nullableToMaybe <$> (js_getResult (toIDBRequest self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
getResultUnsafe ::
                (MonadIO m, IsIDBRequest self, HasCallStack) => self -> m IDBAny
getResultUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getResult (toIDBRequest self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.result Mozilla IDBRequest.result documentation> 
getResultUnchecked ::
                   (MonadIO m, IsIDBRequest self) => self -> m IDBAny
getResultUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getResult (toIDBRequest self)))
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        IDBRequest -> IO (Nullable DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
getError ::
         (MonadIO m, IsIDBRequest self) => self -> m (Maybe DOMError)
getError self
  = liftIO (nullableToMaybe <$> (js_getError (toIDBRequest self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
getErrorUnsafe ::
               (MonadIO m, IsIDBRequest self, HasCallStack) => self -> m DOMError
getErrorUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getError (toIDBRequest self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.error Mozilla IDBRequest.error documentation> 
getErrorUnchecked ::
                  (MonadIO m, IsIDBRequest self) => self -> m DOMError
getErrorUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getError (toIDBRequest self)))
 
foreign import javascript unsafe "$1[\"source\"]" js_getSource ::
        IDBRequest -> IO (Nullable IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
getSource ::
          (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBAny)
getSource self
  = liftIO (nullableToMaybe <$> (js_getSource (toIDBRequest self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
getSourceUnsafe ::
                (MonadIO m, IsIDBRequest self, HasCallStack) => self -> m IDBAny
getSourceUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSource (toIDBRequest self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.source Mozilla IDBRequest.source documentation> 
getSourceUnchecked ::
                   (MonadIO m, IsIDBRequest self) => self -> m IDBAny
getSourceUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSource (toIDBRequest self)))
 
foreign import javascript unsafe "$1[\"transaction\"]"
        js_getTransaction :: IDBRequest -> IO (Nullable IDBTransaction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
getTransaction ::
               (MonadIO m, IsIDBRequest self) => self -> m (Maybe IDBTransaction)
getTransaction self
  = liftIO
      (nullableToMaybe <$> (js_getTransaction (toIDBRequest self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
getTransactionUnsafe ::
                     (MonadIO m, IsIDBRequest self, HasCallStack) =>
                       self -> m IDBTransaction
getTransactionUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTransaction (toIDBRequest self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBRequest.transaction Mozilla IDBRequest.transaction documentation> 
getTransactionUnchecked ::
                        (MonadIO m, IsIDBRequest self) => self -> m IDBTransaction
getTransactionUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getTransaction (toIDBRequest self)))
 
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