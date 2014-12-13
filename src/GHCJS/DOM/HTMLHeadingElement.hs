{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHeadingElement
       (ghcjs_dom_html_heading_element_set_align,
        htmlHeadingElementSetAlign,
        ghcjs_dom_html_heading_element_get_align,
        htmlHeadingElementGetAlign, HTMLHeadingElement,
        IsHTMLHeadingElement, castToHTMLHeadingElement,
        gTypeHTMLHeadingElement, toHTMLHeadingElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_heading_element_set_align ::
        JSRef HTMLHeadingElement -> JSString -> IO ()
#else 
ghcjs_dom_html_heading_element_set_align ::
                                           JSRef HTMLHeadingElement -> JSString -> IO ()
ghcjs_dom_html_heading_element_set_align = undefined
#endif
 
htmlHeadingElementSetAlign ::
                           (IsHTMLHeadingElement self, ToJSString val) => self -> val -> IO ()
htmlHeadingElementSetAlign self val
  = ghcjs_dom_html_heading_element_set_align
      (unHTMLHeadingElement (toHTMLHeadingElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_heading_element_get_align ::
        JSRef HTMLHeadingElement -> IO JSString
#else 
ghcjs_dom_html_heading_element_get_align ::
                                           JSRef HTMLHeadingElement -> IO JSString
ghcjs_dom_html_heading_element_get_align = undefined
#endif
 
htmlHeadingElementGetAlign ::
                           (IsHTMLHeadingElement self, FromJSString result) =>
                             self -> IO result
htmlHeadingElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_heading_element_get_align
         (unHTMLHeadingElement (toHTMLHeadingElement self)))
#else
module GHCJS.DOM.HTMLHeadingElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHeadingElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLHeadingElement
#endif
