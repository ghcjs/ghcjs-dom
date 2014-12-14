{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDListElement
       (ghcjs_dom_htmld_list_element_set_compact,
        htmldListElementSetCompact,
        ghcjs_dom_htmld_list_element_get_compact,
        htmldListElementGetCompact, HTMLDListElement, IsHTMLDListElement,
        castToHTMLDListElement, gTypeHTMLDListElement, toHTMLDListElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        ghcjs_dom_htmld_list_element_set_compact ::
        JSRef HTMLDListElement -> Bool -> IO ()
 
htmldListElementSetCompact ::
                           (IsHTMLDListElement self) => self -> Bool -> IO ()
htmldListElementSetCompact self val
  = ghcjs_dom_htmld_list_element_set_compact
      (unHTMLDListElement (toHTMLDListElement self))
      val
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_htmld_list_element_get_compact ::
        JSRef HTMLDListElement -> IO Bool
 
htmldListElementGetCompact ::
                           (IsHTMLDListElement self) => self -> IO Bool
htmldListElementGetCompact self
  = ghcjs_dom_htmld_list_element_get_compact
      (unHTMLDListElement (toHTMLDListElement self))
#else
module GHCJS.DOM.HTMLDListElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDListElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDListElement
#endif
