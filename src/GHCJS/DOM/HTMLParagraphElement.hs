{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLParagraphElement
       (ghcjs_dom_html_paragraph_element_set_align,
        htmlParagraphElementSetAlign,
        ghcjs_dom_html_paragraph_element_get_align,
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
        ghcjs_dom_html_paragraph_element_set_align ::
        JSRef HTMLParagraphElement -> JSString -> IO ()
#else 
ghcjs_dom_html_paragraph_element_set_align ::
                                             JSRef HTMLParagraphElement -> JSString -> IO ()
ghcjs_dom_html_paragraph_element_set_align = undefined
#endif
 
htmlParagraphElementSetAlign ::
                             (IsHTMLParagraphElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlParagraphElementSetAlign self val
  = ghcjs_dom_html_paragraph_element_set_align
      (unHTMLParagraphElement (toHTMLParagraphElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_paragraph_element_get_align ::
        JSRef HTMLParagraphElement -> IO JSString
#else 
ghcjs_dom_html_paragraph_element_get_align ::
                                             JSRef HTMLParagraphElement -> IO JSString
ghcjs_dom_html_paragraph_element_get_align = undefined
#endif
 
htmlParagraphElementGetAlign ::
                             (IsHTMLParagraphElement self, FromJSString result) =>
                               self -> IO result
htmlParagraphElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_paragraph_element_get_align
         (unHTMLParagraphElement (toHTMLParagraphElement self)))