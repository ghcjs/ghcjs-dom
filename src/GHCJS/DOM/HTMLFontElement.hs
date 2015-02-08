{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFontElement
       (ghcjs_dom_html_font_element_set_color, htmlFontElementSetColor,
        ghcjs_dom_html_font_element_get_color, htmlFontElementGetColor,
        ghcjs_dom_html_font_element_set_face, htmlFontElementSetFace,
        ghcjs_dom_html_font_element_get_face, htmlFontElementGetFace,
        ghcjs_dom_html_font_element_set_size, htmlFontElementSetSize,
        ghcjs_dom_html_font_element_get_size, htmlFontElementGetSize,
        HTMLFontElement, IsHTMLFontElement, castToHTMLFontElement,
        gTypeHTMLFontElement, toHTMLFontElement)
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

 
foreign import javascript unsafe "$1[\"color\"] = $2;"
        ghcjs_dom_html_font_element_set_color ::
        JSRef HTMLFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.color Mozilla HTMLFontElement.color documentation> 
htmlFontElementSetColor ::
                        (MonadIO m, IsHTMLFontElement self, ToJSString val) =>
                          self -> val -> m ()
htmlFontElementSetColor self val
  = liftIO
      (ghcjs_dom_html_font_element_set_color
         (unHTMLFontElement (toHTMLFontElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"color\"]"
        ghcjs_dom_html_font_element_get_color ::
        JSRef HTMLFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.color Mozilla HTMLFontElement.color documentation> 
htmlFontElementGetColor ::
                        (MonadIO m, IsHTMLFontElement self, FromJSString result) =>
                          self -> m result
htmlFontElementGetColor self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_font_element_get_color
            (unHTMLFontElement (toHTMLFontElement self))))
 
foreign import javascript unsafe "$1[\"face\"] = $2;"
        ghcjs_dom_html_font_element_set_face ::
        JSRef HTMLFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.face Mozilla HTMLFontElement.face documentation> 
htmlFontElementSetFace ::
                       (MonadIO m, IsHTMLFontElement self, ToJSString val) =>
                         self -> val -> m ()
htmlFontElementSetFace self val
  = liftIO
      (ghcjs_dom_html_font_element_set_face
         (unHTMLFontElement (toHTMLFontElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"face\"]"
        ghcjs_dom_html_font_element_get_face ::
        JSRef HTMLFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.face Mozilla HTMLFontElement.face documentation> 
htmlFontElementGetFace ::
                       (MonadIO m, IsHTMLFontElement self, FromJSString result) =>
                         self -> m result
htmlFontElementGetFace self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_font_element_get_face
            (unHTMLFontElement (toHTMLFontElement self))))
 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_html_font_element_set_size ::
        JSRef HTMLFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.size Mozilla HTMLFontElement.size documentation> 
htmlFontElementSetSize ::
                       (MonadIO m, IsHTMLFontElement self, ToJSString val) =>
                         self -> val -> m ()
htmlFontElementSetSize self val
  = liftIO
      (ghcjs_dom_html_font_element_set_size
         (unHTMLFontElement (toHTMLFontElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_html_font_element_get_size ::
        JSRef HTMLFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.size Mozilla HTMLFontElement.size documentation> 
htmlFontElementGetSize ::
                       (MonadIO m, IsHTMLFontElement self, FromJSString result) =>
                         self -> m result
htmlFontElementGetSize self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_font_element_get_size
            (unHTMLFontElement (toHTMLFontElement self))))
#else
module GHCJS.DOM.HTMLFontElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFontElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFontElement
#endif
