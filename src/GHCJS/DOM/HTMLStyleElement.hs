{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLStyleElement
       (ghcjs_dom_html_style_element_set_disabled,
        htmlStyleElementSetDisabled,
        ghcjs_dom_html_style_element_get_disabled,
        htmlStyleElementGetDisabled,
        ghcjs_dom_html_style_element_set_scoped, htmlStyleElementSetScoped,
        ghcjs_dom_html_style_element_get_scoped, htmlStyleElementGetScoped,
        ghcjs_dom_html_style_element_set_media, htmlStyleElementSetMedia,
        ghcjs_dom_html_style_element_get_media, htmlStyleElementGetMedia,
        ghcjs_dom_html_style_element_get_sheet, htmlStyleElementGetSheet,
        HTMLStyleElement, IsHTMLStyleElement, castToHTMLStyleElement,
        gTypeHTMLStyleElement, toHTMLStyleElement)
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
        ghcjs_dom_html_style_element_set_disabled ::
        JSRef HTMLStyleElement -> Bool -> IO ()
#else 
ghcjs_dom_html_style_element_set_disabled ::
                                            JSRef HTMLStyleElement -> Bool -> IO ()
ghcjs_dom_html_style_element_set_disabled = undefined
#endif
 
htmlStyleElementSetDisabled ::
                            (IsHTMLStyleElement self) => self -> Bool -> IO ()
htmlStyleElementSetDisabled self val
  = ghcjs_dom_html_style_element_set_disabled
      (unHTMLStyleElement (toHTMLStyleElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_style_element_get_disabled ::
        JSRef HTMLStyleElement -> IO Bool
#else 
ghcjs_dom_html_style_element_get_disabled ::
                                            JSRef HTMLStyleElement -> IO Bool
ghcjs_dom_html_style_element_get_disabled = undefined
#endif
 
htmlStyleElementGetDisabled ::
                            (IsHTMLStyleElement self) => self -> IO Bool
htmlStyleElementGetDisabled self
  = ghcjs_dom_html_style_element_get_disabled
      (unHTMLStyleElement (toHTMLStyleElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scoped\"] = $2;"
        ghcjs_dom_html_style_element_set_scoped ::
        JSRef HTMLStyleElement -> Bool -> IO ()
#else 
ghcjs_dom_html_style_element_set_scoped ::
                                          JSRef HTMLStyleElement -> Bool -> IO ()
ghcjs_dom_html_style_element_set_scoped = undefined
#endif
 
htmlStyleElementSetScoped ::
                          (IsHTMLStyleElement self) => self -> Bool -> IO ()
htmlStyleElementSetScoped self val
  = ghcjs_dom_html_style_element_set_scoped
      (unHTMLStyleElement (toHTMLStyleElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"scoped\"] ? 1 : 0)"
        ghcjs_dom_html_style_element_get_scoped ::
        JSRef HTMLStyleElement -> IO Bool
#else 
ghcjs_dom_html_style_element_get_scoped ::
                                          JSRef HTMLStyleElement -> IO Bool
ghcjs_dom_html_style_element_get_scoped = undefined
#endif
 
htmlStyleElementGetScoped ::
                          (IsHTMLStyleElement self) => self -> IO Bool
htmlStyleElementGetScoped self
  = ghcjs_dom_html_style_element_get_scoped
      (unHTMLStyleElement (toHTMLStyleElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        ghcjs_dom_html_style_element_set_media ::
        JSRef HTMLStyleElement -> JSString -> IO ()
#else 
ghcjs_dom_html_style_element_set_media ::
                                         JSRef HTMLStyleElement -> JSString -> IO ()
ghcjs_dom_html_style_element_set_media = undefined
#endif
 
htmlStyleElementSetMedia ::
                         (IsHTMLStyleElement self, ToJSString val) => self -> val -> IO ()
htmlStyleElementSetMedia self val
  = ghcjs_dom_html_style_element_set_media
      (unHTMLStyleElement (toHTMLStyleElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_html_style_element_get_media ::
        JSRef HTMLStyleElement -> IO JSString
#else 
ghcjs_dom_html_style_element_get_media ::
                                         JSRef HTMLStyleElement -> IO JSString
ghcjs_dom_html_style_element_get_media = undefined
#endif
 
htmlStyleElementGetMedia ::
                         (IsHTMLStyleElement self, FromJSString result) => self -> IO result
htmlStyleElementGetMedia self
  = fromJSString <$>
      (ghcjs_dom_html_style_element_get_media
         (unHTMLStyleElement (toHTMLStyleElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sheet\"]"
        ghcjs_dom_html_style_element_get_sheet ::
        JSRef HTMLStyleElement -> IO (JSRef StyleSheet)
#else 
ghcjs_dom_html_style_element_get_sheet ::
                                         JSRef HTMLStyleElement -> IO (JSRef StyleSheet)
ghcjs_dom_html_style_element_get_sheet = undefined
#endif
 
htmlStyleElementGetSheet ::
                         (IsHTMLStyleElement self) => self -> IO (Maybe StyleSheet)
htmlStyleElementGetSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (ghcjs_dom_html_style_element_get_sheet
         (unHTMLStyleElement (toHTMLStyleElement self)))
#else
module GHCJS.DOM.HTMLStyleElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
#endif
