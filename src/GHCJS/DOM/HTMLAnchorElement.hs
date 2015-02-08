{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLAnchorElement
       (ghcjs_dom_html_anchor_element_set_charset,
        htmlAnchorElementSetCharset,
        ghcjs_dom_html_anchor_element_get_charset,
        htmlAnchorElementGetCharset,
        ghcjs_dom_html_anchor_element_set_coords,
        htmlAnchorElementSetCoords,
        ghcjs_dom_html_anchor_element_get_coords,
        htmlAnchorElementGetCoords,
        ghcjs_dom_html_anchor_element_set_download,
        htmlAnchorElementSetDownload,
        ghcjs_dom_html_anchor_element_get_download,
        htmlAnchorElementGetDownload,
        ghcjs_dom_html_anchor_element_set_href, htmlAnchorElementSetHref,
        ghcjs_dom_html_anchor_element_get_href, htmlAnchorElementGetHref,
        ghcjs_dom_html_anchor_element_set_hreflang,
        htmlAnchorElementSetHreflang,
        ghcjs_dom_html_anchor_element_get_hreflang,
        htmlAnchorElementGetHreflang,
        ghcjs_dom_html_anchor_element_set_name, htmlAnchorElementSetName,
        ghcjs_dom_html_anchor_element_get_name, htmlAnchorElementGetName,
        ghcjs_dom_html_anchor_element_set_ping, htmlAnchorElementSetPing,
        ghcjs_dom_html_anchor_element_get_ping, htmlAnchorElementGetPing,
        ghcjs_dom_html_anchor_element_set_rel, htmlAnchorElementSetRel,
        ghcjs_dom_html_anchor_element_get_rel, htmlAnchorElementGetRel,
        ghcjs_dom_html_anchor_element_set_rev, htmlAnchorElementSetRev,
        ghcjs_dom_html_anchor_element_get_rev, htmlAnchorElementGetRev,
        ghcjs_dom_html_anchor_element_set_shape, htmlAnchorElementSetShape,
        ghcjs_dom_html_anchor_element_get_shape, htmlAnchorElementGetShape,
        ghcjs_dom_html_anchor_element_set_target,
        htmlAnchorElementSetTarget,
        ghcjs_dom_html_anchor_element_get_target,
        htmlAnchorElementGetTarget, ghcjs_dom_html_anchor_element_set_hash,
        htmlAnchorElementSetHash, ghcjs_dom_html_anchor_element_get_hash,
        htmlAnchorElementGetHash, ghcjs_dom_html_anchor_element_set_host,
        htmlAnchorElementSetHost, ghcjs_dom_html_anchor_element_get_host,
        htmlAnchorElementGetHost,
        ghcjs_dom_html_anchor_element_set_hostname,
        htmlAnchorElementSetHostname,
        ghcjs_dom_html_anchor_element_get_hostname,
        htmlAnchorElementGetHostname,
        ghcjs_dom_html_anchor_element_set_pathname,
        htmlAnchorElementSetPathname,
        ghcjs_dom_html_anchor_element_get_pathname,
        htmlAnchorElementGetPathname,
        ghcjs_dom_html_anchor_element_set_port, htmlAnchorElementSetPort,
        ghcjs_dom_html_anchor_element_get_port, htmlAnchorElementGetPort,
        ghcjs_dom_html_anchor_element_set_protocol,
        htmlAnchorElementSetProtocol,
        ghcjs_dom_html_anchor_element_get_protocol,
        htmlAnchorElementGetProtocol,
        ghcjs_dom_html_anchor_element_set_search,
        htmlAnchorElementSetSearch,
        ghcjs_dom_html_anchor_element_get_search,
        htmlAnchorElementGetSearch,
        ghcjs_dom_html_anchor_element_get_origin,
        htmlAnchorElementGetOrigin, ghcjs_dom_html_anchor_element_set_text,
        htmlAnchorElementSetText, ghcjs_dom_html_anchor_element_get_text,
        htmlAnchorElementGetText,
        ghcjs_dom_html_anchor_element_get_rel_list,
        htmlAnchorElementGetRelList, HTMLAnchorElement,
        IsHTMLAnchorElement, castToHTMLAnchorElement,
        gTypeHTMLAnchorElement, toHTMLAnchorElement)
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

 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        ghcjs_dom_html_anchor_element_set_charset ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
htmlAnchorElementSetCharset ::
                            (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                              self -> val -> m ()
htmlAnchorElementSetCharset self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_charset
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_html_anchor_element_get_charset ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
htmlAnchorElementGetCharset ::
                            (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                              self -> m result
htmlAnchorElementGetCharset self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_charset
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        ghcjs_dom_html_anchor_element_set_coords ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
htmlAnchorElementSetCoords ::
                           (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                             self -> val -> m ()
htmlAnchorElementSetCoords self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_coords
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"coords\"]"
        ghcjs_dom_html_anchor_element_get_coords ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
htmlAnchorElementGetCoords ::
                           (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                             self -> m result
htmlAnchorElementGetCoords self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_coords
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"download\"] = $2;"
        ghcjs_dom_html_anchor_element_set_download ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
htmlAnchorElementSetDownload ::
                             (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                               self -> val -> m ()
htmlAnchorElementSetDownload self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_download
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"download\"]"
        ghcjs_dom_html_anchor_element_get_download ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
htmlAnchorElementGetDownload ::
                             (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                               self -> m result
htmlAnchorElementGetDownload self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_download
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_anchor_element_set_href ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.href Mozilla HTMLAnchorElement.href documentation> 
htmlAnchorElementSetHref ::
                         (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAnchorElementSetHref self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_href
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_anchor_element_get_href ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.href Mozilla HTMLAnchorElement.href documentation> 
htmlAnchorElementGetHref ::
                         (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                           self -> m result
htmlAnchorElementGetHref self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_href
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        ghcjs_dom_html_anchor_element_set_hreflang ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
htmlAnchorElementSetHreflang ::
                             (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                               self -> val -> m ()
htmlAnchorElementSetHreflang self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_hreflang
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"hreflang\"]"
        ghcjs_dom_html_anchor_element_get_hreflang ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
htmlAnchorElementGetHreflang ::
                             (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                               self -> m result
htmlAnchorElementGetHreflang self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_hreflang
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_anchor_element_set_name ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
htmlAnchorElementSetName ::
                         (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAnchorElementSetName self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_name
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_anchor_element_get_name ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
htmlAnchorElementGetName ::
                         (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                           self -> m result
htmlAnchorElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_name
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"ping\"] = $2;"
        ghcjs_dom_html_anchor_element_set_ping ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
htmlAnchorElementSetPing ::
                         (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAnchorElementSetPing self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_ping
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"ping\"]"
        ghcjs_dom_html_anchor_element_get_ping ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
htmlAnchorElementGetPing ::
                         (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                           self -> m result
htmlAnchorElementGetPing self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_ping
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;"
        ghcjs_dom_html_anchor_element_set_rel ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
htmlAnchorElementSetRel ::
                        (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                          self -> val -> m ()
htmlAnchorElementSetRel self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_rel
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]"
        ghcjs_dom_html_anchor_element_get_rel ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
htmlAnchorElementGetRel ::
                        (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                          self -> m result
htmlAnchorElementGetRel self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_rel
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"rev\"] = $2;"
        ghcjs_dom_html_anchor_element_set_rev ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
htmlAnchorElementSetRev ::
                        (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                          self -> val -> m ()
htmlAnchorElementSetRev self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_rev
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"rev\"]"
        ghcjs_dom_html_anchor_element_get_rev ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
htmlAnchorElementGetRev ::
                        (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                          self -> m result
htmlAnchorElementGetRev self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_rev
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;"
        ghcjs_dom_html_anchor_element_set_shape ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
htmlAnchorElementSetShape ::
                          (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                            self -> val -> m ()
htmlAnchorElementSetShape self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_shape
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"shape\"]"
        ghcjs_dom_html_anchor_element_get_shape ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
htmlAnchorElementGetShape ::
                          (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                            self -> m result
htmlAnchorElementGetShape self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_shape
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_anchor_element_set_target ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
htmlAnchorElementSetTarget ::
                           (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                             self -> val -> m ()
htmlAnchorElementSetTarget self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_target
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_anchor_element_get_target ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
htmlAnchorElementGetTarget ::
                           (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                             self -> m result
htmlAnchorElementGetTarget self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_target
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;"
        ghcjs_dom_html_anchor_element_set_hash ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hash Mozilla HTMLAnchorElement.hash documentation> 
htmlAnchorElementSetHash ::
                         (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAnchorElementSetHash self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_hash
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_html_anchor_element_get_hash ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hash Mozilla HTMLAnchorElement.hash documentation> 
htmlAnchorElementGetHash ::
                         (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                           self -> m result
htmlAnchorElementGetHash self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_hash
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"host\"] = $2;"
        ghcjs_dom_html_anchor_element_set_host ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.host Mozilla HTMLAnchorElement.host documentation> 
htmlAnchorElementSetHost ::
                         (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAnchorElementSetHost self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_host
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_html_anchor_element_get_host ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.host Mozilla HTMLAnchorElement.host documentation> 
htmlAnchorElementGetHost ::
                         (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                           self -> m result
htmlAnchorElementGetHost self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_host
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        ghcjs_dom_html_anchor_element_set_hostname ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hostname Mozilla HTMLAnchorElement.hostname documentation> 
htmlAnchorElementSetHostname ::
                             (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                               self -> val -> m ()
htmlAnchorElementSetHostname self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_hostname
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_html_anchor_element_get_hostname ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hostname Mozilla HTMLAnchorElement.hostname documentation> 
htmlAnchorElementGetHostname ::
                             (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                               self -> m result
htmlAnchorElementGetHostname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_hostname
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        ghcjs_dom_html_anchor_element_set_pathname ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.pathname Mozilla HTMLAnchorElement.pathname documentation> 
htmlAnchorElementSetPathname ::
                             (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                               self -> val -> m ()
htmlAnchorElementSetPathname self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_pathname
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_html_anchor_element_get_pathname ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.pathname Mozilla HTMLAnchorElement.pathname documentation> 
htmlAnchorElementGetPathname ::
                             (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                               self -> m result
htmlAnchorElementGetPathname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_pathname
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"port\"] = $2;"
        ghcjs_dom_html_anchor_element_set_port ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.port Mozilla HTMLAnchorElement.port documentation> 
htmlAnchorElementSetPort ::
                         (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAnchorElementSetPort self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_port
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_html_anchor_element_get_port ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.port Mozilla HTMLAnchorElement.port documentation> 
htmlAnchorElementGetPort ::
                         (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                           self -> m result
htmlAnchorElementGetPort self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_port
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        ghcjs_dom_html_anchor_element_set_protocol ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.protocol Mozilla HTMLAnchorElement.protocol documentation> 
htmlAnchorElementSetProtocol ::
                             (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                               self -> val -> m ()
htmlAnchorElementSetProtocol self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_protocol
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_html_anchor_element_get_protocol ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.protocol Mozilla HTMLAnchorElement.protocol documentation> 
htmlAnchorElementGetProtocol ::
                             (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                               self -> m result
htmlAnchorElementGetProtocol self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_protocol
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        ghcjs_dom_html_anchor_element_set_search ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.search Mozilla HTMLAnchorElement.search documentation> 
htmlAnchorElementSetSearch ::
                           (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                             self -> val -> m ()
htmlAnchorElementSetSearch self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_search
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_html_anchor_element_get_search ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.search Mozilla HTMLAnchorElement.search documentation> 
htmlAnchorElementGetSearch ::
                           (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                             self -> m result
htmlAnchorElementGetSearch self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_search
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"origin\"]"
        ghcjs_dom_html_anchor_element_get_origin ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.origin Mozilla HTMLAnchorElement.origin documentation> 
htmlAnchorElementGetOrigin ::
                           (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                             self -> m result
htmlAnchorElementGetOrigin self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_origin
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_html_anchor_element_set_text ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
htmlAnchorElementSetText ::
                         (MonadIO m, IsHTMLAnchorElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAnchorElementSetText self val
  = liftIO
      (ghcjs_dom_html_anchor_element_set_text
         (unHTMLAnchorElement (toHTMLAnchorElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_anchor_element_get_text ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
htmlAnchorElementGetText ::
                         (MonadIO m, IsHTMLAnchorElement self, FromJSString result) =>
                           self -> m result
htmlAnchorElementGetText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_anchor_element_get_text
            (unHTMLAnchorElement (toHTMLAnchorElement self))))
 
foreign import javascript unsafe "$1[\"relList\"]"
        ghcjs_dom_html_anchor_element_get_rel_list ::
        JSRef HTMLAnchorElement -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.relList Mozilla HTMLAnchorElement.relList documentation> 
htmlAnchorElementGetRelList ::
                            (MonadIO m, IsHTMLAnchorElement self) =>
                              self -> m (Maybe DOMTokenList)
htmlAnchorElementGetRelList self
  = liftIO
      ((ghcjs_dom_html_anchor_element_get_rel_list
          (unHTMLAnchorElement (toHTMLAnchorElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLAnchorElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAnchorElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLAnchorElement
#endif
