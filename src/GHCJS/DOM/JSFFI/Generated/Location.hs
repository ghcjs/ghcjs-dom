{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Location
       (js_assign, assign, js_replace, replace, js_reload, reload,
        js_toString, toString, js_setHref, setHref, js_getHref, getHref,
        js_setProtocol, setProtocol, js_getProtocol, getProtocol,
        js_setHost, setHost, js_getHost, getHost, js_setHostname,
        setHostname, js_getHostname, getHostname, js_setPort, setPort,
        js_getPort, getPort, js_setPathname, setPathname, js_getPathname,
        getPathname, js_setSearch, setSearch, js_getSearch, getSearch,
        js_setHash, setHash, js_getHash, getHash, js_getOrigin, getOrigin,
        js_getAncestorOrigins, getAncestorOrigins, Location,
        castToLocation, gTypeLocation)
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
 
foreign import javascript unsafe "$1[\"assign\"]($2)" js_assign ::
        Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.assign Mozilla Location.assign documentation> 
assign :: (MonadIO m, ToJSString url) => Location -> url -> m ()
assign self url = liftIO (js_assign (self) (toJSString url))
 
foreign import javascript unsafe "$1[\"replace\"]($2)" js_replace
        :: Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.replace Mozilla Location.replace documentation> 
replace :: (MonadIO m, ToJSString url) => Location -> url -> m ()
replace self url = liftIO (js_replace (self) (toJSString url))
 
foreign import javascript unsafe "$1[\"reload\"]()" js_reload ::
        Location -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.reload Mozilla Location.reload documentation> 
reload :: (MonadIO m) => Location -> m ()
reload self = liftIO (js_reload (self))
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.toString Mozilla Location.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => Location -> m result
toString self = liftIO (fromJSString <$> (js_toString (self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.href Mozilla Location.href documentation> 
setHref :: (MonadIO m, ToJSString val) => Location -> val -> m ()
setHref self val = liftIO (js_setHref (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.href Mozilla Location.href documentation> 
getHref :: (MonadIO m, FromJSString result) => Location -> m result
getHref self = liftIO (fromJSString <$> (js_getHref (self)))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        js_setProtocol :: Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.protocol Mozilla Location.protocol documentation> 
setProtocol ::
            (MonadIO m, ToJSString val) => Location -> val -> m ()
setProtocol self val
  = liftIO (js_setProtocol (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.protocol Mozilla Location.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => Location -> m result
getProtocol self
  = liftIO (fromJSString <$> (js_getProtocol (self)))
 
foreign import javascript unsafe "$1[\"host\"] = $2;" js_setHost ::
        Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.host Mozilla Location.host documentation> 
setHost :: (MonadIO m, ToJSString val) => Location -> val -> m ()
setHost self val = liftIO (js_setHost (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.host Mozilla Location.host documentation> 
getHost :: (MonadIO m, FromJSString result) => Location -> m result
getHost self = liftIO (fromJSString <$> (js_getHost (self)))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        js_setHostname :: Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hostname Mozilla Location.hostname documentation> 
setHostname ::
            (MonadIO m, ToJSString val) => Location -> val -> m ()
setHostname self val
  = liftIO (js_setHostname (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hostname Mozilla Location.hostname documentation> 
getHostname ::
            (MonadIO m, FromJSString result) => Location -> m result
getHostname self
  = liftIO (fromJSString <$> (js_getHostname (self)))
 
foreign import javascript unsafe "$1[\"port\"] = $2;" js_setPort ::
        Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.port Mozilla Location.port documentation> 
setPort :: (MonadIO m, ToJSString val) => Location -> val -> m ()
setPort self val = liftIO (js_setPort (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.port Mozilla Location.port documentation> 
getPort :: (MonadIO m, FromJSString result) => Location -> m result
getPort self = liftIO (fromJSString <$> (js_getPort (self)))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        js_setPathname :: Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.pathname Mozilla Location.pathname documentation> 
setPathname ::
            (MonadIO m, ToJSString val) => Location -> val -> m ()
setPathname self val
  = liftIO (js_setPathname (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.pathname Mozilla Location.pathname documentation> 
getPathname ::
            (MonadIO m, FromJSString result) => Location -> m result
getPathname self
  = liftIO (fromJSString <$> (js_getPathname (self)))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        js_setSearch :: Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.search Mozilla Location.search documentation> 
setSearch :: (MonadIO m, ToJSString val) => Location -> val -> m ()
setSearch self val = liftIO (js_setSearch (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.search Mozilla Location.search documentation> 
getSearch ::
          (MonadIO m, FromJSString result) => Location -> m result
getSearch self = liftIO (fromJSString <$> (js_getSearch (self)))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;" js_setHash ::
        Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hash Mozilla Location.hash documentation> 
setHash :: (MonadIO m, ToJSString val) => Location -> val -> m ()
setHash self val = liftIO (js_setHash (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hash Mozilla Location.hash documentation> 
getHash :: (MonadIO m, FromJSString result) => Location -> m result
getHash self = liftIO (fromJSString <$> (js_getHash (self)))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.origin Mozilla Location.origin documentation> 
getOrigin ::
          (MonadIO m, FromJSString result) => Location -> m result
getOrigin self = liftIO (fromJSString <$> (js_getOrigin (self)))
 
foreign import javascript unsafe "$1[\"ancestorOrigins\"]"
        js_getAncestorOrigins :: Location -> IO (Nullable DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.ancestorOrigins Mozilla Location.ancestorOrigins documentation> 
getAncestorOrigins ::
                   (MonadIO m) => Location -> m (Maybe DOMStringList)
getAncestorOrigins self
  = liftIO (nullableToMaybe <$> (js_getAncestorOrigins (self)))