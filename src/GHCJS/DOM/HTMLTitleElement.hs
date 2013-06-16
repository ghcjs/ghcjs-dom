{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLTitleElement
       (webkit_dom_html_title_element_set_text, htmlTitleElementSetText,
        webkit_dom_html_title_element_get_text, htmlTitleElementGetText)
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
foreign import javascript unsafe "$1[\"text\"] = $2;"
        webkit_dom_html_title_element_set_text ::
        JSRef HTMLTitleElement -> JSString -> IO ()
#else 
webkit_dom_html_title_element_set_text ::
                                         JSRef HTMLTitleElement -> JSString -> IO ()
webkit_dom_html_title_element_set_text = undefined
#endif
 
htmlTitleElementSetText ::
                        (HTMLTitleElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlTitleElementSetText self val
  = webkit_dom_html_title_element_set_text
      (unHTMLTitleElement (toHTMLTitleElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"]"
        webkit_dom_html_title_element_get_text ::
        JSRef HTMLTitleElement -> IO JSString
#else 
webkit_dom_html_title_element_get_text ::
                                         JSRef HTMLTitleElement -> IO JSString
webkit_dom_html_title_element_get_text = undefined
#endif
 
htmlTitleElementGetText ::
                        (HTMLTitleElementClass self, FromJSString result) =>
                          self -> IO result
htmlTitleElementGetText self
  = fromJSString <$>
      (webkit_dom_html_title_element_get_text
         (unHTMLTitleElement (toHTMLTitleElement self)))