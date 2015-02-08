{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Location
       (ghcjs_dom_location_assign, locationAssign,
        ghcjs_dom_location_replace, locationReplace,
        ghcjs_dom_location_reload, locationReload,
        ghcjs_dom_location_set_href, locationSetHref,
        ghcjs_dom_location_get_href, locationGetHref,
        ghcjs_dom_location_set_protocol, locationSetProtocol,
        ghcjs_dom_location_get_protocol, locationGetProtocol,
        ghcjs_dom_location_set_host, locationSetHost,
        ghcjs_dom_location_get_host, locationGetHost,
        ghcjs_dom_location_set_hostname, locationSetHostname,
        ghcjs_dom_location_get_hostname, locationGetHostname,
        ghcjs_dom_location_set_port, locationSetPort,
        ghcjs_dom_location_get_port, locationGetPort,
        ghcjs_dom_location_set_pathname, locationSetPathname,
        ghcjs_dom_location_get_pathname, locationGetPathname,
        ghcjs_dom_location_set_search, locationSetSearch,
        ghcjs_dom_location_get_search, locationGetSearch,
        ghcjs_dom_location_set_hash, locationSetHash,
        ghcjs_dom_location_get_hash, locationGetHash,
        ghcjs_dom_location_get_origin, locationGetOrigin,
        ghcjs_dom_location_get_ancestor_origins,
        locationGetAncestorOrigins, Location, IsLocation, castToLocation,
        gTypeLocation, toLocation)
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

 
foreign import javascript unsafe "$1[\"assign\"]($2)"
        ghcjs_dom_location_assign :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.assign Mozilla Location.assign documentation> 
locationAssign ::
               (MonadIO m, IsLocation self, ToJSString url) => self -> url -> m ()
locationAssign self url
  = liftIO
      (ghcjs_dom_location_assign (unLocation (toLocation self))
         (toJSString url))
 
foreign import javascript unsafe "$1[\"replace\"]($2)"
        ghcjs_dom_location_replace :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.replace Mozilla Location.replace documentation> 
locationReplace ::
                (MonadIO m, IsLocation self, ToJSString url) => self -> url -> m ()
locationReplace self url
  = liftIO
      (ghcjs_dom_location_replace (unLocation (toLocation self))
         (toJSString url))
 
foreign import javascript unsafe "$1[\"reload\"]()"
        ghcjs_dom_location_reload :: JSRef Location -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.reload Mozilla Location.reload documentation> 
locationReload :: (MonadIO m, IsLocation self) => self -> m ()
locationReload self
  = liftIO (ghcjs_dom_location_reload (unLocation (toLocation self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_location_set_href :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.href Mozilla Location.href documentation> 
locationSetHref ::
                (MonadIO m, IsLocation self, ToJSString val) => self -> val -> m ()
locationSetHref self val
  = liftIO
      (ghcjs_dom_location_set_href (unLocation (toLocation self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_location_get_href :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.href Mozilla Location.href documentation> 
locationGetHref ::
                (MonadIO m, IsLocation self, FromJSString result) =>
                  self -> m result
locationGetHref self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_location_get_href (unLocation (toLocation self))))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        ghcjs_dom_location_set_protocol ::
        JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.protocol Mozilla Location.protocol documentation> 
locationSetProtocol ::
                    (MonadIO m, IsLocation self, ToJSString val) => self -> val -> m ()
locationSetProtocol self val
  = liftIO
      (ghcjs_dom_location_set_protocol (unLocation (toLocation self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_location_get_protocol :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.protocol Mozilla Location.protocol documentation> 
locationGetProtocol ::
                    (MonadIO m, IsLocation self, FromJSString result) =>
                      self -> m result
locationGetProtocol self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_location_get_protocol (unLocation (toLocation self))))
 
foreign import javascript unsafe "$1[\"host\"] = $2;"
        ghcjs_dom_location_set_host :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.host Mozilla Location.host documentation> 
locationSetHost ::
                (MonadIO m, IsLocation self, ToJSString val) => self -> val -> m ()
locationSetHost self val
  = liftIO
      (ghcjs_dom_location_set_host (unLocation (toLocation self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_location_get_host :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.host Mozilla Location.host documentation> 
locationGetHost ::
                (MonadIO m, IsLocation self, FromJSString result) =>
                  self -> m result
locationGetHost self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_location_get_host (unLocation (toLocation self))))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        ghcjs_dom_location_set_hostname ::
        JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hostname Mozilla Location.hostname documentation> 
locationSetHostname ::
                    (MonadIO m, IsLocation self, ToJSString val) => self -> val -> m ()
locationSetHostname self val
  = liftIO
      (ghcjs_dom_location_set_hostname (unLocation (toLocation self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_location_get_hostname :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hostname Mozilla Location.hostname documentation> 
locationGetHostname ::
                    (MonadIO m, IsLocation self, FromJSString result) =>
                      self -> m result
locationGetHostname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_location_get_hostname (unLocation (toLocation self))))
 
foreign import javascript unsafe "$1[\"port\"] = $2;"
        ghcjs_dom_location_set_port :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.port Mozilla Location.port documentation> 
locationSetPort ::
                (MonadIO m, IsLocation self, ToJSString val) => self -> val -> m ()
locationSetPort self val
  = liftIO
      (ghcjs_dom_location_set_port (unLocation (toLocation self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_location_get_port :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.port Mozilla Location.port documentation> 
locationGetPort ::
                (MonadIO m, IsLocation self, FromJSString result) =>
                  self -> m result
locationGetPort self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_location_get_port (unLocation (toLocation self))))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        ghcjs_dom_location_set_pathname ::
        JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.pathname Mozilla Location.pathname documentation> 
locationSetPathname ::
                    (MonadIO m, IsLocation self, ToJSString val) => self -> val -> m ()
locationSetPathname self val
  = liftIO
      (ghcjs_dom_location_set_pathname (unLocation (toLocation self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_location_get_pathname :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.pathname Mozilla Location.pathname documentation> 
locationGetPathname ::
                    (MonadIO m, IsLocation self, FromJSString result) =>
                      self -> m result
locationGetPathname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_location_get_pathname (unLocation (toLocation self))))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        ghcjs_dom_location_set_search ::
        JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.search Mozilla Location.search documentation> 
locationSetSearch ::
                  (MonadIO m, IsLocation self, ToJSString val) => self -> val -> m ()
locationSetSearch self val
  = liftIO
      (ghcjs_dom_location_set_search (unLocation (toLocation self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_location_get_search :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.search Mozilla Location.search documentation> 
locationGetSearch ::
                  (MonadIO m, IsLocation self, FromJSString result) =>
                    self -> m result
locationGetSearch self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_location_get_search (unLocation (toLocation self))))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;"
        ghcjs_dom_location_set_hash :: JSRef Location -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hash Mozilla Location.hash documentation> 
locationSetHash ::
                (MonadIO m, IsLocation self, ToJSString val) => self -> val -> m ()
locationSetHash self val
  = liftIO
      (ghcjs_dom_location_set_hash (unLocation (toLocation self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_location_get_hash :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.hash Mozilla Location.hash documentation> 
locationGetHash ::
                (MonadIO m, IsLocation self, FromJSString result) =>
                  self -> m result
locationGetHash self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_location_get_hash (unLocation (toLocation self))))
 
foreign import javascript unsafe "$1[\"origin\"]"
        ghcjs_dom_location_get_origin :: JSRef Location -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.origin Mozilla Location.origin documentation> 
locationGetOrigin ::
                  (MonadIO m, IsLocation self, FromJSString result) =>
                    self -> m result
locationGetOrigin self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_location_get_origin (unLocation (toLocation self))))
 
foreign import javascript unsafe "$1[\"ancestorOrigins\"]"
        ghcjs_dom_location_get_ancestor_origins ::
        JSRef Location -> IO (JSRef DOMStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Location.ancestorOrigins Mozilla Location.ancestorOrigins documentation> 
locationGetAncestorOrigins ::
                           (MonadIO m, IsLocation self) => self -> m (Maybe DOMStringList)
locationGetAncestorOrigins self
  = liftIO
      ((ghcjs_dom_location_get_ancestor_origins
          (unLocation (toLocation self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.Location (
  module Graphics.UI.Gtk.WebKit.DOM.Location
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Location
#endif
