{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLStyleElement
       (webkit_dom_html_style_element_set_disabled,
        htmlStyleElementSetDisabled,
        webkit_dom_html_style_element_get_disabled,
        htmlStyleElementGetDisabled,
        webkit_dom_html_style_element_set_scoped,
        htmlStyleElementSetScoped,
        webkit_dom_html_style_element_get_scoped,
        htmlStyleElementGetScoped, webkit_dom_html_style_element_set_media,
        htmlStyleElementSetMedia, webkit_dom_html_style_element_get_media,
        htmlStyleElementGetMedia, webkit_dom_html_style_element_get_sheet,
        htmlStyleElementGetSheet)
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
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        webkit_dom_html_style_element_set_disabled ::
        JSRef HTMLStyleElement -> JSBool -> IO ()
#else 
webkit_dom_html_style_element_set_disabled ::
                                             JSRef HTMLStyleElement -> JSBool -> IO ()
webkit_dom_html_style_element_set_disabled = undefined
#endif
 
htmlStyleElementSetDisabled ::
                            (HTMLStyleElementClass self) => self -> Bool -> IO ()
htmlStyleElementSetDisabled self val
  = webkit_dom_html_style_element_set_disabled
      (unHTMLStyleElement (toHTMLStyleElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        webkit_dom_html_style_element_get_disabled ::
        JSRef HTMLStyleElement -> IO JSBool
#else 
webkit_dom_html_style_element_get_disabled ::
                                             JSRef HTMLStyleElement -> IO JSBool
webkit_dom_html_style_element_get_disabled = undefined
#endif
 
htmlStyleElementGetDisabled ::
                            (HTMLStyleElementClass self) => self -> IO Bool
htmlStyleElementGetDisabled self
  = fromJSBool <$>
      (webkit_dom_html_style_element_get_disabled
         (unHTMLStyleElement (toHTMLStyleElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scoped\"] = $2;"
        webkit_dom_html_style_element_set_scoped ::
        JSRef HTMLStyleElement -> JSBool -> IO ()
#else 
webkit_dom_html_style_element_set_scoped ::
                                           JSRef HTMLStyleElement -> JSBool -> IO ()
webkit_dom_html_style_element_set_scoped = undefined
#endif
 
htmlStyleElementSetScoped ::
                          (HTMLStyleElementClass self) => self -> Bool -> IO ()
htmlStyleElementSetScoped self val
  = webkit_dom_html_style_element_set_scoped
      (unHTMLStyleElement (toHTMLStyleElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"scoped\"] ? 1 : 0)"
        webkit_dom_html_style_element_get_scoped ::
        JSRef HTMLStyleElement -> IO JSBool
#else 
webkit_dom_html_style_element_get_scoped ::
                                           JSRef HTMLStyleElement -> IO JSBool
webkit_dom_html_style_element_get_scoped = undefined
#endif
 
htmlStyleElementGetScoped ::
                          (HTMLStyleElementClass self) => self -> IO Bool
htmlStyleElementGetScoped self
  = fromJSBool <$>
      (webkit_dom_html_style_element_get_scoped
         (unHTMLStyleElement (toHTMLStyleElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        webkit_dom_html_style_element_set_media ::
        JSRef HTMLStyleElement -> JSString -> IO ()
#else 
webkit_dom_html_style_element_set_media ::
                                          JSRef HTMLStyleElement -> JSString -> IO ()
webkit_dom_html_style_element_set_media = undefined
#endif
 
htmlStyleElementSetMedia ::
                         (HTMLStyleElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlStyleElementSetMedia self val
  = webkit_dom_html_style_element_set_media
      (unHTMLStyleElement (toHTMLStyleElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"media\"]"
        webkit_dom_html_style_element_get_media ::
        JSRef HTMLStyleElement -> IO JSString
#else 
webkit_dom_html_style_element_get_media ::
                                          JSRef HTMLStyleElement -> IO JSString
webkit_dom_html_style_element_get_media = undefined
#endif
 
htmlStyleElementGetMedia ::
                         (HTMLStyleElementClass self, FromJSString result) =>
                           self -> IO result
htmlStyleElementGetMedia self
  = fromJSString <$>
      (webkit_dom_html_style_element_get_media
         (unHTMLStyleElement (toHTMLStyleElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sheet\"]"
        webkit_dom_html_style_element_get_sheet ::
        JSRef HTMLStyleElement -> IO (JSRef StyleSheet)
#else 
webkit_dom_html_style_element_get_sheet ::
                                          JSRef HTMLStyleElement -> IO (JSRef StyleSheet)
webkit_dom_html_style_element_get_sheet = undefined
#endif
 
htmlStyleElementGetSheet ::
                         (HTMLStyleElementClass self) => self -> IO (Maybe StyleSheet)
htmlStyleElementGetSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (webkit_dom_html_style_element_get_sheet
         (unHTMLStyleElement (toHTMLStyleElement self)))