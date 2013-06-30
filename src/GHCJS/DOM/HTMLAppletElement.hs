{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLAppletElement
       (ghcjs_dom_html_applet_element_set_align,
        htmlAppletElementSetAlign, ghcjs_dom_html_applet_element_get_align,
        htmlAppletElementGetAlign, ghcjs_dom_html_applet_element_set_alt,
        htmlAppletElementSetAlt, ghcjs_dom_html_applet_element_get_alt,
        htmlAppletElementGetAlt, ghcjs_dom_html_applet_element_set_archive,
        htmlAppletElementSetArchive,
        ghcjs_dom_html_applet_element_get_archive,
        htmlAppletElementGetArchive,
        ghcjs_dom_html_applet_element_set_code, htmlAppletElementSetCode,
        ghcjs_dom_html_applet_element_get_code, htmlAppletElementGetCode,
        ghcjs_dom_html_applet_element_set_code_base,
        htmlAppletElementSetCodeBase,
        ghcjs_dom_html_applet_element_get_code_base,
        htmlAppletElementGetCodeBase,
        ghcjs_dom_html_applet_element_set_height,
        htmlAppletElementSetHeight,
        ghcjs_dom_html_applet_element_get_height,
        htmlAppletElementGetHeight,
        ghcjs_dom_html_applet_element_set_hspace,
        htmlAppletElementSetHspace,
        ghcjs_dom_html_applet_element_get_hspace,
        htmlAppletElementGetHspace, ghcjs_dom_html_applet_element_set_name,
        htmlAppletElementSetName, ghcjs_dom_html_applet_element_get_name,
        htmlAppletElementGetName, ghcjs_dom_html_applet_element_set_object,
        htmlAppletElementSetObject,
        ghcjs_dom_html_applet_element_get_object,
        htmlAppletElementGetObject,
        ghcjs_dom_html_applet_element_set_vspace,
        htmlAppletElementSetVspace,
        ghcjs_dom_html_applet_element_get_vspace,
        htmlAppletElementGetVspace,
        ghcjs_dom_html_applet_element_set_width, htmlAppletElementSetWidth,
        ghcjs_dom_html_applet_element_get_width, htmlAppletElementGetWidth)
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
        ghcjs_dom_html_applet_element_set_align ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
ghcjs_dom_html_applet_element_set_align ::
                                          JSRef HTMLAppletElement -> JSString -> IO ()
ghcjs_dom_html_applet_element_set_align = undefined
#endif
 
htmlAppletElementSetAlign ::
                          (IsHTMLAppletElement self, ToJSString val) => self -> val -> IO ()
htmlAppletElementSetAlign self val
  = ghcjs_dom_html_applet_element_set_align
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_applet_element_get_align ::
        JSRef HTMLAppletElement -> IO JSString
#else 
ghcjs_dom_html_applet_element_get_align ::
                                          JSRef HTMLAppletElement -> IO JSString
ghcjs_dom_html_applet_element_get_align = undefined
#endif
 
htmlAppletElementGetAlign ::
                          (IsHTMLAppletElement self, FromJSString result) =>
                            self -> IO result
htmlAppletElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_applet_element_get_align
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        ghcjs_dom_html_applet_element_set_alt ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
ghcjs_dom_html_applet_element_set_alt ::
                                        JSRef HTMLAppletElement -> JSString -> IO ()
ghcjs_dom_html_applet_element_set_alt = undefined
#endif
 
htmlAppletElementSetAlt ::
                        (IsHTMLAppletElement self, ToJSString val) => self -> val -> IO ()
htmlAppletElementSetAlt self val
  = ghcjs_dom_html_applet_element_set_alt
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"]"
        ghcjs_dom_html_applet_element_get_alt ::
        JSRef HTMLAppletElement -> IO JSString
#else 
ghcjs_dom_html_applet_element_get_alt ::
                                        JSRef HTMLAppletElement -> IO JSString
ghcjs_dom_html_applet_element_get_alt = undefined
#endif
 
htmlAppletElementGetAlt ::
                        (IsHTMLAppletElement self, FromJSString result) =>
                          self -> IO result
htmlAppletElementGetAlt self
  = fromJSString <$>
      (ghcjs_dom_html_applet_element_get_alt
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        ghcjs_dom_html_applet_element_set_archive ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
ghcjs_dom_html_applet_element_set_archive ::
                                            JSRef HTMLAppletElement -> JSString -> IO ()
ghcjs_dom_html_applet_element_set_archive = undefined
#endif
 
htmlAppletElementSetArchive ::
                            (IsHTMLAppletElement self, ToJSString val) => self -> val -> IO ()
htmlAppletElementSetArchive self val
  = ghcjs_dom_html_applet_element_set_archive
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"archive\"]"
        ghcjs_dom_html_applet_element_get_archive ::
        JSRef HTMLAppletElement -> IO JSString
#else 
ghcjs_dom_html_applet_element_get_archive ::
                                            JSRef HTMLAppletElement -> IO JSString
ghcjs_dom_html_applet_element_get_archive = undefined
#endif
 
htmlAppletElementGetArchive ::
                            (IsHTMLAppletElement self, FromJSString result) =>
                              self -> IO result
htmlAppletElementGetArchive self
  = fromJSString <$>
      (ghcjs_dom_html_applet_element_get_archive
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"code\"] = $2;"
        ghcjs_dom_html_applet_element_set_code ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
ghcjs_dom_html_applet_element_set_code ::
                                         JSRef HTMLAppletElement -> JSString -> IO ()
ghcjs_dom_html_applet_element_set_code = undefined
#endif
 
htmlAppletElementSetCode ::
                         (IsHTMLAppletElement self, ToJSString val) => self -> val -> IO ()
htmlAppletElementSetCode self val
  = ghcjs_dom_html_applet_element_set_code
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_html_applet_element_get_code ::
        JSRef HTMLAppletElement -> IO JSString
#else 
ghcjs_dom_html_applet_element_get_code ::
                                         JSRef HTMLAppletElement -> IO JSString
ghcjs_dom_html_applet_element_get_code = undefined
#endif
 
htmlAppletElementGetCode ::
                         (IsHTMLAppletElement self, FromJSString result) =>
                           self -> IO result
htmlAppletElementGetCode self
  = fromJSString <$>
      (ghcjs_dom_html_applet_element_get_code
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        ghcjs_dom_html_applet_element_set_code_base ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
ghcjs_dom_html_applet_element_set_code_base ::
                                              JSRef HTMLAppletElement -> JSString -> IO ()
ghcjs_dom_html_applet_element_set_code_base = undefined
#endif
 
htmlAppletElementSetCodeBase ::
                             (IsHTMLAppletElement self, ToJSString val) => self -> val -> IO ()
htmlAppletElementSetCodeBase self val
  = ghcjs_dom_html_applet_element_set_code_base
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"codeBase\"]"
        ghcjs_dom_html_applet_element_get_code_base ::
        JSRef HTMLAppletElement -> IO JSString
#else 
ghcjs_dom_html_applet_element_get_code_base ::
                                              JSRef HTMLAppletElement -> IO JSString
ghcjs_dom_html_applet_element_get_code_base = undefined
#endif
 
htmlAppletElementGetCodeBase ::
                             (IsHTMLAppletElement self, FromJSString result) =>
                               self -> IO result
htmlAppletElementGetCodeBase self
  = fromJSString <$>
      (ghcjs_dom_html_applet_element_get_code_base
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_applet_element_set_height ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
ghcjs_dom_html_applet_element_set_height ::
                                           JSRef HTMLAppletElement -> JSString -> IO ()
ghcjs_dom_html_applet_element_set_height = undefined
#endif
 
htmlAppletElementSetHeight ::
                           (IsHTMLAppletElement self, ToJSString val) => self -> val -> IO ()
htmlAppletElementSetHeight self val
  = ghcjs_dom_html_applet_element_set_height
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_applet_element_get_height ::
        JSRef HTMLAppletElement -> IO JSString
#else 
ghcjs_dom_html_applet_element_get_height ::
                                           JSRef HTMLAppletElement -> IO JSString
ghcjs_dom_html_applet_element_get_height = undefined
#endif
 
htmlAppletElementGetHeight ::
                           (IsHTMLAppletElement self, FromJSString result) =>
                             self -> IO result
htmlAppletElementGetHeight self
  = fromJSString <$>
      (ghcjs_dom_html_applet_element_get_height
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        ghcjs_dom_html_applet_element_set_hspace ::
        JSRef HTMLAppletElement -> Int -> IO ()
#else 
ghcjs_dom_html_applet_element_set_hspace ::
                                           JSRef HTMLAppletElement -> Int -> IO ()
ghcjs_dom_html_applet_element_set_hspace = undefined
#endif
 
htmlAppletElementSetHspace ::
                           (IsHTMLAppletElement self) => self -> Int -> IO ()
htmlAppletElementSetHspace self val
  = ghcjs_dom_html_applet_element_set_hspace
      (unHTMLAppletElement (toHTMLAppletElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"]"
        ghcjs_dom_html_applet_element_get_hspace ::
        JSRef HTMLAppletElement -> IO Int
#else 
ghcjs_dom_html_applet_element_get_hspace ::
                                           JSRef HTMLAppletElement -> IO Int
ghcjs_dom_html_applet_element_get_hspace = undefined
#endif
 
htmlAppletElementGetHspace ::
                           (IsHTMLAppletElement self) => self -> IO Int
htmlAppletElementGetHspace self
  = ghcjs_dom_html_applet_element_get_hspace
      (unHTMLAppletElement (toHTMLAppletElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_applet_element_set_name ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
ghcjs_dom_html_applet_element_set_name ::
                                         JSRef HTMLAppletElement -> JSString -> IO ()
ghcjs_dom_html_applet_element_set_name = undefined
#endif
 
htmlAppletElementSetName ::
                         (IsHTMLAppletElement self, ToJSString val) => self -> val -> IO ()
htmlAppletElementSetName self val
  = ghcjs_dom_html_applet_element_set_name
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_applet_element_get_name ::
        JSRef HTMLAppletElement -> IO JSString
#else 
ghcjs_dom_html_applet_element_get_name ::
                                         JSRef HTMLAppletElement -> IO JSString
ghcjs_dom_html_applet_element_get_name = undefined
#endif
 
htmlAppletElementGetName ::
                         (IsHTMLAppletElement self, FromJSString result) =>
                           self -> IO result
htmlAppletElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_applet_element_get_name
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"object\"] = $2;"
        ghcjs_dom_html_applet_element_set_object ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
ghcjs_dom_html_applet_element_set_object ::
                                           JSRef HTMLAppletElement -> JSString -> IO ()
ghcjs_dom_html_applet_element_set_object = undefined
#endif
 
htmlAppletElementSetObject ::
                           (IsHTMLAppletElement self, ToJSString val) => self -> val -> IO ()
htmlAppletElementSetObject self val
  = ghcjs_dom_html_applet_element_set_object
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"object\"]"
        ghcjs_dom_html_applet_element_get_object ::
        JSRef HTMLAppletElement -> IO JSString
#else 
ghcjs_dom_html_applet_element_get_object ::
                                           JSRef HTMLAppletElement -> IO JSString
ghcjs_dom_html_applet_element_get_object = undefined
#endif
 
htmlAppletElementGetObject ::
                           (IsHTMLAppletElement self, FromJSString result) =>
                             self -> IO result
htmlAppletElementGetObject self
  = fromJSString <$>
      (ghcjs_dom_html_applet_element_get_object
         (unHTMLAppletElement (toHTMLAppletElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        ghcjs_dom_html_applet_element_set_vspace ::
        JSRef HTMLAppletElement -> Int -> IO ()
#else 
ghcjs_dom_html_applet_element_set_vspace ::
                                           JSRef HTMLAppletElement -> Int -> IO ()
ghcjs_dom_html_applet_element_set_vspace = undefined
#endif
 
htmlAppletElementSetVspace ::
                           (IsHTMLAppletElement self) => self -> Int -> IO ()
htmlAppletElementSetVspace self val
  = ghcjs_dom_html_applet_element_set_vspace
      (unHTMLAppletElement (toHTMLAppletElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"]"
        ghcjs_dom_html_applet_element_get_vspace ::
        JSRef HTMLAppletElement -> IO Int
#else 
ghcjs_dom_html_applet_element_get_vspace ::
                                           JSRef HTMLAppletElement -> IO Int
ghcjs_dom_html_applet_element_get_vspace = undefined
#endif
 
htmlAppletElementGetVspace ::
                           (IsHTMLAppletElement self) => self -> IO Int
htmlAppletElementGetVspace self
  = ghcjs_dom_html_applet_element_get_vspace
      (unHTMLAppletElement (toHTMLAppletElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_applet_element_set_width ::
        JSRef HTMLAppletElement -> JSString -> IO ()
#else 
ghcjs_dom_html_applet_element_set_width ::
                                          JSRef HTMLAppletElement -> JSString -> IO ()
ghcjs_dom_html_applet_element_set_width = undefined
#endif
 
htmlAppletElementSetWidth ::
                          (IsHTMLAppletElement self, ToJSString val) => self -> val -> IO ()
htmlAppletElementSetWidth self val
  = ghcjs_dom_html_applet_element_set_width
      (unHTMLAppletElement (toHTMLAppletElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_applet_element_get_width ::
        JSRef HTMLAppletElement -> IO JSString
#else 
ghcjs_dom_html_applet_element_get_width ::
                                          JSRef HTMLAppletElement -> IO JSString
ghcjs_dom_html_applet_element_get_width = undefined
#endif
 
htmlAppletElementGetWidth ::
                          (IsHTMLAppletElement self, FromJSString result) =>
                            self -> IO result
htmlAppletElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_html_applet_element_get_width
         (unHTMLAppletElement (toHTMLAppletElement self)))