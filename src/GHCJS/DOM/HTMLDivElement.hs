{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDivElement
       (ghcjs_dom_html_div_element_set_align, htmlDivElementSetAlign,
        ghcjs_dom_html_div_element_get_align, htmlDivElementGetAlign)
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
        ghcjs_dom_html_div_element_set_align ::
        JSRef HTMLDivElement -> JSString -> IO ()
#else 
ghcjs_dom_html_div_element_set_align ::
                                       JSRef HTMLDivElement -> JSString -> IO ()
ghcjs_dom_html_div_element_set_align = undefined
#endif
 
htmlDivElementSetAlign ::
                       (IsHTMLDivElement self, ToJSString val) => self -> val -> IO ()
htmlDivElementSetAlign self val
  = ghcjs_dom_html_div_element_set_align
      (unHTMLDivElement (toHTMLDivElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_div_element_get_align ::
        JSRef HTMLDivElement -> IO JSString
#else 
ghcjs_dom_html_div_element_get_align ::
                                       JSRef HTMLDivElement -> IO JSString
ghcjs_dom_html_div_element_get_align = undefined
#endif
 
htmlDivElementGetAlign ::
                       (IsHTMLDivElement self, FromJSString result) => self -> IO result
htmlDivElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_div_element_get_align
         (unHTMLDivElement (toHTMLDivElement self)))