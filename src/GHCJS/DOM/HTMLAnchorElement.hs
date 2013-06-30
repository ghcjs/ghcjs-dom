{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
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
        htmlAnchorElementGetOrigin, ghcjs_dom_html_anchor_element_get_text,
        htmlAnchorElementGetText)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        ghcjs_dom_html_anchor_element_set_charset ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_charset ::
                                            JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_charset = undefined
#endif
 
htmlAnchorElementSetCharset ::
                            (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetCharset self val
  = ghcjs_dom_html_anchor_element_set_charset
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_html_anchor_element_get_charset ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_charset ::
                                            JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_charset = undefined
#endif
 
htmlAnchorElementGetCharset ::
                            (IsHTMLAnchorElement self, FromJSString result) =>
                              self -> IO result
htmlAnchorElementGetCharset self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_charset
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        ghcjs_dom_html_anchor_element_set_coords ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_coords ::
                                           JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_coords = undefined
#endif
 
htmlAnchorElementSetCoords ::
                           (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetCoords self val
  = ghcjs_dom_html_anchor_element_set_coords
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"coords\"]"
        ghcjs_dom_html_anchor_element_get_coords ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_coords ::
                                           JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_coords = undefined
#endif
 
htmlAnchorElementGetCoords ::
                           (IsHTMLAnchorElement self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetCoords self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_coords
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"download\"] = $2;"
        ghcjs_dom_html_anchor_element_set_download ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_download ::
                                             JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_download = undefined
#endif
 
htmlAnchorElementSetDownload ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetDownload self val
  = ghcjs_dom_html_anchor_element_set_download
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"download\"]"
        ghcjs_dom_html_anchor_element_get_download ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_download ::
                                             JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_download = undefined
#endif
 
htmlAnchorElementGetDownload ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetDownload self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_download
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_anchor_element_set_href ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_href ::
                                         JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_href = undefined
#endif
 
htmlAnchorElementSetHref ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHref self val
  = ghcjs_dom_html_anchor_element_set_href
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_anchor_element_get_href ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_href ::
                                         JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_href = undefined
#endif
 
htmlAnchorElementGetHref ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetHref self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_href
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        ghcjs_dom_html_anchor_element_set_hreflang ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_hreflang ::
                                             JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_hreflang = undefined
#endif
 
htmlAnchorElementSetHreflang ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHreflang self val
  = ghcjs_dom_html_anchor_element_set_hreflang
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hreflang\"]"
        ghcjs_dom_html_anchor_element_get_hreflang ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_hreflang ::
                                             JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_hreflang = undefined
#endif
 
htmlAnchorElementGetHreflang ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetHreflang self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_hreflang
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_anchor_element_set_name ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_name ::
                                         JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_name = undefined
#endif
 
htmlAnchorElementSetName ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetName self val
  = ghcjs_dom_html_anchor_element_set_name
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_anchor_element_get_name ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_name ::
                                         JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_name = undefined
#endif
 
htmlAnchorElementGetName ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_name
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ping\"] = $2;"
        ghcjs_dom_html_anchor_element_set_ping ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_ping ::
                                         JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_ping = undefined
#endif
 
htmlAnchorElementSetPing ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetPing self val
  = ghcjs_dom_html_anchor_element_set_ping
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ping\"]"
        ghcjs_dom_html_anchor_element_get_ping ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_ping ::
                                         JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_ping = undefined
#endif
 
htmlAnchorElementGetPing ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetPing self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_ping
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rel\"] = $2;"
        ghcjs_dom_html_anchor_element_set_rel ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_rel ::
                                        JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_rel = undefined
#endif
 
htmlAnchorElementSetRel ::
                        (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetRel self val
  = ghcjs_dom_html_anchor_element_set_rel
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rel\"]"
        ghcjs_dom_html_anchor_element_get_rel ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_rel ::
                                        JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_rel = undefined
#endif
 
htmlAnchorElementGetRel ::
                        (IsHTMLAnchorElement self, FromJSString result) =>
                          self -> IO result
htmlAnchorElementGetRel self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_rel
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rev\"] = $2;"
        ghcjs_dom_html_anchor_element_set_rev ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_rev ::
                                        JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_rev = undefined
#endif
 
htmlAnchorElementSetRev ::
                        (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetRev self val
  = ghcjs_dom_html_anchor_element_set_rev
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rev\"]"
        ghcjs_dom_html_anchor_element_get_rev ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_rev ::
                                        JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_rev = undefined
#endif
 
htmlAnchorElementGetRev ::
                        (IsHTMLAnchorElement self, FromJSString result) =>
                          self -> IO result
htmlAnchorElementGetRev self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_rev
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"shape\"] = $2;"
        ghcjs_dom_html_anchor_element_set_shape ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_shape ::
                                          JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_shape = undefined
#endif
 
htmlAnchorElementSetShape ::
                          (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetShape self val
  = ghcjs_dom_html_anchor_element_set_shape
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"shape\"]"
        ghcjs_dom_html_anchor_element_get_shape ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_shape ::
                                          JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_shape = undefined
#endif
 
htmlAnchorElementGetShape ::
                          (IsHTMLAnchorElement self, FromJSString result) =>
                            self -> IO result
htmlAnchorElementGetShape self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_shape
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_anchor_element_set_target ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_target ::
                                           JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_target = undefined
#endif
 
htmlAnchorElementSetTarget ::
                           (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetTarget self val
  = ghcjs_dom_html_anchor_element_set_target
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_anchor_element_get_target ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_target ::
                                           JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_target = undefined
#endif
 
htmlAnchorElementGetTarget ::
                           (IsHTMLAnchorElement self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_target
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hash\"] = $2;"
        ghcjs_dom_html_anchor_element_set_hash ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_hash ::
                                         JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_hash = undefined
#endif
 
htmlAnchorElementSetHash ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHash self val
  = ghcjs_dom_html_anchor_element_set_hash
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_html_anchor_element_get_hash ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_hash ::
                                         JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_hash = undefined
#endif
 
htmlAnchorElementGetHash ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetHash self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_hash
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"host\"] = $2;"
        ghcjs_dom_html_anchor_element_set_host ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_host ::
                                         JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_host = undefined
#endif
 
htmlAnchorElementSetHost ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHost self val
  = ghcjs_dom_html_anchor_element_set_host
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_html_anchor_element_get_host ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_host ::
                                         JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_host = undefined
#endif
 
htmlAnchorElementGetHost ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetHost self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_host
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        ghcjs_dom_html_anchor_element_set_hostname ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_hostname ::
                                             JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_hostname = undefined
#endif
 
htmlAnchorElementSetHostname ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetHostname self val
  = ghcjs_dom_html_anchor_element_set_hostname
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_html_anchor_element_get_hostname ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_hostname ::
                                             JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_hostname = undefined
#endif
 
htmlAnchorElementGetHostname ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetHostname self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_hostname
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        ghcjs_dom_html_anchor_element_set_pathname ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_pathname ::
                                             JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_pathname = undefined
#endif
 
htmlAnchorElementSetPathname ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetPathname self val
  = ghcjs_dom_html_anchor_element_set_pathname
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_html_anchor_element_get_pathname ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_pathname ::
                                             JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_pathname = undefined
#endif
 
htmlAnchorElementGetPathname ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetPathname self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_pathname
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"port\"] = $2;"
        ghcjs_dom_html_anchor_element_set_port ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_port ::
                                         JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_port = undefined
#endif
 
htmlAnchorElementSetPort ::
                         (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetPort self val
  = ghcjs_dom_html_anchor_element_set_port
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_html_anchor_element_get_port ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_port ::
                                         JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_port = undefined
#endif
 
htmlAnchorElementGetPort ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetPort self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_port
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        ghcjs_dom_html_anchor_element_set_protocol ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_protocol ::
                                             JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_protocol = undefined
#endif
 
htmlAnchorElementSetProtocol ::
                             (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetProtocol self val
  = ghcjs_dom_html_anchor_element_set_protocol
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_html_anchor_element_get_protocol ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_protocol ::
                                             JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_protocol = undefined
#endif
 
htmlAnchorElementGetProtocol ::
                             (IsHTMLAnchorElement self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetProtocol self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_protocol
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        ghcjs_dom_html_anchor_element_set_search ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
ghcjs_dom_html_anchor_element_set_search ::
                                           JSRef HTMLAnchorElement -> JSString -> IO ()
ghcjs_dom_html_anchor_element_set_search = undefined
#endif
 
htmlAnchorElementSetSearch ::
                           (IsHTMLAnchorElement self, ToJSString val) => self -> val -> IO ()
htmlAnchorElementSetSearch self val
  = ghcjs_dom_html_anchor_element_set_search
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_html_anchor_element_get_search ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_search ::
                                           JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_search = undefined
#endif
 
htmlAnchorElementGetSearch ::
                           (IsHTMLAnchorElement self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetSearch self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_search
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"origin\"]"
        ghcjs_dom_html_anchor_element_get_origin ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_origin ::
                                           JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_origin = undefined
#endif
 
htmlAnchorElementGetOrigin ::
                           (IsHTMLAnchorElement self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetOrigin self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_origin
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_anchor_element_get_text ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
ghcjs_dom_html_anchor_element_get_text ::
                                         JSRef HTMLAnchorElement -> IO JSString
ghcjs_dom_html_anchor_element_get_text = undefined
#endif
 
htmlAnchorElementGetText ::
                         (IsHTMLAnchorElement self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetText self
  = fromJSString <$>
      (ghcjs_dom_html_anchor_element_get_text
         (unHTMLAnchorElement (toHTMLAnchorElement self)))