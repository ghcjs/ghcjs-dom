{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHtmlElement
       (ghcjs_dom_html_html_element_set_version,
        htmlHtmlElementSetVersion, ghcjs_dom_html_html_element_get_version,
        htmlHtmlElementGetVersion,
        ghcjs_dom_html_html_element_set_manifest,
        htmlHtmlElementSetManifest,
        ghcjs_dom_html_html_element_get_manifest,
        htmlHtmlElementGetManifest, HTMLHtmlElement, IsHTMLHtmlElement,
        castToHTMLHtmlElement, gTypeHTMLHtmlElement, toHTMLHtmlElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"version\"] = $2;"
        ghcjs_dom_html_html_element_set_version ::
        JSRef HTMLHtmlElement -> JSString -> IO ()
#else 
ghcjs_dom_html_html_element_set_version ::
                                          JSRef HTMLHtmlElement -> JSString -> IO ()
ghcjs_dom_html_html_element_set_version = undefined
#endif
 
htmlHtmlElementSetVersion ::
                          (IsHTMLHtmlElement self, ToJSString val) => self -> val -> IO ()
htmlHtmlElementSetVersion self val
  = ghcjs_dom_html_html_element_set_version
      (unHTMLHtmlElement (toHTMLHtmlElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"version\"]"
        ghcjs_dom_html_html_element_get_version ::
        JSRef HTMLHtmlElement -> IO JSString
#else 
ghcjs_dom_html_html_element_get_version ::
                                          JSRef HTMLHtmlElement -> IO JSString
ghcjs_dom_html_html_element_get_version = undefined
#endif
 
htmlHtmlElementGetVersion ::
                          (IsHTMLHtmlElement self, FromJSString result) => self -> IO result
htmlHtmlElementGetVersion self
  = fromJSString <$>
      (ghcjs_dom_html_html_element_get_version
         (unHTMLHtmlElement (toHTMLHtmlElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"manifest\"] = $2;"
        ghcjs_dom_html_html_element_set_manifest ::
        JSRef HTMLHtmlElement -> JSString -> IO ()
#else 
ghcjs_dom_html_html_element_set_manifest ::
                                           JSRef HTMLHtmlElement -> JSString -> IO ()
ghcjs_dom_html_html_element_set_manifest = undefined
#endif
 
htmlHtmlElementSetManifest ::
                           (IsHTMLHtmlElement self, ToJSString val) => self -> val -> IO ()
htmlHtmlElementSetManifest self val
  = ghcjs_dom_html_html_element_set_manifest
      (unHTMLHtmlElement (toHTMLHtmlElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"manifest\"]"
        ghcjs_dom_html_html_element_get_manifest ::
        JSRef HTMLHtmlElement -> IO JSString
#else 
ghcjs_dom_html_html_element_get_manifest ::
                                           JSRef HTMLHtmlElement -> IO JSString
ghcjs_dom_html_html_element_get_manifest = undefined
#endif
 
htmlHtmlElementGetManifest ::
                           (IsHTMLHtmlElement self, FromJSString result) => self -> IO result
htmlHtmlElementGetManifest self
  = fromJSString <$>
      (ghcjs_dom_html_html_element_get_manifest
         (unHTMLHtmlElement (toHTMLHtmlElement self)))
#else
module GHCJS.DOM.HTMLHtmlElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHtmlElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLHtmlElement
#endif
