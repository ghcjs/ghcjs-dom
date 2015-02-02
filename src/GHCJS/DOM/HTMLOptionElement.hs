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

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_option_element_set_disabled ::
        JSRef HTMLOptionElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.disabled Mozilla HTMLOptionElement.disabled documentation> 
htmlOptionElementSetDisabled ::
                             (IsHTMLOptionElement self) => self -> Bool -> IO ()
htmlOptionElementSetDisabled self val
  = ghcjs_dom_html_option_element_set_disabled
      (unHTMLOptionElement (toHTMLOptionElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_option_element_get_disabled ::
        JSRef HTMLOptionElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.disabled Mozilla HTMLOptionElement.disabled documentation> 
htmlOptionElementGetDisabled ::
                             (IsHTMLOptionElement self) => self -> IO Bool
htmlOptionElementGetDisabled self
  = ghcjs_dom_html_option_element_get_disabled
      (unHTMLOptionElement (toHTMLOptionElement self))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_option_element_get_form ::
        JSRef HTMLOptionElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.form Mozilla HTMLOptionElement.form documentation> 
htmlOptionElementGetForm ::
                         (IsHTMLOptionElement self) => self -> IO (Maybe HTMLFormElement)
htmlOptionElementGetForm self
  = (ghcjs_dom_html_option_element_get_form
       (unHTMLOptionElement (toHTMLOptionElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"label\"] = $2;"
        ghcjs_dom_html_option_element_set_label ::
        JSRef HTMLOptionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.label Mozilla HTMLOptionElement.label documentation> 
htmlOptionElementSetLabel ::
                          (IsHTMLOptionElement self, ToJSString val) => self -> val -> IO ()
htmlOptionElementSetLabel self val
  = ghcjs_dom_html_option_element_set_label
      (unHTMLOptionElement (toHTMLOptionElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_html_option_element_get_label ::
        JSRef HTMLOptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.label Mozilla HTMLOptionElement.label documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.defaultSelected Mozilla HTMLOptionElement.defaultSelected documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.defaultSelected Mozilla HTMLOptionElement.defaultSelected documentation> 
htmlOptionElementGetDefaultSelected ::
                                    (IsHTMLOptionElement self) => self -> IO Bool
htmlOptionElementGetDefaultSelected self
  = ghcjs_dom_html_option_element_get_default_selected
      (unHTMLOptionElement (toHTMLOptionElement self))
 
foreign import javascript unsafe "$1[\"selected\"] = $2;"
        ghcjs_dom_html_option_element_set_selected ::
        JSRef HTMLOptionElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.selected Mozilla HTMLOptionElement.selected documentation> 
htmlOptionElementSetSelected ::
                             (IsHTMLOptionElement self) => self -> Bool -> IO ()
htmlOptionElementSetSelected self val
  = ghcjs_dom_html_option_element_set_selected
      (unHTMLOptionElement (toHTMLOptionElement self))
      val
 
foreign import javascript unsafe "($1[\"selected\"] ? 1 : 0)"
        ghcjs_dom_html_option_element_get_selected ::
        JSRef HTMLOptionElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.selected Mozilla HTMLOptionElement.selected documentation> 
htmlOptionElementGetSelected ::
                             (IsHTMLOptionElement self) => self -> IO Bool
htmlOptionElementGetSelected self
  = ghcjs_dom_html_option_element_get_selected
      (unHTMLOptionElement (toHTMLOptionElement self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_option_element_set_value ::
        JSRef HTMLOptionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.value Mozilla HTMLOptionElement.value documentation> 
htmlOptionElementSetValue ::
                          (IsHTMLOptionElement self, ToJSString val) => self -> val -> IO ()
htmlOptionElementSetValue self val
  = ghcjs_dom_html_option_element_set_value
      (unHTMLOptionElement (toHTMLOptionElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_option_element_get_value ::
        JSRef HTMLOptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.value Mozilla HTMLOptionElement.value documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.text Mozilla HTMLOptionElement.text documentation> 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.index Mozilla HTMLOptionElement.index documentation> 
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
