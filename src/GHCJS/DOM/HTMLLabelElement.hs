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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_label_element_get_form ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLFormElement)
 
htmlLabelElementGetForm ::
                        (IsHTMLLabelElement self) => self -> IO (Maybe HTMLFormElement)
htmlLabelElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_label_element_get_form
         (unHTMLLabelElement (toHTMLLabelElement self)))
 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        ghcjs_dom_html_label_element_set_html_for ::
        JSRef HTMLLabelElement -> JSString -> IO ()
 
htmlLabelElementSetHtmlFor ::
                           (IsHTMLLabelElement self, ToJSString val) => self -> val -> IO ()
htmlLabelElementSetHtmlFor self val
  = ghcjs_dom_html_label_element_set_html_for
      (unHTMLLabelElement (toHTMLLabelElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"htmlFor\"]"
        ghcjs_dom_html_label_element_get_html_for ::
        JSRef HTMLLabelElement -> IO JSString
 
htmlLabelElementGetHtmlFor ::
                           (IsHTMLLabelElement self, FromJSString result) => self -> IO result
htmlLabelElementGetHtmlFor self
  = fromJSString <$>
      (ghcjs_dom_html_label_element_get_html_for
         (unHTMLLabelElement (toHTMLLabelElement self)))
 
foreign import javascript unsafe "$1[\"control\"]"
        ghcjs_dom_html_label_element_get_control ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLElement)
 
htmlLabelElementGetControl ::
                           (IsHTMLLabelElement self) => self -> IO (Maybe HTMLElement)
htmlLabelElementGetControl self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_label_element_get_control
         (unHTMLLabelElement (toHTMLLabelElement self)))
#else
module GHCJS.DOM.HTMLLabelElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLabelElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLabelElement
#endif
