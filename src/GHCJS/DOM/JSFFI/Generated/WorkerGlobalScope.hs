{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WorkerGlobalScope
       (js_close, close, js_importScripts, importScripts, js_getSelf,
        getSelf, js_getLocation, getLocation, error, offline, online,
        js_getNavigator, getNavigator, WorkerGlobalScope,
        castToWorkerGlobalScope, gTypeWorkerGlobalScope,
        IsWorkerGlobalScope, toWorkerGlobalScope)
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
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        WorkerGlobalScope -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.close Mozilla WorkerGlobalScope.close documentation> 
close :: (MonadIO m, IsWorkerGlobalScope self) => self -> m ()
close self = liftIO (js_close (toWorkerGlobalScope self))
 
foreign import javascript unsafe "$1[\"importScripts\"]()"
        js_importScripts :: WorkerGlobalScope -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.importScripts Mozilla WorkerGlobalScope.importScripts documentation> 
importScripts ::
              (MonadIO m, IsWorkerGlobalScope self) => self -> m ()
importScripts self
  = liftIO (js_importScripts (toWorkerGlobalScope self))
 
foreign import javascript unsafe "$1[\"self\"]" js_getSelf ::
        WorkerGlobalScope -> IO (Nullable WorkerGlobalScope)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.self Mozilla WorkerGlobalScope.self documentation> 
getSelf ::
        (MonadIO m, IsWorkerGlobalScope self) =>
          self -> m (Maybe WorkerGlobalScope)
getSelf self
  = liftIO
      (nullableToMaybe <$> (js_getSelf (toWorkerGlobalScope self)))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: WorkerGlobalScope -> IO (Nullable WorkerLocation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.location Mozilla WorkerGlobalScope.location documentation> 
getLocation ::
            (MonadIO m, IsWorkerGlobalScope self) =>
              self -> m (Maybe WorkerLocation)
getLocation self
  = liftIO
      (nullableToMaybe <$> (js_getLocation (toWorkerGlobalScope self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.onerror Mozilla WorkerGlobalScope.onerror documentation> 
error ::
      (IsWorkerGlobalScope self, IsEventTarget self) =>
        EventName self UIEvent
error = unsafeEventName (toJSString "error")

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
        js_getNavigator ::
        WorkerGlobalScope -> IO (Nullable WorkerNavigator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.navigator Mozilla WorkerGlobalScope.navigator documentation> 
getNavigator ::
             (MonadIO m, IsWorkerGlobalScope self) =>
               self -> m (Maybe WorkerNavigator)
getNavigator self
  = liftIO
      (nullableToMaybe <$> (js_getNavigator (toWorkerGlobalScope self)))