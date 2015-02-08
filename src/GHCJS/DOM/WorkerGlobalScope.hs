{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WorkerGlobalScope
       (ghcjs_dom_worker_global_scope_open_database,
        workerGlobalScopeOpenDatabase,
        ghcjs_dom_worker_global_scope_open_database_sync,
        workerGlobalScopeOpenDatabaseSync,
        ghcjs_dom_worker_global_scope_close, workerGlobalScopeClose,
        ghcjs_dom_worker_global_scope_import_scripts,
        workerGlobalScopeImportScripts,
        ghcjs_dom_worker_global_scope_get_location,
        workerGlobalScopeGetLocation, workerGlobalScopeError,
        workerGlobalScopeOffline, workerGlobalScopeOnline,
        ghcjs_dom_worker_global_scope_get_navigator,
        workerGlobalScopeGetNavigator,
        ghcjs_dom_worker_global_scope_set_webkit_url,
        workerGlobalScopeSetWebkitURL,
        ghcjs_dom_worker_global_scope_get_webkit_url,
        workerGlobalScopeGetWebkitURL, WorkerGlobalScope,
        IsWorkerGlobalScope, castToWorkerGlobalScope,
        gTypeWorkerGlobalScope, toWorkerGlobalScope)
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

 
foreign import javascript unsafe
        "$1[\"openDatabase\"]($2, $3, $4,\n$5, $6)"
        ghcjs_dom_worker_global_scope_open_database ::
        JSRef WorkerGlobalScope ->
          JSString ->
            JSString ->
              JSString -> Word -> JSRef DatabaseCallback -> IO (JSRef Database)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.openDatabase Mozilla WorkerGlobalScope.openDatabase documentation> 
workerGlobalScopeOpenDatabase ::
                              (MonadIO m, IsWorkerGlobalScope self, ToJSString name,
                               ToJSString version, ToJSString displayName,
                               IsDatabaseCallback creationCallback) =>
                                self ->
                                  name ->
                                    version ->
                                      displayName ->
                                        Word -> Maybe creationCallback -> m (Maybe Database)
workerGlobalScopeOpenDatabase self name version displayName
  estimatedSize creationCallback
  = liftIO
      ((ghcjs_dom_worker_global_scope_open_database
          (unWorkerGlobalScope (toWorkerGlobalScope self))
          (toJSString name)
          (toJSString version)
          (toJSString displayName)
          estimatedSize
          (maybe jsNull (unDatabaseCallback . toDatabaseCallback)
             creationCallback))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"openDatabaseSync\"]($2, $3,\n$4, $5, $6)"
        ghcjs_dom_worker_global_scope_open_database_sync ::
        JSRef WorkerGlobalScope ->
          JSString ->
            JSString ->
              JSString ->
                Word -> JSRef DatabaseCallback -> IO (JSRef DatabaseSync)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.openDatabaseSync Mozilla WorkerGlobalScope.openDatabaseSync documentation> 
workerGlobalScopeOpenDatabaseSync ::
                                  (MonadIO m, IsWorkerGlobalScope self, ToJSString name,
                                   ToJSString version, ToJSString displayName,
                                   IsDatabaseCallback creationCallback) =>
                                    self ->
                                      name ->
                                        version ->
                                          displayName ->
                                            Word -> Maybe creationCallback -> m (Maybe DatabaseSync)
workerGlobalScopeOpenDatabaseSync self name version displayName
  estimatedSize creationCallback
  = liftIO
      ((ghcjs_dom_worker_global_scope_open_database_sync
          (unWorkerGlobalScope (toWorkerGlobalScope self))
          (toJSString name)
          (toJSString version)
          (toJSString displayName)
          estimatedSize
          (maybe jsNull (unDatabaseCallback . toDatabaseCallback)
             creationCallback))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_worker_global_scope_close ::
        JSRef WorkerGlobalScope -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.close Mozilla WorkerGlobalScope.close documentation> 
workerGlobalScopeClose ::
                       (MonadIO m, IsWorkerGlobalScope self) => self -> m ()
workerGlobalScopeClose self
  = liftIO
      (ghcjs_dom_worker_global_scope_close
         (unWorkerGlobalScope (toWorkerGlobalScope self)))
 
foreign import javascript unsafe "$1[\"importScripts\"]()"
        ghcjs_dom_worker_global_scope_import_scripts ::
        JSRef WorkerGlobalScope -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.importScripts Mozilla WorkerGlobalScope.importScripts documentation> 
workerGlobalScopeImportScripts ::
                               (MonadIO m, IsWorkerGlobalScope self) => self -> m ()
workerGlobalScopeImportScripts self
  = liftIO
      (ghcjs_dom_worker_global_scope_import_scripts
         (unWorkerGlobalScope (toWorkerGlobalScope self)))
 
foreign import javascript unsafe "$1[\"location\"]"
        ghcjs_dom_worker_global_scope_get_location ::
        JSRef WorkerGlobalScope -> IO (JSRef WorkerLocation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.location Mozilla WorkerGlobalScope.location documentation> 
workerGlobalScopeGetLocation ::
                             (MonadIO m, IsWorkerGlobalScope self) =>
                               self -> m (Maybe WorkerLocation)
workerGlobalScopeGetLocation self
  = liftIO
      ((ghcjs_dom_worker_global_scope_get_location
          (unWorkerGlobalScope (toWorkerGlobalScope self)))
         >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.error Mozilla WorkerGlobalScope.error documentation> 
workerGlobalScopeError ::
                       (IsWorkerGlobalScope self, IsEventTarget self) =>
                         EventName self UIEvent
workerGlobalScopeError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.offline Mozilla WorkerGlobalScope.offline documentation> 
workerGlobalScopeOffline ::
                         (IsWorkerGlobalScope self, IsEventTarget self) =>
                           EventName self Event
workerGlobalScopeOffline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.online Mozilla WorkerGlobalScope.online documentation> 
workerGlobalScopeOnline ::
                        (IsWorkerGlobalScope self, IsEventTarget self) =>
                          EventName self Event
workerGlobalScopeOnline = unsafeEventName (toJSString "online")
 
foreign import javascript unsafe "$1[\"navigator\"]"
        ghcjs_dom_worker_global_scope_get_navigator ::
        JSRef WorkerGlobalScope -> IO (JSRef WorkerNavigator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.navigator Mozilla WorkerGlobalScope.navigator documentation> 
workerGlobalScopeGetNavigator ::
                              (MonadIO m, IsWorkerGlobalScope self) =>
                                self -> m (Maybe WorkerNavigator)
workerGlobalScopeGetNavigator self
  = liftIO
      ((ghcjs_dom_worker_global_scope_get_navigator
          (unWorkerGlobalScope (toWorkerGlobalScope self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitURL\"] = $2;"
        ghcjs_dom_worker_global_scope_set_webkit_url ::
        JSRef WorkerGlobalScope -> JSRef DOMURLConstructor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.webkitURL Mozilla WorkerGlobalScope.webkitURL documentation> 
workerGlobalScopeSetWebkitURL ::
                              (MonadIO m, IsWorkerGlobalScope self, IsDOMURLConstructor val) =>
                                self -> Maybe val -> m ()
workerGlobalScopeSetWebkitURL self val
  = liftIO
      (ghcjs_dom_worker_global_scope_set_webkit_url
         (unWorkerGlobalScope (toWorkerGlobalScope self))
         (maybe jsNull (unDOMURLConstructor . toDOMURLConstructor) val))
 
foreign import javascript unsafe "$1[\"webkitURL\"]"
        ghcjs_dom_worker_global_scope_get_webkit_url ::
        JSRef WorkerGlobalScope -> IO (JSRef DOMURLConstructor)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope.webkitURL Mozilla WorkerGlobalScope.webkitURL documentation> 
workerGlobalScopeGetWebkitURL ::
                              (MonadIO m, IsWorkerGlobalScope self) =>
                                self -> m (Maybe DOMURLConstructor)
workerGlobalScopeGetWebkitURL self
  = liftIO
      ((ghcjs_dom_worker_global_scope_get_webkit_url
          (unWorkerGlobalScope (toWorkerGlobalScope self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.WorkerGlobalScope (
  ) where
#endif
