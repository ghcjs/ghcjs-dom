{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDirectoryElement
       (ghcjs_dom_html_directory_element_set_compact,
        htmlDirectoryElementSetCompact,
        ghcjs_dom_html_directory_element_get_compact,
        htmlDirectoryElementGetCompact, HTMLDirectoryElement,
        IsHTMLDirectoryElement, castToHTMLDirectoryElement,
        gTypeHTMLDirectoryElement, toHTMLDirectoryElement)
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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        ghcjs_dom_html_directory_element_set_compact ::
        JSRef HTMLDirectoryElement -> Bool -> IO ()
#else 
ghcjs_dom_html_directory_element_set_compact ::
                                               JSRef HTMLDirectoryElement -> Bool -> IO ()
ghcjs_dom_html_directory_element_set_compact = undefined
#endif
 
htmlDirectoryElementSetCompact ::
                               (IsHTMLDirectoryElement self) => self -> Bool -> IO ()
htmlDirectoryElementSetCompact self val
  = ghcjs_dom_html_directory_element_set_compact
      (unHTMLDirectoryElement (toHTMLDirectoryElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_html_directory_element_get_compact ::
        JSRef HTMLDirectoryElement -> IO Bool
#else 
ghcjs_dom_html_directory_element_get_compact ::
                                               JSRef HTMLDirectoryElement -> IO Bool
ghcjs_dom_html_directory_element_get_compact = undefined
#endif
 
htmlDirectoryElementGetCompact ::
                               (IsHTMLDirectoryElement self) => self -> IO Bool
htmlDirectoryElementGetCompact self
  = ghcjs_dom_html_directory_element_get_compact
      (unHTMLDirectoryElement (toHTMLDirectoryElement self))
#else
module GHCJS.DOM.HTMLDirectoryElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDirectoryElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDirectoryElement
#endif
