{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLEmbedElement
       (ghcjs_dom_html_embed_element_set_align, htmlEmbedElementSetAlign,
        ghcjs_dom_html_embed_element_get_align, htmlEmbedElementGetAlign,
        ghcjs_dom_html_embed_element_set_height, htmlEmbedElementSetHeight,
        ghcjs_dom_html_embed_element_get_height, htmlEmbedElementGetHeight,
        ghcjs_dom_html_embed_element_set_name, htmlEmbedElementSetName,
        ghcjs_dom_html_embed_element_get_name, htmlEmbedElementGetName,
        ghcjs_dom_html_embed_element_set_src, htmlEmbedElementSetSrc,
        ghcjs_dom_html_embed_element_get_src, htmlEmbedElementGetSrc,
        ghcjs_dom_html_embed_element_set_width, htmlEmbedElementSetWidth,
        ghcjs_dom_html_embed_element_get_width, htmlEmbedElementGetWidth,
        HTMLEmbedElement, IsHTMLEmbedElement, castToHTMLEmbedElement,
        gTypeHTMLEmbedElement, toHTMLEmbedElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_embed_element_set_align ::
        JSRef HTMLEmbedElement -> JSString -> IO ()
 
htmlEmbedElementSetAlign ::
                         (IsHTMLEmbedElement self, ToJSString val) => self -> val -> IO ()
htmlEmbedElementSetAlign self val
  = ghcjs_dom_html_embed_element_set_align
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_embed_element_get_align ::
        JSRef HTMLEmbedElement -> IO JSString
 
htmlEmbedElementGetAlign ::
                         (IsHTMLEmbedElement self, FromJSString result) => self -> IO result
htmlEmbedElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_embed_element_get_align
         (unHTMLEmbedElement (toHTMLEmbedElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_embed_element_set_height ::
        JSRef HTMLEmbedElement -> Int -> IO ()
 
htmlEmbedElementSetHeight ::
                          (IsHTMLEmbedElement self) => self -> Int -> IO ()
htmlEmbedElementSetHeight self val
  = ghcjs_dom_html_embed_element_set_height
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      val
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_embed_element_get_height ::
        JSRef HTMLEmbedElement -> IO Int
 
htmlEmbedElementGetHeight ::
                          (IsHTMLEmbedElement self) => self -> IO Int
htmlEmbedElementGetHeight self
  = ghcjs_dom_html_embed_element_get_height
      (unHTMLEmbedElement (toHTMLEmbedElement self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_embed_element_set_name ::
        JSRef HTMLEmbedElement -> JSString -> IO ()
 
htmlEmbedElementSetName ::
                        (IsHTMLEmbedElement self, ToJSString val) => self -> val -> IO ()
htmlEmbedElementSetName self val
  = ghcjs_dom_html_embed_element_set_name
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_embed_element_get_name ::
        JSRef HTMLEmbedElement -> IO JSString
 
htmlEmbedElementGetName ::
                        (IsHTMLEmbedElement self, FromJSString result) => self -> IO result
htmlEmbedElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_embed_element_get_name
         (unHTMLEmbedElement (toHTMLEmbedElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_embed_element_set_src ::
        JSRef HTMLEmbedElement -> JSString -> IO ()
 
htmlEmbedElementSetSrc ::
                       (IsHTMLEmbedElement self, ToJSString val) => self -> val -> IO ()
htmlEmbedElementSetSrc self val
  = ghcjs_dom_html_embed_element_set_src
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_embed_element_get_src ::
        JSRef HTMLEmbedElement -> IO JSString
 
htmlEmbedElementGetSrc ::
                       (IsHTMLEmbedElement self, FromJSString result) => self -> IO result
htmlEmbedElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_embed_element_get_src
         (unHTMLEmbedElement (toHTMLEmbedElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_embed_element_set_width ::
        JSRef HTMLEmbedElement -> Int -> IO ()
 
htmlEmbedElementSetWidth ::
                         (IsHTMLEmbedElement self) => self -> Int -> IO ()
htmlEmbedElementSetWidth self val
  = ghcjs_dom_html_embed_element_set_width
      (unHTMLEmbedElement (toHTMLEmbedElement self))
      val
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_embed_element_get_width ::
        JSRef HTMLEmbedElement -> IO Int
 
htmlEmbedElementGetWidth ::
                         (IsHTMLEmbedElement self) => self -> IO Int
htmlEmbedElementGetWidth self
  = ghcjs_dom_html_embed_element_get_width
      (unHTMLEmbedElement (toHTMLEmbedElement self))
#else
module GHCJS.DOM.HTMLEmbedElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLEmbedElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLEmbedElement
#endif
