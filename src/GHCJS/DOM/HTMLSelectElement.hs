{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLSelectElement
       (ghcjs_dom_html_select_element_item, htmlSelectElementItem,
        ghcjs_dom_html_select_element_named_item,
        htmlSelectElementNamedItem, ghcjs_dom_html_select_element_add,
        htmlSelectElementAdd, ghcjs_dom_html_select_element_remove,
        htmlSelectElementRemove,
        ghcjs_dom_html_select_element_check_validity,
        htmlSelectElementCheckValidity,
        ghcjs_dom_html_select_element_set_custom_validity,
        htmlSelectElementSetCustomValidity,
        ghcjs_dom_html_select_element_set_autofocus,
        htmlSelectElementSetAutofocus,
        ghcjs_dom_html_select_element_get_autofocus,
        htmlSelectElementGetAutofocus,
        ghcjs_dom_html_select_element_set_disabled,
        htmlSelectElementSetDisabled,
        ghcjs_dom_html_select_element_get_disabled,
        htmlSelectElementGetDisabled,
        ghcjs_dom_html_select_element_get_form, htmlSelectElementGetForm,
        ghcjs_dom_html_select_element_set_multiple,
        htmlSelectElementSetMultiple,
        ghcjs_dom_html_select_element_get_multiple,
        htmlSelectElementGetMultiple,
        ghcjs_dom_html_select_element_set_name, htmlSelectElementSetName,
        ghcjs_dom_html_select_element_get_name, htmlSelectElementGetName,
        ghcjs_dom_html_select_element_set_required,
        htmlSelectElementSetRequired,
        ghcjs_dom_html_select_element_get_required,
        htmlSelectElementGetRequired,
        ghcjs_dom_html_select_element_set_size, htmlSelectElementSetSize,
        ghcjs_dom_html_select_element_get_size, htmlSelectElementGetSize,
        ghcjs_dom_html_select_element_get_options,
        htmlSelectElementGetOptions,
        ghcjs_dom_html_select_element_set_length,
        htmlSelectElementSetLength,
        ghcjs_dom_html_select_element_get_length,
        htmlSelectElementGetLength,
        ghcjs_dom_html_select_element_get_selected_options,
        htmlSelectElementGetSelectedOptions,
        ghcjs_dom_html_select_element_set_selected_index,
        htmlSelectElementSetSelectedIndex,
        ghcjs_dom_html_select_element_get_selected_index,
        htmlSelectElementGetSelectedIndex,
        ghcjs_dom_html_select_element_set_value, htmlSelectElementSetValue,
        ghcjs_dom_html_select_element_get_value, htmlSelectElementGetValue,
        ghcjs_dom_html_select_element_get_will_validate,
        htmlSelectElementGetWillValidate,
        ghcjs_dom_html_select_element_get_validity,
        htmlSelectElementGetValidity,
        ghcjs_dom_html_select_element_get_validation_message,
        htmlSelectElementGetValidationMessage,
        ghcjs_dom_html_select_element_get_labels,
        htmlSelectElementGetLabels, HTMLSelectElement, IsHTMLSelectElement,
        castToHTMLSelectElement, gTypeHTMLSelectElement,
        toHTMLSelectElement)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_html_select_element_item ::
        JSRef HTMLSelectElement -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.item Mozilla HTMLSelectElement.item documentation> 
htmlSelectElementItem ::
                      (IsHTMLSelectElement self) => self -> Word -> IO (Maybe Node)
htmlSelectElementItem self index
  = (ghcjs_dom_html_select_element_item
       (unHTMLSelectElement (toHTMLSelectElement self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_html_select_element_named_item ::
        JSRef HTMLSelectElement -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.namedItem Mozilla HTMLSelectElement.namedItem documentation> 
htmlSelectElementNamedItem ::
                           (IsHTMLSelectElement self, ToJSString name) =>
                             self -> name -> IO (Maybe Node)
htmlSelectElementNamedItem self name
  = (ghcjs_dom_html_select_element_named_item
       (unHTMLSelectElement (toHTMLSelectElement self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)"
        ghcjs_dom_html_select_element_add ::
        JSRef HTMLSelectElement ->
          JSRef HTMLElement -> JSRef HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.add Mozilla HTMLSelectElement.add documentation> 
htmlSelectElementAdd ::
                     (IsHTMLSelectElement self, IsHTMLElement element,
                      IsHTMLElement before) =>
                       self -> Maybe element -> Maybe before -> IO ()
htmlSelectElementAdd self element before
  = ghcjs_dom_html_select_element_add
      (unHTMLSelectElement (toHTMLSelectElement self))
      (maybe jsNull (unHTMLElement . toHTMLElement) element)
      (maybe jsNull (unHTMLElement . toHTMLElement) before)
 
foreign import javascript unsafe "$1[\"remove\"]($2)"
        ghcjs_dom_html_select_element_remove ::
        JSRef HTMLSelectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.remove Mozilla HTMLSelectElement.remove documentation> 
htmlSelectElementRemove ::
                        (IsHTMLSelectElement self) => self -> Int -> IO ()
htmlSelectElementRemove self index
  = ghcjs_dom_html_select_element_remove
      (unHTMLSelectElement (toHTMLSelectElement self))
      index
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)"
        ghcjs_dom_html_select_element_check_validity ::
        JSRef HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.checkValidity Mozilla HTMLSelectElement.checkValidity documentation> 
htmlSelectElementCheckValidity ::
                               (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementCheckValidity self
  = ghcjs_dom_html_select_element_check_validity
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_select_element_set_custom_validity ::
        JSRef HTMLSelectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.customValidity Mozilla HTMLSelectElement.customValidity documentation> 
htmlSelectElementSetCustomValidity ::
                                   (IsHTMLSelectElement self, ToJSString error) =>
                                     self -> error -> IO ()
htmlSelectElementSetCustomValidity self error
  = ghcjs_dom_html_select_element_set_custom_validity
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSString error)
 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        ghcjs_dom_html_select_element_set_autofocus ::
        JSRef HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autofocus Mozilla HTMLSelectElement.autofocus documentation> 
htmlSelectElementSetAutofocus ::
                              (IsHTMLSelectElement self) => self -> Bool -> IO ()
htmlSelectElementSetAutofocus self val
  = ghcjs_dom_html_select_element_set_autofocus
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_select_element_get_autofocus ::
        JSRef HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.autofocus Mozilla HTMLSelectElement.autofocus documentation> 
htmlSelectElementGetAutofocus ::
                              (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetAutofocus self
  = ghcjs_dom_html_select_element_get_autofocus
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_select_element_set_disabled ::
        JSRef HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.disabled Mozilla HTMLSelectElement.disabled documentation> 
htmlSelectElementSetDisabled ::
                             (IsHTMLSelectElement self) => self -> Bool -> IO ()
htmlSelectElementSetDisabled self val
  = ghcjs_dom_html_select_element_set_disabled
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_select_element_get_disabled ::
        JSRef HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.disabled Mozilla HTMLSelectElement.disabled documentation> 
htmlSelectElementGetDisabled ::
                             (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetDisabled self
  = ghcjs_dom_html_select_element_get_disabled
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_select_element_get_form ::
        JSRef HTMLSelectElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.form Mozilla HTMLSelectElement.form documentation> 
htmlSelectElementGetForm ::
                         (IsHTMLSelectElement self) => self -> IO (Maybe HTMLFormElement)
htmlSelectElementGetForm self
  = (ghcjs_dom_html_select_element_get_form
       (unHTMLSelectElement (toHTMLSelectElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        ghcjs_dom_html_select_element_set_multiple ::
        JSRef HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.multiple Mozilla HTMLSelectElement.multiple documentation> 
htmlSelectElementSetMultiple ::
                             (IsHTMLSelectElement self) => self -> Bool -> IO ()
htmlSelectElementSetMultiple self val
  = ghcjs_dom_html_select_element_set_multiple
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "($1[\"multiple\"] ? 1 : 0)"
        ghcjs_dom_html_select_element_get_multiple ::
        JSRef HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.multiple Mozilla HTMLSelectElement.multiple documentation> 
htmlSelectElementGetMultiple ::
                             (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetMultiple self
  = ghcjs_dom_html_select_element_get_multiple
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_select_element_set_name ::
        JSRef HTMLSelectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.name Mozilla HTMLSelectElement.name documentation> 
htmlSelectElementSetName ::
                         (IsHTMLSelectElement self, ToJSString val) => self -> val -> IO ()
htmlSelectElementSetName self val
  = ghcjs_dom_html_select_element_set_name
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_select_element_get_name ::
        JSRef HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.name Mozilla HTMLSelectElement.name documentation> 
htmlSelectElementGetName ::
                         (IsHTMLSelectElement self, FromJSString result) =>
                           self -> IO result
htmlSelectElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_select_element_get_name
         (unHTMLSelectElement (toHTMLSelectElement self)))
 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        ghcjs_dom_html_select_element_set_required ::
        JSRef HTMLSelectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.required Mozilla HTMLSelectElement.required documentation> 
htmlSelectElementSetRequired ::
                             (IsHTMLSelectElement self) => self -> Bool -> IO ()
htmlSelectElementSetRequired self val
  = ghcjs_dom_html_select_element_set_required
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        ghcjs_dom_html_select_element_get_required ::
        JSRef HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.required Mozilla HTMLSelectElement.required documentation> 
htmlSelectElementGetRequired ::
                             (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetRequired self
  = ghcjs_dom_html_select_element_get_required
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_html_select_element_set_size ::
        JSRef HTMLSelectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.size Mozilla HTMLSelectElement.size documentation> 
htmlSelectElementSetSize ::
                         (IsHTMLSelectElement self) => self -> Int -> IO ()
htmlSelectElementSetSize self val
  = ghcjs_dom_html_select_element_set_size
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_html_select_element_get_size ::
        JSRef HTMLSelectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.size Mozilla HTMLSelectElement.size documentation> 
htmlSelectElementGetSize ::
                         (IsHTMLSelectElement self) => self -> IO Int
htmlSelectElementGetSize self
  = ghcjs_dom_html_select_element_get_size
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"options\"]"
        ghcjs_dom_html_select_element_get_options ::
        JSRef HTMLSelectElement -> IO (JSRef HTMLOptionsCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.options Mozilla HTMLSelectElement.options documentation> 
htmlSelectElementGetOptions ::
                            (IsHTMLSelectElement self) =>
                              self -> IO (Maybe HTMLOptionsCollection)
htmlSelectElementGetOptions self
  = (ghcjs_dom_html_select_element_get_options
       (unHTMLSelectElement (toHTMLSelectElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"length\"] = $2;"
        ghcjs_dom_html_select_element_set_length ::
        JSRef HTMLSelectElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.length Mozilla HTMLSelectElement.length documentation> 
htmlSelectElementSetLength ::
                           (IsHTMLSelectElement self) => self -> Word -> IO ()
htmlSelectElementSetLength self val
  = ghcjs_dom_html_select_element_set_length
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_html_select_element_get_length ::
        JSRef HTMLSelectElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.length Mozilla HTMLSelectElement.length documentation> 
htmlSelectElementGetLength ::
                           (IsHTMLSelectElement self) => self -> IO Word
htmlSelectElementGetLength self
  = ghcjs_dom_html_select_element_get_length
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"selectedOptions\"]"
        ghcjs_dom_html_select_element_get_selected_options ::
        JSRef HTMLSelectElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedOptions Mozilla HTMLSelectElement.selectedOptions documentation> 
htmlSelectElementGetSelectedOptions ::
                                    (IsHTMLSelectElement self) => self -> IO (Maybe HTMLCollection)
htmlSelectElementGetSelectedOptions self
  = (ghcjs_dom_html_select_element_get_selected_options
       (unHTMLSelectElement (toHTMLSelectElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        ghcjs_dom_html_select_element_set_selected_index ::
        JSRef HTMLSelectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedIndex Mozilla HTMLSelectElement.selectedIndex documentation> 
htmlSelectElementSetSelectedIndex ::
                                  (IsHTMLSelectElement self) => self -> Int -> IO ()
htmlSelectElementSetSelectedIndex self val
  = ghcjs_dom_html_select_element_set_selected_index
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        ghcjs_dom_html_select_element_get_selected_index ::
        JSRef HTMLSelectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.selectedIndex Mozilla HTMLSelectElement.selectedIndex documentation> 
htmlSelectElementGetSelectedIndex ::
                                  (IsHTMLSelectElement self) => self -> IO Int
htmlSelectElementGetSelectedIndex self
  = ghcjs_dom_html_select_element_get_selected_index
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_select_element_set_value ::
        JSRef HTMLSelectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.value Mozilla HTMLSelectElement.value documentation> 
htmlSelectElementSetValue ::
                          (IsHTMLSelectElement self, ToJSString val) => self -> val -> IO ()
htmlSelectElementSetValue self val
  = ghcjs_dom_html_select_element_set_value
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_select_element_get_value ::
        JSRef HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.value Mozilla HTMLSelectElement.value documentation> 
htmlSelectElementGetValue ::
                          (IsHTMLSelectElement self, FromJSString result) =>
                            self -> IO result
htmlSelectElementGetValue self
  = fromJSString <$>
      (ghcjs_dom_html_select_element_get_value
         (unHTMLSelectElement (toHTMLSelectElement self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        ghcjs_dom_html_select_element_get_will_validate ::
        JSRef HTMLSelectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.willValidate Mozilla HTMLSelectElement.willValidate documentation> 
htmlSelectElementGetWillValidate ::
                                 (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetWillValidate self
  = ghcjs_dom_html_select_element_get_will_validate
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_select_element_get_validity ::
        JSRef HTMLSelectElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.validity Mozilla HTMLSelectElement.validity documentation> 
htmlSelectElementGetValidity ::
                             (IsHTMLSelectElement self) => self -> IO (Maybe ValidityState)
htmlSelectElementGetValidity self
  = (ghcjs_dom_html_select_element_get_validity
       (unHTMLSelectElement (toHTMLSelectElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_select_element_get_validation_message ::
        JSRef HTMLSelectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.validationMessage Mozilla HTMLSelectElement.validationMessage documentation> 
htmlSelectElementGetValidationMessage ::
                                      (IsHTMLSelectElement self, FromJSString result) =>
                                        self -> IO result
htmlSelectElementGetValidationMessage self
  = fromJSString <$>
      (ghcjs_dom_html_select_element_get_validation_message
         (unHTMLSelectElement (toHTMLSelectElement self)))
 
foreign import javascript unsafe "$1[\"labels\"]"
        ghcjs_dom_html_select_element_get_labels ::
        JSRef HTMLSelectElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement.labels Mozilla HTMLSelectElement.labels documentation> 
htmlSelectElementGetLabels ::
                           (IsHTMLSelectElement self) => self -> IO (Maybe NodeList)
htmlSelectElementGetLabels self
  = (ghcjs_dom_html_select_element_get_labels
       (unHTMLSelectElement (toHTMLSelectElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLSelectElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLSelectElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLSelectElement
#endif
