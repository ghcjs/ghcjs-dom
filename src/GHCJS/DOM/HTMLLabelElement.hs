{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLLabelElement
       (webkit_dom_html_label_element_get_form, htmlLabelElementGetForm,
        webkit_dom_html_label_element_set_html_for,
        htmlLabelElementSetHtmlFor,
        webkit_dom_html_label_element_get_html_for,
        htmlLabelElementGetHtmlFor,
        webkit_dom_html_label_element_get_control,
        htmlLabelElementGetControl)
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
foreign import javascript unsafe "$1[\"form\"]"
        webkit_dom_html_label_element_get_form ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_label_element_get_form ::
                                         JSRef HTMLLabelElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_label_element_get_form = undefined
#endif
 
htmlLabelElementGetForm ::
                        (HTMLLabelElementClass self) => self -> IO (Maybe HTMLFormElement)
htmlLabelElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_label_element_get_form
         (unHTMLLabelElement (toHTMLLabelElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        webkit_dom_html_label_element_set_html_for ::
        JSRef HTMLLabelElement -> JSString -> IO ()
#else 
webkit_dom_html_label_element_set_html_for ::
                                             JSRef HTMLLabelElement -> JSString -> IO ()
webkit_dom_html_label_element_set_html_for = undefined
#endif
 
htmlLabelElementSetHtmlFor ::
                           (HTMLLabelElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlLabelElementSetHtmlFor self val
  = webkit_dom_html_label_element_set_html_for
      (unHTMLLabelElement (toHTMLLabelElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"htmlFor\"]"
        webkit_dom_html_label_element_get_html_for ::
        JSRef HTMLLabelElement -> IO JSString
#else 
webkit_dom_html_label_element_get_html_for ::
                                             JSRef HTMLLabelElement -> IO JSString
webkit_dom_html_label_element_get_html_for = undefined
#endif
 
htmlLabelElementGetHtmlFor ::
                           (HTMLLabelElementClass self, FromJSString result) =>
                             self -> IO result
htmlLabelElementGetHtmlFor self
  = fromJSString <$>
      (webkit_dom_html_label_element_get_html_for
         (unHTMLLabelElement (toHTMLLabelElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"control\"]"
        webkit_dom_html_label_element_get_control ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLElement)
#else 
webkit_dom_html_label_element_get_control ::
                                            JSRef HTMLLabelElement -> IO (JSRef HTMLElement)
webkit_dom_html_label_element_get_control = undefined
#endif
 
htmlLabelElementGetControl ::
                           (HTMLLabelElementClass self) => self -> IO (Maybe HTMLElement)
htmlLabelElementGetControl self
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_html_label_element_get_control
         (unHTMLLabelElement (toHTMLLabelElement self)))