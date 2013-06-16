{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLParagraphElement
       (webkit_dom_html_paragraph_element_set_align,
        htmlParagraphElementSetAlign,
        webkit_dom_html_paragraph_element_get_align,
        htmlParagraphElementGetAlign)
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
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_paragraph_element_set_align ::
        JSRef HTMLParagraphElement -> JSString -> IO ()
#else 
webkit_dom_html_paragraph_element_set_align ::
                                              JSRef HTMLParagraphElement -> JSString -> IO ()
webkit_dom_html_paragraph_element_set_align = undefined
#endif
 
htmlParagraphElementSetAlign ::
                             (HTMLParagraphElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlParagraphElementSetAlign self val
  = webkit_dom_html_paragraph_element_set_align
      (unHTMLParagraphElement (toHTMLParagraphElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_paragraph_element_get_align ::
        JSRef HTMLParagraphElement -> IO JSString
#else 
webkit_dom_html_paragraph_element_get_align ::
                                              JSRef HTMLParagraphElement -> IO JSString
webkit_dom_html_paragraph_element_get_align = undefined
#endif
 
htmlParagraphElementGetAlign ::
                             (HTMLParagraphElementClass self, FromJSString result) =>
                               self -> IO result
htmlParagraphElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_paragraph_element_get_align
         (unHTMLParagraphElement (toHTMLParagraphElement self)))