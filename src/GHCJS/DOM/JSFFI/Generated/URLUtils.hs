{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.URLUtils
       (js_toString, toString, js_setHref, setHref, js_getHref, getHref,
        js_getOrigin, getOrigin, js_setProtocol, setProtocol,
        js_getProtocol, getProtocol, js_setUsername, setUsername,
        js_getUsername, getUsername, js_setPassword, setPassword,
        js_getPassword, getPassword, js_setHost, setHost, js_getHost,
        getHost, js_setHostname, setHostname, js_getHostname, getHostname,
        js_setPort, setPort, js_getPort, getPort, js_setPathname,
        setPathname, js_getPathname, getPathname, js_setSearch, setSearch,
        js_getSearch, getSearch, js_setHash, setHash, js_getHash, getHash,
        URLUtils, castToURLUtils, gTypeURLUtils)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.toString Mozilla URLUtils.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => URLUtils -> m result
toString self
  = liftIO (fromJSString <$> (js_toString (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.href Mozilla URLUtils.href documentation> 
setHref :: (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setHref self val
  = liftIO (js_setHref (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.href Mozilla URLUtils.href documentation> 
getHref :: (MonadIO m, FromJSString result) => URLUtils -> m result
getHref self
  = liftIO (fromJSString <$> (js_getHref (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.origin Mozilla URLUtils.origin documentation> 
getOrigin ::
          (MonadIO m, FromJSString result) => URLUtils -> m result
getOrigin self
  = liftIO (fromJSString <$> (js_getOrigin (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        js_setProtocol :: JSRef URLUtils -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.protocol Mozilla URLUtils.protocol documentation> 
setProtocol ::
            (MonadIO m, ToJSString val) => URLUtils -> Maybe val -> m ()
setProtocol self val
  = liftIO (js_setProtocol (unURLUtils self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: JSRef URLUtils -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.protocol Mozilla URLUtils.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => URLUtils -> m (Maybe result)
getProtocol self
  = liftIO (fromMaybeJSString <$> (js_getProtocol (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"username\"] = $2;"
        js_setUsername :: JSRef URLUtils -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.username Mozilla URLUtils.username documentation> 
setUsername ::
            (MonadIO m, ToJSString val) => URLUtils -> Maybe val -> m ()
setUsername self val
  = liftIO (js_setUsername (unURLUtils self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"username\"]" js_getUsername
        :: JSRef URLUtils -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.username Mozilla URLUtils.username documentation> 
getUsername ::
            (MonadIO m, FromJSString result) => URLUtils -> m (Maybe result)
getUsername self
  = liftIO (fromMaybeJSString <$> (js_getUsername (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"password\"] = $2;"
        js_setPassword :: JSRef URLUtils -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.password Mozilla URLUtils.password documentation> 
setPassword ::
            (MonadIO m, ToJSString val) => URLUtils -> Maybe val -> m ()
setPassword self val
  = liftIO (js_setPassword (unURLUtils self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"password\"]" js_getPassword
        :: JSRef URLUtils -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.password Mozilla URLUtils.password documentation> 
getPassword ::
            (MonadIO m, FromJSString result) => URLUtils -> m (Maybe result)
getPassword self
  = liftIO (fromMaybeJSString <$> (js_getPassword (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"host\"] = $2;" js_setHost ::
        JSRef URLUtils -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.host Mozilla URLUtils.host documentation> 
setHost ::
        (MonadIO m, ToJSString val) => URLUtils -> Maybe val -> m ()
setHost self val
  = liftIO (js_setHost (unURLUtils self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        JSRef URLUtils -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.host Mozilla URLUtils.host documentation> 
getHost ::
        (MonadIO m, FromJSString result) => URLUtils -> m (Maybe result)
getHost self
  = liftIO (fromMaybeJSString <$> (js_getHost (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        js_setHostname :: JSRef URLUtils -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hostname Mozilla URLUtils.hostname documentation> 
setHostname ::
            (MonadIO m, ToJSString val) => URLUtils -> Maybe val -> m ()
setHostname self val
  = liftIO (js_setHostname (unURLUtils self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: JSRef URLUtils -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hostname Mozilla URLUtils.hostname documentation> 
getHostname ::
            (MonadIO m, FromJSString result) => URLUtils -> m (Maybe result)
getHostname self
  = liftIO (fromMaybeJSString <$> (js_getHostname (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"port\"] = $2;" js_setPort ::
        JSRef URLUtils -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.port Mozilla URLUtils.port documentation> 
setPort ::
        (MonadIO m, ToJSString val) => URLUtils -> Maybe val -> m ()
setPort self val
  = liftIO (js_setPort (unURLUtils self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        JSRef URLUtils -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.port Mozilla URLUtils.port documentation> 
getPort ::
        (MonadIO m, FromJSString result) => URLUtils -> m (Maybe result)
getPort self
  = liftIO (fromMaybeJSString <$> (js_getPort (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        js_setPathname :: JSRef URLUtils -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.pathname Mozilla URLUtils.pathname documentation> 
setPathname ::
            (MonadIO m, ToJSString val) => URLUtils -> Maybe val -> m ()
setPathname self val
  = liftIO (js_setPathname (unURLUtils self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: JSRef URLUtils -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.pathname Mozilla URLUtils.pathname documentation> 
getPathname ::
            (MonadIO m, FromJSString result) => URLUtils -> m (Maybe result)
getPathname self
  = liftIO (fromMaybeJSString <$> (js_getPathname (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        js_setSearch :: JSRef URLUtils -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.search Mozilla URLUtils.search documentation> 
setSearch ::
          (MonadIO m, ToJSString val) => URLUtils -> Maybe val -> m ()
setSearch self val
  = liftIO (js_setSearch (unURLUtils self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        JSRef URLUtils -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.search Mozilla URLUtils.search documentation> 
getSearch ::
          (MonadIO m, FromJSString result) => URLUtils -> m (Maybe result)
getSearch self
  = liftIO (fromMaybeJSString <$> (js_getSearch (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;" js_setHash ::
        JSRef URLUtils -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hash Mozilla URLUtils.hash documentation> 
setHash ::
        (MonadIO m, ToJSString val) => URLUtils -> Maybe val -> m ()
setHash self val
  = liftIO (js_setHash (unURLUtils self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        JSRef URLUtils -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hash Mozilla URLUtils.hash documentation> 
getHash ::
        (MonadIO m, FromJSString result) => URLUtils -> m (Maybe result)
getHash self
  = liftIO (fromMaybeJSString <$> (js_getHash (unURLUtils self)))