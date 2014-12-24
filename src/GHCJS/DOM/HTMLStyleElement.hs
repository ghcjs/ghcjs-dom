{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLStyleElement
       (ghcjs_dom_html_style_element_set_disabled,
        htmlStyleElementSetDisabled,
        ghcjs_dom_html_style_element_get_disabled,
        htmlStyleElementGetDisabled,
        ghcjs_dom_html_style_element_set_media, htmlStyleElementSetMedia,
        ghcjs_dom_html_style_element_get_media, htmlStyleElementGetMedia,
        ghcjs_dom_html_style_element_get_sheet, htmlStyleElementGetSheet,
        HTMLStyleElement, IsHTMLStyleElement, castToHTMLStyleElement,
        gTypeHTMLStyleElement, toHTMLStyleElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_style_element_set_disabled ::
        JSRef HTMLStyleElement -> Bool -> IO ()
 
htmlStyleElementSetDisabled ::
                            (IsHTMLStyleElement self) => self -> Bool -> IO ()
htmlStyleElementSetDisabled self val
  = ghcjs_dom_html_style_element_set_disabled
      (unHTMLStyleElement (toHTMLStyleElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_style_element_get_disabled ::
        JSRef HTMLStyleElement -> IO Bool
 
htmlStyleElementGetDisabled ::
                            (IsHTMLStyleElement self) => self -> IO Bool
htmlStyleElementGetDisabled self
  = ghcjs_dom_html_style_element_get_disabled
      (unHTMLStyleElement (toHTMLStyleElement self))
 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        ghcjs_dom_html_style_element_set_media ::
        JSRef HTMLStyleElement -> JSString -> IO ()
 
htmlStyleElementSetMedia ::
                         (IsHTMLStyleElement self, ToJSString val) => self -> val -> IO ()
htmlStyleElementSetMedia self val
  = ghcjs_dom_html_style_element_set_media
      (unHTMLStyleElement (toHTMLStyleElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_html_style_element_get_media ::
        JSRef HTMLStyleElement -> IO JSString
 
htmlStyleElementGetMedia ::
                         (IsHTMLStyleElement self, FromJSString result) => self -> IO result
htmlStyleElementGetMedia self
  = fromJSString <$>
      (ghcjs_dom_html_style_element_get_media
         (unHTMLStyleElement (toHTMLStyleElement self)))
 
foreign import javascript unsafe "$1[\"sheet\"]"
        ghcjs_dom_html_style_element_get_sheet ::
        JSRef HTMLStyleElement -> IO (JSRef StyleSheet)
 
htmlStyleElementGetSheet ::
                         (IsHTMLStyleElement self) => self -> IO (Maybe StyleSheet)
htmlStyleElementGetSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (ghcjs_dom_html_style_element_get_sheet
         (unHTMLStyleElement (toHTMLStyleElement self)))
#else
module GHCJS.DOM.HTMLStyleElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
#endif
