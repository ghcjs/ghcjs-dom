{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBaseElement
       (ghcjs_dom_html_base_element_set_href, htmlBaseElementSetHref,
        ghcjs_dom_html_base_element_get_href, htmlBaseElementGetHref,
        ghcjs_dom_html_base_element_set_target, htmlBaseElementSetTarget,
        ghcjs_dom_html_base_element_get_target, htmlBaseElementGetTarget,
        HTMLBaseElement, IsHTMLBaseElement, castToHTMLBaseElement,
        gTypeHTMLBaseElement, toHTMLBaseElement)
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

 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_base_element_set_href ::
        JSRef HTMLBaseElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
htmlBaseElementSetHref ::
                       (IsHTMLBaseElement self, ToJSString val) => self -> val -> IO ()
htmlBaseElementSetHref self val
  = ghcjs_dom_html_base_element_set_href
      (unHTMLBaseElement (toHTMLBaseElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_base_element_get_href ::
        JSRef HTMLBaseElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
htmlBaseElementGetHref ::
                       (IsHTMLBaseElement self, FromJSString result) => self -> IO result
htmlBaseElementGetHref self
  = fromJSString <$>
      (ghcjs_dom_html_base_element_get_href
         (unHTMLBaseElement (toHTMLBaseElement self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_base_element_set_target ::
        JSRef HTMLBaseElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.target Mozilla HTMLBaseElement.target documentation> 
htmlBaseElementSetTarget ::
                         (IsHTMLBaseElement self, ToJSString val) => self -> val -> IO ()
htmlBaseElementSetTarget self val
  = ghcjs_dom_html_base_element_set_target
      (unHTMLBaseElement (toHTMLBaseElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_base_element_get_target ::
        JSRef HTMLBaseElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.target Mozilla HTMLBaseElement.target documentation> 
htmlBaseElementGetTarget ::
                         (IsHTMLBaseElement self, FromJSString result) => self -> IO result
htmlBaseElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_base_element_get_target
         (unHTMLBaseElement (toHTMLBaseElement self)))
#else
module GHCJS.DOM.HTMLBaseElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBaseElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBaseElement
#endif
