{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLLinkElement
       (webkit_dom_html_link_element_set_disabled,
        htmlLinkElementSetDisabled,
        webkit_dom_html_link_element_get_disabled,
        htmlLinkElementGetDisabled,
        webkit_dom_html_link_element_set_charset,
        htmlLinkElementSetCharset,
        webkit_dom_html_link_element_get_charset,
        htmlLinkElementGetCharset, webkit_dom_html_link_element_set_href,
        htmlLinkElementSetHref, webkit_dom_html_link_element_get_href,
        htmlLinkElementGetHref, webkit_dom_html_link_element_set_hreflang,
        htmlLinkElementSetHreflang,
        webkit_dom_html_link_element_get_hreflang,
        htmlLinkElementGetHreflang, webkit_dom_html_link_element_set_media,
        htmlLinkElementSetMedia, webkit_dom_html_link_element_get_media,
        htmlLinkElementGetMedia, webkit_dom_html_link_element_set_rel,
        htmlLinkElementSetRel, webkit_dom_html_link_element_get_rel,
        htmlLinkElementGetRel, webkit_dom_html_link_element_set_rev,
        htmlLinkElementSetRev, webkit_dom_html_link_element_get_rev,
        htmlLinkElementGetRev, webkit_dom_html_link_element_set_target,
        htmlLinkElementSetTarget, webkit_dom_html_link_element_get_target,
        htmlLinkElementGetTarget, webkit_dom_html_link_element_get_sheet,
        htmlLinkElementGetSheet)
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
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_link_element_set_disabled ::
        JSRef HTMLLinkElement -> JSBool -> IO ()
#else 
webkit_dom_html_link_element_set_disabled ::
                                            JSRef HTMLLinkElement -> JSBool -> IO ()
webkit_dom_html_link_element_set_disabled = undefined
#endif
 
htmlLinkElementSetDisabled ::
                           (HTMLLinkElementClass self) => self -> Bool -> IO ()
htmlLinkElementSetDisabled self val
  = webkit_dom_html_link_element_set_disabled
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"]"
        webkit_dom_html_link_element_get_disabled ::
        JSRef HTMLLinkElement -> IO JSBool
#else 
webkit_dom_html_link_element_get_disabled ::
                                            JSRef HTMLLinkElement -> IO JSBool
webkit_dom_html_link_element_get_disabled = undefined
#endif
 
htmlLinkElementGetDisabled ::
                           (HTMLLinkElementClass self) => self -> IO Bool
htmlLinkElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_link_element_get_disabled
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        webkit_dom_html_link_element_set_charset ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
webkit_dom_html_link_element_set_charset ::
                                           JSRef HTMLLinkElement -> JSString -> IO ()
webkit_dom_html_link_element_set_charset = undefined
#endif
 
htmlLinkElementSetCharset ::
                          (HTMLLinkElementClass self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetCharset self val
  = webkit_dom_html_link_element_set_charset
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"]"
        webkit_dom_html_link_element_get_charset ::
        JSRef HTMLLinkElement -> IO JSString
#else 
webkit_dom_html_link_element_get_charset ::
                                           JSRef HTMLLinkElement -> IO JSString
webkit_dom_html_link_element_get_charset = undefined
#endif
 
htmlLinkElementGetCharset ::
                          (HTMLLinkElementClass self, FromJSString result) =>
                            self -> IO result
htmlLinkElementGetCharset self
  = fromJSString <$>
      (webkit_dom_html_link_element_get_charset
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        webkit_dom_html_link_element_set_href ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
webkit_dom_html_link_element_set_href ::
                                        JSRef HTMLLinkElement -> JSString -> IO ()
webkit_dom_html_link_element_set_href = undefined
#endif
 
htmlLinkElementSetHref ::
                       (HTMLLinkElementClass self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetHref self val
  = webkit_dom_html_link_element_set_href
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"]"
        webkit_dom_html_link_element_get_href ::
        JSRef HTMLLinkElement -> IO JSString
#else 
webkit_dom_html_link_element_get_href ::
                                        JSRef HTMLLinkElement -> IO JSString
webkit_dom_html_link_element_get_href = undefined
#endif
 
htmlLinkElementGetHref ::
                       (HTMLLinkElementClass self, FromJSString result) =>
                         self -> IO result
htmlLinkElementGetHref self
  = fromJSString <$>
      (webkit_dom_html_link_element_get_href
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        webkit_dom_html_link_element_set_hreflang ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
webkit_dom_html_link_element_set_hreflang ::
                                            JSRef HTMLLinkElement -> JSString -> IO ()
webkit_dom_html_link_element_set_hreflang = undefined
#endif
 
htmlLinkElementSetHreflang ::
                           (HTMLLinkElementClass self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetHreflang self val
  = webkit_dom_html_link_element_set_hreflang
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hreflang\"]"
        webkit_dom_html_link_element_get_hreflang ::
        JSRef HTMLLinkElement -> IO JSString
#else 
webkit_dom_html_link_element_get_hreflang ::
                                            JSRef HTMLLinkElement -> IO JSString
webkit_dom_html_link_element_get_hreflang = undefined
#endif
 
htmlLinkElementGetHreflang ::
                           (HTMLLinkElementClass self, FromJSString result) =>
                             self -> IO result
htmlLinkElementGetHreflang self
  = fromJSString <$>
      (webkit_dom_html_link_element_get_hreflang
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        webkit_dom_html_link_element_set_media ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
webkit_dom_html_link_element_set_media ::
                                         JSRef HTMLLinkElement -> JSString -> IO ()
webkit_dom_html_link_element_set_media = undefined
#endif
 
htmlLinkElementSetMedia ::
                        (HTMLLinkElementClass self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetMedia self val
  = webkit_dom_html_link_element_set_media
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"media\"]"
        webkit_dom_html_link_element_get_media ::
        JSRef HTMLLinkElement -> IO JSString
#else 
webkit_dom_html_link_element_get_media ::
                                         JSRef HTMLLinkElement -> IO JSString
webkit_dom_html_link_element_get_media = undefined
#endif
 
htmlLinkElementGetMedia ::
                        (HTMLLinkElementClass self, FromJSString result) =>
                          self -> IO result
htmlLinkElementGetMedia self
  = fromJSString <$>
      (webkit_dom_html_link_element_get_media
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rel\"] = $2;"
        webkit_dom_html_link_element_set_rel ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
webkit_dom_html_link_element_set_rel ::
                                       JSRef HTMLLinkElement -> JSString -> IO ()
webkit_dom_html_link_element_set_rel = undefined
#endif
 
htmlLinkElementSetRel ::
                      (HTMLLinkElementClass self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetRel self val
  = webkit_dom_html_link_element_set_rel
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rel\"]"
        webkit_dom_html_link_element_get_rel ::
        JSRef HTMLLinkElement -> IO JSString
#else 
webkit_dom_html_link_element_get_rel ::
                                       JSRef HTMLLinkElement -> IO JSString
webkit_dom_html_link_element_get_rel = undefined
#endif
 
htmlLinkElementGetRel ::
                      (HTMLLinkElementClass self, FromJSString result) =>
                        self -> IO result
htmlLinkElementGetRel self
  = fromJSString <$>
      (webkit_dom_html_link_element_get_rel
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rev\"] = $2;"
        webkit_dom_html_link_element_set_rev ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
webkit_dom_html_link_element_set_rev ::
                                       JSRef HTMLLinkElement -> JSString -> IO ()
webkit_dom_html_link_element_set_rev = undefined
#endif
 
htmlLinkElementSetRev ::
                      (HTMLLinkElementClass self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetRev self val
  = webkit_dom_html_link_element_set_rev
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rev\"]"
        webkit_dom_html_link_element_get_rev ::
        JSRef HTMLLinkElement -> IO JSString
#else 
webkit_dom_html_link_element_get_rev ::
                                       JSRef HTMLLinkElement -> IO JSString
webkit_dom_html_link_element_get_rev = undefined
#endif
 
htmlLinkElementGetRev ::
                      (HTMLLinkElementClass self, FromJSString result) =>
                        self -> IO result
htmlLinkElementGetRev self
  = fromJSString <$>
      (webkit_dom_html_link_element_get_rev
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        webkit_dom_html_link_element_set_target ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
webkit_dom_html_link_element_set_target ::
                                          JSRef HTMLLinkElement -> JSString -> IO ()
webkit_dom_html_link_element_set_target = undefined
#endif
 
htmlLinkElementSetTarget ::
                         (HTMLLinkElementClass self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetTarget self val
  = webkit_dom_html_link_element_set_target
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"]"
        webkit_dom_html_link_element_get_target ::
        JSRef HTMLLinkElement -> IO JSString
#else 
webkit_dom_html_link_element_get_target ::
                                          JSRef HTMLLinkElement -> IO JSString
webkit_dom_html_link_element_get_target = undefined
#endif
 
htmlLinkElementGetTarget ::
                         (HTMLLinkElementClass self, FromJSString result) =>
                           self -> IO result
htmlLinkElementGetTarget self
  = fromJSString <$>
      (webkit_dom_html_link_element_get_target
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sheet\"]"
        webkit_dom_html_link_element_get_sheet ::
        JSRef HTMLLinkElement -> IO (JSRef StyleSheet)
#else 
webkit_dom_html_link_element_get_sheet ::
                                         JSRef HTMLLinkElement -> IO (JSRef StyleSheet)
webkit_dom_html_link_element_get_sheet = undefined
#endif
 
htmlLinkElementGetSheet ::
                        (HTMLLinkElementClass self) => self -> IO (Maybe StyleSheet)
htmlLinkElementGetSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (webkit_dom_html_link_element_get_sheet
         (unHTMLLinkElement (toHTMLLinkElement self)))