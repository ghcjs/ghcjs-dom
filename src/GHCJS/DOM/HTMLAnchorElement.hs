{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLAnchorElement
       (webkit_dom_html_anchor_element_set_charset,
        htmlAnchorElementSetCharset,
        webkit_dom_html_anchor_element_get_charset,
        htmlAnchorElementGetCharset,
        webkit_dom_html_anchor_element_set_coords,
        htmlAnchorElementSetCoords,
        webkit_dom_html_anchor_element_get_coords,
        htmlAnchorElementGetCoords,
        webkit_dom_html_anchor_element_set_download,
        htmlAnchorElementSetDownload,
        webkit_dom_html_anchor_element_get_download,
        htmlAnchorElementGetDownload,
        webkit_dom_html_anchor_element_set_href, htmlAnchorElementSetHref,
        webkit_dom_html_anchor_element_get_href, htmlAnchorElementGetHref,
        webkit_dom_html_anchor_element_set_hreflang,
        htmlAnchorElementSetHreflang,
        webkit_dom_html_anchor_element_get_hreflang,
        htmlAnchorElementGetHreflang,
        webkit_dom_html_anchor_element_set_name, htmlAnchorElementSetName,
        webkit_dom_html_anchor_element_get_name, htmlAnchorElementGetName,
        webkit_dom_html_anchor_element_set_ping, htmlAnchorElementSetPing,
        webkit_dom_html_anchor_element_get_ping, htmlAnchorElementGetPing,
        webkit_dom_html_anchor_element_set_rel, htmlAnchorElementSetRel,
        webkit_dom_html_anchor_element_get_rel, htmlAnchorElementGetRel,
        webkit_dom_html_anchor_element_set_rev, htmlAnchorElementSetRev,
        webkit_dom_html_anchor_element_get_rev, htmlAnchorElementGetRev,
        webkit_dom_html_anchor_element_set_shape,
        htmlAnchorElementSetShape,
        webkit_dom_html_anchor_element_get_shape,
        htmlAnchorElementGetShape,
        webkit_dom_html_anchor_element_set_target,
        htmlAnchorElementSetTarget,
        webkit_dom_html_anchor_element_get_target,
        htmlAnchorElementGetTarget,
        webkit_dom_html_anchor_element_set_hash, htmlAnchorElementSetHash,
        webkit_dom_html_anchor_element_get_hash, htmlAnchorElementGetHash,
        webkit_dom_html_anchor_element_set_host, htmlAnchorElementSetHost,
        webkit_dom_html_anchor_element_get_host, htmlAnchorElementGetHost,
        webkit_dom_html_anchor_element_set_hostname,
        htmlAnchorElementSetHostname,
        webkit_dom_html_anchor_element_get_hostname,
        htmlAnchorElementGetHostname,
        webkit_dom_html_anchor_element_set_pathname,
        htmlAnchorElementSetPathname,
        webkit_dom_html_anchor_element_get_pathname,
        htmlAnchorElementGetPathname,
        webkit_dom_html_anchor_element_set_port, htmlAnchorElementSetPort,
        webkit_dom_html_anchor_element_get_port, htmlAnchorElementGetPort,
        webkit_dom_html_anchor_element_set_protocol,
        htmlAnchorElementSetProtocol,
        webkit_dom_html_anchor_element_get_protocol,
        htmlAnchorElementGetProtocol,
        webkit_dom_html_anchor_element_set_search,
        htmlAnchorElementSetSearch,
        webkit_dom_html_anchor_element_get_search,
        htmlAnchorElementGetSearch,
        webkit_dom_html_anchor_element_get_origin,
        htmlAnchorElementGetOrigin,
        webkit_dom_html_anchor_element_get_text, htmlAnchorElementGetText)
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
        webkit_dom_html_anchor_element_set_charset ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_charset ::
                                             JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_charset = undefined
#endif
 
htmlAnchorElementSetCharset ::
                            (HTMLAnchorElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlAnchorElementSetCharset self val
  = webkit_dom_html_anchor_element_set_charset
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"]"
        webkit_dom_html_anchor_element_get_charset ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_charset ::
                                             JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_charset = undefined
#endif
 
htmlAnchorElementGetCharset ::
                            (HTMLAnchorElementClass self, FromJSString result) =>
                              self -> IO result
htmlAnchorElementGetCharset self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_charset
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        webkit_dom_html_anchor_element_set_coords ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_coords ::
                                            JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_coords = undefined
#endif
 
htmlAnchorElementSetCoords ::
                           (HTMLAnchorElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlAnchorElementSetCoords self val
  = webkit_dom_html_anchor_element_set_coords
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"coords\"]"
        webkit_dom_html_anchor_element_get_coords ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_coords ::
                                            JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_coords = undefined
#endif
 
htmlAnchorElementGetCoords ::
                           (HTMLAnchorElementClass self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetCoords self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_coords
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"download\"] = $2;"
        webkit_dom_html_anchor_element_set_download ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_download ::
                                              JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_download = undefined
#endif
 
htmlAnchorElementSetDownload ::
                             (HTMLAnchorElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlAnchorElementSetDownload self val
  = webkit_dom_html_anchor_element_set_download
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"download\"]"
        webkit_dom_html_anchor_element_get_download ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_download ::
                                              JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_download = undefined
#endif
 
htmlAnchorElementGetDownload ::
                             (HTMLAnchorElementClass self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetDownload self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_download
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        webkit_dom_html_anchor_element_set_href ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_href ::
                                          JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_href = undefined
#endif
 
htmlAnchorElementSetHref ::
                         (HTMLAnchorElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlAnchorElementSetHref self val
  = webkit_dom_html_anchor_element_set_href
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"]"
        webkit_dom_html_anchor_element_get_href ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_href ::
                                          JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_href = undefined
#endif
 
htmlAnchorElementGetHref ::
                         (HTMLAnchorElementClass self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetHref self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_href
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        webkit_dom_html_anchor_element_set_hreflang ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_hreflang ::
                                              JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_hreflang = undefined
#endif
 
htmlAnchorElementSetHreflang ::
                             (HTMLAnchorElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlAnchorElementSetHreflang self val
  = webkit_dom_html_anchor_element_set_hreflang
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hreflang\"]"
        webkit_dom_html_anchor_element_get_hreflang ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_hreflang ::
                                              JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_hreflang = undefined
#endif
 
htmlAnchorElementGetHreflang ::
                             (HTMLAnchorElementClass self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetHreflang self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_hreflang
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_anchor_element_set_name ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_name ::
                                          JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_name = undefined
#endif
 
htmlAnchorElementSetName ::
                         (HTMLAnchorElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlAnchorElementSetName self val
  = webkit_dom_html_anchor_element_set_name
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_anchor_element_get_name ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_name ::
                                          JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_name = undefined
#endif
 
htmlAnchorElementGetName ::
                         (HTMLAnchorElementClass self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetName self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_name
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ping\"] = $2;"
        webkit_dom_html_anchor_element_set_ping ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_ping ::
                                          JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_ping = undefined
#endif
 
htmlAnchorElementSetPing ::
                         (HTMLAnchorElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlAnchorElementSetPing self val
  = webkit_dom_html_anchor_element_set_ping
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ping\"]"
        webkit_dom_html_anchor_element_get_ping ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_ping ::
                                          JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_ping = undefined
#endif
 
htmlAnchorElementGetPing ::
                         (HTMLAnchorElementClass self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetPing self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_ping
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rel\"] = $2;"
        webkit_dom_html_anchor_element_set_rel ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_rel ::
                                         JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_rel = undefined
#endif
 
htmlAnchorElementSetRel ::
                        (HTMLAnchorElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlAnchorElementSetRel self val
  = webkit_dom_html_anchor_element_set_rel
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rel\"]"
        webkit_dom_html_anchor_element_get_rel ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_rel ::
                                         JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_rel = undefined
#endif
 
htmlAnchorElementGetRel ::
                        (HTMLAnchorElementClass self, FromJSString result) =>
                          self -> IO result
htmlAnchorElementGetRel self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_rel
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rev\"] = $2;"
        webkit_dom_html_anchor_element_set_rev ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_rev ::
                                         JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_rev = undefined
#endif
 
htmlAnchorElementSetRev ::
                        (HTMLAnchorElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlAnchorElementSetRev self val
  = webkit_dom_html_anchor_element_set_rev
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rev\"]"
        webkit_dom_html_anchor_element_get_rev ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_rev ::
                                         JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_rev = undefined
#endif
 
htmlAnchorElementGetRev ::
                        (HTMLAnchorElementClass self, FromJSString result) =>
                          self -> IO result
htmlAnchorElementGetRev self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_rev
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"shape\"] = $2;"
        webkit_dom_html_anchor_element_set_shape ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_shape ::
                                           JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_shape = undefined
#endif
 
htmlAnchorElementSetShape ::
                          (HTMLAnchorElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlAnchorElementSetShape self val
  = webkit_dom_html_anchor_element_set_shape
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"shape\"]"
        webkit_dom_html_anchor_element_get_shape ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_shape ::
                                           JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_shape = undefined
#endif
 
htmlAnchorElementGetShape ::
                          (HTMLAnchorElementClass self, FromJSString result) =>
                            self -> IO result
htmlAnchorElementGetShape self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_shape
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        webkit_dom_html_anchor_element_set_target ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_target ::
                                            JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_target = undefined
#endif
 
htmlAnchorElementSetTarget ::
                           (HTMLAnchorElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlAnchorElementSetTarget self val
  = webkit_dom_html_anchor_element_set_target
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"]"
        webkit_dom_html_anchor_element_get_target ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_target ::
                                            JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_target = undefined
#endif
 
htmlAnchorElementGetTarget ::
                           (HTMLAnchorElementClass self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetTarget self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_target
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hash\"] = $2;"
        webkit_dom_html_anchor_element_set_hash ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_hash ::
                                          JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_hash = undefined
#endif
 
htmlAnchorElementSetHash ::
                         (HTMLAnchorElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlAnchorElementSetHash self val
  = webkit_dom_html_anchor_element_set_hash
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hash\"]"
        webkit_dom_html_anchor_element_get_hash ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_hash ::
                                          JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_hash = undefined
#endif
 
htmlAnchorElementGetHash ::
                         (HTMLAnchorElementClass self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetHash self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_hash
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"host\"] = $2;"
        webkit_dom_html_anchor_element_set_host ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_host ::
                                          JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_host = undefined
#endif
 
htmlAnchorElementSetHost ::
                         (HTMLAnchorElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlAnchorElementSetHost self val
  = webkit_dom_html_anchor_element_set_host
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"host\"]"
        webkit_dom_html_anchor_element_get_host ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_host ::
                                          JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_host = undefined
#endif
 
htmlAnchorElementGetHost ::
                         (HTMLAnchorElementClass self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetHost self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_host
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        webkit_dom_html_anchor_element_set_hostname ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_hostname ::
                                              JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_hostname = undefined
#endif
 
htmlAnchorElementSetHostname ::
                             (HTMLAnchorElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlAnchorElementSetHostname self val
  = webkit_dom_html_anchor_element_set_hostname
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hostname\"]"
        webkit_dom_html_anchor_element_get_hostname ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_hostname ::
                                              JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_hostname = undefined
#endif
 
htmlAnchorElementGetHostname ::
                             (HTMLAnchorElementClass self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetHostname self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_hostname
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        webkit_dom_html_anchor_element_set_pathname ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_pathname ::
                                              JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_pathname = undefined
#endif
 
htmlAnchorElementSetPathname ::
                             (HTMLAnchorElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlAnchorElementSetPathname self val
  = webkit_dom_html_anchor_element_set_pathname
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pathname\"]"
        webkit_dom_html_anchor_element_get_pathname ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_pathname ::
                                              JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_pathname = undefined
#endif
 
htmlAnchorElementGetPathname ::
                             (HTMLAnchorElementClass self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetPathname self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_pathname
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"port\"] = $2;"
        webkit_dom_html_anchor_element_set_port ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_port ::
                                          JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_port = undefined
#endif
 
htmlAnchorElementSetPort ::
                         (HTMLAnchorElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlAnchorElementSetPort self val
  = webkit_dom_html_anchor_element_set_port
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"port\"]"
        webkit_dom_html_anchor_element_get_port ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_port ::
                                          JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_port = undefined
#endif
 
htmlAnchorElementGetPort ::
                         (HTMLAnchorElementClass self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetPort self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_port
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        webkit_dom_html_anchor_element_set_protocol ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_protocol ::
                                              JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_protocol = undefined
#endif
 
htmlAnchorElementSetProtocol ::
                             (HTMLAnchorElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlAnchorElementSetProtocol self val
  = webkit_dom_html_anchor_element_set_protocol
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"protocol\"]"
        webkit_dom_html_anchor_element_get_protocol ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_protocol ::
                                              JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_protocol = undefined
#endif
 
htmlAnchorElementGetProtocol ::
                             (HTMLAnchorElementClass self, FromJSString result) =>
                               self -> IO result
htmlAnchorElementGetProtocol self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_protocol
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        webkit_dom_html_anchor_element_set_search ::
        JSRef HTMLAnchorElement -> JSString -> IO ()
#else 
webkit_dom_html_anchor_element_set_search ::
                                            JSRef HTMLAnchorElement -> JSString -> IO ()
webkit_dom_html_anchor_element_set_search = undefined
#endif
 
htmlAnchorElementSetSearch ::
                           (HTMLAnchorElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlAnchorElementSetSearch self val
  = webkit_dom_html_anchor_element_set_search
      (unHTMLAnchorElement (toHTMLAnchorElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"search\"]"
        webkit_dom_html_anchor_element_get_search ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_search ::
                                            JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_search = undefined
#endif
 
htmlAnchorElementGetSearch ::
                           (HTMLAnchorElementClass self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetSearch self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_search
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"origin\"]"
        webkit_dom_html_anchor_element_get_origin ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_origin ::
                                            JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_origin = undefined
#endif
 
htmlAnchorElementGetOrigin ::
                           (HTMLAnchorElementClass self, FromJSString result) =>
                             self -> IO result
htmlAnchorElementGetOrigin self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_origin
         (unHTMLAnchorElement (toHTMLAnchorElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"]"
        webkit_dom_html_anchor_element_get_text ::
        JSRef HTMLAnchorElement -> IO JSString
#else 
webkit_dom_html_anchor_element_get_text ::
                                          JSRef HTMLAnchorElement -> IO JSString
webkit_dom_html_anchor_element_get_text = undefined
#endif
 
htmlAnchorElementGetText ::
                         (HTMLAnchorElementClass self, FromJSString result) =>
                           self -> IO result
htmlAnchorElementGetText self
  = fromJSString <$>
      (webkit_dom_html_anchor_element_get_text
         (unHTMLAnchorElement (toHTMLAnchorElement self)))