{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHeadElement
       (ghcjs_dom_html_head_element_set_profile,
        htmlHeadElementSetProfile, ghcjs_dom_html_head_element_get_profile,
        htmlHeadElementGetProfile, HTMLHeadElement, IsHTMLHeadElement,
        castToHTMLHeadElement, gTypeHTMLHeadElement, toHTMLHeadElement)
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
foreign import javascript unsafe "$1[\"profile\"] = $2;"
        ghcjs_dom_html_head_element_set_profile ::
        JSRef HTMLHeadElement -> JSString -> IO ()
#else 
ghcjs_dom_html_head_element_set_profile ::
                                          JSRef HTMLHeadElement -> JSString -> IO ()
ghcjs_dom_html_head_element_set_profile = undefined
#endif
 
htmlHeadElementSetProfile ::
                          (IsHTMLHeadElement self, ToJSString val) => self -> val -> IO ()
htmlHeadElementSetProfile self val
  = ghcjs_dom_html_head_element_set_profile
      (unHTMLHeadElement (toHTMLHeadElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"profile\"]"
        ghcjs_dom_html_head_element_get_profile ::
        JSRef HTMLHeadElement -> IO JSString
#else 
ghcjs_dom_html_head_element_get_profile ::
                                          JSRef HTMLHeadElement -> IO JSString
ghcjs_dom_html_head_element_get_profile = undefined
#endif
 
htmlHeadElementGetProfile ::
                          (IsHTMLHeadElement self, FromJSString result) => self -> IO result
htmlHeadElementGetProfile self
  = fromJSString <$>
      (ghcjs_dom_html_head_element_get_profile
         (unHTMLHeadElement (toHTMLHeadElement self)))
#else
module GHCJS.DOM.HTMLHeadElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHeadElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLHeadElement
#endif
