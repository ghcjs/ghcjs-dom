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
                            (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetCharset self val
  = ghcjs_dom_html_anchor_element_set_charset
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_html_anchor_element_get_charset ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
htmlAnchorElementGetCharset ::
                            (IsHTMLAnchorElement self, FromJSString result) =>
                              self -> IO result
htmlAnchorElementGetCharset self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_charset
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        ghcjs_dom_html_anchor_element_set_coords ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
htmlAnchorElementSetCoords ::
                           (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetCoords self val
  = ghcjs_dom_html_anchor_element_set_coords
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"coords\"]"
        ghcjs_dom_html_anchor_element_get_coords ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
htmlAnchorElementGetCoords ::
                           (IsHTMLAnchorElement self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetCoords self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_coords
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"download\"] = $2;"
        ghcjs_dom_html_anchor_element_set_download ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
htmlAnchorElementSetDownload ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetDownload self val
  = ghcjs_dom_html_anchor_element_set_download
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"download\"]"
        ghcjs_dom_html_anchor_element_get_download ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
htmlAnchorElementGetDownload ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetDownload self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_download
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_anchor_element_set_href ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.href Mozilla HTMLAnchorElement.href documentation> 
htmlAnchorElementSetHref ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHref self val
  = ghcjs_dom_html_anchor_element_set_href
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_anchor_element_get_href ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.href Mozilla HTMLAnchorElement.href documentation> 
htmlAnchorElementGetHref ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetHref self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_href
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        ghcjs_dom_html_anchor_element_set_hreflang ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
htmlAnchorElementSetHreflang ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHreflang self val
  = ghcjs_dom_html_anchor_element_set_hreflang
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"hreflang\"]"
        ghcjs_dom_html_anchor_element_get_hreflang ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
htmlAnchorElementGetHreflang ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetHreflang self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_hreflang
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_anchor_element_set_name ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
htmlAnchorElementSetName ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetName self val
  = ghcjs_dom_html_anchor_element_set_name
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_anchor_element_get_name ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
htmlAnchorElementGetName ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_name
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"ping\"] = $2;"
        ghcjs_dom_html_anchor_element_set_ping ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
htmlAnchorElementSetPing ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetPing self val
  = ghcjs_dom_html_anchor_element_set_ping
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"ping\"]"
        ghcjs_dom_html_anchor_element_get_ping ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
htmlAnchorElementGetPing ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetPing self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_ping
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;"
        ghcjs_dom_html_anchor_element_set_rel ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
htmlAnchorElementSetRel ::
                        (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetRel self val
  = ghcjs_dom_html_anchor_element_set_rel
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"rel\"]"
        ghcjs_dom_html_anchor_element_get_rel ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
htmlAnchorElementGetRel ::
                        (IsHTMLAnchorElement self, FromJSString result) =>
                          self -> IO result
htmlAnchorElementGetRel self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_rel
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"rev\"] = $2;"
        ghcjs_dom_html_anchor_element_set_rev ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
htmlAnchorElementSetRev ::
                        (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetRev self val
  = ghcjs_dom_html_anchor_element_set_rev
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"rev\"]"
        ghcjs_dom_html_anchor_element_get_rev ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
htmlAnchorElementGetRev ::
                        (IsHTMLAnchorElement self, FromJSString result) =>
                          self -> IO result
htmlAnchorElementGetRev self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_rev
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;"
        ghcjs_dom_html_anchor_element_set_shape ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
htmlAnchorElementSetShape ::
                          (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetShape self val
  = ghcjs_dom_html_anchor_element_set_shape
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"shape\"]"
        ghcjs_dom_html_anchor_element_get_shape ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
htmlAnchorElementGetShape ::
                          (IsHTMLAnchorElement self, FromJSString result) =>
                            self -> IO result
htmlAnchorElementGetShape self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_shape
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_anchor_element_set_target ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
htmlAnchorElementSetTarget ::
                           (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetTarget self val
  = ghcjs_dom_html_anchor_element_set_target
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_anchor_element_get_target ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
htmlAnchorElementGetTarget ::
                           (IsHTMLAnchorElement self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_target
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;"
        ghcjs_dom_html_anchor_element_set_hash ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hash Mozilla HTMLAnchorElement.hash documentation> 
htmlAnchorElementSetHash ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHash self val
  = ghcjs_dom_html_anchor_element_set_hash
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_html_anchor_element_get_hash ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hash Mozilla HTMLAnchorElement.hash documentation> 
htmlAnchorElementGetHash ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetHash self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_hash
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"host\"] = $2;"
        ghcjs_dom_html_anchor_element_set_host ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.host Mozilla HTMLAnchorElement.host documentation> 
htmlAnchorElementSetHost ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHost self val
  = ghcjs_dom_html_anchor_element_set_host
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_html_anchor_element_get_host ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.host Mozilla HTMLAnchorElement.host documentation> 
htmlAnchorElementGetHost ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetHost self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_host
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        ghcjs_dom_html_anchor_element_set_hostname ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hostname Mozilla HTMLAnchorElement.hostname documentation> 
htmlAnchorElementSetHostname ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHostname self val
  = ghcjs_dom_html_anchor_element_set_hostname
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_html_anchor_element_get_hostname ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hostname Mozilla HTMLAnchorElement.hostname documentation> 
htmlAnchorElementGetHostname ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetHostname self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_hostname
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        ghcjs_dom_html_anchor_element_set_pathname ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.pathname Mozilla HTMLAnchorElement.pathname documentation> 
htmlAnchorElementSetPathname ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetPathname self val
  = ghcjs_dom_html_anchor_element_set_pathname
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_html_anchor_element_get_pathname ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.pathname Mozilla HTMLAnchorElement.pathname documentation> 
htmlAnchorElementGetPathname ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetPathname self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_pathname
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"port\"] = $2;"
        ghcjs_dom_html_anchor_element_set_port ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.port Mozilla HTMLAnchorElement.port documentation> 
htmlAnchorElementSetPort ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetPort self val
  = ghcjs_dom_html_anchor_element_set_port
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_html_anchor_element_get_port ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.port Mozilla HTMLAnchorElement.port documentation> 
htmlAnchorElementGetPort ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetPort self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_port
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        ghcjs_dom_html_anchor_element_set_protocol ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.protocol Mozilla HTMLAnchorElement.protocol documentation> 
htmlAnchorElementSetProtocol ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetProtocol self val
  = ghcjs_dom_html_anchor_element_set_protocol
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_html_anchor_element_get_protocol ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.protocol Mozilla HTMLAnchorElement.protocol documentation> 
htmlAnchorElementGetProtocol ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetProtocol self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_protocol
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        ghcjs_dom_html_anchor_element_set_search ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.search Mozilla HTMLAnchorElement.search documentation> 
htmlAnchorElementSetSearch ::
                           (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetSearch self val
  = ghcjs_dom_html_anchor_element_set_search
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_html_anchor_element_get_search ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.search Mozilla HTMLAnchorElement.search documentation> 
htmlAnchorElementGetSearch ::
                           (IsHTMLAnchorElement self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetSearch self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_search
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"origin\"]"
        ghcjs_dom_html_anchor_element_get_origin ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.origin Mozilla HTMLAnchorElement.origin documentation> 
htmlAnchorElementGetOrigin ::
                           (IsHTMLAnchorElement self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetOrigin self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_origin
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_html_anchor_element_set_text ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
htmlAnchorElementSetText ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetText self val
  = ghcjs_dom_html_anchor_element_set_text
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_anchor_element_get_text ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
htmlAnchorElementGetText ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetText self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_text
         (unHTMLAnchorElement (toHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"relList\"]"
        ghcjs_dom_html_anchor_element_get_rel_list ::
        JSRef HTMLAnchorElement -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.relList Mozilla HTMLAnchorElement.relList documentation> 
htmlAnchorElementGetRelList ::
                            (IsHTMLAnchorElement self) => self -> IO (Maybe DOMTokenList)
htmlAnchorElementGetRelList self
  = (ghcjs_dom_html_anchor_element_get_rel_list
       (unHTMLAnchorElement (toHTMLAnchorElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLAnchorElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAnchorElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLAnchorElement
#endif
