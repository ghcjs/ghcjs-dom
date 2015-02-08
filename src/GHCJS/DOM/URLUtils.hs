{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.URLUtils
       (ghcjs_dom_url_utils_set_href, urlUtilsSetHref,
        ghcjs_dom_url_utils_get_href, urlUtilsGetHref,
        ghcjs_dom_url_utils_get_origin, urlUtilsGetOrigin,
        ghcjs_dom_url_utils_set_protocol, urlUtilsSetProtocol,
        ghcjs_dom_url_utils_get_protocol, urlUtilsGetProtocol,
        ghcjs_dom_url_utils_set_username, urlUtilsSetUsername,
        ghcjs_dom_url_utils_get_username, urlUtilsGetUsername,
        ghcjs_dom_url_utils_set_password, urlUtilsSetPassword,
        ghcjs_dom_url_utils_get_password, urlUtilsGetPassword,
        ghcjs_dom_url_utils_set_host, urlUtilsSetHost,
        ghcjs_dom_url_utils_get_host, urlUtilsGetHost,
        ghcjs_dom_url_utils_set_hostname, urlUtilsSetHostname,
        ghcjs_dom_url_utils_get_hostname, urlUtilsGetHostname,
        ghcjs_dom_url_utils_set_port, urlUtilsSetPort,
        ghcjs_dom_url_utils_get_port, urlUtilsGetPort,
        ghcjs_dom_url_utils_set_pathname, urlUtilsSetPathname,
        ghcjs_dom_url_utils_get_pathname, urlUtilsGetPathname,
        ghcjs_dom_url_utils_set_search, urlUtilsSetSearch,
        ghcjs_dom_url_utils_get_search, urlUtilsGetSearch,
        ghcjs_dom_url_utils_set_hash, urlUtilsSetHash,
        ghcjs_dom_url_utils_get_hash, urlUtilsGetHash, URLUtils,
        IsURLUtils, castToURLUtils, gTypeURLUtils, toURLUtils)
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

 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_url_utils_set_href :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.href Mozilla URLUtils.href documentation> 
urlUtilsSetHref ::
                (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetHref self val
  = liftIO
      (ghcjs_dom_url_utils_set_href (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_url_utils_get_href :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.href Mozilla URLUtils.href documentation> 
urlUtilsGetHref ::
                (MonadIO m, IsURLUtils self, FromJSString result) =>
                  self -> m result
urlUtilsGetHref self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_href (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"origin\"]"
        ghcjs_dom_url_utils_get_origin :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.origin Mozilla URLUtils.origin documentation> 
urlUtilsGetOrigin ::
                  (MonadIO m, IsURLUtils self, FromJSString result) =>
                    self -> m result
urlUtilsGetOrigin self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_origin (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        ghcjs_dom_url_utils_set_protocol ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.protocol Mozilla URLUtils.protocol documentation> 
urlUtilsSetProtocol ::
                    (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetProtocol self val
  = liftIO
      (ghcjs_dom_url_utils_set_protocol (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_url_utils_get_protocol :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.protocol Mozilla URLUtils.protocol documentation> 
urlUtilsGetProtocol ::
                    (MonadIO m, IsURLUtils self, FromJSString result) =>
                      self -> m result
urlUtilsGetProtocol self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_protocol (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"username\"] = $2;"
        ghcjs_dom_url_utils_set_username ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.username Mozilla URLUtils.username documentation> 
urlUtilsSetUsername ::
                    (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetUsername self val
  = liftIO
      (ghcjs_dom_url_utils_set_username (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"username\"]"
        ghcjs_dom_url_utils_get_username :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.username Mozilla URLUtils.username documentation> 
urlUtilsGetUsername ::
                    (MonadIO m, IsURLUtils self, FromJSString result) =>
                      self -> m result
urlUtilsGetUsername self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_username (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"password\"] = $2;"
        ghcjs_dom_url_utils_set_password ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.password Mozilla URLUtils.password documentation> 
urlUtilsSetPassword ::
                    (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetPassword self val
  = liftIO
      (ghcjs_dom_url_utils_set_password (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"password\"]"
        ghcjs_dom_url_utils_get_password :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.password Mozilla URLUtils.password documentation> 
urlUtilsGetPassword ::
                    (MonadIO m, IsURLUtils self, FromJSString result) =>
                      self -> m result
urlUtilsGetPassword self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_password (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"host\"] = $2;"
        ghcjs_dom_url_utils_set_host :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.host Mozilla URLUtils.host documentation> 
urlUtilsSetHost ::
                (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetHost self val
  = liftIO
      (ghcjs_dom_url_utils_set_host (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_url_utils_get_host :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.host Mozilla URLUtils.host documentation> 
urlUtilsGetHost ::
                (MonadIO m, IsURLUtils self, FromJSString result) =>
                  self -> m result
urlUtilsGetHost self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_host (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        ghcjs_dom_url_utils_set_hostname ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hostname Mozilla URLUtils.hostname documentation> 
urlUtilsSetHostname ::
                    (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetHostname self val
  = liftIO
      (ghcjs_dom_url_utils_set_hostname (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_url_utils_get_hostname :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hostname Mozilla URLUtils.hostname documentation> 
urlUtilsGetHostname ::
                    (MonadIO m, IsURLUtils self, FromJSString result) =>
                      self -> m result
urlUtilsGetHostname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_hostname (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"port\"] = $2;"
        ghcjs_dom_url_utils_set_port :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.port Mozilla URLUtils.port documentation> 
urlUtilsSetPort ::
                (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetPort self val
  = liftIO
      (ghcjs_dom_url_utils_set_port (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_url_utils_get_port :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.port Mozilla URLUtils.port documentation> 
urlUtilsGetPort ::
                (MonadIO m, IsURLUtils self, FromJSString result) =>
                  self -> m result
urlUtilsGetPort self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_port (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        ghcjs_dom_url_utils_set_pathname ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.pathname Mozilla URLUtils.pathname documentation> 
urlUtilsSetPathname ::
                    (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetPathname self val
  = liftIO
      (ghcjs_dom_url_utils_set_pathname (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_url_utils_get_pathname :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.pathname Mozilla URLUtils.pathname documentation> 
urlUtilsGetPathname ::
                    (MonadIO m, IsURLUtils self, FromJSString result) =>
                      self -> m result
urlUtilsGetPathname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_pathname (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        ghcjs_dom_url_utils_set_search ::
        JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.search Mozilla URLUtils.search documentation> 
urlUtilsSetSearch ::
                  (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetSearch self val
  = liftIO
      (ghcjs_dom_url_utils_set_search (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_url_utils_get_search :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.search Mozilla URLUtils.search documentation> 
urlUtilsGetSearch ::
                  (MonadIO m, IsURLUtils self, FromJSString result) =>
                    self -> m result
urlUtilsGetSearch self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_search (unURLUtils (toURLUtils self))))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;"
        ghcjs_dom_url_utils_set_hash :: JSRef URLUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hash Mozilla URLUtils.hash documentation> 
urlUtilsSetHash ::
                (MonadIO m, IsURLUtils self, ToJSString val) => self -> val -> m ()
urlUtilsSetHash self val
  = liftIO
      (ghcjs_dom_url_utils_set_hash (unURLUtils (toURLUtils self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_url_utils_get_hash :: JSRef URLUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLUtils.hash Mozilla URLUtils.hash documentation> 
urlUtilsGetHash ::
                (MonadIO m, IsURLUtils self, FromJSString result) =>
                  self -> m result
urlUtilsGetHash self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_url_utils_get_hash (unURLUtils (toURLUtils self))))
#else
module GHCJS.DOM.URLUtils (
  ) where
#endif
