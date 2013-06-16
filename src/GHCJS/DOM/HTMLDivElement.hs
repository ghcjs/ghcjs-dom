{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDivElement
       (webkit_dom_html_div_element_set_align, htmlDivElementSetAlign,
        webkit_dom_html_div_element_get_align, htmlDivElementGetAlign)
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
        webkit_dom_html_div_element_set_align ::
        JSRef HTMLDivElement -> JSString -> IO ()
#else 
webkit_dom_html_div_element_set_align ::
                                        JSRef HTMLDivElement -> JSString -> IO ()
webkit_dom_html_div_element_set_align = undefined
#endif
 
htmlDivElementSetAlign ::
                       (HTMLDivElementClass self, ToJSString val) => self -> val -> IO ()
htmlDivElementSetAlign self val
  = webkit_dom_html_div_element_set_align
      (unHTMLDivElement (toHTMLDivElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_div_element_get_align ::
        JSRef HTMLDivElement -> IO JSString
#else 
webkit_dom_html_div_element_get_align ::
                                        JSRef HTMLDivElement -> IO JSString
webkit_dom_html_div_element_get_align = undefined
#endif
 
htmlDivElementGetAlign ::
                       (HTMLDivElementClass self, FromJSString result) =>
                         self -> IO result
htmlDivElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_div_element_get_align
         (unHTMLDivElement (toHTMLDivElement self)))