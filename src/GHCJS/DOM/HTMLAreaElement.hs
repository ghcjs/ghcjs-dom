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
import Control.Monad.IO.Class (MonadIO(..))
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
                      (MonadIO m, IsHTMLAreaElement self, ToJSString val) =>
                        self -> val -> m ()
htmlAreaElementSetAlt self val
  = liftIO
      (ghcjs_dom_html_area_element_set_alt
         (unHTMLAreaElement (toHTMLAreaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]"
        ghcjs_dom_html_area_element_get_alt ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
htmlAreaElementGetAlt ::
                      (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                        self -> m result
htmlAreaElementGetAlt self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_alt
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        ghcjs_dom_html_area_element_set_coords ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
htmlAreaElementSetCoords ::
                         (MonadIO m, IsHTMLAreaElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAreaElementSetCoords self val
  = liftIO
      (ghcjs_dom_html_area_element_set_coords
         (unHTMLAreaElement (toHTMLAreaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"coords\"]"
        ghcjs_dom_html_area_element_get_coords ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
htmlAreaElementGetCoords ::
                         (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                           self -> m result
htmlAreaElementGetCoords self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_coords
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_area_element_set_href ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
htmlAreaElementSetHref ::
                       (MonadIO m, IsHTMLAreaElement self, ToJSString val) =>
                         self -> val -> m ()
htmlAreaElementSetHref self val
  = liftIO
      (ghcjs_dom_html_area_element_set_href
         (unHTMLAreaElement (toHTMLAreaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_area_element_get_href ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
htmlAreaElementGetHref ::
                       (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                         self -> m result
htmlAreaElementGetHref self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_href
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"noHref\"] = $2;"
        ghcjs_dom_html_area_element_set_no_href ::
        JSRef HTMLAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
htmlAreaElementSetNoHref ::
                         (MonadIO m, IsHTMLAreaElement self) => self -> Bool -> m ()
htmlAreaElementSetNoHref self val
  = liftIO
      (ghcjs_dom_html_area_element_set_no_href
         (unHTMLAreaElement (toHTMLAreaElement self))
         val)
 
foreign import javascript unsafe "($1[\"noHref\"] ? 1 : 0)"
        ghcjs_dom_html_area_element_get_no_href ::
        JSRef HTMLAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
htmlAreaElementGetNoHref ::
                         (MonadIO m, IsHTMLAreaElement self) => self -> m Bool
htmlAreaElementGetNoHref self
  = liftIO
      (ghcjs_dom_html_area_element_get_no_href
         (unHTMLAreaElement (toHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"ping\"] = $2;"
        ghcjs_dom_html_area_element_set_ping ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
htmlAreaElementSetPing ::
                       (MonadIO m, IsHTMLAreaElement self, ToJSString val) =>
                         self -> val -> m ()
htmlAreaElementSetPing self val
  = liftIO
      (ghcjs_dom_html_area_element_set_ping
         (unHTMLAreaElement (toHTMLAreaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"ping\"]"
        ghcjs_dom_html_area_element_get_ping ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
htmlAreaElementGetPing ::
                       (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                         self -> m result
htmlAreaElementGetPing self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_ping
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;"
        ghcjs_dom_html_area_element_set_rel ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
htmlAreaElementSetRel ::
                      (MonadIO m, IsHTMLAreaElement self, ToJSString val) =>
                        self -> val -> m ()
htmlAreaElementSetRel self val
  = liftIO
      (ghcjs_dom_html_area_element_set_rel
         (unHTMLAreaElement (toHTMLAreaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]"
        ghcjs_dom_html_area_element_get_rel ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
htmlAreaElementGetRel ::
                      (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                        self -> m result
htmlAreaElementGetRel self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_rel
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;"
        ghcjs_dom_html_area_element_set_shape ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
htmlAreaElementSetShape ::
                        (MonadIO m, IsHTMLAreaElement self, ToJSString val) =>
                          self -> val -> m ()
htmlAreaElementSetShape self val
  = liftIO
      (ghcjs_dom_html_area_element_set_shape
         (unHTMLAreaElement (toHTMLAreaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"shape\"]"
        ghcjs_dom_html_area_element_get_shape ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
htmlAreaElementGetShape ::
                        (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                          self -> m result
htmlAreaElementGetShape self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_shape
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_area_element_set_target ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
htmlAreaElementSetTarget ::
                         (MonadIO m, IsHTMLAreaElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAreaElementSetTarget self val
  = liftIO
      (ghcjs_dom_html_area_element_set_target
         (unHTMLAreaElement (toHTMLAreaElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_area_element_get_target ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
htmlAreaElementGetTarget ::
                         (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                           self -> m result
htmlAreaElementGetTarget self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_target
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"hash\"]"
        ghcjs_dom_html_area_element_get_hash ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hash Mozilla HTMLAreaElement.hash documentation> 
htmlAreaElementGetHash ::
                       (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                         self -> m result
htmlAreaElementGetHash self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_hash
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"host\"]"
        ghcjs_dom_html_area_element_get_host ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.host Mozilla HTMLAreaElement.host documentation> 
htmlAreaElementGetHost ::
                       (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                         self -> m result
htmlAreaElementGetHost self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_host
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"hostname\"]"
        ghcjs_dom_html_area_element_get_hostname ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hostname Mozilla HTMLAreaElement.hostname documentation> 
htmlAreaElementGetHostname ::
                           (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                             self -> m result
htmlAreaElementGetHostname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_hostname
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"pathname\"]"
        ghcjs_dom_html_area_element_get_pathname ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.pathname Mozilla HTMLAreaElement.pathname documentation> 
htmlAreaElementGetPathname ::
                           (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                             self -> m result
htmlAreaElementGetPathname self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_pathname
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"port\"]"
        ghcjs_dom_html_area_element_get_port ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.port Mozilla HTMLAreaElement.port documentation> 
htmlAreaElementGetPort ::
                       (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                         self -> m result
htmlAreaElementGetPort self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_port
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"protocol\"]"
        ghcjs_dom_html_area_element_get_protocol ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.protocol Mozilla HTMLAreaElement.protocol documentation> 
htmlAreaElementGetProtocol ::
                           (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                             self -> m result
htmlAreaElementGetProtocol self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_protocol
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"search\"]"
        ghcjs_dom_html_area_element_get_search ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.search Mozilla HTMLAreaElement.search documentation> 
htmlAreaElementGetSearch ::
                         (MonadIO m, IsHTMLAreaElement self, FromJSString result) =>
                           self -> m result
htmlAreaElementGetSearch self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_area_element_get_search
            (unHTMLAreaElement (toHTMLAreaElement self))))
 
foreign import javascript unsafe "$1[\"relList\"]"
        ghcjs_dom_html_area_element_get_rel_list ::
        JSRef HTMLAreaElement -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.relList Mozilla HTMLAreaElement.relList documentation> 
htmlAreaElementGetRelList ::
                          (MonadIO m, IsHTMLAreaElement self) =>
                            self -> m (Maybe DOMTokenList)
htmlAreaElementGetRelList self
  = liftIO
      ((ghcjs_dom_html_area_element_get_rel_list
          (unHTMLAreaElement (toHTMLAreaElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLAreaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
#endif
