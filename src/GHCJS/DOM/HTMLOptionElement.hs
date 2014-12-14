{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOptionElement
       (ghcjs_dom_html_option_element_set_disabled,
        htmlOptionElementSetDisabled,
        ghcjs_dom_html_option_element_get_disabled,
        htmlOptionElementGetDisabled,
        ghcjs_dom_html_option_element_get_form, htmlOptionElementGetForm,
        ghcjs_dom_html_option_element_set_label, htmlOptionElementSetLabel,
        ghcjs_dom_html_option_element_get_label, htmlOptionElementGetLabel,
        ghcjs_dom_html_option_element_set_default_selected,
        htmlOptionElementSetDefaultSelected,
        ghcjs_dom_html_option_element_get_default_selected,
        htmlOptionElementGetDefaultSelected,
        ghcjs_dom_html_option_element_set_selected,
        htmlOptionElementSetSelected,
        ghcjs_dom_html_option_element_get_selected,
        htmlOptionElementGetSelected,
        ghcjs_dom_html_option_element_set_value, htmlOptionElementSetValue,
        ghcjs_dom_html_option_element_get_value, htmlOptionElementGetValue,
        ghcjs_dom_html_option_element_get_text, htmlOptionElementGetText,
        ghcjs_dom_html_option_element_get_index, htmlOptionElementGetIndex,
        HTMLOptionElement, IsHTMLOptionElement, castToHTMLOptionElement,
        gTypeHTMLOptionElement, toHTMLOptionElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_option_element_set_disabled ::
        JSRef HTMLOptionElement -> Bool -> IO ()
 
htmlOptionElementSetDisabled ::
                             (IsHTMLOptionElement self) => self -> Bool -> IO ()
htmlOptionElementSetDisabled self val
  = ghcjs_dom_html_option_element_set_disabled
      (unHTMLOptionElement (toHTMLOptionElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_option_element_get_disabled ::
        JSRef HTMLOptionElement -> IO Bool
 
htmlOptionElementGetDisabled ::
                             (IsHTMLOptionElement self) => self -> IO Bool
htmlOptionElementGetDisabled self
  = ghcjs_dom_html_option_element_get_disabled
      (unHTMLOptionElement (toHTMLOptionElement self))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_option_element_get_form ::
        JSRef HTMLOptionElement -> IO (JSRef HTMLFormElement)
 
htmlOptionElementGetForm ::
                         (IsHTMLOptionElement self) => self -> IO (Maybe HTMLFormElement)
htmlOptionElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_option_element_get_form
         (unHTMLOptionElement (toHTMLOptionElement self)))
 
foreign import javascript unsafe "$1[\"label\"] = $2;"
        ghcjs_dom_html_option_element_set_label ::
        JSRef HTMLOptionElement -> JSString -> IO ()
 
htmlOptionElementSetLabel ::
                          (IsHTMLOptionElement self, ToJSString val) => self -> val -> IO ()
htmlOptionElementSetLabel self val
  = ghcjs_dom_html_option_element_set_label
      (unHTMLOptionElement (toHTMLOptionElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_html_option_element_get_label ::
        JSRef HTMLOptionElement -> IO JSString
 
htmlOptionElementGetLabel ::
                          (IsHTMLOptionElement self, FromJSString result) =>
                            self -> IO result
htmlOptionElementGetLabel self
  = fromJSString <$>
      (ghcjs_dom_html_option_element_get_label
         (unHTMLOptionElement (toHTMLOptionElement self)))
 
foreign import javascript unsafe "$1[\"defaultSelected\"] = $2;"
        ghcjs_dom_html_option_element_set_default_selected ::
        JSRef HTMLOptionElement -> Bool -> IO ()
 
htmlOptionElementSetDefaultSelected ::
                                    (IsHTMLOptionElement self) => self -> Bool -> IO ()
htmlOptionElementSetDefaultSelected self val
  = ghcjs_dom_html_option_element_set_default_selected
      (unHTMLOptionElement (toHTMLOptionElement self))
      val
 
foreign import javascript unsafe
        "($1[\"defaultSelected\"] ? 1 : 0)"
        ghcjs_dom_html_option_element_get_default_selected ::
        JSRef HTMLOptionElement -> IO Bool
 
htmlOptionElementGetDefaultSelected ::
                                    (IsHTMLOptionElement self) => self -> IO Bool
htmlOptionElementGetDefaultSelected self
  = ghcjs_dom_html_option_element_get_default_selected
      (unHTMLOptionElement (toHTMLOptionElement self))
 
foreign import javascript unsafe "$1[\"selected\"] = $2;"
        ghcjs_dom_html_option_element_set_selected ::
        JSRef HTMLOptionElement -> Bool -> IO ()
 
htmlOptionElementSetSelected ::
                             (IsHTMLOptionElement self) => self -> Bool -> IO ()
htmlOptionElementSetSelected self val
  = ghcjs_dom_html_option_element_set_selected
      (unHTMLOptionElement (toHTMLOptionElement self))
      val
 
foreign import javascript unsafe "($1[\"selected\"] ? 1 : 0)"
        ghcjs_dom_html_option_element_get_selected ::
        JSRef HTMLOptionElement -> IO Bool
 
htmlOptionElementGetSelected ::
                             (IsHTMLOptionElement self) => self -> IO Bool
htmlOptionElementGetSelected self
  = ghcjs_dom_html_option_element_get_selected
      (unHTMLOptionElement (toHTMLOptionElement self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_option_element_set_value ::
        JSRef HTMLOptionElement -> JSString -> IO ()
 
htmlOptionElementSetValue ::
                          (IsHTMLOptionElement self, ToJSString val) => self -> val -> IO ()
htmlOptionElementSetValue self val
  = ghcjs_dom_html_option_element_set_value
      (unHTMLOptionElement (toHTMLOptionElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_option_element_get_value ::
        JSRef HTMLOptionElement -> IO JSString
 
htmlOptionElementGetValue ::
                          (IsHTMLOptionElement self, FromJSString result) =>
                            self -> IO result
htmlOptionElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_option_element_get_value
         (unHTMLOptionElement (toHTMLOptionElement self)))
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_option_element_get_text ::
        JSRef HTMLOptionElement -> IO JSString
 
htmlOptionElementGetText ::
                         (IsHTMLOptionElement self, FromJSString result) =>
                           self -> IO result
htmlOptionElementGetText self
  = fromJSString <$>
      (ghcjs_dom_html_option_element_get_text
         (unHTMLOptionElement (toHTMLOptionElement self)))
 
foreign import javascript unsafe "$1[\"index\"]"
        ghcjs_dom_html_option_element_get_index ::
        JSRef HTMLOptionElement -> IO Int
 
htmlOptionElementGetIndex ::
                          (IsHTMLOptionElement self) => self -> IO Int
htmlOptionElementGetIndex self
  = ghcjs_dom_html_option_element_get_index
      (unHTMLOptionElement (toHTMLOptionElement self))
#else
module GHCJS.DOM.HTMLOptionElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptionElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptionElement
#endif
