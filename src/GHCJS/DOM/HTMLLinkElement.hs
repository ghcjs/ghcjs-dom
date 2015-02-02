{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLinkElement
       (ghcjs_dom_html_link_element_set_disabled,
        htmlLinkElementSetDisabled,
        ghcjs_dom_html_link_element_get_disabled,
        htmlLinkElementGetDisabled,
        ghcjs_dom_html_link_element_set_charset, htmlLinkElementSetCharset,
        ghcjs_dom_html_link_element_get_charset, htmlLinkElementGetCharset,
        ghcjs_dom_html_link_element_set_href, htmlLinkElementSetHref,
        ghcjs_dom_html_link_element_get_href, htmlLinkElementGetHref,
        ghcjs_dom_html_link_element_set_hreflang,
        htmlLinkElementSetHreflang,
        ghcjs_dom_html_link_element_get_hreflang,
        htmlLinkElementGetHreflang, ghcjs_dom_html_link_element_set_media,
        htmlLinkElementSetMedia, ghcjs_dom_html_link_element_get_media,
        htmlLinkElementGetMedia, ghcjs_dom_html_link_element_set_rel,
        htmlLinkElementSetRel, ghcjs_dom_html_link_element_get_rel,
        htmlLinkElementGetRel, ghcjs_dom_html_link_element_set_rev,
        htmlLinkElementSetRev, ghcjs_dom_html_link_element_get_rev,
        htmlLinkElementGetRev, ghcjs_dom_html_link_element_set_target,
        htmlLinkElementSetTarget, ghcjs_dom_html_link_element_get_target,
        htmlLinkElementGetTarget, ghcjs_dom_html_link_element_get_sheet,
        htmlLinkElementGetSheet, ghcjs_dom_html_link_element_get_rel_list,
        htmlLinkElementGetRelList, HTMLLinkElement, IsHTMLLinkElement,
        castToHTMLLinkElement, gTypeHTMLLinkElement, toHTMLLinkElement)
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

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_link_element_set_disabled ::
        JSRef HTMLLinkElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.disabled Mozilla HTMLLinkElement.disabled documentation> 
htmlLinkElementSetDisabled ::
                           (IsHTMLLinkElement self) => self -> Bool -> IO ()
htmlLinkElementSetDisabled self val
  = ghcjs_dom_html_link_element_set_disabled
      (unHTMLLinkElement (toHTMLLinkElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_link_element_get_disabled ::
        JSRef HTMLLinkElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.disabled Mozilla HTMLLinkElement.disabled documentation> 
htmlLinkElementGetDisabled ::
                           (IsHTMLLinkElement self) => self -> IO Bool
htmlLinkElementGetDisabled self
  = ghcjs_dom_html_link_element_get_disabled
      (unHTMLLinkElement (toHTMLLinkElement self))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        ghcjs_dom_html_link_element_set_charset ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.charset Mozilla HTMLLinkElement.charset documentation> 
htmlLinkElementSetCharset ::
                          (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetCharset self val
  = ghcjs_dom_html_link_element_set_charset
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_html_link_element_get_charset ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.charset Mozilla HTMLLinkElement.charset documentation> 
htmlLinkElementGetCharset ::
                          (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetCharset self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_charset
         (unHTMLLinkElement (toHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_link_element_set_href ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.href Mozilla HTMLLinkElement.href documentation> 
htmlLinkElementSetHref ::
                       (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetHref self val
  = ghcjs_dom_html_link_element_set_href
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_link_element_get_href ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.href Mozilla HTMLLinkElement.href documentation> 
htmlLinkElementGetHref ::
                       (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetHref self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_href
         (unHTMLLinkElement (toHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        ghcjs_dom_html_link_element_set_hreflang ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.hreflang Mozilla HTMLLinkElement.hreflang documentation> 
htmlLinkElementSetHreflang ::
                           (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetHreflang self val
  = ghcjs_dom_html_link_element_set_hreflang
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"hreflang\"]"
        ghcjs_dom_html_link_element_get_hreflang ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.hreflang Mozilla HTMLLinkElement.hreflang documentation> 
htmlLinkElementGetHreflang ::
                           (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetHreflang self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_hreflang
         (unHTMLLinkElement (toHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        ghcjs_dom_html_link_element_set_media ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.media Mozilla HTMLLinkElement.media documentation> 
htmlLinkElementSetMedia ::
                        (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetMedia self val
  = ghcjs_dom_html_link_element_set_media
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_html_link_element_get_media ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.media Mozilla HTMLLinkElement.media documentation> 
htmlLinkElementGetMedia ::
                        (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetMedia self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_media
         (unHTMLLinkElement (toHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;"
        ghcjs_dom_html_link_element_set_rel ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rel Mozilla HTMLLinkElement.rel documentation> 
htmlLinkElementSetRel ::
                      (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetRel self val
  = ghcjs_dom_html_link_element_set_rel
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"rel\"]"
        ghcjs_dom_html_link_element_get_rel ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rel Mozilla HTMLLinkElement.rel documentation> 
htmlLinkElementGetRel ::
                      (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetRel self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_rel
         (unHTMLLinkElement (toHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"rev\"] = $2;"
        ghcjs_dom_html_link_element_set_rev ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rev Mozilla HTMLLinkElement.rev documentation> 
htmlLinkElementSetRev ::
                      (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetRev self val
  = ghcjs_dom_html_link_element_set_rev
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"rev\"]"
        ghcjs_dom_html_link_element_get_rev ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rev Mozilla HTMLLinkElement.rev documentation> 
htmlLinkElementGetRev ::
                      (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetRev self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_rev
         (unHTMLLinkElement (toHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_link_element_set_target ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.target Mozilla HTMLLinkElement.target documentation> 
htmlLinkElementSetTarget ::
                         (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetTarget self val
  = ghcjs_dom_html_link_element_set_target
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_link_element_get_target ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.target Mozilla HTMLLinkElement.target documentation> 
htmlLinkElementGetTarget ::
                         (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_target
         (unHTMLLinkElement (toHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"sheet\"]"
        ghcjs_dom_html_link_element_get_sheet ::
        JSRef HTMLLinkElement -> IO (JSRef StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.sheet Mozilla HTMLLinkElement.sheet documentation> 
htmlLinkElementGetSheet ::
                        (IsHTMLLinkElement self) => self -> IO (Maybe StyleSheet)
htmlLinkElementGetSheet self
  = (ghcjs_dom_html_link_element_get_sheet
       (unHTMLLinkElement (toHTMLLinkElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"relList\"]"
        ghcjs_dom_html_link_element_get_rel_list ::
        JSRef HTMLLinkElement -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.relList Mozilla HTMLLinkElement.relList documentation> 
htmlLinkElementGetRelList ::
                          (IsHTMLLinkElement self) => self -> IO (Maybe DOMTokenList)
htmlLinkElementGetRelList self
  = (ghcjs_dom_html_link_element_get_rel_list
       (unHTMLLinkElement (toHTMLLinkElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLLinkElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLinkElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLinkElement
#endif
