{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WorkerNavigator
       (js_getWebkitTemporaryStorage, getWebkitTemporaryStorage,
        js_getWebkitPersistentStorage, getWebkitPersistentStorage,
        js_getAppName, getAppName, js_getAppVersion, getAppVersion,
        js_getPlatform, getPlatform, js_getUserAgent, getUserAgent,
        js_getOnLine, getOnLine, WorkerNavigator, castToWorkerNavigator,
        gTypeWorkerNavigator)
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
 
foreign import javascript unsafe "$1[\"webkitTemporaryStorage\"]"
        js_getWebkitTemporaryStorage ::
        WorkerNavigator -> IO (Nullable StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitTemporaryStorage Mozilla WorkerNavigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorage ::
                          (MonadIO m) => WorkerNavigator -> m (Maybe StorageQuota)
getWebkitTemporaryStorage self
  = liftIO
      (nullableToMaybe <$> (js_getWebkitTemporaryStorage (self)))
 
foreign import javascript unsafe "$1[\"webkitPersistentStorage\"]"
        js_getWebkitPersistentStorage ::
        WorkerNavigator -> IO (Nullable StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitPersistentStorage Mozilla WorkerNavigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorage ::
                           (MonadIO m) => WorkerNavigator -> m (Maybe StorageQuota)
getWebkitPersistentStorage self
  = liftIO
      (nullableToMaybe <$> (js_getWebkitPersistentStorage (self)))
 
foreign import javascript unsafe "$1[\"appName\"]" js_getAppName ::
        WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.appName Mozilla WorkerNavigator.appName documentation> 
getAppName ::
           (MonadIO m, FromJSString result) => WorkerNavigator -> m result
getAppName self = liftIO (fromJSString <$> (js_getAppName (self)))
 
foreign import javascript unsafe "$1[\"appVersion\"]"
        js_getAppVersion :: WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.appVersion Mozilla WorkerNavigator.appVersion documentation> 
getAppVersion ::
              (MonadIO m, FromJSString result) => WorkerNavigator -> m result
getAppVersion self
  = liftIO (fromJSString <$> (js_getAppVersion (self)))
 
foreign import javascript unsafe "$1[\"platform\"]" js_getPlatform
        :: WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.platform Mozilla WorkerNavigator.platform documentation> 
getPlatform ::
            (MonadIO m, FromJSString result) => WorkerNavigator -> m result
getPlatform self
  = liftIO (fromJSString <$> (js_getPlatform (self)))
 
foreign import javascript unsafe "$1[\"userAgent\"]"
        js_getUserAgent :: WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.userAgent Mozilla WorkerNavigator.userAgent documentation> 
getUserAgent ::
             (MonadIO m, FromJSString result) => WorkerNavigator -> m result
getUserAgent self
  = liftIO (fromJSString <$> (js_getUserAgent (self)))
 
foreign import javascript unsafe "($1[\"onLine\"] ? 1 : 0)"
        js_getOnLine :: WorkerNavigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.onLine Mozilla WorkerNavigator.onLine documentation> 
getOnLine :: (MonadIO m) => WorkerNavigator -> m Bool
getOnLine self = liftIO (js_getOnLine (self))