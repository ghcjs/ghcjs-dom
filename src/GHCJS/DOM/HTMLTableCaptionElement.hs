{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLTableCaptionElement
       (webkit_dom_html_table_caption_element_set_align,
        htmlTableCaptionElementSetAlign,
        webkit_dom_html_table_caption_element_get_align,
        htmlTableCaptionElementGetAlign)
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
        webkit_dom_html_table_caption_element_set_align ::
        JSRef HTMLTableCaptionElement -> JSString -> IO ()
#else 
webkit_dom_html_table_caption_element_set_align ::
                                                  JSRef HTMLTableCaptionElement -> JSString -> IO ()
webkit_dom_html_table_caption_element_set_align = undefined
#endif
 
htmlTableCaptionElementSetAlign ::
                                (HTMLTableCaptionElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmlTableCaptionElementSetAlign self val
  = webkit_dom_html_table_caption_element_set_align
      (unHTMLTableCaptionElement (toHTMLTableCaptionElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_table_caption_element_get_align ::
        JSRef HTMLTableCaptionElement -> IO JSString
#else 
webkit_dom_html_table_caption_element_get_align ::
                                                  JSRef HTMLTableCaptionElement -> IO JSString
webkit_dom_html_table_caption_element_get_align = undefined
#endif
 
htmlTableCaptionElementGetAlign ::
                                (HTMLTableCaptionElementClass self, FromJSString result) =>
                                  self -> IO result
htmlTableCaptionElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_table_caption_element_get_align
         (unHTMLTableCaptionElement (toHTMLTableCaptionElement self)))