{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableCaptionElement
       (ghcjs_dom_html_table_caption_element_set_align,
        htmlTableCaptionElementSetAlign,
        ghcjs_dom_html_table_caption_element_get_align,
        htmlTableCaptionElementGetAlign, HTMLTableCaptionElement,
        IsHTMLTableCaptionElement, castToHTMLTableCaptionElement,
        gTypeHTMLTableCaptionElement, toHTMLTableCaptionElement)
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
        ghcjs_dom_html_table_caption_element_set_align ::
        JSRef HTMLTableCaptionElement -> JSString -> IO ()
 
htmlTableCaptionElementSetAlign ::
                                (IsHTMLTableCaptionElement self, ToJSString val) =>
                                  self -> val -> IO ()
htmlTableCaptionElementSetAlign self val
  = ghcjs_dom_html_table_caption_element_set_align
      (unHTMLTableCaptionElement (toHTMLTableCaptionElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_caption_element_get_align ::
        JSRef HTMLTableCaptionElement -> IO JSString
 
htmlTableCaptionElementGetAlign ::
                                (IsHTMLTableCaptionElement self, FromJSString result) =>
                                  self -> IO result
htmlTableCaptionElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_caption_element_get_align
         (unHTMLTableCaptionElement (toHTMLTableCaptionElement self)))
#else
module GHCJS.DOM.HTMLTableCaptionElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableCaptionElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableCaptionElement
#endif
