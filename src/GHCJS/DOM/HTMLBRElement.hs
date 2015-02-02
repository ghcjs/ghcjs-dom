{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBRElement
       (ghcjs_dom_htmlbr_element_set_clear, htmlbrElementSetClear,
        ghcjs_dom_htmlbr_element_get_clear, htmlbrElementGetClear,
        HTMLBRElement, IsHTMLBRElement, castToHTMLBRElement,
        gTypeHTMLBRElement, toHTMLBRElement)
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

 
foreign import javascript unsafe "$1[\"clear\"] = $2;"
        ghcjs_dom_htmlbr_element_set_clear ::
        JSRef HTMLBRElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement.clear Mozilla HTMLBRElement.clear documentation> 
htmlbrElementSetClear ::
                      (IsHTMLBRElement self, ToJSString val) => self -> val -> IO ()
htmlbrElementSetClear self val
  = ghcjs_dom_htmlbr_element_set_clear
      (unHTMLBRElement (toHTMLBRElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"clear\"]"
        ghcjs_dom_htmlbr_element_get_clear ::
        JSRef HTMLBRElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement.clear Mozilla HTMLBRElement.clear documentation> 
htmlbrElementGetClear ::
                      (IsHTMLBRElement self, FromJSString result) => self -> IO result
htmlbrElementGetClear self
  = fromJSString <$>
      (ghcjs_dom_htmlbr_element_get_clear
         (unHTMLBRElement (toHTMLBRElement self)))
#else
module GHCJS.DOM.HTMLBRElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBRElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBRElement
#endif
