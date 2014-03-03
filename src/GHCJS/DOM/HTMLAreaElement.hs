{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLAreaElement
       (ghcjs_dom_html_area_element_set_alt, htmlAreaElementSetAlt,
        ghcjs_dom_html_area_element_get_alt, htmlAreaElementGetAlt,
        ghcjs_dom_html_area_element_set_coords, htmlAreaElementSetCoords,
        ghcjs_dom_html_area_element_get_coords, htmlAreaElementGetCoords,
        ghcjs_dom_html_area_element_set_href, htmlAreaElementSetHref,
        ghcjs_dom_html_area_element_get_href, htmlAreaElementGetHref,
        ghcjs_dom_html_area_element_set_no_href, htmlAreaElementSetNoHref,
        ghcjs_dom_html_area_element_get_no_href, htmlAreaElementGetNoHref,
        ghcjs_dom_html_area_element_set_ping, htmlAreaElementSetPing,
        ghcjs_dom_html_area_element_get_ping, htmlAreaElementGetPing,
        ghcjs_dom_html_area_element_set_shape, htmlAreaElementSetShape,
        ghcjs_dom_html_area_element_get_shape, htmlAreaElementGetShape,
        ghcjs_dom_html_area_element_set_target, htmlAreaElementSetTarget,
        ghcjs_dom_html_area_element_get_target, htmlAreaElementGetTarget,
        ghcjs_dom_html_area_element_get_hash, htmlAreaElementGetHash,
        ghcjs_dom_html_area_element_get_host, htmlAreaElementGetHost,
        ghcjs_dom_html_area_element_get_hostname,
        htmlAreaElementGetHostname,
        ghcjs_dom_html_area_element_get_pathname,
        htmlAreaElementGetPathname, ghcjs_dom_html_area_element_get_port,
        htmlAreaElementGetPort, ghcjs_dom_html_area_element_get_protocol,
        htmlAreaElementGetProtocol, ghcjs_dom_html_area_element_get_search,
        htmlAreaElementGetSearch, HTMLAreaElement, IsHTMLAreaElement,
        castToHTMLAreaElement, gTypeHTMLAreaElement, toHTMLAreaElement)
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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        ghcjs_dom_html_area_element_set_alt ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_area_element_set_alt ::
                                      JSRef HTMLAreaElement -> JSString -> IO ()
ghcjs_dom_html_area_element_set_alt = undefined
#endif
 
htmlAreaElementSetAlt ::
                      (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetAlt self val
  = ghcjs_dom_html_area_element_set_alt
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"alt\"]"
        ghcjs_dom_html_area_element_get_alt ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_alt ::
                                      JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_alt = undefined
#endif
 
htmlAreaElementGetAlt ::
                      (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetAlt self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_alt
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        ghcjs_dom_html_area_element_set_coords ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_area_element_set_coords ::
                                         JSRef HTMLAreaElement -> JSString -> IO ()
ghcjs_dom_html_area_element_set_coords = undefined
#endif
 
htmlAreaElementSetCoords ::
                         (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetCoords self val
  = ghcjs_dom_html_area_element_set_coords
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"coords\"]"
        ghcjs_dom_html_area_element_get_coords ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_coords ::
                                         JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_coords = undefined
#endif
 
htmlAreaElementGetCoords ::
                         (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetCoords self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_coords
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_area_element_set_href ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_area_element_set_href ::
                                       JSRef HTMLAreaElement -> JSString -> IO ()
ghcjs_dom_html_area_element_set_href = undefined
#endif
 
htmlAreaElementSetHref ::
                       (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetHref self val
  = ghcjs_dom_html_area_element_set_href
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_area_element_get_href ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_href ::
                                       JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_href = undefined
#endif
 
htmlAreaElementGetHref ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetHref self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_href
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"noHref\"] = $2;"
        ghcjs_dom_html_area_element_set_no_href ::
        JSRef HTMLAreaElement -> Bool -> IO ()
#else 
ghcjs_dom_html_area_element_set_no_href ::
                                          JSRef HTMLAreaElement -> Bool -> IO ()
ghcjs_dom_html_area_element_set_no_href = undefined
#endif
 
htmlAreaElementSetNoHref ::
                         (IsHTMLAreaElement self) => self -> Bool -> IO ()
htmlAreaElementSetNoHref self val
  = ghcjs_dom_html_area_element_set_no_href
      (unHTMLAreaElement (toHTMLAreaElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"noHref\"] ? 1 : 0)"
        ghcjs_dom_html_area_element_get_no_href ::
        JSRef HTMLAreaElement -> IO Bool
#else 
ghcjs_dom_html_area_element_get_no_href ::
                                          JSRef HTMLAreaElement -> IO Bool
ghcjs_dom_html_area_element_get_no_href = undefined
#endif
 
htmlAreaElementGetNoHref ::
                         (IsHTMLAreaElement self) => self -> IO Bool
htmlAreaElementGetNoHref self
  = ghcjs_dom_html_area_element_get_no_href
      (unHTMLAreaElement (toHTMLAreaElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"ping\"] = $2;"
        ghcjs_dom_html_area_element_set_ping ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_area_element_set_ping ::
                                       JSRef HTMLAreaElement -> JSString -> IO ()
ghcjs_dom_html_area_element_set_ping = undefined
#endif
 
htmlAreaElementSetPing ::
                       (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetPing self val
  = ghcjs_dom_html_area_element_set_ping
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"ping\"]"
        ghcjs_dom_html_area_element_get_ping ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_ping ::
                                       JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_ping = undefined
#endif
 
htmlAreaElementGetPing ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetPing self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_ping
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"shape\"] = $2;"
        ghcjs_dom_html_area_element_set_shape ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_area_element_set_shape ::
                                        JSRef HTMLAreaElement -> JSString -> IO ()
ghcjs_dom_html_area_element_set_shape = undefined
#endif
 
htmlAreaElementSetShape ::
                        (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetShape self val
  = ghcjs_dom_html_area_element_set_shape
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"shape\"]"
        ghcjs_dom_html_area_element_get_shape ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_shape ::
                                        JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_shape = undefined
#endif
 
htmlAreaElementGetShape ::
                        (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetShape self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_shape
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_area_element_set_target ::
        JSRef HTMLAreaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_area_element_set_target ::
                                         JSRef HTMLAreaElement -> JSString -> IO ()
ghcjs_dom_html_area_element_set_target = undefined
#endif
 
htmlAreaElementSetTarget ::
                         (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetTarget self val
  = ghcjs_dom_html_area_element_set_target
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_area_element_get_target ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_target ::
                                         JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_target = undefined
#endif
 
htmlAreaElementGetTarget ::
                         (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_target
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_html_area_element_get_hash ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_hash ::
                                       JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_hash = undefined
#endif
 
htmlAreaElementGetHash ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetHash self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_hash
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_html_area_element_get_host ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_host ::
                                       JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_host = undefined
#endif
 
htmlAreaElementGetHost ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetHost self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_host
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_html_area_element_get_hostname ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_hostname ::
                                           JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_hostname = undefined
#endif
 
htmlAreaElementGetHostname ::
                           (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetHostname self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_hostname
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_html_area_element_get_pathname ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_pathname ::
                                           JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_pathname = undefined
#endif
 
htmlAreaElementGetPathname ::
                           (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetPathname self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_pathname
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_html_area_element_get_port ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_port ::
                                       JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_port = undefined
#endif
 
htmlAreaElementGetPort ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetPort self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_port
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_html_area_element_get_protocol ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_protocol ::
                                           JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_protocol = undefined
#endif
 
htmlAreaElementGetProtocol ::
                           (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetProtocol self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_protocol
         (unHTMLAreaElement (toHTMLAreaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_html_area_element_get_search ::
        JSRef HTMLAreaElement -> IO JSString
#else 
ghcjs_dom_html_area_element_get_search ::
                                         JSRef HTMLAreaElement -> IO JSString
ghcjs_dom_html_area_element_get_search = undefined
#endif
 
htmlAreaElementGetSearch ::
                         (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetSearch self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_search
         (unHTMLAreaElement (toHTMLAreaElement self)))
#else
module GHCJS.DOM.HTMLAreaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
#endif
