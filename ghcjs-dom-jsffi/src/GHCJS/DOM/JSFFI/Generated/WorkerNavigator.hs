{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WorkerNavigator
       (js_getWebkitTemporaryStorage, getWebkitTemporaryStorage,
        getWebkitTemporaryStorageUnsafe,
        getWebkitTemporaryStorageUnchecked, js_getWebkitPersistentStorage,
        getWebkitPersistentStorage, getWebkitPersistentStorageUnsafe,
        getWebkitPersistentStorageUnchecked, js_getAppName, getAppName,
        js_getAppVersion, getAppVersion, js_getPlatform, getPlatform,
        js_getUserAgent, getUserAgent, js_getOnLine, getOnLine,
        WorkerNavigator(..), gTypeWorkerNavigator)
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
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"webkitTemporaryStorage\"]"
        js_getWebkitTemporaryStorage ::
        WorkerNavigator -> IO (Nullable StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitTemporaryStorage Mozilla WorkerNavigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorage ::
                          (MonadIO m) => WorkerNavigator -> m (Maybe StorageQuota)
getWebkitTemporaryStorage self
  = liftIO
      (nullableToMaybe <$> (js_getWebkitTemporaryStorage (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitTemporaryStorage Mozilla WorkerNavigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorageUnsafe ::
                                (MonadIO m, HasCallStack) => WorkerNavigator -> m StorageQuota
getWebkitTemporaryStorageUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getWebkitTemporaryStorage (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitTemporaryStorage Mozilla WorkerNavigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorageUnchecked ::
                                   (MonadIO m) => WorkerNavigator -> m StorageQuota
getWebkitTemporaryStorageUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getWebkitTemporaryStorage (self)))
 
foreign import javascript unsafe "$1[\"webkitPersistentStorage\"]"
        js_getWebkitPersistentStorage ::
        WorkerNavigator -> IO (Nullable StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitPersistentStorage Mozilla WorkerNavigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorage ::
                           (MonadIO m) => WorkerNavigator -> m (Maybe StorageQuota)
getWebkitPersistentStorage self
  = liftIO
      (nullableToMaybe <$> (js_getWebkitPersistentStorage (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitPersistentStorage Mozilla WorkerNavigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorageUnsafe ::
                                 (MonadIO m, HasCallStack) => WorkerNavigator -> m StorageQuota
getWebkitPersistentStorageUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getWebkitPersistentStorage (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitPersistentStorage Mozilla WorkerNavigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorageUnchecked ::
                                    (MonadIO m) => WorkerNavigator -> m StorageQuota
getWebkitPersistentStorageUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getWebkitPersistentStorage (self)))
 
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