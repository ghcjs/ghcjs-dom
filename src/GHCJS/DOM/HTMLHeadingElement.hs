{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLHeadingElement
       (webkit_dom_html_heading_element_set_align,
        htmlHeadingElementSetAlign,
        webkit_dom_html_heading_element_get_align,
        htmlHeadingElementGetAlign)
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
        webkit_dom_html_heading_element_set_align ::
        JSRef HTMLHeadingElement -> JSString -> IO ()
#else 
webkit_dom_html_heading_element_set_align ::
                                            JSRef HTMLHeadingElement -> JSString -> IO ()
webkit_dom_html_heading_element_set_align = undefined
#endif
 
htmlHeadingElementSetAlign ::
                           (HTMLHeadingElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlHeadingElementSetAlign self val
  = webkit_dom_html_heading_element_set_align
      (unHTMLHeadingElement (toHTMLHeadingElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_heading_element_get_align ::
        JSRef HTMLHeadingElement -> IO JSString
#else 
webkit_dom_html_heading_element_get_align ::
                                            JSRef HTMLHeadingElement -> IO JSString
webkit_dom_html_heading_element_get_align = undefined
#endif
 
htmlHeadingElementGetAlign ::
                           (HTMLHeadingElementClass self, FromJSString result) =>
                             self -> IO result
htmlHeadingElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_heading_element_get_align
         (unHTMLHeadingElement (toHTMLHeadingElement self)))