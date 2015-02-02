{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDivElement
       (ghcjs_dom_html_div_element_set_align, htmlDivElementSetAlign,
        ghcjs_dom_html_div_element_get_align, htmlDivElementGetAlign,
        HTMLDivElement, IsHTMLDivElement, castToHTMLDivElement,
        gTypeHTMLDivElement, toHTMLDivElement)
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

 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_div_element_set_align ::
        JSRef HTMLDivElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement.align Mozilla HTMLDivElement.align documentation> 
htmlDivElementSetAlign ::
                       (IsHTMLDivElement self, ToJSString val) => self -> val -> IO ()
htmlDivElementSetAlign self val
  = ghcjs_dom_html_div_element_set_align
      (unHTMLDivElement (toHTMLDivElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_div_element_get_align ::
        JSRef HTMLDivElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement.align Mozilla HTMLDivElement.align documentation> 
htmlDivElementGetAlign ::
                       (IsHTMLDivElement self, FromJSString result) => self -> IO result
htmlDivElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_div_element_get_align
         (unHTMLDivElement (toHTMLDivElement self)))
#else
module GHCJS.DOM.HTMLDivElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDivElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDivElement
#endif
