{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLHtmlElement
       (webkit_dom_html_html_element_set_version,
        htmlHtmlElementSetVersion,
        webkit_dom_html_html_element_get_version,
        htmlHtmlElementGetVersion,
        webkit_dom_html_html_element_set_manifest,
        htmlHtmlElementSetManifest,
        webkit_dom_html_html_element_get_manifest,
        htmlHtmlElementGetManifest)
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
foreign import javascript unsafe "$1[\"version\"] = $2;"
        webkit_dom_html_html_element_set_version ::
        JSRef HTMLHtmlElement -> JSString -> IO ()
#else 
webkit_dom_html_html_element_set_version ::
                                           JSRef HTMLHtmlElement -> JSString -> IO ()
webkit_dom_html_html_element_set_version = undefined
#endif
 
htmlHtmlElementSetVersion ::
                          (HTMLHtmlElementClass self, ToJSString val) => self -> val -> IO ()
htmlHtmlElementSetVersion self val
  = webkit_dom_html_html_element_set_version
      (unHTMLHtmlElement (toHTMLHtmlElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"version\"]"
        webkit_dom_html_html_element_get_version ::
        JSRef HTMLHtmlElement -> IO JSString
#else 
webkit_dom_html_html_element_get_version ::
                                           JSRef HTMLHtmlElement -> IO JSString
webkit_dom_html_html_element_get_version = undefined
#endif
 
htmlHtmlElementGetVersion ::
                          (HTMLHtmlElementClass self, FromJSString result) =>
                            self -> IO result
htmlHtmlElementGetVersion self
  = fromJSString <$>
      (webkit_dom_html_html_element_get_version
         (unHTMLHtmlElement (toHTMLHtmlElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"manifest\"] = $2;"
        webkit_dom_html_html_element_set_manifest ::
        JSRef HTMLHtmlElement -> JSString -> IO ()
#else 
webkit_dom_html_html_element_set_manifest ::
                                            JSRef HTMLHtmlElement -> JSString -> IO ()
webkit_dom_html_html_element_set_manifest = undefined
#endif
 
htmlHtmlElementSetManifest ::
                           (HTMLHtmlElementClass self, ToJSString val) => self -> val -> IO ()
htmlHtmlElementSetManifest self val
  = webkit_dom_html_html_element_set_manifest
      (unHTMLHtmlElement (toHTMLHtmlElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"manifest\"]"
        webkit_dom_html_html_element_get_manifest ::
        JSRef HTMLHtmlElement -> IO JSString
#else 
webkit_dom_html_html_element_get_manifest ::
                                            JSRef HTMLHtmlElement -> IO JSString
webkit_dom_html_html_element_get_manifest = undefined
#endif
 
htmlHtmlElementGetManifest ::
                           (HTMLHtmlElementClass self, FromJSString result) =>
                             self -> IO result
htmlHtmlElementGetManifest self
  = fromJSString <$>
      (webkit_dom_html_html_element_get_manifest
         (unHTMLHtmlElement (toHTMLHtmlElement self)))