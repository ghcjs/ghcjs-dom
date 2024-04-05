{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WorkerGlobalScope
       (js_fetch, fetch, fetch_, js_close, close, js_importScripts,
        importScripts, js_getIndexedDB, getIndexedDB, js_getSelf, getSelf,
        js_getLocation, getLocation, error, offline, online,
        js_getNavigator, getNavigator, WorkerGlobalScope(..),
        gTypeWorkerGlobalScope, IsWorkerGlobalScope, toWorkerGlobalScope)
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
 
foreign import javascript interruptible
        "$1[\"fetch\"]($2, $3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_fetch ::
        WorkerGlobalScope ->
          JSVal -> Optional RequestInit -> IO (JSVal, Response)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.fetch Mozilla WorkerGlobalScope.fetch documentation> 
fetch ::
      (MonadIO m, IsWorkerGlobalScope self, ToJSVal input) =>
        self -> input -> Maybe RequestInit -> m Response
fetch self input init
  = liftIO
      ((toJSVal input >>=
          \ input' -> js_fetch (toWorkerGlobalScope self) input'
          (maybeToOptional init))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.fetch Mozilla WorkerGlobalScope.fetch documentation> 
fetch_ ::
       (MonadIO m, IsWorkerGlobalScope self, ToJSVal input) =>
         self -> input -> Maybe RequestInit -> m ()
fetch_ self input init
  = liftIO
      (void
         (toJSVal input >>=
            \ input' -> js_fetch (toWorkerGlobalScope self) input'
            (maybeToOptional init)))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        WorkerGlobalScope -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.close Mozilla WorkerGlobalScope.close documentation> 
close :: (MonadIO m, IsWorkerGlobalScope self) => self -> m ()
close self = liftIO (js_close (toWorkerGlobalScope self))
 
foreign import javascript safe "$1[\"importScripts\"]($2)"
        js_importScripts :: WorkerGlobalScope -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.importScripts Mozilla WorkerGlobalScope.importScripts documentation> 
importScripts ::
              (MonadIO m, IsWorkerGlobalScope self, ToJSString urls) =>
                self -> [urls] -> m ()
importScripts self urls
  = liftIO
      (toJSVal urls >>=
         \ urls' -> js_importScripts (toWorkerGlobalScope self) urls')
 
foreign import javascript unsafe "$1[\"indexedDB\"]"
        js_getIndexedDB :: WorkerGlobalScope -> IO IDBFactory

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.indexedDB Mozilla WorkerGlobalScope.indexedDB documentation> 
getIndexedDB ::
             (MonadIO m, IsWorkerGlobalScope self) => self -> m IDBFactory
getIndexedDB self
  = liftIO (js_getIndexedDB (toWorkerGlobalScope self))
 
foreign import javascript unsafe "$1[\"self\"]" js_getSelf ::
        WorkerGlobalScope -> IO WorkerGlobalScope

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.self Mozilla WorkerGlobalScope.self documentation> 
getSelf ::
        (MonadIO m, IsWorkerGlobalScope self) =>
          self -> m WorkerGlobalScope
getSelf self = liftIO (js_getSelf (toWorkerGlobalScope self))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: WorkerGlobalScope -> IO WorkerLocation

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.location Mozilla WorkerGlobalScope.location documentation> 
getLocation ::
            (MonadIO m, IsWorkerGlobalScope self) => self -> m WorkerLocation
getLocation self
  = liftIO (js_getLocation (toWorkerGlobalScope self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.onerror Mozilla WorkerGlobalScope.onerror documentation> 
error ::
      (IsWorkerGlobalScope self, IsEventTarget self) =>
        EventName self UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.onoffline Mozilla WorkerGlobalScope.onoffline documentation> 
offline ::
        (IsWorkerGlobalScope self, IsEventTarget self) =>
          EventName self Event
offline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.ononline Mozilla WorkerGlobalScope.ononline documentation> 
online ::
       (IsWorkerGlobalScope self, IsEventTarget self) =>
         EventName self Event
online = unsafeEventName (toJSString "online")
 
foreign import javascript unsafe "$1[\"navigator\"]"
        js_getNavigator :: WorkerGlobalScope -> IO WorkerNavigator

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.navigator Mozilla WorkerGlobalScope.navigator documentation> 
getNavigator ::
             (MonadIO m, IsWorkerGlobalScope self) => self -> m WorkerNavigator
getNavigator self
  = liftIO (js_getNavigator (toWorkerGlobalScope self))