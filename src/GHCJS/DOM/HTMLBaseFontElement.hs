{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLBaseFontElement
       (webkit_dom_html_base_font_element_set_color,
        htmlBaseFontElementSetColor,
        webkit_dom_html_base_font_element_get_color,
        htmlBaseFontElementGetColor,
        webkit_dom_html_base_font_element_set_face,
        htmlBaseFontElementSetFace,
        webkit_dom_html_base_font_element_get_face,
        htmlBaseFontElementGetFace,
        webkit_dom_html_base_font_element_set_size,
        htmlBaseFontElementSetSize,
        webkit_dom_html_base_font_element_get_size,
        htmlBaseFontElementGetSize)
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
        webkit_dom_html_base_font_element_set_color ::
        JSRef HTMLBaseFontElement -> JSString -> IO ()
#else 
webkit_dom_html_base_font_element_set_color ::
                                              JSRef HTMLBaseFontElement -> JSString -> IO ()
webkit_dom_html_base_font_element_set_color = undefined
#endif
 
htmlBaseFontElementSetColor ::
                            (HTMLBaseFontElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlBaseFontElementSetColor self val
  = webkit_dom_html_base_font_element_set_color
      (unHTMLBaseFontElement (toHTMLBaseFontElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"color\"]"
        webkit_dom_html_base_font_element_get_color ::
        JSRef HTMLBaseFontElement -> IO JSString
#else 
webkit_dom_html_base_font_element_get_color ::
                                              JSRef HTMLBaseFontElement -> IO JSString
webkit_dom_html_base_font_element_get_color = undefined
#endif
 
htmlBaseFontElementGetColor ::
                            (HTMLBaseFontElementClass self, FromJSString result) =>
                              self -> IO result
htmlBaseFontElementGetColor self
  = fromJSString <$>
      (webkit_dom_html_base_font_element_get_color
         (unHTMLBaseFontElement (toHTMLBaseFontElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"face\"] = $2;"
        webkit_dom_html_base_font_element_set_face ::
        JSRef HTMLBaseFontElement -> JSString -> IO ()
#else 
webkit_dom_html_base_font_element_set_face ::
                                             JSRef HTMLBaseFontElement -> JSString -> IO ()
webkit_dom_html_base_font_element_set_face = undefined
#endif
 
htmlBaseFontElementSetFace ::
                           (HTMLBaseFontElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlBaseFontElementSetFace self val
  = webkit_dom_html_base_font_element_set_face
      (unHTMLBaseFontElement (toHTMLBaseFontElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"face\"]"
        webkit_dom_html_base_font_element_get_face ::
        JSRef HTMLBaseFontElement -> IO JSString
#else 
webkit_dom_html_base_font_element_get_face ::
                                             JSRef HTMLBaseFontElement -> IO JSString
webkit_dom_html_base_font_element_get_face = undefined
#endif
 
htmlBaseFontElementGetFace ::
                           (HTMLBaseFontElementClass self, FromJSString result) =>
                             self -> IO result
htmlBaseFontElementGetFace self
  = fromJSString <$>
      (webkit_dom_html_base_font_element_get_face
         (unHTMLBaseFontElement (toHTMLBaseFontElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        webkit_dom_html_base_font_element_set_size ::
        JSRef HTMLBaseFontElement -> Int -> IO ()
#else 
webkit_dom_html_base_font_element_set_size ::
                                             JSRef HTMLBaseFontElement -> Int -> IO ()
webkit_dom_html_base_font_element_set_size = undefined
#endif
 
htmlBaseFontElementSetSize ::
                           (HTMLBaseFontElementClass self) => self -> Int -> IO ()
htmlBaseFontElementSetSize self val
  = webkit_dom_html_base_font_element_set_size
      (unHTMLBaseFontElement (toHTMLBaseFontElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"]"
        webkit_dom_html_base_font_element_get_size ::
        JSRef HTMLBaseFontElement -> IO Int
#else 
webkit_dom_html_base_font_element_get_size ::
                                             JSRef HTMLBaseFontElement -> IO Int
webkit_dom_html_base_font_element_get_size = undefined
#endif
 
htmlBaseFontElementGetSize ::
                           (HTMLBaseFontElementClass self) => self -> IO Int
htmlBaseFontElementGetSize self
  = webkit_dom_html_base_font_element_get_size
      (unHTMLBaseFontElement (toHTMLBaseFontElement self))