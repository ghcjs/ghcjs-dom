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
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"aLink\"] = $2;"
        ghcjs_dom_html_body_element_set_a_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
ghcjs_dom_html_body_element_set_a_link ::
                                         JSRef HTMLBodyElement -> JSString -> IO ()
ghcjs_dom_html_body_element_set_a_link = undefined
#endif
 
htmlBodyElementSetALink ::
                        (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetALink self val
  = ghcjs_dom_html_body_element_set_a_link
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"aLink\"]"
        ghcjs_dom_html_body_element_get_a_link ::
        JSRef HTMLBodyElement -> IO JSString
#else 
ghcjs_dom_html_body_element_get_a_link ::
                                         JSRef HTMLBodyElement -> IO JSString
ghcjs_dom_html_body_element_get_a_link = undefined
#endif
 
htmlBodyElementGetALink ::
                        (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetALink self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_a_link
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"background\"] = $2;"
        ghcjs_dom_html_body_element_set_background ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
ghcjs_dom_html_body_element_set_background ::
                                             JSRef HTMLBodyElement -> JSString -> IO ()
ghcjs_dom_html_body_element_set_background = undefined
#endif
 
htmlBodyElementSetBackground ::
                             (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetBackground self val
  = ghcjs_dom_html_body_element_set_background
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"background\"]"
        ghcjs_dom_html_body_element_get_background ::
        JSRef HTMLBodyElement -> IO JSString
#else 
ghcjs_dom_html_body_element_get_background ::
                                             JSRef HTMLBodyElement -> IO JSString
ghcjs_dom_html_body_element_get_background = undefined
#endif
 
htmlBodyElementGetBackground ::
                             (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetBackground self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_background
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_body_element_set_bg_color ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
ghcjs_dom_html_body_element_set_bg_color ::
                                           JSRef HTMLBodyElement -> JSString -> IO ()
ghcjs_dom_html_body_element_set_bg_color = undefined
#endif
 
htmlBodyElementSetBgColor ::
                          (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetBgColor self val
  = ghcjs_dom_html_body_element_set_bg_color
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_body_element_get_bg_color ::
        JSRef HTMLBodyElement -> IO JSString
#else 
ghcjs_dom_html_body_element_get_bg_color ::
                                           JSRef HTMLBodyElement -> IO JSString
ghcjs_dom_html_body_element_get_bg_color = undefined
#endif
 
htmlBodyElementGetBgColor ::
                          (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetBgColor self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_bg_color
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"link\"] = $2;"
        ghcjs_dom_html_body_element_set_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
ghcjs_dom_html_body_element_set_link ::
                                       JSRef HTMLBodyElement -> JSString -> IO ()
ghcjs_dom_html_body_element_set_link = undefined
#endif
 
htmlBodyElementSetLink ::
                       (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetLink self val
  = ghcjs_dom_html_body_element_set_link
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"link\"]"
        ghcjs_dom_html_body_element_get_link ::
        JSRef HTMLBodyElement -> IO JSString
#else 
ghcjs_dom_html_body_element_get_link ::
                                       JSRef HTMLBodyElement -> IO JSString
ghcjs_dom_html_body_element_get_link = undefined
#endif
 
htmlBodyElementGetLink ::
                       (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetLink self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_link
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_html_body_element_set_text ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
ghcjs_dom_html_body_element_set_text ::
                                       JSRef HTMLBodyElement -> JSString -> IO ()
ghcjs_dom_html_body_element_set_text = undefined
#endif
 
htmlBodyElementSetText ::
                       (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetText self val
  = ghcjs_dom_html_body_element_set_text
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_body_element_get_text ::
        JSRef HTMLBodyElement -> IO JSString
#else 
ghcjs_dom_html_body_element_get_text ::
                                       JSRef HTMLBodyElement -> IO JSString
ghcjs_dom_html_body_element_get_text = undefined
#endif
 
htmlBodyElementGetText ::
                       (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetText self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_text
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"vLink\"] = $2;"
        ghcjs_dom_html_body_element_set_v_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
ghcjs_dom_html_body_element_set_v_link ::
                                         JSRef HTMLBodyElement -> JSString -> IO ()
ghcjs_dom_html_body_element_set_v_link = undefined
#endif
 
htmlBodyElementSetVLink ::
                        (IsHTMLBodyElement self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetVLink self val
  = ghcjs_dom_html_body_element_set_v_link
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"vLink\"]"
        ghcjs_dom_html_body_element_get_v_link ::
        JSRef HTMLBodyElement -> IO JSString
#else 
ghcjs_dom_html_body_element_get_v_link ::
                                         JSRef HTMLBodyElement -> IO JSString
ghcjs_dom_html_body_element_get_v_link = undefined
#endif
 
htmlBodyElementGetVLink ::
                        (IsHTMLBodyElement self, FromJSString result) => self -> IO result
htmlBodyElementGetVLink self
  = fromJSString <$>
      (ghcjs_dom_html_body_element_get_v_link
         (unHTMLBodyElement (toHTMLBodyElement self)))
 
htmlBodyElementOnbeforeunload ::
                              (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnbeforeunload = (connect "beforeunload")
 
htmlBodyElementOnhashchange ::
                            (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnhashchange = (connect "hashchange")
 
htmlBodyElementOnmessage ::
                         (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnmessage = (connect "message")
 
htmlBodyElementOnoffline ::
                         (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnoffline = (connect "offline")
 
htmlBodyElementOnonline ::
                        (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnonline = (connect "online")
 
htmlBodyElementOnpopstate ::
                          (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnpopstate = (connect "popstate")
 
htmlBodyElementOnresize ::
                        (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnresize = (connect "resize")
 
htmlBodyElementOnstorage ::
                         (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnstorage = (connect "storage")
 
htmlBodyElementOnunload ::
                        (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnunload = (connect "unload")
 
htmlBodyElementOnorientationchange ::
                                   (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnorientationchange = (connect "orientationchange")
 
htmlBodyElementOnblur ::
                      (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnblur = (connect "blur")
 
htmlBodyElementOnerror ::
                       (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnerror = (connect "error")
 
htmlBodyElementOnfocus ::
                       (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnfocus = (connect "focus")
 
htmlBodyElementOnload ::
                      (IsHTMLBodyElement self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnload = (connect "load")
#else
module GHCJS.DOM.HTMLBodyElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
#endif
