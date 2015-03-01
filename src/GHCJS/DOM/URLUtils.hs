{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.URLUtils
       (js_setHref, setHref, js_getHref, getHref, js_getOrigin, getOrigin,
        js_setProtocol, setProtocol, js_getProtocol, getProtocol,
        js_setUsername, setUsername, js_getUsername, getUsername,
        js_setPassword, setPassword, js_getPassword, getPassword,
        js_setHost, setHost, js_getHost, getHost, js_setHostname,
        setHostname, js_getHostname, getHostname, js_setPort, setPort,
        js_getPort, getPort, js_setPathname, setPathname, js_getPathname,
        getPathname, js_setSearch, setSearch, js_getSearch, getSearch,
        js_setHash, setHash, js_getHash, getHash, URLUtils, castToURLUtils,
        gTypeURLUtils)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
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
        js_setProtocol :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.protocol Mozilla URLUtils.protocol documentation> 
setProtocol ::
            (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setProtocol self val
  = liftIO (js_setProtocol (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.protocol Mozilla URLUtils.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => URLUtils -> m result
getProtocol self
  = liftIO (fromJSString <$> (js_getProtocol (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"username\"] = $2;"
        js_setUsername :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.username Mozilla URLUtils.username documentation> 
setUsername ::
            (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setUsername self val
  = liftIO (js_setUsername (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"username\"]" js_getUsername
        :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.username Mozilla URLUtils.username documentation> 
getUsername ::
            (MonadIO m, FromJSString result) => URLUtils -> m result
getUsername self
  = liftIO (fromJSString <$> (js_getUsername (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"password\"] = $2;"
        js_setPassword :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.password Mozilla URLUtils.password documentation> 
setPassword ::
            (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setPassword self val
  = liftIO (js_setPassword (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"password\"]" js_getPassword
        :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.password Mozilla URLUtils.password documentation> 
getPassword ::
            (MonadIO m, FromJSString result) => URLUtils -> m result
getPassword self
  = liftIO (fromJSString <$> (js_getPassword (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"host\"] = $2;" js_setHost ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.host Mozilla URLUtils.host documentation> 
setHost :: (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setHost self val
  = liftIO (js_setHost (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.host Mozilla URLUtils.host documentation> 
getHost :: (MonadIO m, FromJSString result) => URLUtils -> m result
getHost self
  = liftIO (fromJSString <$> (js_getHost (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        js_setHostname :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hostname Mozilla URLUtils.hostname documentation> 
setHostname ::
            (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setHostname self val
  = liftIO (js_setHostname (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hostname Mozilla URLUtils.hostname documentation> 
getHostname ::
            (MonadIO m, FromJSString result) => URLUtils -> m result
getHostname self
  = liftIO (fromJSString <$> (js_getHostname (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"port\"] = $2;" js_setPort ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.port Mozilla URLUtils.port documentation> 
setPort :: (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setPort self val
  = liftIO (js_setPort (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.port Mozilla URLUtils.port documentation> 
getPort :: (MonadIO m, FromJSString result) => URLUtils -> m result
getPort self
  = liftIO (fromJSString <$> (js_getPort (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        js_setPathname :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.pathname Mozilla URLUtils.pathname documentation> 
setPathname ::
            (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setPathname self val
  = liftIO (js_setPathname (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.pathname Mozilla URLUtils.pathname documentation> 
getPathname ::
            (MonadIO m, FromJSString result) => URLUtils -> m result
getPathname self
  = liftIO (fromJSString <$> (js_getPathname (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        js_setSearch :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.search Mozilla URLUtils.search documentation> 
setSearch :: (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setSearch self val
  = liftIO (js_setSearch (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.search Mozilla URLUtils.search documentation> 
getSearch ::
          (MonadIO m, FromJSString result) => URLUtils -> m result
getSearch self
  = liftIO (fromJSString <$> (js_getSearch (unURLUtils self)))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;" js_setHash ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hash Mozilla URLUtils.hash documentation> 
setHash :: (MonadIO m, ToJSString val) => URLUtils -> val -> m ()
setHash self val
  = liftIO (js_setHash (unURLUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hash Mozilla URLUtils.hash documentation> 
getHash :: (MonadIO m, FromJSString result) => URLUtils -> m result
getHash self
  = liftIO (fromJSString <$> (js_getHash (unURLUtils self)))
#else
module GHCJS.DOM.URLUtils (
  ) where
#endif
