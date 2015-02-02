{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WorkerNavigator
       (ghcjs_dom_worker_navigator_get_webkit_temporary_storage,
        workerNavigatorGetWebkitTemporaryStorage,
        ghcjs_dom_worker_navigator_get_webkit_persistent_storage,
        workerNavigatorGetWebkitPersistentStorage,
        ghcjs_dom_worker_navigator_get_app_name, workerNavigatorGetAppName,
        ghcjs_dom_worker_navigator_get_app_version,
        workerNavigatorGetAppVersion,
        ghcjs_dom_worker_navigator_get_platform,
        workerNavigatorGetPlatform,
        ghcjs_dom_worker_navigator_get_user_agent,
        workerNavigatorGetUserAgent,
        ghcjs_dom_worker_navigator_get_on_line, workerNavigatorGetOnLine,
        WorkerNavigator, IsWorkerNavigator, castToWorkerNavigator,
        gTypeWorkerNavigator, toWorkerNavigator)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"webkitTemporaryStorage\"]"
        ghcjs_dom_worker_navigator_get_webkit_temporary_storage ::
        JSRef WorkerNavigator -> IO (JSRef StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitTemporaryStorage Mozilla WorkerNavigator.webkitTemporaryStorage documentation> 
workerNavigatorGetWebkitTemporaryStorage ::
                                         (IsWorkerNavigator self) => self -> IO (Maybe StorageQuota)
workerNavigatorGetWebkitTemporaryStorage self
  = (ghcjs_dom_worker_navigator_get_webkit_temporary_storage
       (unWorkerNavigator (toWorkerNavigator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"webkitPersistentStorage\"]"
        ghcjs_dom_worker_navigator_get_webkit_persistent_storage ::
        JSRef WorkerNavigator -> IO (JSRef StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitPersistentStorage Mozilla WorkerNavigator.webkitPersistentStorage documentation> 
workerNavigatorGetWebkitPersistentStorage ::
                                          (IsWorkerNavigator self) =>
                                            self -> IO (Maybe StorageQuota)
workerNavigatorGetWebkitPersistentStorage self
  = (ghcjs_dom_worker_navigator_get_webkit_persistent_storage
       (unWorkerNavigator (toWorkerNavigator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"appName\"]"
        ghcjs_dom_worker_navigator_get_app_name ::
        JSRef WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.appName Mozilla WorkerNavigator.appName documentation> 
workerNavigatorGetAppName ::
                          (IsWorkerNavigator self, FromJSString result) => self -> IO result
workerNavigatorGetAppName self
  = fromJSString <$>
      (ghcjs_dom_worker_navigator_get_app_name
         (unWorkerNavigator (toWorkerNavigator self)))
 
foreign import javascript unsafe "$1[\"appVersion\"]"
        ghcjs_dom_worker_navigator_get_app_version ::
        JSRef WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.appVersion Mozilla WorkerNavigator.appVersion documentation> 
workerNavigatorGetAppVersion ::
                             (IsWorkerNavigator self, FromJSString result) => self -> IO result
workerNavigatorGetAppVersion self
  = fromJSString <$>
      (ghcjs_dom_worker_navigator_get_app_version
         (unWorkerNavigator (toWorkerNavigator self)))
 
foreign import javascript unsafe "$1[\"platform\"]"
        ghcjs_dom_worker_navigator_get_platform ::
        JSRef WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.platform Mozilla WorkerNavigator.platform documentation> 
workerNavigatorGetPlatform ::
                           (IsWorkerNavigator self, FromJSString result) => self -> IO result
workerNavigatorGetPlatform self
  = fromJSString <$>
      (ghcjs_dom_worker_navigator_get_platform
         (unWorkerNavigator (toWorkerNavigator self)))
 
foreign import javascript unsafe "$1[\"userAgent\"]"
        ghcjs_dom_worker_navigator_get_user_agent ::
        JSRef WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.userAgent Mozilla WorkerNavigator.userAgent documentation> 
workerNavigatorGetUserAgent ::
                            (IsWorkerNavigator self, FromJSString result) => self -> IO result
workerNavigatorGetUserAgent self
  = fromJSString <$>
      (ghcjs_dom_worker_navigator_get_user_agent
         (unWorkerNavigator (toWorkerNavigator self)))
 
foreign import javascript unsafe "($1[\"onLine\"] ? 1 : 0)"
        ghcjs_dom_worker_navigator_get_on_line ::
        JSRef WorkerNavigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.onLine Mozilla WorkerNavigator.onLine documentation> 
workerNavigatorGetOnLine ::
                         (IsWorkerNavigator self) => self -> IO Bool
workerNavigatorGetOnLine self
  = ghcjs_dom_worker_navigator_get_on_line
      (unWorkerNavigator (toWorkerNavigator self))
#else
module GHCJS.DOM.WorkerNavigator (
  ) where
#endif
