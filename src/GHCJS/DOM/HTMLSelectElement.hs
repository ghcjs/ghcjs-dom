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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_html_select_element_item ::
        JSRef HTMLSelectElement -> Word -> IO (JSRef Node)
 
htmlSelectElementItem ::
                      (IsHTMLSelectElement self) => self -> Word -> IO (Maybe Node)
htmlSelectElementItem self index
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_html_select_element_item
         (unHTMLSelectElement (toHTMLSelectElement self))
         index)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_html_select_element_named_item ::
        JSRef HTMLSelectElement -> JSString -> IO (JSRef Node)
 
htmlSelectElementNamedItem ::
                           (IsHTMLSelectElement self, ToJSString name) =>
                             self -> name -> IO (Maybe Node)
htmlSelectElementNamedItem self name
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_html_select_element_named_item
         (unHTMLSelectElement (toHTMLSelectElement self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)"
        ghcjs_dom_html_select_element_add ::
        JSRef HTMLSelectElement ->
          JSRef HTMLElement -> JSRef HTMLElement -> IO ()
 
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
 
htmlSelectElementCheckValidity ::
                               (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementCheckValidity self
  = ghcjs_dom_html_select_element_check_validity
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        ghcjs_dom_html_select_element_set_custom_validity ::
        JSRef HTMLSelectElement -> JSString -> IO ()
 
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
 
htmlSelectElementSetAutofocus ::
                              (IsHTMLSelectElement self) => self -> Bool -> IO ()
htmlSelectElementSetAutofocus self val
  = ghcjs_dom_html_select_element_set_autofocus
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "($1[\"autofocus\"] ? 1 : 0)"
        ghcjs_dom_html_select_element_get_autofocus ::
        JSRef HTMLSelectElement -> IO Bool
 
htmlSelectElementGetAutofocus ::
                              (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetAutofocus self
  = ghcjs_dom_html_select_element_get_autofocus
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_select_element_set_disabled ::
        JSRef HTMLSelectElement -> Bool -> IO ()
 
htmlSelectElementSetDisabled ::
                             (IsHTMLSelectElement self) => self -> Bool -> IO ()
htmlSelectElementSetDisabled self val
  = ghcjs_dom_html_select_element_set_disabled
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_select_element_get_disabled ::
        JSRef HTMLSelectElement -> IO Bool
 
htmlSelectElementGetDisabled ::
                             (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetDisabled self
  = ghcjs_dom_html_select_element_get_disabled
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"form\"]"
        ghcjs_dom_html_select_element_get_form ::
        JSRef HTMLSelectElement -> IO (JSRef HTMLFormElement)
 
htmlSelectElementGetForm ::
                         (IsHTMLSelectElement self) => self -> IO (Maybe HTMLFormElement)
htmlSelectElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_select_element_get_form
         (unHTMLSelectElement (toHTMLSelectElement self)))
 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        ghcjs_dom_html_select_element_set_multiple ::
        JSRef HTMLSelectElement -> Bool -> IO ()
 
htmlSelectElementSetMultiple ::
                             (IsHTMLSelectElement self) => self -> Bool -> IO ()
htmlSelectElementSetMultiple self val
  = ghcjs_dom_html_select_element_set_multiple
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "($1[\"multiple\"] ? 1 : 0)"
        ghcjs_dom_html_select_element_get_multiple ::
        JSRef HTMLSelectElement -> IO Bool
 
htmlSelectElementGetMultiple ::
                             (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetMultiple self
  = ghcjs_dom_html_select_element_get_multiple
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_select_element_set_name ::
        JSRef HTMLSelectElement -> JSString -> IO ()
 
htmlSelectElementSetName ::
                         (IsHTMLSelectElement self, ToJSString val) => self -> val -> IO ()
htmlSelectElementSetName self val
  = ghcjs_dom_html_select_element_set_name
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_select_element_get_name ::
        JSRef HTMLSelectElement -> IO JSString
 
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
 
htmlSelectElementSetRequired ::
                             (IsHTMLSelectElement self) => self -> Bool -> IO ()
htmlSelectElementSetRequired self val
  = ghcjs_dom_html_select_element_set_required
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "($1[\"required\"] ? 1 : 0)"
        ghcjs_dom_html_select_element_get_required ::
        JSRef HTMLSelectElement -> IO Bool
 
htmlSelectElementGetRequired ::
                             (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetRequired self
  = ghcjs_dom_html_select_element_get_required
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_html_select_element_set_size ::
        JSRef HTMLSelectElement -> Int -> IO ()
 
htmlSelectElementSetSize ::
                         (IsHTMLSelectElement self) => self -> Int -> IO ()
htmlSelectElementSetSize self val
  = ghcjs_dom_html_select_element_set_size
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_html_select_element_get_size ::
        JSRef HTMLSelectElement -> IO Int
 
htmlSelectElementGetSize ::
                         (IsHTMLSelectElement self) => self -> IO Int
htmlSelectElementGetSize self
  = ghcjs_dom_html_select_element_get_size
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"options\"]"
        ghcjs_dom_html_select_element_get_options ::
        JSRef HTMLSelectElement -> IO (JSRef HTMLOptionsCollection)
 
htmlSelectElementGetOptions ::
                            (IsHTMLSelectElement self) =>
                              self -> IO (Maybe HTMLOptionsCollection)
htmlSelectElementGetOptions self
  = fmap HTMLOptionsCollection . maybeJSNull <$>
      (ghcjs_dom_html_select_element_get_options
         (unHTMLSelectElement (toHTMLSelectElement self)))
 
foreign import javascript unsafe "$1[\"length\"] = $2;"
        ghcjs_dom_html_select_element_set_length ::
        JSRef HTMLSelectElement -> Word -> IO ()
 
htmlSelectElementSetLength ::
                           (IsHTMLSelectElement self) => self -> Word -> IO ()
htmlSelectElementSetLength self val
  = ghcjs_dom_html_select_element_set_length
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_html_select_element_get_length ::
        JSRef HTMLSelectElement -> IO Word
 
htmlSelectElementGetLength ::
                           (IsHTMLSelectElement self) => self -> IO Word
htmlSelectElementGetLength self
  = ghcjs_dom_html_select_element_get_length
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"selectedOptions\"]"
        ghcjs_dom_html_select_element_get_selected_options ::
        JSRef HTMLSelectElement -> IO (JSRef HTMLCollection)
 
htmlSelectElementGetSelectedOptions ::
                                    (IsHTMLSelectElement self) => self -> IO (Maybe HTMLCollection)
htmlSelectElementGetSelectedOptions self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_select_element_get_selected_options
         (unHTMLSelectElement (toHTMLSelectElement self)))
 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        ghcjs_dom_html_select_element_set_selected_index ::
        JSRef HTMLSelectElement -> Int -> IO ()
 
htmlSelectElementSetSelectedIndex ::
                                  (IsHTMLSelectElement self) => self -> Int -> IO ()
htmlSelectElementSetSelectedIndex self val
  = ghcjs_dom_html_select_element_set_selected_index
      (unHTMLSelectElement (toHTMLSelectElement self))
      val
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        ghcjs_dom_html_select_element_get_selected_index ::
        JSRef HTMLSelectElement -> IO Int
 
htmlSelectElementGetSelectedIndex ::
                                  (IsHTMLSelectElement self) => self -> IO Int
htmlSelectElementGetSelectedIndex self
  = ghcjs_dom_html_select_element_get_selected_index
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_html_select_element_set_value ::
        JSRef HTMLSelectElement -> JSString -> IO ()
 
htmlSelectElementSetValue ::
                          (IsHTMLSelectElement self, ToJSString val) => self -> val -> IO ()
htmlSelectElementSetValue self val
  = ghcjs_dom_html_select_element_set_value
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_html_select_element_get_value ::
        JSRef HTMLSelectElement -> IO JSString
 
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
 
htmlSelectElementGetWillValidate ::
                                 (IsHTMLSelectElement self) => self -> IO Bool
htmlSelectElementGetWillValidate self
  = ghcjs_dom_html_select_element_get_will_validate
      (unHTMLSelectElement (toHTMLSelectElement self))
 
foreign import javascript unsafe "$1[\"validity\"]"
        ghcjs_dom_html_select_element_get_validity ::
        JSRef HTMLSelectElement -> IO (JSRef ValidityState)
 
htmlSelectElementGetValidity ::
                             (IsHTMLSelectElement self) => self -> IO (Maybe ValidityState)
htmlSelectElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (ghcjs_dom_html_select_element_get_validity
         (unHTMLSelectElement (toHTMLSelectElement self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        ghcjs_dom_html_select_element_get_validation_message ::
        JSRef HTMLSelectElement -> IO JSString
 
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
 
htmlSelectElementGetLabels ::
                           (IsHTMLSelectElement self) => self -> IO (Maybe NodeList)
htmlSelectElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_html_select_element_get_labels
         (unHTMLSelectElement (toHTMLSelectElement self)))
#else
module GHCJS.DOM.HTMLSelectElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLSelectElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLSelectElement
#endif
