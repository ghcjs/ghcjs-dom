{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLLabelElement
       (ghcjs_dom_html_label_element_get_form, htmlLabelElementGetForm,
        ghcjs_dom_html_label_element_set_html_for,
        htmlLabelElementSetHtmlFor,
        ghcjs_dom_html_label_element_get_html_for,
        htmlLabelElementGetHtmlFor,
        ghcjs_dom_html_label_element_get_control,
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
        ghcjs_dom_html_label_element_get_form ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLFormElement)
#else 
ghcjs_dom_html_label_element_get_form ::
                                        JSRef HTMLLabelElement -> IO (JSRef HTMLFormElement)
ghcjs_dom_html_label_element_get_form = undefined
#endif
 
htmlLabelElementGetForm ::
                        (IsHTMLLabelElement self) => self -> IO (Maybe HTMLFormElement)
htmlLabelElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (ghcjs_dom_html_label_element_get_form
         (unHTMLLabelElement (toHTMLLabelElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        ghcjs_dom_html_label_element_set_html_for ::
        JSRef HTMLLabelElement -> JSString -> IO ()
#else 
ghcjs_dom_html_label_element_set_html_for ::
                                            JSRef HTMLLabelElement -> JSString -> IO ()
ghcjs_dom_html_label_element_set_html_for = undefined
#endif
 
htmlLabelElementSetHtmlFor ::
                           (IsHTMLLabelElement self, ToJSString val) => self -> val -> IO ()
htmlLabelElementSetHtmlFor self val
  = ghcjs_dom_html_label_element_set_html_for
      (unHTMLLabelElement (toHTMLLabelElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"htmlFor\"]"
        ghcjs_dom_html_label_element_get_html_for ::
        JSRef HTMLLabelElement -> IO JSString
#else 
ghcjs_dom_html_label_element_get_html_for ::
                                            JSRef HTMLLabelElement -> IO JSString
ghcjs_dom_html_label_element_get_html_for = undefined
#endif
 
htmlLabelElementGetHtmlFor ::
                           (IsHTMLLabelElement self, FromJSString result) => self -> IO result
htmlLabelElementGetHtmlFor self
  = fromJSString <$>
      (ghcjs_dom_html_label_element_get_html_for
         (unHTMLLabelElement (toHTMLLabelElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"control\"]"
        ghcjs_dom_html_label_element_get_control ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLElement)
#else 
ghcjs_dom_html_label_element_get_control ::
                                           JSRef HTMLLabelElement -> IO (JSRef HTMLElement)
ghcjs_dom_html_label_element_get_control = undefined
#endif
 
htmlLabelElementGetControl ::
                           (IsHTMLLabelElement self) => self -> IO (Maybe HTMLElement)
htmlLabelElementGetControl self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_label_element_get_control
         (unHTMLLabelElement (toHTMLLabelElement self)))