{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLLegendElement
       (webkit_dom_html_legend_element_get_form, htmlLegendElementGetForm,
        webkit_dom_html_legend_element_set_align,
        htmlLegendElementSetAlign,
        webkit_dom_html_legend_element_get_align,
        htmlLegendElementGetAlign)
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
        webkit_dom_html_legend_element_get_form ::
        JSRef HTMLLegendElement -> IO (JSRef HTMLFormElement)
#else 
webkit_dom_html_legend_element_get_form ::
                                          JSRef HTMLLegendElement -> IO (JSRef HTMLFormElement)
webkit_dom_html_legend_element_get_form = undefined
#endif
 
htmlLegendElementGetForm ::
                         (HTMLLegendElementClass self) => self -> IO (Maybe HTMLFormElement)
htmlLegendElementGetForm self
  = fmap HTMLFormElement . maybeJSNull <$>
      (webkit_dom_html_legend_element_get_form
         (unHTMLLegendElement (toHTMLLegendElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_legend_element_set_align ::
        JSRef HTMLLegendElement -> JSString -> IO ()
#else 
webkit_dom_html_legend_element_set_align ::
                                           JSRef HTMLLegendElement -> JSString -> IO ()
webkit_dom_html_legend_element_set_align = undefined
#endif
 
htmlLegendElementSetAlign ::
                          (HTMLLegendElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlLegendElementSetAlign self val
  = webkit_dom_html_legend_element_set_align
      (unHTMLLegendElement (toHTMLLegendElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_legend_element_get_align ::
        JSRef HTMLLegendElement -> IO JSString
#else 
webkit_dom_html_legend_element_get_align ::
                                           JSRef HTMLLegendElement -> IO JSString
webkit_dom_html_legend_element_get_align = undefined
#endif
 
htmlLegendElementGetAlign ::
                          (HTMLLegendElementClass self, FromJSString result) =>
                            self -> IO result
htmlLegendElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_legend_element_get_align
         (unHTMLLegendElement (toHTMLLegendElement self)))