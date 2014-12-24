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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"color\"] = $2;"
        ghcjs_dom_html_base_font_element_set_color ::
        JSRef HTMLBaseFontElement -> JSString -> IO ()
 
htmlBaseFontElementSetColor ::
                            (IsHTMLBaseFontElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlBaseFontElementSetColor self val
  = ghcjs_dom_html_base_font_element_set_color
      (unHTMLBaseFontElement (toHTMLBaseFontElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"color\"]"
        ghcjs_dom_html_base_font_element_get_color ::
        JSRef HTMLBaseFontElement -> IO JSString
 
htmlBaseFontElementGetColor ::
                            (IsHTMLBaseFontElement self, FromJSString result) =>
                              self -> IO result
htmlBaseFontElementGetColor self
  = fromJSString <$>
      (ghcjs_dom_html_base_font_element_get_color
         (unHTMLBaseFontElement (toHTMLBaseFontElement self)))
 
foreign import javascript unsafe "$1[\"face\"] = $2;"
        ghcjs_dom_html_base_font_element_set_face ::
        JSRef HTMLBaseFontElement -> JSString -> IO ()
 
htmlBaseFontElementSetFace ::
                           (IsHTMLBaseFontElement self, ToJSString val) =>
                             self -> val -> IO ()
htmlBaseFontElementSetFace self val
  = ghcjs_dom_html_base_font_element_set_face
      (unHTMLBaseFontElement (toHTMLBaseFontElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"face\"]"
        ghcjs_dom_html_base_font_element_get_face ::
        JSRef HTMLBaseFontElement -> IO JSString
 
htmlBaseFontElementGetFace ::
                           (IsHTMLBaseFontElement self, FromJSString result) =>
                             self -> IO result
htmlBaseFontElementGetFace self
  = fromJSString <$>
      (ghcjs_dom_html_base_font_element_get_face
         (unHTMLBaseFontElement (toHTMLBaseFontElement self)))
 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_html_base_font_element_set_size ::
        JSRef HTMLBaseFontElement -> Int -> IO ()
 
htmlBaseFontElementSetSize ::
                           (IsHTMLBaseFontElement self) => self -> Int -> IO ()
htmlBaseFontElementSetSize self val
  = ghcjs_dom_html_base_font_element_set_size
      (unHTMLBaseFontElement (toHTMLBaseFontElement self))
      val
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_html_base_font_element_get_size ::
        JSRef HTMLBaseFontElement -> IO Int
 
htmlBaseFontElementGetSize ::
                           (IsHTMLBaseFontElement self) => self -> IO Int
htmlBaseFontElementGetSize self
  = ghcjs_dom_html_base_font_element_get_size
      (unHTMLBaseFontElement (toHTMLBaseFontElement self))
#else
module GHCJS.DOM.HTMLBaseFontElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBaseFontElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBaseFontElement
#endif
