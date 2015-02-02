{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLabelElement
       (ghcjs_dom_html_label_element_get_form, htmlLabelElementGetForm,
        ghcjs_dom_html_label_element_set_html_for,
        htmlLabelElementSetHtmlFor,
        ghcjs_dom_html_label_element_get_html_for,
        htmlLabelElementGetHtmlFor,
        ghcjs_dom_html_label_element_get_control,
        htmlLabelElementGetControl, HTMLLabelElement, IsHTMLLabelElement,
        castToHTMLLabelElement, gTypeHTMLLabelElement, toHTMLLabelElement)
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

 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_label_element_get_form ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.form Mozilla HTMLLabelElement.form documentation> 
htmlLabelElementGetForm ::
                        (IsHTMLLabelElement self) => self -> IO (Maybe HTMLFormElement)
htmlLabelElementGetForm self
  = (ghcjs_dom_html_label_element_get_form
       (unHTMLLabelElement (toHTMLLabelElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        ghcjs_dom_html_label_element_set_html_for ::
        JSRef HTMLLabelElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.htmlFor Mozilla HTMLLabelElement.htmlFor documentation> 
htmlLabelElementSetHtmlFor ::
                           (IsHTMLLabelElement self, ToJSString val) => self -> val -> IO ()
htmlLabelElementSetHtmlFor self val
  = ghcjs_dom_html_label_element_set_html_for
      (unHTMLLabelElement (toHTMLLabelElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"htmlFor\"]"
        ghcjs_dom_html_label_element_get_html_for ::
        JSRef HTMLLabelElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.htmlFor Mozilla HTMLLabelElement.htmlFor documentation> 
htmlLabelElementGetHtmlFor ::
                           (IsHTMLLabelElement self, FromJSString result) => self -> IO result
htmlLabelElementGetHtmlFor self
  = fromJSString <$>
      (ghcjs_dom_html_label_element_get_html_for
         (unHTMLLabelElement (toHTMLLabelElement self)))
 
foreign import javascript unsafe "$1[\"control\"]"
        ghcjs_dom_html_label_element_get_control ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.control Mozilla HTMLLabelElement.control documentation> 
htmlLabelElementGetControl ::
                           (IsHTMLLabelElement self) => self -> IO (Maybe HTMLElement)
htmlLabelElementGetControl self
  = (ghcjs_dom_html_label_element_get_control
       (unHTMLLabelElement (toHTMLLabelElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLLabelElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLabelElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLabelElement
#endif
