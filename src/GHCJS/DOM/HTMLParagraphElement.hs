{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLParagraphElement
       (ghcjs_dom_html_paragraph_element_set_align,
        htmlParagraphElementSetAlign,
        ghcjs_dom_html_paragraph_element_get_align,
        htmlParagraphElementGetAlign, HTMLParagraphElement,
        IsHTMLParagraphElement, castToHTMLParagraphElement,
        gTypeHTMLParagraphElement, toHTMLParagraphElement)
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
        ghcjs_dom_html_paragraph_element_set_align ::
        JSRef HTMLParagraphElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement.align Mozilla HTMLParagraphElement.align documentation> 
htmlParagraphElementSetAlign ::
                             (IsHTMLParagraphElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlParagraphElementSetAlign self val
  = ghcjs_dom_html_paragraph_element_set_align
      (unHTMLParagraphElement (toHTMLParagraphElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_paragraph_element_get_align ::
        JSRef HTMLParagraphElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParagraphElement.align Mozilla HTMLParagraphElement.align documentation> 
htmlParagraphElementGetAlign ::
                             (IsHTMLParagraphElement self, FromJSString result) =>
                               self -> IO result
htmlParagraphElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_paragraph_element_get_align
         (unHTMLParagraphElement (toHTMLParagraphElement self)))
#else
module GHCJS.DOM.HTMLParagraphElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLParagraphElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLParagraphElement
#endif
