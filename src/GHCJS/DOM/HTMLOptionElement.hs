{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLOptionElement
       (webkit_dom_html_option_element_set_disabled,
        htmlOptionElementSetDisabled,
        webkit_dom_html_option_element_get_disabled,
        htmlOptionElementGetDisabled,
        webkit_dom_html_option_element_get_form, htmlOptionElementGetForm,
        webkit_dom_html_option_element_set_label,
        htmlOptionElementSetLabel,
        webkit_dom_html_option_element_get_label,
        htmlOptionElementGetLabel,
        webkit_dom_html_option_element_set_default_selected,
        htmlOptionElementSetDefaultSelected,
        webkit_dom_html_option_element_get_default_selected,
        htmlOptionElementGetDefaultSelected,
        webkit_dom_html_option_element_set_selected,
        htmlOptionElementSetSelected,
        webkit_dom_html_option_element_get_selected,
        htmlOptionElementGetSelected,
        webkit_dom_html_option_element_set_value,
        htmlOptionElementSetValue,
        webkit_dom_html_option_element_get_value,
        htmlOptionElementGetValue, webkit_dom_html_option_element_get_text,
        htmlOptionElementGetText, webkit_dom_html_option_element_get_index,
        htmlOptionElementGetIndex)
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
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_option_element_set_disabled ::
        JSRef HTMLOptionElement -> JSBool -> IO ()
#else 
webkit_dom_html_option_element_set_disabled ::
                                              JSRef HTMLOptionElement -> JSBool -> IO ()
webkit_dom_html_option_element_set_disabled = undefined
#endif
 
htmlOptionElementSetDisabled ::
                             (HTMLOptionElementClass self) => self -> Bool -> IO ()
htmlOptionElementSetDisabled self val
  = webkit_dom_html_option_element_set_disabled
      (unHTMLOptionElement (toHTMLOptionElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"disabled\"]"
        webkit_dom_html_option_element_get_disabled ::
        JSRef HTMLOptionElement -> IO JSBool
#else 
webkit_dom_html_option_element_get_disabled ::
                                              JSRef HTMLOptionElement -> IO JSBool
webkit_dom_html_option_element_get_disabled = undefined
#endif
 
htmlOptionElementGetDisabled ::
                             (HTMLOptionElementClass self) => self -> IO Bool
htmlOptionElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_option_element_get_disabled
         (unHTMLOptionElement (toHTMLOptionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"form\"]"
        webkit_dom_html_option_element_get_form ::
        JSRef HTMLOptionElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_option_element_get_form ::
                                          JSRef HTMLOptionElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_option_element_get_form = undefined
#endif
 
htmlOptionElementGetForm ::
                         (HTMLOptionElementClass self) => self -> IO (Maybe HTMLFormElement)
htmlOptionElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_option_element_get_form
         (unHTMLOptionElement (toHTMLOptionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"label\"] = $2;"
        webkit_dom_html_option_element_set_label ::
        JSRef HTMLOptionElement -> JSString -> IO ()
#else 
webkit_dom_html_option_element_set_label ::
                                           JSRef HTMLOptionElement -> JSString -> IO ()
webkit_dom_html_option_element_set_label = undefined
#endif
 
htmlOptionElementSetLabel ::
                          (HTMLOptionElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlOptionElementSetLabel self val
  = webkit_dom_html_option_element_set_label
      (unHTMLOptionElement (toHTMLOptionElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"label\"]"
        webkit_dom_html_option_element_get_label ::
        JSRef HTMLOptionElement -> IO JSString
#else 
webkit_dom_html_option_element_get_label ::
                                           JSRef HTMLOptionElement -> IO JSString
webkit_dom_html_option_element_get_label = undefined
#endif
 
htmlOptionElementGetLabel ::
                          (HTMLOptionElementClass self, FromJSString result) =>
                            self -> IO result
htmlOptionElementGetLabel self
  = fromJSString <$>
      (webkit_dom_html_option_element_get_label
         (unHTMLOptionElement (toHTMLOptionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultSelected\"] = $2;"
        webkit_dom_html_option_element_set_default_selected ::
        JSRef HTMLOptionElement -> JSBool -> IO ()
#else 
webkit_dom_html_option_element_set_default_selected ::
                                                      JSRef HTMLOptionElement -> JSBool -> IO ()
webkit_dom_html_option_element_set_default_selected = undefined
#endif
 
htmlOptionElementSetDefaultSelected ::
                                    (HTMLOptionElementClass self) => self -> Bool -> IO ()
htmlOptionElementSetDefaultSelected self val
  = webkit_dom_html_option_element_set_default_selected
      (unHTMLOptionElement (toHTMLOptionElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultSelected\"]"
        webkit_dom_html_option_element_get_default_selected ::
        JSRef HTMLOptionElement -> IO JSBool
#else 
webkit_dom_html_option_element_get_default_selected ::
                                                      JSRef HTMLOptionElement -> IO JSBool
webkit_dom_html_option_element_get_default_selected = undefined
#endif
 
htmlOptionElementGetDefaultSelected ::
                                    (HTMLOptionElementClass self) => self -> IO Bool
htmlOptionElementGetDefaultSelected self
  = fromJSBool <$>
      (webkit_dom_html_option_element_get_default_selected
         (unHTMLOptionElement (toHTMLOptionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selected\"] = $2;"
        webkit_dom_html_option_element_set_selected ::
        JSRef HTMLOptionElement -> JSBool -> IO ()
#else 
webkit_dom_html_option_element_set_selected ::
                                              JSRef HTMLOptionElement -> JSBool -> IO ()
webkit_dom_html_option_element_set_selected = undefined
#endif
 
htmlOptionElementSetSelected ::
                             (HTMLOptionElementClass self) => self -> Bool -> IO ()
htmlOptionElementSetSelected self val
  = webkit_dom_html_option_element_set_selected
      (unHTMLOptionElement (toHTMLOptionElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selected\"]"
        webkit_dom_html_option_element_get_selected ::
        JSRef HTMLOptionElement -> IO JSBool
#else 
webkit_dom_html_option_element_get_selected ::
                                              JSRef HTMLOptionElement -> IO JSBool
webkit_dom_html_option_element_get_selected = undefined
#endif
 
htmlOptionElementGetSelected ::
                             (HTMLOptionElementClass self) => self -> IO Bool
htmlOptionElementGetSelected self
  = fromJSBool <$>
      (webkit_dom_html_option_element_get_selected
         (unHTMLOptionElement (toHTMLOptionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        webkit_dom_html_option_element_set_value ::
        JSRef HTMLOptionElement -> JSString -> IO ()
#else 
webkit_dom_html_option_element_set_value ::
                                           JSRef HTMLOptionElement -> JSString -> IO ()
webkit_dom_html_option_element_set_value = undefined
#endif
 
htmlOptionElementSetValue ::
                          (HTMLOptionElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlOptionElementSetValue self val
  = webkit_dom_html_option_element_set_value
      (unHTMLOptionElement (toHTMLOptionElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"value\"]"
        webkit_dom_html_option_element_get_value ::
        JSRef HTMLOptionElement -> IO JSString
#else 
webkit_dom_html_option_element_get_value ::
                                           JSRef HTMLOptionElement -> IO JSString
webkit_dom_html_option_element_get_value = undefined
#endif
 
htmlOptionElementGetValue ::
                          (HTMLOptionElementClass self, FromJSString result) =>
                            self -> IO result
htmlOptionElementGetValue self
  = fromJSString <$>
      (webkit_dom_html_option_element_get_value
         (unHTMLOptionElement (toHTMLOptionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"]"
        webkit_dom_html_option_element_get_text ::
        JSRef HTMLOptionElement -> IO JSString
#else 
webkit_dom_html_option_element_get_text ::
                                          JSRef HTMLOptionElement -> IO JSString
webkit_dom_html_option_element_get_text = undefined
#endif
 
htmlOptionElementGetText ::
                         (HTMLOptionElementClass self, FromJSString result) =>
                           self -> IO result
htmlOptionElementGetText self
  = fromJSString <$>
      (webkit_dom_html_option_element_get_text
         (unHTMLOptionElement (toHTMLOptionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"index\"]"
        webkit_dom_html_option_element_get_index ::
        JSRef HTMLOptionElement -> IO Int
#else 
webkit_dom_html_option_element_get_index ::
                                           JSRef HTMLOptionElement -> IO Int
webkit_dom_html_option_element_get_index = undefined
#endif
 
htmlOptionElementGetIndex ::
                          (HTMLOptionElementClass self) => self -> IO Int
htmlOptionElementGetIndex self
  = webkit_dom_html_option_element_get_index
      (unHTMLOptionElement (toHTMLOptionElement self))