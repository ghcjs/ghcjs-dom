{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLAppletElement
       (webkit_dom_html_applet_element_set_align,
        htmlAppletElementSetAlign,
        webkit_dom_html_applet_element_get_align,
        htmlAppletElementGetAlign, webkit_dom_html_applet_element_set_alt,
        htmlAppletElementSetAlt, webkit_dom_html_applet_element_get_alt,
        htmlAppletElementGetAlt,
        webkit_dom_html_applet_element_set_archive,
        htmlAppletElementSetArchive,
        webkit_dom_html_applet_element_get_archive,
        htmlAppletElementGetArchive,
        webkit_dom_html_applet_element_set_code, htmlAppletElementSetCode,
        webkit_dom_html_applet_element_get_code, htmlAppletElementGetCode,
        webkit_dom_html_applet_element_set_code_base,
        htmlAppletElementSetCodeBase,
        webkit_dom_html_applet_element_get_code_base,
        htmlAppletElementGetCodeBase,
        webkit_dom_html_applet_element_set_height,
        htmlAppletElementSetHeight,
        webkit_dom_html_applet_element_get_height,
        htmlAppletElementGetHeight,
        webkit_dom_html_applet_element_set_hspace,
        htmlAppletElementSetHspace,
        webkit_dom_html_applet_element_get_hspace,
        htmlAppletElementGetHspace,
        webkit_dom_html_applet_element_set_name, htmlAppletElementSetName,
        webkit_dom_html_applet_element_get_name, htmlAppletElementGetName,
        webkit_dom_html_applet_element_set_object,
        htmlAppletElementSetObject,
        webkit_dom_html_applet_element_get_object,
        htmlAppletElementGetObject,
        webkit_dom_html_applet_element_set_vspace,
        htmlAppletElementSetVspace,
        webkit_dom_html_applet_element_get_vspace,
        htmlAppletElementGetVspace,
        webkit_dom_html_applet_element_set_width,
        htmlAppletElementSetWidth,
        webkit_dom_html_applet_element_get_width,
        htmlAppletElementGetWidth)
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
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_applet_element_set_align ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
webkit_dom_html_applet_element_set_align ::
                                           JSRef HTMLAppletElement -> JSString -> IO ()
webkit_dom_html_applet_element_set_align = undefined
#endif
 
htmlAppletElementSetAlign ::
                          (HTMLAppletElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlAppletElementSetAlign self val
  = webkit_dom_html_applet_element_set_align
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_applet_element_get_align ::
        JSRef HTMLAppletElement -> IO JSString
#else 
webkit_dom_html_applet_element_get_align ::
                                           JSRef HTMLAppletElement -> IO JSString
webkit_dom_html_applet_element_get_align = undefined
#endif
 
htmlAppletElementGetAlign ::
                          (HTMLAppletElementClass self, FromJSString result) =>
                            self -> IO result
htmlAppletElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_applet_element_get_align
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        webkit_dom_html_applet_element_set_alt ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
webkit_dom_html_applet_element_set_alt ::
                                         JSRef HTMLAppletElement -> JSString -> IO ()
webkit_dom_html_applet_element_set_alt = undefined
#endif
 
htmlAppletElementSetAlt ::
                        (HTMLAppletElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlAppletElementSetAlt self val
  = webkit_dom_html_applet_element_set_alt
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"]"
        webkit_dom_html_applet_element_get_alt ::
        JSRef HTMLAppletElement -> IO JSString
#else 
webkit_dom_html_applet_element_get_alt ::
                                         JSRef HTMLAppletElement -> IO JSString
webkit_dom_html_applet_element_get_alt = undefined
#endif
 
htmlAppletElementGetAlt ::
                        (HTMLAppletElementClass self, FromJSString result) =>
                          self -> IO result
htmlAppletElementGetAlt self
  = fromJSString <$>
      (webkit_dom_html_applet_element_get_alt
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        webkit_dom_html_applet_element_set_archive ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
webkit_dom_html_applet_element_set_archive ::
                                             JSRef HTMLAppletElement -> JSString -> IO ()
webkit_dom_html_applet_element_set_archive = undefined
#endif
 
htmlAppletElementSetArchive ::
                            (HTMLAppletElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlAppletElementSetArchive self val
  = webkit_dom_html_applet_element_set_archive
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"archive\"]"
        webkit_dom_html_applet_element_get_archive ::
        JSRef HTMLAppletElement -> IO JSString
#else 
webkit_dom_html_applet_element_get_archive ::
                                             JSRef HTMLAppletElement -> IO JSString
webkit_dom_html_applet_element_get_archive = undefined
#endif
 
htmlAppletElementGetArchive ::
                            (HTMLAppletElementClass self, FromJSString result) =>
                              self -> IO result
htmlAppletElementGetArchive self
  = fromJSString <$>
      (webkit_dom_html_applet_element_get_archive
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"code\"] = $2;"
        webkit_dom_html_applet_element_set_code ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
webkit_dom_html_applet_element_set_code ::
                                          JSRef HTMLAppletElement -> JSString -> IO ()
webkit_dom_html_applet_element_set_code = undefined
#endif
 
htmlAppletElementSetCode ::
                         (HTMLAppletElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlAppletElementSetCode self val
  = webkit_dom_html_applet_element_set_code
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"code\"]"
        webkit_dom_html_applet_element_get_code ::
        JSRef HTMLAppletElement -> IO JSString
#else 
webkit_dom_html_applet_element_get_code ::
                                          JSRef HTMLAppletElement -> IO JSString
webkit_dom_html_applet_element_get_code = undefined
#endif
 
htmlAppletElementGetCode ::
                         (HTMLAppletElementClass self, FromJSString result) =>
                           self -> IO result
htmlAppletElementGetCode self
  = fromJSString <$>
      (webkit_dom_html_applet_element_get_code
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        webkit_dom_html_applet_element_set_code_base ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
webkit_dom_html_applet_element_set_code_base ::
                                               JSRef HTMLAppletElement -> JSString -> IO ()
webkit_dom_html_applet_element_set_code_base = undefined
#endif
 
htmlAppletElementSetCodeBase ::
                             (HTMLAppletElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlAppletElementSetCodeBase self val
  = webkit_dom_html_applet_element_set_code_base
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"codeBase\"]"
        webkit_dom_html_applet_element_get_code_base ::
        JSRef HTMLAppletElement -> IO JSString
#else 
webkit_dom_html_applet_element_get_code_base ::
                                               JSRef HTMLAppletElement -> IO JSString
webkit_dom_html_applet_element_get_code_base = undefined
#endif
 
htmlAppletElementGetCodeBase ::
                             (HTMLAppletElementClass self, FromJSString result) =>
                               self -> IO result
htmlAppletElementGetCodeBase self
  = fromJSString <$>
      (webkit_dom_html_applet_element_get_code_base
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_applet_element_set_height ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
webkit_dom_html_applet_element_set_height ::
                                            JSRef HTMLAppletElement -> JSString -> IO ()
webkit_dom_html_applet_element_set_height = undefined
#endif
 
htmlAppletElementSetHeight ::
                           (HTMLAppletElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlAppletElementSetHeight self val
  = webkit_dom_html_applet_element_set_height
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_applet_element_get_height ::
        JSRef HTMLAppletElement -> IO JSString
#else 
webkit_dom_html_applet_element_get_height ::
                                            JSRef HTMLAppletElement -> IO JSString
webkit_dom_html_applet_element_get_height = undefined
#endif
 
htmlAppletElementGetHeight ::
                           (HTMLAppletElementClass self, FromJSString result) =>
                             self -> IO result
htmlAppletElementGetHeight self
  = fromJSString <$>
      (webkit_dom_html_applet_element_get_height
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        webkit_dom_html_applet_element_set_hspace ::
        JSRef HTMLAppletElement -> Int -> IO ()
#else 
webkit_dom_html_applet_element_set_hspace ::
                                            JSRef HTMLAppletElement -> Int -> IO ()
webkit_dom_html_applet_element_set_hspace = undefined
#endif
 
htmlAppletElementSetHspace ::
                           (HTMLAppletElementClass self) => self -> Int -> IO ()
htmlAppletElementSetHspace self val
  = webkit_dom_html_applet_element_set_hspace
      (unHTMLAppletElement (toHTMLAppletElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"]"
        webkit_dom_html_applet_element_get_hspace ::
        JSRef HTMLAppletElement -> IO Int
#else 
webkit_dom_html_applet_element_get_hspace ::
                                            JSRef HTMLAppletElement -> IO Int
webkit_dom_html_applet_element_get_hspace = undefined
#endif
 
htmlAppletElementGetHspace ::
                           (HTMLAppletElementClass self) => self -> IO Int
htmlAppletElementGetHspace self
  = webkit_dom_html_applet_element_get_hspace
      (unHTMLAppletElement (toHTMLAppletElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_applet_element_set_name ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
webkit_dom_html_applet_element_set_name ::
                                          JSRef HTMLAppletElement -> JSString -> IO ()
webkit_dom_html_applet_element_set_name = undefined
#endif
 
htmlAppletElementSetName ::
                         (HTMLAppletElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlAppletElementSetName self val
  = webkit_dom_html_applet_element_set_name
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_applet_element_get_name ::
        JSRef HTMLAppletElement -> IO JSString
#else 
webkit_dom_html_applet_element_get_name ::
                                          JSRef HTMLAppletElement -> IO JSString
webkit_dom_html_applet_element_get_name = undefined
#endif
 
htmlAppletElementGetName ::
                         (HTMLAppletElementClass self, FromJSString result) =>
                           self -> IO result
htmlAppletElementGetName self
  = fromJSString <$>
      (webkit_dom_html_applet_element_get_name
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"object\"] = $2;"
        webkit_dom_html_applet_element_set_object ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
webkit_dom_html_applet_element_set_object ::
                                            JSRef HTMLAppletElement -> JSString -> IO ()
webkit_dom_html_applet_element_set_object = undefined
#endif
 
htmlAppletElementSetObject ::
                           (HTMLAppletElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlAppletElementSetObject self val
  = webkit_dom_html_applet_element_set_object
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"object\"]"
        webkit_dom_html_applet_element_get_object ::
        JSRef HTMLAppletElement -> IO JSString
#else 
webkit_dom_html_applet_element_get_object ::
                                            JSRef HTMLAppletElement -> IO JSString
webkit_dom_html_applet_element_get_object = undefined
#endif
 
htmlAppletElementGetObject ::
                           (HTMLAppletElementClass self, FromJSString result) =>
                             self -> IO result
htmlAppletElementGetObject self
  = fromJSString <$>
      (webkit_dom_html_applet_element_get_object
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        webkit_dom_html_applet_element_set_vspace ::
        JSRef HTMLAppletElement -> Int -> IO ()
#else 
webkit_dom_html_applet_element_set_vspace ::
                                            JSRef HTMLAppletElement -> Int -> IO ()
webkit_dom_html_applet_element_set_vspace = undefined
#endif
 
htmlAppletElementSetVspace ::
                           (HTMLAppletElementClass self) => self -> Int -> IO ()
htmlAppletElementSetVspace self val
  = webkit_dom_html_applet_element_set_vspace
      (unHTMLAppletElement (toHTMLAppletElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"]"
        webkit_dom_html_applet_element_get_vspace ::
        JSRef HTMLAppletElement -> IO Int
#else 
webkit_dom_html_applet_element_get_vspace ::
                                            JSRef HTMLAppletElement -> IO Int
webkit_dom_html_applet_element_get_vspace = undefined
#endif
 
htmlAppletElementGetVspace ::
                           (HTMLAppletElementClass self) => self -> IO Int
htmlAppletElementGetVspace self
  = webkit_dom_html_applet_element_get_vspace
      (unHTMLAppletElement (toHTMLAppletElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_applet_element_set_width ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
webkit_dom_html_applet_element_set_width ::
                                           JSRef HTMLAppletElement -> JSString -> IO ()
webkit_dom_html_applet_element_set_width = undefined
#endif
 
htmlAppletElementSetWidth ::
                          (HTMLAppletElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlAppletElementSetWidth self val
  = webkit_dom_html_applet_element_set_width
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_applet_element_get_width ::
        JSRef HTMLAppletElement -> IO JSString
#else 
webkit_dom_html_applet_element_get_width ::
                                           JSRef HTMLAppletElement -> IO JSString
webkit_dom_html_applet_element_get_width = undefined
#endif
 
htmlAppletElementGetWidth ::
                          (HTMLAppletElementClass self, FromJSString result) =>
                            self -> IO result
htmlAppletElementGetWidth self
  = fromJSString <$>
      (webkit_dom_html_applet_element_get_width
         (unHTMLAppletElement (toHTMLAppletElement self)))