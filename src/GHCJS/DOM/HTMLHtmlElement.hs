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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"version\"] = $2;"
        ghcjs_dom_html_html_element_set_version ::
        JSRef HTMLHtmlElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.version Mozilla HTMLHtmlElement.version documentation> 
htmlHtmlElementSetVersion ::
                          (IsHTMLHtmlElement self, ToJSString val) => self -> val -> IO ()
htmlHtmlElementSetVersion self val
  = ghcjs_dom_html_html_element_set_version
      (unHTMLHtmlElement (toHTMLHtmlElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"version\"]"
        ghcjs_dom_html_html_element_get_version ::
        JSRef HTMLHtmlElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.version Mozilla HTMLHtmlElement.version documentation> 
htmlHtmlElementGetVersion ::
                          (IsHTMLHtmlElement self, FromJSString result) => self -> IO result
htmlHtmlElementGetVersion self
  = fromJSString <$>
      (ghcjs_dom_html_html_element_get_version
         (unHTMLHtmlElement (toHTMLHtmlElement self)))
 
foreign import javascript unsafe "$1[\"manifest\"] = $2;"
        ghcjs_dom_html_html_element_set_manifest ::
        JSRef HTMLHtmlElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.manifest Mozilla HTMLHtmlElement.manifest documentation> 
htmlHtmlElementSetManifest ::
                           (IsHTMLHtmlElement self, ToJSString val) => self -> val -> IO ()
htmlHtmlElementSetManifest self val
  = ghcjs_dom_html_html_element_set_manifest
      (unHTMLHtmlElement (toHTMLHtmlElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"manifest\"]"
        ghcjs_dom_html_html_element_get_manifest ::
        JSRef HTMLHtmlElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.manifest Mozilla HTMLHtmlElement.manifest documentation> 
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
