{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLEmbedElement
       (webkit_dom_html_embed_element_set_align, htmlEmbedElementSetAlign,
        webkit_dom_html_embed_element_get_align, htmlEmbedElementGetAlign,
        webkit_dom_html_embed_element_set_height,
        htmlEmbedElementSetHeight,
        webkit_dom_html_embed_element_get_height,
        htmlEmbedElementGetHeight, webkit_dom_html_embed_element_set_name,
        htmlEmbedElementSetName, webkit_dom_html_embed_element_get_name,
        htmlEmbedElementGetName, webkit_dom_html_embed_element_set_src,
        htmlEmbedElementSetSrc, webkit_dom_html_embed_element_get_src,
        htmlEmbedElementGetSrc, webkit_dom_html_embed_element_set_width,
        htmlEmbedElementSetWidth, webkit_dom_html_embed_element_get_width,
        htmlEmbedElementGetWidth)
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
        webkit_dom_html_embed_element_set_align ::
        JSRef HTMLEmbedElement -> JSString -> IO ()
#else 
webkit_dom_html_embed_element_set_align ::
                                          JSRef HTMLEmbedElement -> JSString -> IO ()
webkit_dom_html_embed_element_set_align = undefined
#endif
 
htmlEmbedElementSetAlign ::
                         (HTMLEmbedElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlEmbedElementSetAlign self val
  = webkit_dom_html_embed_element_set_align
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_embed_element_get_align ::
        JSRef HTMLEmbedElement -> IO JSString
#else 
webkit_dom_html_embed_element_get_align ::
                                          JSRef HTMLEmbedElement -> IO JSString
webkit_dom_html_embed_element_get_align = undefined
#endif
 
htmlEmbedElementGetAlign ::
                         (HTMLEmbedElementClass self, FromJSString result) =>
                           self -> IO result
htmlEmbedElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_embed_element_get_align
         (unHTMLEmbedElement (toHTMLEmbedElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_embed_element_set_height ::
        JSRef HTMLEmbedElement -> Int -> IO ()
#else 
webkit_dom_html_embed_element_set_height ::
                                           JSRef HTMLEmbedElement -> Int -> IO ()
webkit_dom_html_embed_element_set_height = undefined
#endif
 
htmlEmbedElementSetHeight ::
                          (HTMLEmbedElementClass self) => self -> Int -> IO ()
htmlEmbedElementSetHeight self val
  = webkit_dom_html_embed_element_set_height
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_embed_element_get_height ::
        JSRef HTMLEmbedElement -> IO Int
#else 
webkit_dom_html_embed_element_get_height ::
                                           JSRef HTMLEmbedElement -> IO Int
webkit_dom_html_embed_element_get_height = undefined
#endif
 
htmlEmbedElementGetHeight ::
                          (HTMLEmbedElementClass self) => self -> IO Int
htmlEmbedElementGetHeight self
  = webkit_dom_html_embed_element_get_height
      (unHTMLEmbedElement (toHTMLEmbedElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_embed_element_set_name ::
        JSRef HTMLEmbedElement -> JSString -> IO ()
#else 
webkit_dom_html_embed_element_set_name ::
                                         JSRef HTMLEmbedElement -> JSString -> IO ()
webkit_dom_html_embed_element_set_name = undefined
#endif
 
htmlEmbedElementSetName ::
                        (HTMLEmbedElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlEmbedElementSetName self val
  = webkit_dom_html_embed_element_set_name
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_embed_element_get_name ::
        JSRef HTMLEmbedElement -> IO JSString
#else 
webkit_dom_html_embed_element_get_name ::
                                         JSRef HTMLEmbedElement -> IO JSString
webkit_dom_html_embed_element_get_name = undefined
#endif
 
htmlEmbedElementGetName ::
                        (HTMLEmbedElementClass self, FromJSString result) =>
                          self -> IO result
htmlEmbedElementGetName self
  = fromJSString <$>
      (webkit_dom_html_embed_element_get_name
         (unHTMLEmbedElement (toHTMLEmbedElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        webkit_dom_html_embed_element_set_src ::
        JSRef HTMLEmbedElement -> JSString -> IO ()
#else 
webkit_dom_html_embed_element_set_src ::
                                        JSRef HTMLEmbedElement -> JSString -> IO ()
webkit_dom_html_embed_element_set_src = undefined
#endif
 
htmlEmbedElementSetSrc ::
                       (HTMLEmbedElementClass self, ToJSString val) =>
                         self -> val -> IO ()
htmlEmbedElementSetSrc self val
  = webkit_dom_html_embed_element_set_src
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        webkit_dom_html_embed_element_get_src ::
        JSRef HTMLEmbedElement -> IO JSString
#else 
webkit_dom_html_embed_element_get_src ::
                                        JSRef HTMLEmbedElement -> IO JSString
webkit_dom_html_embed_element_get_src = undefined
#endif
 
htmlEmbedElementGetSrc ::
                       (HTMLEmbedElementClass self, FromJSString result) =>
                         self -> IO result
htmlEmbedElementGetSrc self
  = fromJSString <$>
      (webkit_dom_html_embed_element_get_src
         (unHTMLEmbedElement (toHTMLEmbedElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_embed_element_set_width ::
        JSRef HTMLEmbedElement -> Int -> IO ()
#else 
webkit_dom_html_embed_element_set_width ::
                                          JSRef HTMLEmbedElement -> Int -> IO ()
webkit_dom_html_embed_element_set_width = undefined
#endif
 
htmlEmbedElementSetWidth ::
                         (HTMLEmbedElementClass self) => self -> Int -> IO ()
htmlEmbedElementSetWidth self val
  = webkit_dom_html_embed_element_set_width
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_embed_element_get_width ::
        JSRef HTMLEmbedElement -> IO Int
#else 
webkit_dom_html_embed_element_get_width ::
                                          JSRef HTMLEmbedElement -> IO Int
webkit_dom_html_embed_element_get_width = undefined
#endif
 
htmlEmbedElementGetWidth ::
                         (HTMLEmbedElementClass self) => self -> IO Int
htmlEmbedElementGetWidth self
  = webkit_dom_html_embed_element_get_width
      (unHTMLEmbedElement (toHTMLEmbedElement self))