{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLScriptElement
       (webkit_dom_html_script_element_set_text, htmlScriptElementSetText,
        webkit_dom_html_script_element_get_text, htmlScriptElementGetText,
        webkit_dom_html_script_element_set_html_for,
        htmlScriptElementSetHtmlFor,
        webkit_dom_html_script_element_get_html_for,
        htmlScriptElementGetHtmlFor,
        webkit_dom_html_script_element_set_event,
        htmlScriptElementSetEvent,
        webkit_dom_html_script_element_get_event,
        htmlScriptElementGetEvent,
        webkit_dom_html_script_element_set_charset,
        htmlScriptElementSetCharset,
        webkit_dom_html_script_element_get_charset,
        htmlScriptElementGetCharset,
        webkit_dom_html_script_element_set_async,
        htmlScriptElementSetAsync,
        webkit_dom_html_script_element_get_async,
        htmlScriptElementGetAsync,
        webkit_dom_html_script_element_set_defer,
        htmlScriptElementSetDefer,
        webkit_dom_html_script_element_get_defer,
        htmlScriptElementGetDefer, webkit_dom_html_script_element_set_src,
        htmlScriptElementSetSrc, webkit_dom_html_script_element_get_src,
        htmlScriptElementGetSrc,
        webkit_dom_html_script_element_set_cross_origin,
        htmlScriptElementSetCrossOrigin,
        webkit_dom_html_script_element_get_cross_origin,
        htmlScriptElementGetCrossOrigin,
        webkit_dom_html_script_element_set_nonce,
        htmlScriptElementSetNonce,
        webkit_dom_html_script_element_get_nonce,
        htmlScriptElementGetNonce)
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
foreign import javascript unsafe "$1[\"text\"] = $2;"
        webkit_dom_html_script_element_set_text ::
        JSRef HTMLScriptElement -> JSString -> IO ()
#else 
webkit_dom_html_script_element_set_text ::
                                          JSRef HTMLScriptElement -> JSString -> IO ()
webkit_dom_html_script_element_set_text = undefined
#endif
 
htmlScriptElementSetText ::
                         (HTMLScriptElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlScriptElementSetText self val
  = webkit_dom_html_script_element_set_text
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"]"
        webkit_dom_html_script_element_get_text ::
        JSRef HTMLScriptElement -> IO JSString
#else 
webkit_dom_html_script_element_get_text ::
                                          JSRef HTMLScriptElement -> IO JSString
webkit_dom_html_script_element_get_text = undefined
#endif
 
htmlScriptElementGetText ::
                         (HTMLScriptElementClass self, FromJSString result) =>
                           self -> IO result
htmlScriptElementGetText self
  = fromJSString <$>
      (webkit_dom_html_script_element_get_text
         (unHTMLScriptElement (toHTMLScriptElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        webkit_dom_html_script_element_set_html_for ::
        JSRef HTMLScriptElement -> JSString -> IO ()
#else 
webkit_dom_html_script_element_set_html_for ::
                                              JSRef HTMLScriptElement -> JSString -> IO ()
webkit_dom_html_script_element_set_html_for = undefined
#endif
 
htmlScriptElementSetHtmlFor ::
                            (HTMLScriptElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlScriptElementSetHtmlFor self val
  = webkit_dom_html_script_element_set_html_for
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"htmlFor\"]"
        webkit_dom_html_script_element_get_html_for ::
        JSRef HTMLScriptElement -> IO JSString
#else 
webkit_dom_html_script_element_get_html_for ::
                                              JSRef HTMLScriptElement -> IO JSString
webkit_dom_html_script_element_get_html_for = undefined
#endif
 
htmlScriptElementGetHtmlFor ::
                            (HTMLScriptElementClass self, FromJSString result) =>
                              self -> IO result
htmlScriptElementGetHtmlFor self
  = fromJSString <$>
      (webkit_dom_html_script_element_get_html_for
         (unHTMLScriptElement (toHTMLScriptElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"event\"] = $2;"
        webkit_dom_html_script_element_set_event ::
        JSRef HTMLScriptElement -> JSString -> IO ()
#else 
webkit_dom_html_script_element_set_event ::
                                           JSRef HTMLScriptElement -> JSString -> IO ()
webkit_dom_html_script_element_set_event = undefined
#endif
 
htmlScriptElementSetEvent ::
                          (HTMLScriptElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlScriptElementSetEvent self val
  = webkit_dom_html_script_element_set_event
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"event\"]"
        webkit_dom_html_script_element_get_event ::
        JSRef HTMLScriptElement -> IO JSString
#else 
webkit_dom_html_script_element_get_event ::
                                           JSRef HTMLScriptElement -> IO JSString
webkit_dom_html_script_element_get_event = undefined
#endif
 
htmlScriptElementGetEvent ::
                          (HTMLScriptElementClass self, FromJSString result) =>
                            self -> IO result
htmlScriptElementGetEvent self
  = fromJSString <$>
      (webkit_dom_html_script_element_get_event
         (unHTMLScriptElement (toHTMLScriptElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        webkit_dom_html_script_element_set_charset ::
        JSRef HTMLScriptElement -> JSString -> IO ()
#else 
webkit_dom_html_script_element_set_charset ::
                                             JSRef HTMLScriptElement -> JSString -> IO ()
webkit_dom_html_script_element_set_charset = undefined
#endif
 
htmlScriptElementSetCharset ::
                            (HTMLScriptElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlScriptElementSetCharset self val
  = webkit_dom_html_script_element_set_charset
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"]"
        webkit_dom_html_script_element_get_charset ::
        JSRef HTMLScriptElement -> IO JSString
#else 
webkit_dom_html_script_element_get_charset ::
                                             JSRef HTMLScriptElement -> IO JSString
webkit_dom_html_script_element_get_charset = undefined
#endif
 
htmlScriptElementGetCharset ::
                            (HTMLScriptElementClass self, FromJSString result) =>
                              self -> IO result
htmlScriptElementGetCharset self
  = fromJSString <$>
      (webkit_dom_html_script_element_get_charset
         (unHTMLScriptElement (toHTMLScriptElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"async\"] = $2;"
        webkit_dom_html_script_element_set_async ::
        JSRef HTMLScriptElement -> JSBool -> IO ()
#else 
webkit_dom_html_script_element_set_async ::
                                           JSRef HTMLScriptElement -> JSBool -> IO ()
webkit_dom_html_script_element_set_async = undefined
#endif
 
htmlScriptElementSetAsync ::
                          (HTMLScriptElementClass self) => self -> Bool -> IO ()
htmlScriptElementSetAsync self val
  = webkit_dom_html_script_element_set_async
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"async\"] ? 1 : 0)"
        webkit_dom_html_script_element_get_async ::
        JSRef HTMLScriptElement -> IO JSBool
#else 
webkit_dom_html_script_element_get_async ::
                                           JSRef HTMLScriptElement -> IO JSBool
webkit_dom_html_script_element_get_async = undefined
#endif
 
htmlScriptElementGetAsync ::
                          (HTMLScriptElementClass self) => self -> IO Bool
htmlScriptElementGetAsync self
  = fromJSBool <$>
      (webkit_dom_html_script_element_get_async
         (unHTMLScriptElement (toHTMLScriptElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defer\"] = $2;"
        webkit_dom_html_script_element_set_defer ::
        JSRef HTMLScriptElement -> JSBool -> IO ()
#else 
webkit_dom_html_script_element_set_defer ::
                                           JSRef HTMLScriptElement -> JSBool -> IO ()
webkit_dom_html_script_element_set_defer = undefined
#endif
 
htmlScriptElementSetDefer ::
                          (HTMLScriptElementClass self) => self -> Bool -> IO ()
htmlScriptElementSetDefer self val
  = webkit_dom_html_script_element_set_defer
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"defer\"] ? 1 : 0)"
        webkit_dom_html_script_element_get_defer ::
        JSRef HTMLScriptElement -> IO JSBool
#else 
webkit_dom_html_script_element_get_defer ::
                                           JSRef HTMLScriptElement -> IO JSBool
webkit_dom_html_script_element_get_defer = undefined
#endif
 
htmlScriptElementGetDefer ::
                          (HTMLScriptElementClass self) => self -> IO Bool
htmlScriptElementGetDefer self
  = fromJSBool <$>
      (webkit_dom_html_script_element_get_defer
         (unHTMLScriptElement (toHTMLScriptElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        webkit_dom_html_script_element_set_src ::
        JSRef HTMLScriptElement -> JSString -> IO ()
#else 
webkit_dom_html_script_element_set_src ::
                                         JSRef HTMLScriptElement -> JSString -> IO ()
webkit_dom_html_script_element_set_src = undefined
#endif
 
htmlScriptElementSetSrc ::
                        (HTMLScriptElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlScriptElementSetSrc self val
  = webkit_dom_html_script_element_set_src
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        webkit_dom_html_script_element_get_src ::
        JSRef HTMLScriptElement -> IO JSString
#else 
webkit_dom_html_script_element_get_src ::
                                         JSRef HTMLScriptElement -> IO JSString
webkit_dom_html_script_element_get_src = undefined
#endif
 
htmlScriptElementGetSrc ::
                        (HTMLScriptElementClass self, FromJSString result) =>
                          self -> IO result
htmlScriptElementGetSrc self
  = fromJSString <$>
      (webkit_dom_html_script_element_get_src
         (unHTMLScriptElement (toHTMLScriptElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        webkit_dom_html_script_element_set_cross_origin ::
        JSRef HTMLScriptElement -> JSString -> IO ()
#else 
webkit_dom_html_script_element_set_cross_origin ::
                                                  JSRef HTMLScriptElement -> JSString -> IO ()
webkit_dom_html_script_element_set_cross_origin = undefined
#endif
 
htmlScriptElementSetCrossOrigin ::
                                (HTMLScriptElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmlScriptElementSetCrossOrigin self val
  = webkit_dom_html_script_element_set_cross_origin
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        webkit_dom_html_script_element_get_cross_origin ::
        JSRef HTMLScriptElement -> IO JSString
#else 
webkit_dom_html_script_element_get_cross_origin ::
                                                  JSRef HTMLScriptElement -> IO JSString
webkit_dom_html_script_element_get_cross_origin = undefined
#endif
 
htmlScriptElementGetCrossOrigin ::
                                (HTMLScriptElementClass self, FromJSString result) =>
                                  self -> IO result
htmlScriptElementGetCrossOrigin self
  = fromJSString <$>
      (webkit_dom_html_script_element_get_cross_origin
         (unHTMLScriptElement (toHTMLScriptElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"nonce\"] = $2;"
        webkit_dom_html_script_element_set_nonce ::
        JSRef HTMLScriptElement -> JSString -> IO ()
#else 
webkit_dom_html_script_element_set_nonce ::
                                           JSRef HTMLScriptElement -> JSString -> IO ()
webkit_dom_html_script_element_set_nonce = undefined
#endif
 
htmlScriptElementSetNonce ::
                          (HTMLScriptElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlScriptElementSetNonce self val
  = webkit_dom_html_script_element_set_nonce
      (unHTMLScriptElement (toHTMLScriptElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"nonce\"]"
        webkit_dom_html_script_element_get_nonce ::
        JSRef HTMLScriptElement -> IO JSString
#else 
webkit_dom_html_script_element_get_nonce ::
                                           JSRef HTMLScriptElement -> IO JSString
webkit_dom_html_script_element_get_nonce = undefined
#endif
 
htmlScriptElementGetNonce ::
                          (HTMLScriptElementClass self, FromJSString result) =>
                            self -> IO result
htmlScriptElementGetNonce self
  = fromJSString <$>
      (webkit_dom_html_script_element_get_nonce
         (unHTMLScriptElement (toHTMLScriptElement self)))