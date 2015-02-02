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

 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        ghcjs_dom_html_directory_element_set_compact ::
        JSRef HTMLDirectoryElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement.compact Mozilla HTMLDirectoryElement.compact documentation> 
htmlDirectoryElementSetCompact ::
                               (IsHTMLDirectoryElement self) => self -> Bool -> IO ()
htmlDirectoryElementSetCompact self val
  = ghcjs_dom_html_directory_element_set_compact
      (unHTMLDirectoryElement (toHTMLDirectoryElement self))
      val
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_html_directory_element_get_compact ::
        JSRef HTMLDirectoryElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement.compact Mozilla HTMLDirectoryElement.compact documentation> 
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
