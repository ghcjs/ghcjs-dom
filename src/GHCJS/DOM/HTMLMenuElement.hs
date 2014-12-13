{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMenuElement
       (ghcjs_dom_html_menu_element_set_compact,
        htmlMenuElementSetCompact, ghcjs_dom_html_menu_element_get_compact,
        htmlMenuElementGetCompact, HTMLMenuElement, IsHTMLMenuElement,
        castToHTMLMenuElement, gTypeHTMLMenuElement, toHTMLMenuElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        ghcjs_dom_html_menu_element_set_compact ::
        JSRef HTMLMenuElement -> Bool -> IO ()
#else 
ghcjs_dom_html_menu_element_set_compact ::
                                          JSRef HTMLMenuElement -> Bool -> IO ()
ghcjs_dom_html_menu_element_set_compact = undefined
#endif
 
htmlMenuElementSetCompact ::
                          (IsHTMLMenuElement self) => self -> Bool -> IO ()
htmlMenuElementSetCompact self val
  = ghcjs_dom_html_menu_element_set_compact
      (unHTMLMenuElement (toHTMLMenuElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_html_menu_element_get_compact ::
        JSRef HTMLMenuElement -> IO Bool
#else 
ghcjs_dom_html_menu_element_get_compact ::
                                          JSRef HTMLMenuElement -> IO Bool
ghcjs_dom_html_menu_element_get_compact = undefined
#endif
 
htmlMenuElementGetCompact ::
                          (IsHTMLMenuElement self) => self -> IO Bool
htmlMenuElementGetCompact self
  = ghcjs_dom_html_menu_element_get_compact
      (unHTMLMenuElement (toHTMLMenuElement self))
#else
module GHCJS.DOM.HTMLMenuElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMenuElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMenuElement
#endif
