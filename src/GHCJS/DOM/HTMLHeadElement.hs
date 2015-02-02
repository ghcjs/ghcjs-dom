{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHeadElement
       (ghcjs_dom_html_head_element_set_profile,
        htmlHeadElementSetProfile, ghcjs_dom_html_head_element_get_profile,
        htmlHeadElementGetProfile, HTMLHeadElement, IsHTMLHeadElement,
        castToHTMLHeadElement, gTypeHTMLHeadElement, toHTMLHeadElement)
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

 
foreign import javascript unsafe "$1[\"profile\"] = $2;"
        ghcjs_dom_html_head_element_set_profile ::
        JSRef HTMLHeadElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement.profile Mozilla HTMLHeadElement.profile documentation> 
htmlHeadElementSetProfile ::
                          (IsHTMLHeadElement self, ToJSString val) => self -> val -> IO ()
htmlHeadElementSetProfile self val
  = ghcjs_dom_html_head_element_set_profile
      (unHTMLHeadElement (toHTMLHeadElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"profile\"]"
        ghcjs_dom_html_head_element_get_profile ::
        JSRef HTMLHeadElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement.profile Mozilla HTMLHeadElement.profile documentation> 
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
