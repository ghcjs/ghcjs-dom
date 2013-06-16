{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLFontElement
       (webkit_dom_html_font_element_set_color, htmlFontElementSetColor,
        webkit_dom_html_font_element_get_color, htmlFontElementGetColor,
        webkit_dom_html_font_element_set_face, htmlFontElementSetFace,
        webkit_dom_html_font_element_get_face, htmlFontElementGetFace,
        webkit_dom_html_font_element_set_size, htmlFontElementSetSize,
        webkit_dom_html_font_element_get_size, htmlFontElementGetSize)
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
foreign import javascript unsafe "$1[\"color\"] = $2;"
        webkit_dom_html_font_element_set_color ::
        JSRef HTMLFontElement -> JSString -> IO ()
#else 
webkit_dom_html_font_element_set_color ::
                                         JSRef HTMLFontElement -> JSString -> IO ()
webkit_dom_html_font_element_set_color = undefined
#endif
 
htmlFontElementSetColor ::
                        (HTMLFontElementClass self, ToJSString val) => self -> val -> IO ()
htmlFontElementSetColor self val
  = webkit_dom_html_font_element_set_color
      (unHTMLFontElement (toHTMLFontElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"color\"]"
        webkit_dom_html_font_element_get_color ::
        JSRef HTMLFontElement -> IO JSString
#else 
webkit_dom_html_font_element_get_color ::
                                         JSRef HTMLFontElement -> IO JSString
webkit_dom_html_font_element_get_color = undefined
#endif
 
htmlFontElementGetColor ::
                        (HTMLFontElementClass self, FromJSString result) =>
                          self -> IO result
htmlFontElementGetColor self
  = fromJSString <$>
      (webkit_dom_html_font_element_get_color
         (unHTMLFontElement (toHTMLFontElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"face\"] = $2;"
        webkit_dom_html_font_element_set_face ::
        JSRef HTMLFontElement -> JSString -> IO ()
#else 
webkit_dom_html_font_element_set_face ::
                                        JSRef HTMLFontElement -> JSString -> IO ()
webkit_dom_html_font_element_set_face = undefined
#endif
 
htmlFontElementSetFace ::
                       (HTMLFontElementClass self, ToJSString val) => self -> val -> IO ()
htmlFontElementSetFace self val
  = webkit_dom_html_font_element_set_face
      (unHTMLFontElement (toHTMLFontElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"face\"]"
        webkit_dom_html_font_element_get_face ::
        JSRef HTMLFontElement -> IO JSString
#else 
webkit_dom_html_font_element_get_face ::
                                        JSRef HTMLFontElement -> IO JSString
webkit_dom_html_font_element_get_face = undefined
#endif
 
htmlFontElementGetFace ::
                       (HTMLFontElementClass self, FromJSString result) =>
                         self -> IO result
htmlFontElementGetFace self
  = fromJSString <$>
      (webkit_dom_html_font_element_get_face
         (unHTMLFontElement (toHTMLFontElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        webkit_dom_html_font_element_set_size ::
        JSRef HTMLFontElement -> JSString -> IO ()
#else 
webkit_dom_html_font_element_set_size ::
                                        JSRef HTMLFontElement -> JSString -> IO ()
webkit_dom_html_font_element_set_size = undefined
#endif
 
htmlFontElementSetSize ::
                       (HTMLFontElementClass self, ToJSString val) => self -> val -> IO ()
htmlFontElementSetSize self val
  = webkit_dom_html_font_element_set_size
      (unHTMLFontElement (toHTMLFontElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"]"
        webkit_dom_html_font_element_get_size ::
        JSRef HTMLFontElement -> IO JSString
#else 
webkit_dom_html_font_element_get_size ::
                                        JSRef HTMLFontElement -> IO JSString
webkit_dom_html_font_element_get_size = undefined
#endif
 
htmlFontElementGetSize ::
                       (HTMLFontElementClass self, FromJSString result) =>
                         self -> IO result
htmlFontElementGetSize self
  = fromJSString <$>
      (webkit_dom_html_font_element_get_size
         (unHTMLFontElement (toHTMLFontElement self)))