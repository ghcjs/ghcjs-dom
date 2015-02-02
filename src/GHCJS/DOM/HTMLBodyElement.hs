{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBodyElement
       (ghcjs_dom_html_body_element_set_a_link, htmlBodyElementSetALink,
        ghcjs_dom_html_body_element_get_a_link, htmlBodyElementGetALink,
        ghcjs_dom_html_body_element_set_background,
        htmlBodyElementSetBackground,
        ghcjs_dom_html_body_element_get_background,
        htmlBodyElementGetBackground,
        ghcjs_dom_html_body_element_set_bg_color,
        htmlBodyElementSetBgColor,
        ghcjs_dom_html_body_element_get_bg_color,
        htmlBodyElementGetBgColor, ghcjs_dom_html_body_element_set_link,
        htmlBodyElementSetLink, ghcjs_dom_html_body_element_get_link,
        htmlBodyElementGetLink, ghcjs_dom_html_body_element_set_text,
        htmlBodyElementSetText, ghcjs_dom_html_body_element_get_text,
        htmlBodyElementGetText, ghcjs_dom_html_body_element_set_v_link,
        htmlBodyElementSetVLink, ghcjs_dom_html_body_element_get_v_link,
        htmlBodyElementGetVLink, htmlBodyElementOnbeforeunload,
        htmlBodyElementOnhashchange, htmlBodyElementOnmessage,
        htmlBodyElementOnoffline, htmlBodyElementOnonline,
        htmlBodyElementOnpopstate, htmlBodyElementOnresize,
        htmlBodyElementOnstorage, htmlBodyElementOnunload,
        htmlBodyElementOnorientationchange, htmlBodyElementOnblur,
        htmlBodyElementOnerror, htmlBodyElementOnfocus,
        htmlBodyElementOnload, HTMLBodyElement, IsHTMLBodyElement,
        castToHTMLBodyElement, gTypeHTMLBodyElement, toHTMLBodyElement)
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

 
foreign import javascript unsafe "$1[\"aLink\"] = $2;"
        ghcjs_dom_html_body_element_set_a_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
htmlBodyElementSetALink ::
                        (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetALink self val
  = ghcjs_dom_html_body_element_set_a_link
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"aLink\"]"
        ghcjs_dom_html_body_element_get_a_link ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
htmlBodyElementGetALink ::
                        (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetALink self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_a_link
         (unHTMLBodyElement (toHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"background\"] = $2;"
        ghcjs_dom_html_body_element_set_background ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
htmlBodyElementSetBackground ::
                             (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetBackground self val
  = ghcjs_dom_html_body_element_set_background
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"background\"]"
        ghcjs_dom_html_body_element_get_background ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
htmlBodyElementGetBackground ::
                             (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetBackground self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_background
         (unHTMLBodyElement (toHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_body_element_set_bg_color ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
htmlBodyElementSetBgColor ::
                          (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetBgColor self val
  = ghcjs_dom_html_body_element_set_bg_color
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_body_element_get_bg_color ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
htmlBodyElementGetBgColor ::
                          (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetBgColor self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_bg_color
         (unHTMLBodyElement (toHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"link\"] = $2;"
        ghcjs_dom_html_body_element_set_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
htmlBodyElementSetLink ::
                       (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetLink self val
  = ghcjs_dom_html_body_element_set_link
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"link\"]"
        ghcjs_dom_html_body_element_get_link ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
htmlBodyElementGetLink ::
                       (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetLink self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_link
         (unHTMLBodyElement (toHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_html_body_element_set_text ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
htmlBodyElementSetText ::
                       (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetText self val
  = ghcjs_dom_html_body_element_set_text
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_body_element_get_text ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
htmlBodyElementGetText ::
                       (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetText self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_text
         (unHTMLBodyElement (toHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"vLink\"] = $2;"
        ghcjs_dom_html_body_element_set_v_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
htmlBodyElementSetVLink ::
                        (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetVLink self val
  = ghcjs_dom_html_body_element_set_v_link
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"vLink\"]"
        ghcjs_dom_html_body_element_get_v_link ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
htmlBodyElementGetVLink ::
                        (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetVLink self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_v_link
         (unHTMLBodyElement (toHTMLBodyElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onbeforeunload Mozilla HTMLBodyElement.onbeforeunload documentation> 
htmlBodyElementOnbeforeunload ::
                              (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnbeforeunload = (connect "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onhashchange Mozilla HTMLBodyElement.onhashchange documentation> 
htmlBodyElementOnhashchange ::
                            (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnhashchange = (connect "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onmessage Mozilla HTMLBodyElement.onmessage documentation> 
htmlBodyElementOnmessage ::
                         (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnmessage = (connect "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onoffline Mozilla HTMLBodyElement.onoffline documentation> 
htmlBodyElementOnoffline ::
                         (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnoffline = (connect "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.ononline Mozilla HTMLBodyElement.ononline documentation> 
htmlBodyElementOnonline ::
                        (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnonline = (connect "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onpopstate Mozilla HTMLBodyElement.onpopstate documentation> 
htmlBodyElementOnpopstate ::
                          (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnpopstate = (connect "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onresize Mozilla HTMLBodyElement.onresize documentation> 
htmlBodyElementOnresize ::
                        (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnresize = (connect "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onstorage Mozilla HTMLBodyElement.onstorage documentation> 
htmlBodyElementOnstorage ::
                         (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnstorage = (connect "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onunload Mozilla HTMLBodyElement.onunload documentation> 
htmlBodyElementOnunload ::
                        (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnunload = (connect "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onorientationchange Mozilla HTMLBodyElement.onorientationchange documentation> 
htmlBodyElementOnorientationchange ::
                                   (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnorientationchange = (connect "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onblur Mozilla HTMLBodyElement.onblur documentation> 
htmlBodyElementOnblur ::
                      (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnblur = (connect "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onerror Mozilla HTMLBodyElement.onerror documentation> 
htmlBodyElementOnerror ::
                       (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onfocus Mozilla HTMLBodyElement.onfocus documentation> 
htmlBodyElementOnfocus ::
                       (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnfocus = (connect "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onload Mozilla HTMLBodyElement.onload documentation> 
htmlBodyElementOnload ::
                      (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnload = (connect "load")
#else
module GHCJS.DOM.HTMLBodyElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
#endif
