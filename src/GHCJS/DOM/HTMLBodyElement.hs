{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLBodyElement
       (webkit_dom_html_body_element_set_a_link, htmlBodyElementSetALink,
        webkit_dom_html_body_element_get_a_link, htmlBodyElementGetALink,
        webkit_dom_html_body_element_set_background,
        htmlBodyElementSetBackground,
        webkit_dom_html_body_element_get_background,
        htmlBodyElementGetBackground,
        webkit_dom_html_body_element_set_bg_color,
        htmlBodyElementSetBgColor,
        webkit_dom_html_body_element_get_bg_color,
        htmlBodyElementGetBgColor, webkit_dom_html_body_element_set_link,
        htmlBodyElementSetLink, webkit_dom_html_body_element_get_link,
        htmlBodyElementGetLink, webkit_dom_html_body_element_set_text,
        htmlBodyElementSetText, webkit_dom_html_body_element_get_text,
        htmlBodyElementGetText, webkit_dom_html_body_element_set_v_link,
        htmlBodyElementSetVLink, webkit_dom_html_body_element_get_v_link,
        htmlBodyElementGetVLink, htmlBodyElementOnbeforeunload,
        htmlBodyElementOnhashchange, htmlBodyElementOnmessage,
        htmlBodyElementOnoffline, htmlBodyElementOnonline,
        htmlBodyElementOnpopstate, htmlBodyElementOnresize,
        htmlBodyElementOnstorage, htmlBodyElementOnunload,
        htmlBodyElementOnorientationchange, htmlBodyElementOnblur,
        htmlBodyElementOnerror, htmlBodyElementOnfocus,
        htmlBodyElementOnload)
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
foreign import javascript unsafe "$1[\"aLink\"] = $2;"
        webkit_dom_html_body_element_set_a_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
webkit_dom_html_body_element_set_a_link ::
                                          JSRef HTMLBodyElement -> JSString -> IO ()
webkit_dom_html_body_element_set_a_link = undefined
#endif
 
htmlBodyElementSetALink ::
                        (HTMLBodyElementClass self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetALink self val
  = webkit_dom_html_body_element_set_a_link
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"aLink\"]"
        webkit_dom_html_body_element_get_a_link ::
        JSRef HTMLBodyElement -> IO JSString
#else 
webkit_dom_html_body_element_get_a_link ::
                                          JSRef HTMLBodyElement -> IO JSString
webkit_dom_html_body_element_get_a_link = undefined
#endif
 
htmlBodyElementGetALink ::
                        (HTMLBodyElementClass self, FromJSString result) =>
                          self -> IO result
htmlBodyElementGetALink self
  = fromJSString <$>
      (webkit_dom_html_body_element_get_a_link
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"background\"] = $2;"
        webkit_dom_html_body_element_set_background ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
webkit_dom_html_body_element_set_background ::
                                              JSRef HTMLBodyElement -> JSString -> IO ()
webkit_dom_html_body_element_set_background = undefined
#endif
 
htmlBodyElementSetBackground ::
                             (HTMLBodyElementClass self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetBackground self val
  = webkit_dom_html_body_element_set_background
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"background\"]"
        webkit_dom_html_body_element_get_background ::
        JSRef HTMLBodyElement -> IO JSString
#else 
webkit_dom_html_body_element_get_background ::
                                              JSRef HTMLBodyElement -> IO JSString
webkit_dom_html_body_element_get_background = undefined
#endif
 
htmlBodyElementGetBackground ::
                             (HTMLBodyElementClass self, FromJSString result) =>
                               self -> IO result
htmlBodyElementGetBackground self
  = fromJSString <$>
      (webkit_dom_html_body_element_get_background
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        webkit_dom_html_body_element_set_bg_color ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
webkit_dom_html_body_element_set_bg_color ::
                                            JSRef HTMLBodyElement -> JSString -> IO ()
webkit_dom_html_body_element_set_bg_color = undefined
#endif
 
htmlBodyElementSetBgColor ::
                          (HTMLBodyElementClass self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetBgColor self val
  = webkit_dom_html_body_element_set_bg_color
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"]"
        webkit_dom_html_body_element_get_bg_color ::
        JSRef HTMLBodyElement -> IO JSString
#else 
webkit_dom_html_body_element_get_bg_color ::
                                            JSRef HTMLBodyElement -> IO JSString
webkit_dom_html_body_element_get_bg_color = undefined
#endif
 
htmlBodyElementGetBgColor ::
                          (HTMLBodyElementClass self, FromJSString result) =>
                            self -> IO result
htmlBodyElementGetBgColor self
  = fromJSString <$>
      (webkit_dom_html_body_element_get_bg_color
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"link\"] = $2;"
        webkit_dom_html_body_element_set_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
webkit_dom_html_body_element_set_link ::
                                        JSRef HTMLBodyElement -> JSString -> IO ()
webkit_dom_html_body_element_set_link = undefined
#endif
 
htmlBodyElementSetLink ::
                       (HTMLBodyElementClass self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetLink self val
  = webkit_dom_html_body_element_set_link
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"link\"]"
        webkit_dom_html_body_element_get_link ::
        JSRef HTMLBodyElement -> IO JSString
#else 
webkit_dom_html_body_element_get_link ::
                                        JSRef HTMLBodyElement -> IO JSString
webkit_dom_html_body_element_get_link = undefined
#endif
 
htmlBodyElementGetLink ::
                       (HTMLBodyElementClass self, FromJSString result) =>
                         self -> IO result
htmlBodyElementGetLink self
  = fromJSString <$>
      (webkit_dom_html_body_element_get_link
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        webkit_dom_html_body_element_set_text ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
webkit_dom_html_body_element_set_text ::
                                        JSRef HTMLBodyElement -> JSString -> IO ()
webkit_dom_html_body_element_set_text = undefined
#endif
 
htmlBodyElementSetText ::
                       (HTMLBodyElementClass self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetText self val
  = webkit_dom_html_body_element_set_text
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"]"
        webkit_dom_html_body_element_get_text ::
        JSRef HTMLBodyElement -> IO JSString
#else 
webkit_dom_html_body_element_get_text ::
                                        JSRef HTMLBodyElement -> IO JSString
webkit_dom_html_body_element_get_text = undefined
#endif
 
htmlBodyElementGetText ::
                       (HTMLBodyElementClass self, FromJSString result) =>
                         self -> IO result
htmlBodyElementGetText self
  = fromJSString <$>
      (webkit_dom_html_body_element_get_text
         (unHTMLBodyElement (toHTMLBodyElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vLink\"] = $2;"
        webkit_dom_html_body_element_set_v_link ::
        JSRef HTMLBodyElement -> JSString -> IO ()
#else 
webkit_dom_html_body_element_set_v_link ::
                                          JSRef HTMLBodyElement -> JSString -> IO ()
webkit_dom_html_body_element_set_v_link = undefined
#endif
 
htmlBodyElementSetVLink ::
                        (HTMLBodyElementClass self, ToJSString val) => self -> val -> IO ()
htmlBodyElementSetVLink self val
  = webkit_dom_html_body_element_set_v_link
      (unHTMLBodyElement (toHTMLBodyElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vLink\"]"
        webkit_dom_html_body_element_get_v_link ::
        JSRef HTMLBodyElement -> IO JSString
#else 
webkit_dom_html_body_element_get_v_link ::
                                          JSRef HTMLBodyElement -> IO JSString
webkit_dom_html_body_element_get_v_link = undefined
#endif
 
htmlBodyElementGetVLink ::
                        (HTMLBodyElementClass self, FromJSString result) =>
                          self -> IO result
htmlBodyElementGetVLink self
  = fromJSString <$>
      (webkit_dom_html_body_element_get_v_link
         (unHTMLBodyElement (toHTMLBodyElement self)))
 
htmlBodyElementOnbeforeunload ::
                              (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnbeforeunload = (connect "beforeunload")
 
htmlBodyElementOnhashchange ::
                            (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnhashchange = (connect "hashchange")
 
htmlBodyElementOnmessage ::
                         (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnmessage = (connect "message")
 
htmlBodyElementOnoffline ::
                         (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnoffline = (connect "offline")
 
htmlBodyElementOnonline ::
                        (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnonline = (connect "online")
 
htmlBodyElementOnpopstate ::
                          (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnpopstate = (connect "popstate")
 
htmlBodyElementOnresize ::
                        (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnresize = (connect "resize")
 
htmlBodyElementOnstorage ::
                         (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnstorage = (connect "storage")
 
htmlBodyElementOnunload ::
                        (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnunload = (connect "unload")
 
htmlBodyElementOnorientationchange ::
                                   (HTMLBodyElementClass self) =>
                                     Signal self (EventM UIEvent self ())
htmlBodyElementOnorientationchange = (connect "orientationchange")
 
htmlBodyElementOnblur ::
                      (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnblur = (connect "blur")
 
htmlBodyElementOnerror ::
                       (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnerror = (connect "error")
 
htmlBodyElementOnfocus ::
                       (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnfocus = (connect "focus")
 
htmlBodyElementOnload ::
                      (HTMLBodyElementClass self) => Signal self (EventM UIEvent self ())
htmlBodyElementOnload = (connect "load")