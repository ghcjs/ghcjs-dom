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
        ghcjs_dom_html_area_element_set_rel, htmlAreaElementSetRel,
        ghcjs_dom_html_area_element_get_rel, htmlAreaElementGetRel,
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
        htmlAreaElementGetSearch, ghcjs_dom_html_area_element_get_rel_list,
        htmlAreaElementGetRelList, HTMLAreaElement, IsHTMLAreaElement,
        castToHTMLAreaElement, gTypeHTMLAreaElement, toHTMLAreaElement)
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

 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        ghcjs_dom_html_area_element_set_alt ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
htmlAreaElementSetAlt ::
                      (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetAlt self val
  = ghcjs_dom_html_area_element_set_alt
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"alt\"]"
        ghcjs_dom_html_area_element_get_alt ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
htmlAreaElementGetAlt ::
                      (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetAlt self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_alt
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        ghcjs_dom_html_area_element_set_coords ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
htmlAreaElementSetCoords ::
                         (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetCoords self val
  = ghcjs_dom_html_area_element_set_coords
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"coords\"]"
        ghcjs_dom_html_area_element_get_coords ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
htmlAreaElementGetCoords ::
                         (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetCoords self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_coords
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_area_element_set_href ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
htmlAreaElementSetHref ::
                       (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetHref self val
  = ghcjs_dom_html_area_element_set_href
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_area_element_get_href ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
htmlAreaElementGetHref ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetHref self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_href
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"noHref\"] = $2;"
        ghcjs_dom_html_area_element_set_no_href ::
        JSRef HTMLAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
htmlAreaElementSetNoHref ::
                         (IsHTMLAreaElement self) => self -> Bool -> IO ()
htmlAreaElementSetNoHref self val
  = ghcjs_dom_html_area_element_set_no_href
      (unHTMLAreaElement (toHTMLAreaElement self))
      val
 
foreign import javascript unsafe "($1[\"noHref\"] ? 1 : 0)"
        ghcjs_dom_html_area_element_get_no_href ::
        JSRef HTMLAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
htmlAreaElementGetNoHref ::
                         (IsHTMLAreaElement self) => self -> IO Bool
htmlAreaElementGetNoHref self
  = ghcjs_dom_html_area_element_get_no_href
      (unHTMLAreaElement (toHTMLAreaElement self))
 
foreign import javascript unsafe "$1[\"ping\"] = $2;"
        ghcjs_dom_html_area_element_set_ping ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
htmlAreaElementSetPing ::
                       (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetPing self val
  = ghcjs_dom_html_area_element_set_ping
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"ping\"]"
        ghcjs_dom_html_area_element_get_ping ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
htmlAreaElementGetPing ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetPing self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_ping
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;"
        ghcjs_dom_html_area_element_set_rel ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
htmlAreaElementSetRel ::
                      (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetRel self val
  = ghcjs_dom_html_area_element_set_rel
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"rel\"]"
        ghcjs_dom_html_area_element_get_rel ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
htmlAreaElementGetRel ::
                      (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetRel self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_rel
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;"
        ghcjs_dom_html_area_element_set_shape ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
htmlAreaElementSetShape ::
                        (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetShape self val
  = ghcjs_dom_html_area_element_set_shape
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"shape\"]"
        ghcjs_dom_html_area_element_get_shape ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
htmlAreaElementGetShape ::
                        (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetShape self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_shape
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_area_element_set_target ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
htmlAreaElementSetTarget ::
                         (IsHTMLAreaElement self, ToJSString val) => self -> val -> IO ()
htmlAreaElementSetTarget self val
  = ghcjs_dom_html_area_element_set_target
      (unHTMLAreaElement (toHTMLAreaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_area_element_get_target ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
htmlAreaElementGetTarget ::
                         (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_target
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_html_area_element_get_hash ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hash Mozilla HTMLAreaElement.hash documentation> 
htmlAreaElementGetHash ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetHash self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_hash
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_html_area_element_get_host ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.host Mozilla HTMLAreaElement.host documentation> 
htmlAreaElementGetHost ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetHost self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_host
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_html_area_element_get_hostname ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hostname Mozilla HTMLAreaElement.hostname documentation> 
htmlAreaElementGetHostname ::
                           (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetHostname self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_hostname
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_html_area_element_get_pathname ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.pathname Mozilla HTMLAreaElement.pathname documentation> 
htmlAreaElementGetPathname ::
                           (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetPathname self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_pathname
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_html_area_element_get_port ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.port Mozilla HTMLAreaElement.port documentation> 
htmlAreaElementGetPort ::
                       (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetPort self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_port
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_html_area_element_get_protocol ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.protocol Mozilla HTMLAreaElement.protocol documentation> 
htmlAreaElementGetProtocol ::
                           (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetProtocol self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_protocol
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_html_area_element_get_search ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.search Mozilla HTMLAreaElement.search documentation> 
htmlAreaElementGetSearch ::
                         (IsHTMLAreaElement self, FromJSString result) => self -> IO result
htmlAreaElementGetSearch self
  = fromJSString <$>
      (ghcjs_dom_html_area_element_get_search
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"relList\"]"
        ghcjs_dom_html_area_element_get_rel_list ::
        JSRef HTMLAreaElement -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.relList Mozilla HTMLAreaElement.relList documentation> 
htmlAreaElementGetRelList ::
                          (IsHTMLAreaElement self) => self -> IO (Maybe DOMTokenList)
htmlAreaElementGetRelList self
  = (ghcjs_dom_html_area_element_get_rel_list
       (unHTMLAreaElement (toHTMLAreaElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLAreaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
#endif
