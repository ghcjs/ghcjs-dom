{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBaseFontElement
       (ghcjs_dom_html_base_font_element_set_color,
        htmlBaseFontElementSetColor,
        ghcjs_dom_html_base_font_element_get_color,
        htmlBaseFontElementGetColor,
        ghcjs_dom_html_base_font_element_set_face,
        htmlBaseFontElementSetFace,
        ghcjs_dom_html_base_font_element_get_face,
        htmlBaseFontElementGetFace,
        ghcjs_dom_html_base_font_element_set_size,
        htmlBaseFontElementSetSize,
        ghcjs_dom_html_base_font_element_get_size,
        htmlBaseFontElementGetSize, HTMLBaseFontElement,
        IsHTMLBaseFontElement, castToHTMLBaseFontElement,
        gTypeHTMLBaseFontElement, toHTMLBaseFontElement)
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
        ghcjs_dom_html_base_font_element_set_color ::
        JSRef HTMLBaseFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.color Mozilla HTMLBaseFontElement.color documentation> 
htmlBaseFontElementSetColor ::
                            (MonadIO m, IsHTMLBaseFontElement self, ToJSString val) =>
                              self -> val -> m ()
htmlBaseFontElementSetColor self val
  = liftIO
      (ghcjs_dom_html_base_font_element_set_color
         (unHTMLBaseFontElement (toHTMLBaseFontElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"color\"]"
        ghcjs_dom_html_base_font_element_get_color ::
        JSRef HTMLBaseFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.color Mozilla HTMLBaseFontElement.color documentation> 
htmlBaseFontElementGetColor ::
                            (MonadIO m, IsHTMLBaseFontElement self, FromJSString result) =>
                              self -> m result
htmlBaseFontElementGetColor self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_base_font_element_get_color
            (unHTMLBaseFontElement (toHTMLBaseFontElement self))))
 
foreign import javascript unsafe "$1[\"face\"] = $2;"
        ghcjs_dom_html_base_font_element_set_face ::
        JSRef HTMLBaseFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.face Mozilla HTMLBaseFontElement.face documentation> 
htmlBaseFontElementSetFace ::
                           (MonadIO m, IsHTMLBaseFontElement self, ToJSString val) =>
                             self -> val -> m ()
htmlBaseFontElementSetFace self val
  = liftIO
      (ghcjs_dom_html_base_font_element_set_face
         (unHTMLBaseFontElement (toHTMLBaseFontElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"face\"]"
        ghcjs_dom_html_base_font_element_get_face ::
        JSRef HTMLBaseFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.face Mozilla HTMLBaseFontElement.face documentation> 
htmlBaseFontElementGetFace ::
                           (MonadIO m, IsHTMLBaseFontElement self, FromJSString result) =>
                             self -> m result
htmlBaseFontElementGetFace self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_base_font_element_get_face
            (unHTMLBaseFontElement (toHTMLBaseFontElement self))))
 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_html_base_font_element_set_size ::
        JSRef HTMLBaseFontElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.size Mozilla HTMLBaseFontElement.size documentation> 
htmlBaseFontElementSetSize ::
                           (MonadIO m, IsHTMLBaseFontElement self) => self -> Int -> m ()
htmlBaseFontElementSetSize self val
  = liftIO
      (ghcjs_dom_html_base_font_element_set_size
         (unHTMLBaseFontElement (toHTMLBaseFontElement self))
         val)
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_html_base_font_element_get_size ::
        JSRef HTMLBaseFontElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.size Mozilla HTMLBaseFontElement.size documentation> 
htmlBaseFontElementGetSize ::
                           (MonadIO m, IsHTMLBaseFontElement self) => self -> m Int
htmlBaseFontElementGetSize self
  = liftIO
      (ghcjs_dom_html_base_font_element_get_size
         (unHTMLBaseFontElement (toHTMLBaseFontElement self)))
#else
module GHCJS.DOM.HTMLBaseFontElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBaseFontElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBaseFontElement
#endif
