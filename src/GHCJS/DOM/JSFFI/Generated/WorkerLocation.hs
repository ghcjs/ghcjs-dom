{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WorkerLocation
       (js_toString, toString, js_getHref, getHref, js_getProtocol,
        getProtocol, js_getHost, getHost, js_getHostname, getHostname,
        js_getPort, getPort, js_getPathname, getPathname, js_getSearch,
        getSearch, js_getHash, getHash, WorkerLocation,
        castToWorkerLocation, gTypeWorkerLocation)
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
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.toString Mozilla WorkerLocation.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => WorkerLocation -> m result
toString self = liftIO (fromJSString <$> (js_toString (self)))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.href Mozilla WorkerLocation.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) => WorkerLocation -> m result
getHref self = liftIO (fromJSString <$> (js_getHref (self)))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.protocol Mozilla WorkerLocation.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => WorkerLocation -> m result
getProtocol self
  = liftIO (fromJSString <$> (js_getProtocol (self)))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.host Mozilla WorkerLocation.host documentation> 
getHost ::
        (MonadIO m, FromJSString result) => WorkerLocation -> m result
getHost self = liftIO (fromJSString <$> (js_getHost (self)))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.hostname Mozilla WorkerLocation.hostname documentation> 
getHostname ::
            (MonadIO m, FromJSString result) => WorkerLocation -> m result
getHostname self
  = liftIO (fromJSString <$> (js_getHostname (self)))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.port Mozilla WorkerLocation.port documentation> 
getPort ::
        (MonadIO m, FromJSString result) => WorkerLocation -> m result
getPort self = liftIO (fromJSString <$> (js_getPort (self)))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.pathname Mozilla WorkerLocation.pathname documentation> 
getPathname ::
            (MonadIO m, FromJSString result) => WorkerLocation -> m result
getPathname self
  = liftIO (fromJSString <$> (js_getPathname (self)))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.search Mozilla WorkerLocation.search documentation> 
getSearch ::
          (MonadIO m, FromJSString result) => WorkerLocation -> m result
getSearch self = liftIO (fromJSString <$> (js_getSearch (self)))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        WorkerLocation -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerLocation.hash Mozilla WorkerLocation.hash documentation> 
getHash ::
        (MonadIO m, FromJSString result) => WorkerLocation -> m result
getHash self = liftIO (fromJSString <$> (js_getHash (self)))