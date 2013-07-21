{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTitleElement
       (ghcjs_dom_html_title_element_set_text, htmlTitleElementSetText,
        ghcjs_dom_html_title_element_get_text, htmlTitleElementGetText)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_html_title_element_set_text ::
        JSRef HTMLTitleElement -> JSString -> IO ()
#else 
ghcjs_dom_html_title_element_set_text ::
                                        JSRef HTMLTitleElement -> JSString -> IO ()
ghcjs_dom_html_title_element_set_text = undefined
#endif
 
htmlTitleElementSetText ::
                        (IsHTMLTitleElement self, ToJSString val) => self -> val -> IO ()
htmlTitleElementSetText self val
  = ghcjs_dom_html_title_element_set_text
      (unHTMLTitleElement (toHTMLTitleElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_title_element_get_text ::
        JSRef HTMLTitleElement -> IO JSString
#else 
ghcjs_dom_html_title_element_get_text ::
                                        JSRef HTMLTitleElement -> IO JSString
ghcjs_dom_html_title_element_get_text = undefined
#endif
 
htmlTitleElementGetText ::
                        (IsHTMLTitleElement self, FromJSString result) => self -> IO result
htmlTitleElementGetText self
  = fromJSString <$>
      (ghcjs_dom_html_title_element_get_text
         (unHTMLTitleElement (toHTMLTitleElement self)))
#else
module GHCJS.DOM.HTMLTitleElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTitleElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTitleElement
#endif
