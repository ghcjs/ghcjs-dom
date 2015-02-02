{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLUListElement
       (ghcjs_dom_htmlu_list_element_set_compact,
        htmluListElementSetCompact,
        ghcjs_dom_htmlu_list_element_get_compact,
        htmluListElementGetCompact, HTMLUListElement, IsHTMLUListElement,
        castToHTMLUListElement, gTypeHTMLUListElement, toHTMLUListElement)
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
        ghcjs_dom_htmlu_list_element_set_compact ::
        JSRef HTMLUListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.compact Mozilla HTMLUListElement.compact documentation> 
htmluListElementSetCompact ::
                           (IsHTMLUListElement self) => self -> Bool -> IO ()
htmluListElementSetCompact self val
  = ghcjs_dom_htmlu_list_element_set_compact
      (unHTMLUListElement (toHTMLUListElement self))
      val
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_htmlu_list_element_get_compact ::
        JSRef HTMLUListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.compact Mozilla HTMLUListElement.compact documentation> 
htmluListElementGetCompact ::
                           (IsHTMLUListElement self) => self -> IO Bool
htmluListElementGetCompact self
  = ghcjs_dom_htmlu_list_element_get_compact
      (unHTMLUListElement (toHTMLUListElement self))
#else
module GHCJS.DOM.HTMLUListElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLUListElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLUListElement
#endif
