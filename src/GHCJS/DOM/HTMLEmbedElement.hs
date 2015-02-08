{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLEmbedElement
       (ghcjs_dom_html_embed_element_get_svg_document,
        htmlEmbedElementGetSVGDocument,
        ghcjs_dom_html_embed_element_set_align, htmlEmbedElementSetAlign,
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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"getSVGDocument\"]()"
        ghcjs_dom_html_embed_element_get_svg_document ::
        JSRef HTMLEmbedElement -> IO (JSRef SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.svgDocument Mozilla HTMLEmbedElement.svgDocument documentation> 
htmlEmbedElementGetSVGDocument ::
                               (MonadIO m, IsHTMLEmbedElement self) =>
                                 self -> m (Maybe SVGDocument)
htmlEmbedElementGetSVGDocument self
  = liftIO
      ((ghcjs_dom_html_embed_element_get_svg_document
          (unHTMLEmbedElement (toHTMLEmbedElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_embed_element_set_align ::
        JSRef HTMLEmbedElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.align Mozilla HTMLEmbedElement.align documentation> 
htmlEmbedElementSetAlign ::
                         (MonadIO m, IsHTMLEmbedElement self, ToJSString val) =>
                           self -> val -> m ()
htmlEmbedElementSetAlign self val
  = liftIO
      (ghcjs_dom_html_embed_element_set_align
         (unHTMLEmbedElement (toHTMLEmbedElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_embed_element_get_align ::
        JSRef HTMLEmbedElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.align Mozilla HTMLEmbedElement.align documentation> 
htmlEmbedElementGetAlign ::
                         (MonadIO m, IsHTMLEmbedElement self, FromJSString result) =>
                           self -> m result
htmlEmbedElementGetAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_embed_element_get_align
            (unHTMLEmbedElement (toHTMLEmbedElement self))))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_embed_element_set_height ::
        JSRef HTMLEmbedElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.height Mozilla HTMLEmbedElement.height documentation> 
htmlEmbedElementSetHeight ::
                          (MonadIO m, IsHTMLEmbedElement self) => self -> Int -> m ()
htmlEmbedElementSetHeight self val
  = liftIO
      (ghcjs_dom_html_embed_element_set_height
         (unHTMLEmbedElement (toHTMLEmbedElement self))
         val)
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_embed_element_get_height ::
        JSRef HTMLEmbedElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.height Mozilla HTMLEmbedElement.height documentation> 
htmlEmbedElementGetHeight ::
                          (MonadIO m, IsHTMLEmbedElement self) => self -> m Int
htmlEmbedElementGetHeight self
  = liftIO
      (ghcjs_dom_html_embed_element_get_height
         (unHTMLEmbedElement (toHTMLEmbedElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_embed_element_set_name ::
        JSRef HTMLEmbedElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.name Mozilla HTMLEmbedElement.name documentation> 
htmlEmbedElementSetName ::
                        (MonadIO m, IsHTMLEmbedElement self, ToJSString val) =>
                          self -> val -> m ()
htmlEmbedElementSetName self val
  = liftIO
      (ghcjs_dom_html_embed_element_set_name
         (unHTMLEmbedElement (toHTMLEmbedElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_embed_element_get_name ::
        JSRef HTMLEmbedElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.name Mozilla HTMLEmbedElement.name documentation> 
htmlEmbedElementGetName ::
                        (MonadIO m, IsHTMLEmbedElement self, FromJSString result) =>
                          self -> m result
htmlEmbedElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_embed_element_get_name
            (unHTMLEmbedElement (toHTMLEmbedElement self))))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_embed_element_set_src ::
        JSRef HTMLEmbedElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.src Mozilla HTMLEmbedElement.src documentation> 
htmlEmbedElementSetSrc ::
                       (MonadIO m, IsHTMLEmbedElement self, ToJSString val) =>
                         self -> val -> m ()
htmlEmbedElementSetSrc self val
  = liftIO
      (ghcjs_dom_html_embed_element_set_src
         (unHTMLEmbedElement (toHTMLEmbedElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_embed_element_get_src ::
        JSRef HTMLEmbedElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.src Mozilla HTMLEmbedElement.src documentation> 
htmlEmbedElementGetSrc ::
                       (MonadIO m, IsHTMLEmbedElement self, FromJSString result) =>
                         self -> m result
htmlEmbedElementGetSrc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_embed_element_get_src
            (unHTMLEmbedElement (toHTMLEmbedElement self))))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_embed_element_set_width ::
        JSRef HTMLEmbedElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.width Mozilla HTMLEmbedElement.width documentation> 
htmlEmbedElementSetWidth ::
                         (MonadIO m, IsHTMLEmbedElement self) => self -> Int -> m ()
htmlEmbedElementSetWidth self val
  = liftIO
      (ghcjs_dom_html_embed_element_set_width
         (unHTMLEmbedElement (toHTMLEmbedElement self))
         val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_embed_element_get_width ::
        JSRef HTMLEmbedElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.width Mozilla HTMLEmbedElement.width documentation> 
htmlEmbedElementGetWidth ::
                         (MonadIO m, IsHTMLEmbedElement self) => self -> m Int
htmlEmbedElementGetWidth self
  = liftIO
      (ghcjs_dom_html_embed_element_get_width
         (unHTMLEmbedElement (toHTMLEmbedElement self)))
#else
module GHCJS.DOM.HTMLEmbedElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLEmbedElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLEmbedElement
#endif
