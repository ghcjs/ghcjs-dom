{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.URL
       (js_newURL, newURL, js_newURL', newURL', js_newURL'', newURL'',
        js_toJSON, toJSON, toJSON_, js_createObjectURL, createObjectURL,
        createObjectURL_, js_revokeObjectURL, revokeObjectURL,
        js_createObjectURLSource, createObjectURLSource,
        createObjectURLSource_, js_setHref, setHref, js_getHref, getHref,
        js_getOrigin, getOrigin, js_setProtocol, setProtocol,
        js_getProtocol, getProtocol, js_setUsername, setUsername,
        js_getUsername, getUsername, js_setPassword, setPassword,
        js_getPassword, getPassword, js_setHost, setHost, js_getHost,
        getHost, js_setHostname, setHostname, js_getHostname, getHostname,
        js_setPort, setPort, js_getPort, getPort, js_setPathname,
        setPathname, js_getPathname, getPathname, js_setHash, setHash,
        js_getHash, getHash, js_setSearch, setSearch, js_getSearch,
        getSearch, js_getSearchParams, getSearchParams, URL(..), gTypeURL)
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
 
foreign import javascript safe "new window[\"URL\"]($1)" js_newURL
        :: JSString -> IO URL

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL :: (MonadIO m, ToJSString url) => url -> m URL
newURL url = liftIO (js_newURL (toJSString url))
 
foreign import javascript safe "new window[\"URL\"]($1, $2)"
        js_newURL' :: JSString -> JSString -> IO URL

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL' ::
        (MonadIO m, ToJSString url, ToJSString base) =>
          url -> base -> m URL
newURL' url base
  = liftIO (js_newURL' (toJSString url) (toJSString base))
 
foreign import javascript safe "new window[\"URL\"]($1, $2)"
        js_newURL'' :: JSString -> URL -> IO URL

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL'' :: (MonadIO m, ToJSString url) => url -> URL -> m URL
newURL'' url base = liftIO (js_newURL'' (toJSString url) base)
 
foreign import javascript unsafe "$1[\"toJSON\"]()" js_toJSON ::
        URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.toJSON Mozilla URL.toJSON documentation> 
toJSON :: (MonadIO m, FromJSString result) => URL -> m result
toJSON self = liftIO (fromJSString <$> (js_toJSON self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.toJSON Mozilla URL.toJSON documentation> 
toJSON_ :: (MonadIO m) => URL -> m ()
toJSON_ self = liftIO (void (js_toJSON self))
 
foreign import javascript unsafe
        "window[\"URL\"][\"createObjectURL\"]($1)" js_createObjectURL ::
        Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL ::
                (MonadIO m, IsBlob blob, FromJSString result) => blob -> m result
createObjectURL blob
  = liftIO (fromJSString <$> (js_createObjectURL (toBlob blob)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL_ :: (MonadIO m, IsBlob blob) => blob -> m ()
createObjectURL_ blob
  = liftIO (void (js_createObjectURL (toBlob blob)))
 
foreign import javascript unsafe
        "window[\"URL\"][\"revokeObjectURL\"]($1)" js_revokeObjectURL ::
        JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.revokeObjectURL Mozilla URL.revokeObjectURL documentation> 
revokeObjectURL :: (MonadIO m, ToJSString url) => url -> m ()
revokeObjectURL url = liftIO (js_revokeObjectURL (toJSString url))
 
foreign import javascript unsafe
        "window[\"URL\"][\"createObjectURL\"]($1)" js_createObjectURLSource
        :: MediaSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource ::
                      (MonadIO m, FromJSString result) => MediaSource -> m result
createObjectURLSource source
  = liftIO (fromJSString <$> (js_createObjectURLSource source))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource_ :: (MonadIO m) => MediaSource -> m ()
createObjectURLSource_ source
  = liftIO (void (js_createObjectURLSource source))
 
foreign import javascript safe "$1[\"href\"] = $2;" js_setHref ::
        URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.href Mozilla URL.href documentation> 
setHref :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setHref self val = liftIO (js_setHref self (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.href Mozilla URL.href documentation> 
getHref :: (MonadIO m, FromJSString result) => URL -> m result
getHref self = liftIO (fromJSString <$> (js_getHref self))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.origin Mozilla URL.origin documentation> 
getOrigin :: (MonadIO m, FromJSString result) => URL -> m result
getOrigin self = liftIO (fromJSString <$> (js_getOrigin self))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        js_setProtocol :: URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.protocol Mozilla URL.protocol documentation> 
setProtocol :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setProtocol self val
  = liftIO (js_setProtocol self (toJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.protocol Mozilla URL.protocol documentation> 
getProtocol :: (MonadIO m, FromJSString result) => URL -> m result
getProtocol self = liftIO (fromJSString <$> (js_getProtocol self))
 
foreign import javascript unsafe "$1[\"username\"] = $2;"
        js_setUsername :: URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.username Mozilla URL.username documentation> 
setUsername :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setUsername self val
  = liftIO (js_setUsername self (toJSString val))
 
foreign import javascript unsafe "$1[\"username\"]" js_getUsername
        :: URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.username Mozilla URL.username documentation> 
getUsername :: (MonadIO m, FromJSString result) => URL -> m result
getUsername self = liftIO (fromJSString <$> (js_getUsername self))
 
foreign import javascript unsafe "$1[\"password\"] = $2;"
        js_setPassword :: URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.password Mozilla URL.password documentation> 
setPassword :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setPassword self val
  = liftIO (js_setPassword self (toJSString val))
 
foreign import javascript unsafe "$1[\"password\"]" js_getPassword
        :: URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.password Mozilla URL.password documentation> 
getPassword :: (MonadIO m, FromJSString result) => URL -> m result
getPassword self = liftIO (fromJSString <$> (js_getPassword self))
 
foreign import javascript unsafe "$1[\"host\"] = $2;" js_setHost ::
        URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.host Mozilla URL.host documentation> 
setHost :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setHost self val = liftIO (js_setHost self (toJSString val))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.host Mozilla URL.host documentation> 
getHost :: (MonadIO m, FromJSString result) => URL -> m result
getHost self = liftIO (fromJSString <$> (js_getHost self))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        js_setHostname :: URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.hostname Mozilla URL.hostname documentation> 
setHostname :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setHostname self val
  = liftIO (js_setHostname self (toJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.hostname Mozilla URL.hostname documentation> 
getHostname :: (MonadIO m, FromJSString result) => URL -> m result
getHostname self = liftIO (fromJSString <$> (js_getHostname self))
 
foreign import javascript unsafe "$1[\"port\"] = $2;" js_setPort ::
        URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.port Mozilla URL.port documentation> 
setPort :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setPort self val = liftIO (js_setPort self (toJSString val))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.port Mozilla URL.port documentation> 
getPort :: (MonadIO m, FromJSString result) => URL -> m result
getPort self = liftIO (fromJSString <$> (js_getPort self))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        js_setPathname :: URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.pathname Mozilla URL.pathname documentation> 
setPathname :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setPathname self val
  = liftIO (js_setPathname self (toJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.pathname Mozilla URL.pathname documentation> 
getPathname :: (MonadIO m, FromJSString result) => URL -> m result
getPathname self = liftIO (fromJSString <$> (js_getPathname self))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;" js_setHash ::
        URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.hash Mozilla URL.hash documentation> 
setHash :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setHash self val = liftIO (js_setHash self (toJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.hash Mozilla URL.hash documentation> 
getHash :: (MonadIO m, FromJSString result) => URL -> m result
getHash self = liftIO (fromJSString <$> (js_getHash self))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        js_setSearch :: URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.search Mozilla URL.search documentation> 
setSearch :: (MonadIO m, ToJSString val) => URL -> val -> m ()
setSearch self val = liftIO (js_setSearch self (toJSString val))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        URL -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.search Mozilla URL.search documentation> 
getSearch :: (MonadIO m, FromJSString result) => URL -> m result
getSearch self = liftIO (fromJSString <$> (js_getSearch self))
 
foreign import javascript unsafe "$1[\"searchParams\"]"
        js_getSearchParams :: URL -> IO URLSearchParams

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.searchParams Mozilla URL.searchParams documentation> 
getSearchParams :: (MonadIO m) => URL -> m URLSearchParams
getSearchParams self = liftIO (js_getSearchParams self)