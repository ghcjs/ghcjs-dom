{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOptGroupElement
       (ghcjs_dom_html_opt_group_element_set_disabled,
        htmlOptGroupElementSetDisabled,
        ghcjs_dom_html_opt_group_element_get_disabled,
        htmlOptGroupElementGetDisabled,
        ghcjs_dom_html_opt_group_element_set_label,
        htmlOptGroupElementSetLabel,
        ghcjs_dom_html_opt_group_element_get_label,
        htmlOptGroupElementGetLabel, HTMLOptGroupElement,
        IsHTMLOptGroupElement, castToHTMLOptGroupElement,
        gTypeHTMLOptGroupElement, toHTMLOptGroupElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_opt_group_element_set_disabled ::
        JSRef HTMLOptGroupElement -> Bool -> IO ()
 
htmlOptGroupElementSetDisabled ::
                               (IsHTMLOptGroupElement self) => self -> Bool -> IO ()
htmlOptGroupElementSetDisabled self val
  = ghcjs_dom_html_opt_group_element_set_disabled
      (unHTMLOptGroupElement (toHTMLOptGroupElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_opt_group_element_get_disabled ::
        JSRef HTMLOptGroupElement -> IO Bool
 
htmlOptGroupElementGetDisabled ::
                               (IsHTMLOptGroupElement self) => self -> IO Bool
htmlOptGroupElementGetDisabled self
  = ghcjs_dom_html_opt_group_element_get_disabled
      (unHTMLOptGroupElement (toHTMLOptGroupElement self))
 
foreign import javascript unsafe "$1[\"label\"] = $2;"
        ghcjs_dom_html_opt_group_element_set_label ::
        JSRef HTMLOptGroupElement -> JSString -> IO ()
 
htmlOptGroupElementSetLabel ::
                            (IsHTMLOptGroupElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlOptGroupElementSetLabel self val
  = ghcjs_dom_html_opt_group_element_set_label
      (unHTMLOptGroupElement (toHTMLOptGroupElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_html_opt_group_element_get_label ::
        JSRef HTMLOptGroupElement -> IO JSString
 
htmlOptGroupElementGetLabel ::
                            (IsHTMLOptGroupElement self, FromJSString result) =>
                              self -> IO result
htmlOptGroupElementGetLabel self
  = fromJSString <$>
      (ghcjs_dom_html_opt_group_element_get_label
         (unHTMLOptGroupElement (toHTMLOptGroupElement self)))
#else
module GHCJS.DOM.HTMLOptGroupElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptGroupElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptGroupElement
#endif
