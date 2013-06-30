{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLAreaElement
       (webkit_dom_html_area_element_set_alt, htmlAreaElementSetAlt,
        webkit_dom_html_area_element_get_alt, htmlAreaElementGetAlt,
        webkit_dom_html_area_element_set_coords, htmlAreaElementSetCoords,
        webkit_dom_html_area_element_get_coords, htmlAreaElementGetCoords,
        webkit_dom_html_area_element_set_href, htmlAreaElementSetHref,
        webkit_dom_html_area_element_get_href, htmlAreaElementGetHref,
        webkit_dom_html_area_element_set_no_href, htmlAreaElementSetNoHref,
        webkit_dom_html_area_element_get_no_href, htmlAreaElementGetNoHref,
        webkit_dom_html_area_element_set_ping, htmlAreaElementSetPing,
        webkit_dom_html_area_element_get_ping, htmlAreaElementGetPing,
        webkit_dom_html_area_element_set_shape, htmlAreaElementSetShape,
        webkit_dom_html_area_element_get_shape, htmlAreaElementGetShape,
        webkit_dom_html_area_element_set_target, htmlAreaElementSetTarget,
        webkit_dom_html_area_element_get_target, htmlAreaElementGetTarget,
        webkit_dom_html_area_element_get_hash, htmlAreaElementGetHash,
        webkit_dom_html_area_element_get_host, htmlAreaElementGetHost,
        webkit_dom_html_area_element_get_hostname,
        htmlAreaElementGetHostname,
        webkit_dom_html_area_element_get_pathname,
        htmlAreaElementGetPathname, webkit_dom_html_area_element_get_port,
        htmlAreaElementGetPort, webkit_dom_html_area_element_get_protocol,
        htmlAreaElementGetProtocol,
        webkit_dom_html_area_element_get_search, htmlAreaElementGetSearch)
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
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        webkit_dom_html_area_element_set_alt ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_area_element_set_alt ::
                                       JSRef HTMLAreaElement -> JSString -> IO ()
webkit_dom_html_area_element_set_alt = undefined
#endif
 
htmlAreaElementSetAlt ::
                      (HTMLAreaElementClass self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetAlt self val
  = webkit_dom_html_area_element_set_alt
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"]"
        webkit_dom_html_area_element_get_alt ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_alt ::
                                       JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_alt = undefined
#endif
 
htmlAreaElementGetAlt ::
                      (HTMLAreaElementClass self, FromJSString result) =>
                        self -> IO result
htmlAreaElementGetAlt self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_alt
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        webkit_dom_html_area_element_set_coords ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_area_element_set_coords ::
                                          JSRef HTMLAreaElement -> JSString -> IO ()
webkit_dom_html_area_element_set_coords = undefined
#endif
 
htmlAreaElementSetCoords ::
                         (HTMLAreaElementClass self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetCoords self val
  = webkit_dom_html_area_element_set_coords
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"coords\"]"
        webkit_dom_html_area_element_get_coords ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_coords ::
                                          JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_coords = undefined
#endif
 
htmlAreaElementGetCoords ::
                         (HTMLAreaElementClass self, FromJSString result) =>
                           self -> IO result
htmlAreaElementGetCoords self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_coords
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        webkit_dom_html_area_element_set_href ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_area_element_set_href ::
                                        JSRef HTMLAreaElement -> JSString -> IO ()
webkit_dom_html_area_element_set_href = undefined
#endif
 
htmlAreaElementSetHref ::
                       (HTMLAreaElementClass self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetHref self val
  = webkit_dom_html_area_element_set_href
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"]"
        webkit_dom_html_area_element_get_href ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_href ::
                                        JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_href = undefined
#endif
 
htmlAreaElementGetHref ::
                       (HTMLAreaElementClass self, FromJSString result) =>
                         self -> IO result
htmlAreaElementGetHref self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_href
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noHref\"] = $2;"
        webkit_dom_html_area_element_set_no_href ::
        JSRef HTMLAreaElement -> JSBool -> IO ()
#else 
webkit_dom_html_area_element_set_no_href ::
                                           JSRef HTMLAreaElement -> JSBool -> IO ()
webkit_dom_html_area_element_set_no_href = undefined
#endif
 
htmlAreaElementSetNoHref ::
                         (HTMLAreaElementClass self) => self -> Bool -> IO ()
htmlAreaElementSetNoHref self val
  = webkit_dom_html_area_element_set_no_href
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"noHref\"] ? 1 : 0)"
        webkit_dom_html_area_element_get_no_href ::
        JSRef HTMLAreaElement -> IO JSBool
#else 
webkit_dom_html_area_element_get_no_href ::
                                           JSRef HTMLAreaElement -> IO JSBool
webkit_dom_html_area_element_get_no_href = undefined
#endif
 
htmlAreaElementGetNoHref ::
                         (HTMLAreaElementClass self) => self -> IO Bool
htmlAreaElementGetNoHref self
  = fromJSBool <$>
      (webkit_dom_html_area_element_get_no_href
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ping\"] = $2;"
        webkit_dom_html_area_element_set_ping ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_area_element_set_ping ::
                                        JSRef HTMLAreaElement -> JSString -> IO ()
webkit_dom_html_area_element_set_ping = undefined
#endif
 
htmlAreaElementSetPing ::
                       (HTMLAreaElementClass self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetPing self val
  = webkit_dom_html_area_element_set_ping
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ping\"]"
        webkit_dom_html_area_element_get_ping ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_ping ::
                                        JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_ping = undefined
#endif
 
htmlAreaElementGetPing ::
                       (HTMLAreaElementClass self, FromJSString result) =>
                         self -> IO result
htmlAreaElementGetPing self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_ping
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"shape\"] = $2;"
        webkit_dom_html_area_element_set_shape ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_area_element_set_shape ::
                                         JSRef HTMLAreaElement -> JSString -> IO ()
webkit_dom_html_area_element_set_shape = undefined
#endif
 
htmlAreaElementSetShape ::
                        (HTMLAreaElementClass self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetShape self val
  = webkit_dom_html_area_element_set_shape
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"shape\"]"
        webkit_dom_html_area_element_get_shape ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_shape ::
                                         JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_shape = undefined
#endif
 
htmlAreaElementGetShape ::
                        (HTMLAreaElementClass self, FromJSString result) =>
                          self -> IO result
htmlAreaElementGetShape self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_shape
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        webkit_dom_html_area_element_set_target ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
webkit_dom_html_area_element_set_target ::
                                          JSRef HTMLAreaElement -> JSString -> IO ()
webkit_dom_html_area_element_set_target = undefined
#endif
 
htmlAreaElementSetTarget ::
                         (HTMLAreaElementClass self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetTarget self val
  = webkit_dom_html_area_element_set_target
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"]"
        webkit_dom_html_area_element_get_target ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_target ::
                                          JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_target = undefined
#endif
 
htmlAreaElementGetTarget ::
                         (HTMLAreaElementClass self, FromJSString result) =>
                           self -> IO result
htmlAreaElementGetTarget self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_target
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hash\"]"
        webkit_dom_html_area_element_get_hash ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_hash ::
                                        JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_hash = undefined
#endif
 
htmlAreaElementGetHash ::
                       (HTMLAreaElementClass self, FromJSString result) =>
                         self -> IO result
htmlAreaElementGetHash self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_hash
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"host\"]"
        webkit_dom_html_area_element_get_host ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_host ::
                                        JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_host = undefined
#endif
 
htmlAreaElementGetHost ::
                       (HTMLAreaElementClass self, FromJSString result) =>
                         self -> IO result
htmlAreaElementGetHost self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_host
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hostname\"]"
        webkit_dom_html_area_element_get_hostname ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_hostname ::
                                            JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_hostname = undefined
#endif
 
htmlAreaElementGetHostname ::
                           (HTMLAreaElementClass self, FromJSString result) =>
                             self -> IO result
htmlAreaElementGetHostname self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_hostname
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"pathname\"]"
        webkit_dom_html_area_element_get_pathname ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_pathname ::
                                            JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_pathname = undefined
#endif
 
htmlAreaElementGetPathname ::
                           (HTMLAreaElementClass self, FromJSString result) =>
                             self -> IO result
htmlAreaElementGetPathname self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_pathname
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"port\"]"
        webkit_dom_html_area_element_get_port ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_port ::
                                        JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_port = undefined
#endif
 
htmlAreaElementGetPort ::
                       (HTMLAreaElementClass self, FromJSString result) =>
                         self -> IO result
htmlAreaElementGetPort self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_port
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"protocol\"]"
        webkit_dom_html_area_element_get_protocol ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_protocol ::
                                            JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_protocol = undefined
#endif
 
htmlAreaElementGetProtocol ::
                           (HTMLAreaElementClass self, FromJSString result) =>
                             self -> IO result
htmlAreaElementGetProtocol self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_protocol
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"search\"]"
        webkit_dom_html_area_element_get_search ::
        JSRef HTMLAreaElement -> IO JSString
#else 
webkit_dom_html_area_element_get_search ::
                                          JSRef HTMLAreaElement -> IO JSString
webkit_dom_html_area_element_get_search = undefined
#endif
 
htmlAreaElementGetSearch ::
                         (HTMLAreaElementClass self, FromJSString result) =>
                           self -> IO result
htmlAreaElementGetSearch self
  = fromJSString <$>
      (webkit_dom_html_area_element_get_search
         (unHTMLAreaElement (toHTMLAreaElement self)))