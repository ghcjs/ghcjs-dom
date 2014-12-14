{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDivElement
       (ghcjs_dom_html_div_element_set_align, htmlDivElementSetAlign,
        ghcjs_dom_html_div_element_get_align, htmlDivElementGetAlign,
        HTMLDivElement, IsHTMLDivElement, castToHTMLDivElement,
        gTypeHTMLDivElement, toHTMLDivElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_div_element_set_align ::
        JSRef HTMLDivElement -> JSString -> IO ()
 
htmlDivElementSetAlign ::
                       (IsHTMLDivElement self, ToJSString val) => self -> val -> IO ()
htmlDivElementSetAlign self val
  = ghcjs_dom_html_div_element_set_align
      (unHTMLDivElement (toHTMLDivElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_div_element_get_align ::
        JSRef HTMLDivElement -> IO JSString
 
htmlDivElementGetAlign ::
                       (IsHTMLDivElement self, FromJSString result) => self -> IO result
htmlDivElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_div_element_get_align
         (unHTMLDivElement (toHTMLDivElement self)))
#else
module GHCJS.DOM.HTMLDivElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDivElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDivElement
#endif
