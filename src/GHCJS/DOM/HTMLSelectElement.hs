{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLSelectElement
       (webkit_dom_html_select_element_item, htmlSelectElementItem,
        webkit_dom_html_select_element_named_item,
        htmlSelectElementNamedItem, webkit_dom_html_select_element_add,
        htmlSelectElementAdd, webkit_dom_html_select_element_remove,
        htmlSelectElementRemove,
        webkit_dom_html_select_element_check_validity,
        htmlSelectElementCheckValidity,
        webkit_dom_html_select_element_set_custom_validity,
        htmlSelectElementSetCustomValidity,
        webkit_dom_html_select_element_set_autofocus,
        htmlSelectElementSetAutofocus,
        webkit_dom_html_select_element_get_autofocus,
        htmlSelectElementGetAutofocus,
        webkit_dom_html_select_element_set_disabled,
        htmlSelectElementSetDisabled,
        webkit_dom_html_select_element_get_disabled,
        htmlSelectElementGetDisabled,
        webkit_dom_html_select_element_get_form, htmlSelectElementGetForm,
        webkit_dom_html_select_element_set_multiple,
        htmlSelectElementSetMultiple,
        webkit_dom_html_select_element_get_multiple,
        htmlSelectElementGetMultiple,
        webkit_dom_html_select_element_set_name, htmlSelectElementSetName,
        webkit_dom_html_select_element_get_name, htmlSelectElementGetName,
        webkit_dom_html_select_element_set_required,
        htmlSelectElementSetRequired,
        webkit_dom_html_select_element_get_required,
        htmlSelectElementGetRequired,
        webkit_dom_html_select_element_set_size, htmlSelectElementSetSize,
        webkit_dom_html_select_element_get_size, htmlSelectElementGetSize,
        webkit_dom_html_select_element_get_options,
        htmlSelectElementGetOptions,
        webkit_dom_html_select_element_set_length,
        htmlSelectElementSetLength,
        webkit_dom_html_select_element_get_length,
        htmlSelectElementGetLength,
        webkit_dom_html_select_element_get_selected_options,
        htmlSelectElementGetSelectedOptions,
        webkit_dom_html_select_element_set_selected_index,
        htmlSelectElementSetSelectedIndex,
        webkit_dom_html_select_element_get_selected_index,
        htmlSelectElementGetSelectedIndex,
        webkit_dom_html_select_element_set_value,
        htmlSelectElementSetValue,
        webkit_dom_html_select_element_get_value,
        htmlSelectElementGetValue,
        webkit_dom_html_select_element_get_will_validate,
        htmlSelectElementGetWillValidate,
        webkit_dom_html_select_element_get_validity,
        htmlSelectElementGetValidity,
        webkit_dom_html_select_element_get_validation_message,
        htmlSelectElementGetValidationMessage,
        webkit_dom_html_select_element_get_labels,
        htmlSelectElementGetLabels)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_html_select_element_item ::
        JSRef HTMLSelectElement -> Word -> IO (JSRef Node)
#else 
webkit_dom_html_select_element_item ::
                                      JSRef HTMLSelectElement -> Word -> IO (JSRef Node)
webkit_dom_html_select_element_item = undefined
#endif
 
htmlSelectElementItem ::
                      (HTMLSelectElementClass self) => self -> Word -> IO (Maybe Node)
htmlSelectElementItem self index
  = fmap Node . maybeJSNull <$>
      (webkit_dom_html_select_element_item
         (unHTMLSelectElement (toHTMLSelectElement self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        webkit_dom_html_select_element_named_item ::
        JSRef HTMLSelectElement -> JSString -> IO (JSRef Node)
#else 
webkit_dom_html_select_element_named_item ::
                                            JSRef HTMLSelectElement -> JSString -> IO (JSRef Node)
webkit_dom_html_select_element_named_item = undefined
#endif
 
htmlSelectElementNamedItem ::
                           (HTMLSelectElementClass self, ToJSString name) =>
                             self -> name -> IO (Maybe Node)
htmlSelectElementNamedItem self name
  = fmap Node . maybeJSNull <$>
      (webkit_dom_html_select_element_named_item
         (unHTMLSelectElement (toHTMLSelectElement self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"add\"]($2, $3)"
        webkit_dom_html_select_element_add ::
        JSRef HTMLSelectElement ->
          JSRef HTMLElement -> JSRef HTMLElement -> IO ()
#else 
webkit_dom_html_select_element_add ::
                                     JSRef HTMLSelectElement ->
                                       JSRef HTMLElement -> JSRef HTMLElement -> IO ()
webkit_dom_html_select_element_add = undefined
#endif
 
htmlSelectElementAdd ::
                     (HTMLSelectElementClass self, HTMLElementClass element,
                      HTMLElementClass before) =>
                       self -> Maybe element -> Maybe before -> IO ()
htmlSelectElementAdd self element before
  = webkit_dom_html_select_element_add
      (unHTMLSelectElement (toHTMLSelectElement self))
      (maybe jsNull (unHTMLElement . toHTMLElement) element)
      (maybe jsNull (unHTMLElement . toHTMLElement) before)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"remove\"]($2)"
        webkit_dom_html_select_element_remove ::
        JSRef HTMLSelectElement -> Int -> IO ()
#else 
webkit_dom_html_select_element_remove ::
                                        JSRef HTMLSelectElement -> Int -> IO ()
webkit_dom_html_select_element_remove = undefined
#endif
 
htmlSelectElementRemove ::
                        (HTMLSelectElementClass self) => self -> Int -> IO ()
htmlSelectElementRemove self index
  = webkit_dom_html_select_element_remove
      (unHTMLSelectElement (toHTMLSelectElement self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"checkValidity\"]()"
        webkit_dom_html_select_element_check_validity ::
        JSRef HTMLSelectElement -> IO JSBool
#else 
webkit_dom_html_select_element_check_validity ::
                                                JSRef HTMLSelectElement -> IO JSBool
webkit_dom_html_select_element_check_validity = undefined
#endif
 
htmlSelectElementCheckValidity ::
                               (HTMLSelectElementClass self) => self -> IO Bool
htmlSelectElementCheckValidity self
  = fromJSBool <$>
      (webkit_dom_html_select_element_check_validity
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        webkit_dom_html_select_element_set_custom_validity ::
        JSRef HTMLSelectElement -> JSString -> IO ()
#else 
webkit_dom_html_select_element_set_custom_validity ::
                                                     JSRef HTMLSelectElement -> JSString -> IO ()
webkit_dom_html_select_element_set_custom_validity = undefined
#endif
 
htmlSelectElementSetCustomValidity ::
                                   (HTMLSelectElementClass self, ToJSString error) =>
                                     self -> error -> IO ()
htmlSelectElementSetCustomValidity self error
  = webkit_dom_html_select_element_set_custom_validity
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSString error)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"] = $2;"
        webkit_dom_html_select_element_set_autofocus ::
        JSRef HTMLSelectElement -> JSBool -> IO ()
#else 
webkit_dom_html_select_element_set_autofocus ::
                                               JSRef HTMLSelectElement -> JSBool -> IO ()
webkit_dom_html_select_element_set_autofocus = undefined
#endif
 
htmlSelectElementSetAutofocus ::
                              (HTMLSelectElementClass self) => self -> Bool -> IO ()
htmlSelectElementSetAutofocus self val
  = webkit_dom_html_select_element_set_autofocus
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"autofocus\"]"
        webkit_dom_html_select_element_get_autofocus ::
        JSRef HTMLSelectElement -> IO JSBool
#else 
webkit_dom_html_select_element_get_autofocus ::
                                               JSRef HTMLSelectElement -> IO JSBool
webkit_dom_html_select_element_get_autofocus = undefined
#endif
 
htmlSelectElementGetAutofocus ::
                              (HTMLSelectElementClass self) => self -> IO Bool
htmlSelectElementGetAutofocus self
  = fromJSBool <$>
      (webkit_dom_html_select_element_get_autofocus
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_select_element_set_disabled ::
        JSRef HTMLSelectElement -> JSBool -> IO ()
#else 
webkit_dom_html_select_element_set_disabled ::
                                              JSRef HTMLSelectElement -> JSBool -> IO ()
webkit_dom_html_select_element_set_disabled = undefined
#endif
 
htmlSelectElementSetDisabled ::
                             (HTMLSelectElementClass self) => self -> Bool -> IO ()
htmlSelectElementSetDisabled self val
  = webkit_dom_html_select_element_set_disabled
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"]"
        webkit_dom_html_select_element_get_disabled ::
        JSRef HTMLSelectElement -> IO JSBool
#else 
webkit_dom_html_select_element_get_disabled ::
                                              JSRef HTMLSelectElement -> IO JSBool
webkit_dom_html_select_element_get_disabled = undefined
#endif
 
htmlSelectElementGetDisabled ::
                             (HTMLSelectElementClass self) => self -> IO Bool
htmlSelectElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_select_element_get_disabled
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        webkit_dom_html_select_element_get_form ::
        JSRef HTMLSelectElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_select_element_get_form ::
                                          JSRef HTMLSelectElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_select_element_get_form = undefined
#endif
 
htmlSelectElementGetForm ::
                         (HTMLSelectElementClass self) => self -> IO (Maybe HTMLFormElement)
htmlSelectElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_select_element_get_form
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"multiple\"] = $2;"
        webkit_dom_html_select_element_set_multiple ::
        JSRef HTMLSelectElement -> JSBool -> IO ()
#else 
webkit_dom_html_select_element_set_multiple ::
                                              JSRef HTMLSelectElement -> JSBool -> IO ()
webkit_dom_html_select_element_set_multiple = undefined
#endif
 
htmlSelectElementSetMultiple ::
                             (HTMLSelectElementClass self) => self -> Bool -> IO ()
htmlSelectElementSetMultiple self val
  = webkit_dom_html_select_element_set_multiple
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"multiple\"]"
        webkit_dom_html_select_element_get_multiple ::
        JSRef HTMLSelectElement -> IO JSBool
#else 
webkit_dom_html_select_element_get_multiple ::
                                              JSRef HTMLSelectElement -> IO JSBool
webkit_dom_html_select_element_get_multiple = undefined
#endif
 
htmlSelectElementGetMultiple ::
                             (HTMLSelectElementClass self) => self -> IO Bool
htmlSelectElementGetMultiple self
  = fromJSBool <$>
      (webkit_dom_html_select_element_get_multiple
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_select_element_set_name ::
        JSRef HTMLSelectElement -> JSString -> IO ()
#else 
webkit_dom_html_select_element_set_name ::
                                          JSRef HTMLSelectElement -> JSString -> IO ()
webkit_dom_html_select_element_set_name = undefined
#endif
 
htmlSelectElementSetName ::
                         (HTMLSelectElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlSelectElementSetName self val
  = webkit_dom_html_select_element_set_name
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_select_element_get_name ::
        JSRef HTMLSelectElement -> IO JSString
#else 
webkit_dom_html_select_element_get_name ::
                                          JSRef HTMLSelectElement -> IO JSString
webkit_dom_html_select_element_get_name = undefined
#endif
 
htmlSelectElementGetName ::
                         (HTMLSelectElementClass self, FromJSString result) =>
                           self -> IO result
htmlSelectElementGetName self
  = fromJSString <$>
      (webkit_dom_html_select_element_get_name
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"required\"] = $2;"
        webkit_dom_html_select_element_set_required ::
        JSRef HTMLSelectElement -> JSBool -> IO ()
#else 
webkit_dom_html_select_element_set_required ::
                                              JSRef HTMLSelectElement -> JSBool -> IO ()
webkit_dom_html_select_element_set_required = undefined
#endif
 
htmlSelectElementSetRequired ::
                             (HTMLSelectElementClass self) => self -> Bool -> IO ()
htmlSelectElementSetRequired self val
  = webkit_dom_html_select_element_set_required
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"required\"]"
        webkit_dom_html_select_element_get_required ::
        JSRef HTMLSelectElement -> IO JSBool
#else 
webkit_dom_html_select_element_get_required ::
                                              JSRef HTMLSelectElement -> IO JSBool
webkit_dom_html_select_element_get_required = undefined
#endif
 
htmlSelectElementGetRequired ::
                             (HTMLSelectElementClass self) => self -> IO Bool
htmlSelectElementGetRequired self
  = fromJSBool <$>
      (webkit_dom_html_select_element_get_required
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        webkit_dom_html_select_element_set_size ::
        JSRef HTMLSelectElement -> Int -> IO ()
#else 
webkit_dom_html_select_element_set_size ::
                                          JSRef HTMLSelectElement -> Int -> IO ()
webkit_dom_html_select_element_set_size = undefined
#endif
 
htmlSelectElementSetSize ::
                         (HTMLSelectElementClass self) => self -> Int -> IO ()
htmlSelectElementSetSize self val
  = webkit_dom_html_select_element_set_size
      (unHTMLSelectElement (toHTMLSelectElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"]"
        webkit_dom_html_select_element_get_size ::
        JSRef HTMLSelectElement -> IO Int
#else 
webkit_dom_html_select_element_get_size ::
                                          JSRef HTMLSelectElement -> IO Int
webkit_dom_html_select_element_get_size = undefined
#endif
 
htmlSelectElementGetSize ::
                         (HTMLSelectElementClass self) => self -> IO Int
htmlSelectElementGetSize self
  = webkit_dom_html_select_element_get_size
      (unHTMLSelectElement (toHTMLSelectElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"options\"]"
        webkit_dom_html_select_element_get_options ::
        JSRef HTMLSelectElement -> IO (JSRef HTMLOptionsCollection)
#else 
webkit_dom_html_select_element_get_options ::
                                             JSRef HTMLSelectElement ->
                                               IO (JSRef HTMLOptionsCollection)
webkit_dom_html_select_element_get_options = undefined
#endif
 
htmlSelectElementGetOptions ::
                            (HTMLSelectElementClass self) =>
                              self -> IO (Maybe HTMLOptionsCollection)
htmlSelectElementGetOptions self
  = fmap HTMLOptionsCollection . maybeJSNull <$>
      (webkit_dom_html_select_element_get_options
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"] = $2;"
        webkit_dom_html_select_element_set_length ::
        JSRef HTMLSelectElement -> Word -> IO ()
#else 
webkit_dom_html_select_element_set_length ::
                                            JSRef HTMLSelectElement -> Word -> IO ()
webkit_dom_html_select_element_set_length = undefined
#endif
 
htmlSelectElementSetLength ::
                           (HTMLSelectElementClass self) => self -> Word -> IO ()
htmlSelectElementSetLength self val
  = webkit_dom_html_select_element_set_length
      (unHTMLSelectElement (toHTMLSelectElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_html_select_element_get_length ::
        JSRef HTMLSelectElement -> IO Word
#else 
webkit_dom_html_select_element_get_length ::
                                            JSRef HTMLSelectElement -> IO Word
webkit_dom_html_select_element_get_length = undefined
#endif
 
htmlSelectElementGetLength ::
                           (HTMLSelectElementClass self) => self -> IO Word
htmlSelectElementGetLength self
  = webkit_dom_html_select_element_get_length
      (unHTMLSelectElement (toHTMLSelectElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectedOptions\"]"
        webkit_dom_html_select_element_get_selected_options ::
        JSRef HTMLSelectElement -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_select_element_get_selected_options ::
                                                      JSRef HTMLSelectElement ->
                                                        IO (JSRef HTMLCollection)
webkit_dom_html_select_element_get_selected_options = undefined
#endif
 
htmlSelectElementGetSelectedOptions ::
                                    (HTMLSelectElementClass self) =>
                                      self -> IO (Maybe HTMLCollection)
htmlSelectElementGetSelectedOptions self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_select_element_get_selected_options
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        webkit_dom_html_select_element_set_selected_index ::
        JSRef HTMLSelectElement -> Int -> IO ()
#else 
webkit_dom_html_select_element_set_selected_index ::
                                                    JSRef HTMLSelectElement -> Int -> IO ()
webkit_dom_html_select_element_set_selected_index = undefined
#endif
 
htmlSelectElementSetSelectedIndex ::
                                  (HTMLSelectElementClass self) => self -> Int -> IO ()
htmlSelectElementSetSelectedIndex self val
  = webkit_dom_html_select_element_set_selected_index
      (unHTMLSelectElement (toHTMLSelectElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        webkit_dom_html_select_element_get_selected_index ::
        JSRef HTMLSelectElement -> IO Int
#else 
webkit_dom_html_select_element_get_selected_index ::
                                                    JSRef HTMLSelectElement -> IO Int
webkit_dom_html_select_element_get_selected_index = undefined
#endif
 
htmlSelectElementGetSelectedIndex ::
                                  (HTMLSelectElementClass self) => self -> IO Int
htmlSelectElementGetSelectedIndex self
  = webkit_dom_html_select_element_get_selected_index
      (unHTMLSelectElement (toHTMLSelectElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        webkit_dom_html_select_element_set_value ::
        JSRef HTMLSelectElement -> JSString -> IO ()
#else 
webkit_dom_html_select_element_set_value ::
                                           JSRef HTMLSelectElement -> JSString -> IO ()
webkit_dom_html_select_element_set_value = undefined
#endif
 
htmlSelectElementSetValue ::
                          (HTMLSelectElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlSelectElementSetValue self val
  = webkit_dom_html_select_element_set_value
      (unHTMLSelectElement (toHTMLSelectElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        webkit_dom_html_select_element_get_value ::
        JSRef HTMLSelectElement -> IO JSString
#else 
webkit_dom_html_select_element_get_value ::
                                           JSRef HTMLSelectElement -> IO JSString
webkit_dom_html_select_element_get_value = undefined
#endif
 
htmlSelectElementGetValue ::
                          (HTMLSelectElementClass self, FromJSString result) =>
                            self -> IO result
htmlSelectElementGetValue self
  = fromJSString <$>
      (webkit_dom_html_select_element_get_value
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"willValidate\"]"
        webkit_dom_html_select_element_get_will_validate ::
        JSRef HTMLSelectElement -> IO JSBool
#else 
webkit_dom_html_select_element_get_will_validate ::
                                                   JSRef HTMLSelectElement -> IO JSBool
webkit_dom_html_select_element_get_will_validate = undefined
#endif
 
htmlSelectElementGetWillValidate ::
                                 (HTMLSelectElementClass self) => self -> IO Bool
htmlSelectElementGetWillValidate self
  = fromJSBool <$>
      (webkit_dom_html_select_element_get_will_validate
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validity\"]"
        webkit_dom_html_select_element_get_validity ::
        JSRef HTMLSelectElement -> IO (JSRef ValidityState)
#else 
webkit_dom_html_select_element_get_validity ::
                                              JSRef HTMLSelectElement -> IO (JSRef ValidityState)
webkit_dom_html_select_element_get_validity = undefined
#endif
 
htmlSelectElementGetValidity ::
                             (HTMLSelectElementClass self) => self -> IO (Maybe ValidityState)
htmlSelectElementGetValidity self
  = fmap ValidityState . maybeJSNull <$>
      (webkit_dom_html_select_element_get_validity
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        webkit_dom_html_select_element_get_validation_message ::
        JSRef HTMLSelectElement -> IO JSString
#else 
webkit_dom_html_select_element_get_validation_message ::
                                                        JSRef HTMLSelectElement -> IO JSString
webkit_dom_html_select_element_get_validation_message = undefined
#endif
 
htmlSelectElementGetValidationMessage ::
                                      (HTMLSelectElementClass self, FromJSString result) =>
                                        self -> IO result
htmlSelectElementGetValidationMessage self
  = fromJSString <$>
      (webkit_dom_html_select_element_get_validation_message
         (unHTMLSelectElement (toHTMLSelectElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"labels\"]"
        webkit_dom_html_select_element_get_labels ::
        JSRef HTMLSelectElement -> IO (JSRef NodeList)
#else 
webkit_dom_html_select_element_get_labels ::
                                            JSRef HTMLSelectElement -> IO (JSRef NodeList)
webkit_dom_html_select_element_get_labels = undefined
#endif
 
htmlSelectElementGetLabels ::
                           (HTMLSelectElementClass self) => self -> IO (Maybe NodeList)
htmlSelectElementGetLabels self
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_html_select_element_get_labels
         (unHTMLSelectElement (toHTMLSelectElement self)))