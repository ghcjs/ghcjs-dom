{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMenuElement
       (ghcjs_dom_html_menu_element_set_compact,
        htmlMenuElementSetCompact, ghcjs_dom_html_menu_element_get_compact,
        htmlMenuElementGetCompact, HTMLMenuElement, IsHTMLMenuElement,
        castToHTMLMenuElement, gTypeHTMLMenuElement, toHTMLMenuElement)
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
        ghcjs_dom_html_menu_element_set_compact ::
        JSRef HTMLMenuElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement.compact Mozilla HTMLMenuElement.compact documentation> 
htmlMenuElementSetCompact ::
                          (IsHTMLMenuElement self) => self -> Bool -> IO ()
htmlMenuElementSetCompact self val
  = ghcjs_dom_html_menu_element_set_compact
      (unHTMLMenuElement (toHTMLMenuElement self))
      val
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_html_menu_element_get_compact ::
        JSRef HTMLMenuElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement.compact Mozilla HTMLMenuElement.compact documentation> 
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
