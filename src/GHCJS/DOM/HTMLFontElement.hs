{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLFontElement
       (ghcjs_dom_html_font_element_set_color, htmlFontElementSetColor,
        ghcjs_dom_html_font_element_get_color, htmlFontElementGetColor,
        ghcjs_dom_html_font_element_set_face, htmlFontElementSetFace,
        ghcjs_dom_html_font_element_get_face, htmlFontElementGetFace,
        ghcjs_dom_html_font_element_set_size, htmlFontElementSetSize,
        ghcjs_dom_html_font_element_get_size, htmlFontElementGetSize)
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
        ghcjs_dom_html_font_element_set_color ::
        JSRef HTMLFontElement -> JSString -> IO ()
#else 
ghcjs_dom_html_font_element_set_color ::
                                        JSRef HTMLFontElement -> JSString -> IO ()
ghcjs_dom_html_font_element_set_color = undefined
#endif
 
htmlFontElementSetColor ::
                        (IsHTMLFontElement self, ToJSString val) => self -> val -> IO ()
htmlFontElementSetColor self val
  = ghcjs_dom_html_font_element_set_color
      (unHTMLFontElement (toHTMLFontElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"color\"]"
        ghcjs_dom_html_font_element_get_color ::
        JSRef HTMLFontElement -> IO JSString
#else 
ghcjs_dom_html_font_element_get_color ::
                                        JSRef HTMLFontElement -> IO JSString
ghcjs_dom_html_font_element_get_color = undefined
#endif
 
htmlFontElementGetColor ::
                        (IsHTMLFontElement self, FromJSString result) => self -> IO result
htmlFontElementGetColor self
  = fromJSString <$>
      (ghcjs_dom_html_font_element_get_color
         (unHTMLFontElement (toHTMLFontElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"face\"] = $2;"
        ghcjs_dom_html_font_element_set_face ::
        JSRef HTMLFontElement -> JSString -> IO ()
#else 
ghcjs_dom_html_font_element_set_face ::
                                       JSRef HTMLFontElement -> JSString -> IO ()
ghcjs_dom_html_font_element_set_face = undefined
#endif
 
htmlFontElementSetFace ::
                       (IsHTMLFontElement self, ToJSString val) => self -> val -> IO ()
htmlFontElementSetFace self val
  = ghcjs_dom_html_font_element_set_face
      (unHTMLFontElement (toHTMLFontElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"face\"]"
        ghcjs_dom_html_font_element_get_face ::
        JSRef HTMLFontElement -> IO JSString
#else 
ghcjs_dom_html_font_element_get_face ::
                                       JSRef HTMLFontElement -> IO JSString
ghcjs_dom_html_font_element_get_face = undefined
#endif
 
htmlFontElementGetFace ::
                       (IsHTMLFontElement self, FromJSString result) => self -> IO result
htmlFontElementGetFace self
  = fromJSString <$>
      (ghcjs_dom_html_font_element_get_face
         (unHTMLFontElement (toHTMLFontElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_html_font_element_set_size ::
        JSRef HTMLFontElement -> JSString -> IO ()
#else 
ghcjs_dom_html_font_element_set_size ::
                                       JSRef HTMLFontElement -> JSString -> IO ()
ghcjs_dom_html_font_element_set_size = undefined
#endif
 
htmlFontElementSetSize ::
                       (IsHTMLFontElement self, ToJSString val) => self -> val -> IO ()
htmlFontElementSetSize self val
  = ghcjs_dom_html_font_element_set_size
      (unHTMLFontElement (toHTMLFontElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_html_font_element_get_size ::
        JSRef HTMLFontElement -> IO JSString
#else 
ghcjs_dom_html_font_element_get_size ::
                                       JSRef HTMLFontElement -> IO JSString
ghcjs_dom_html_font_element_get_size = undefined
#endif
 
htmlFontElementGetSize ::
                       (IsHTMLFontElement self, FromJSString result) => self -> IO result
htmlFontElementGetSize self
  = fromJSString <$>
      (ghcjs_dom_html_font_element_get_size
         (unHTMLFontElement (toHTMLFontElement self)))