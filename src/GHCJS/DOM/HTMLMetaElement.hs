{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMetaElement
       (ghcjs_dom_html_meta_element_set_content,
        htmlMetaElementSetContent, ghcjs_dom_html_meta_element_get_content,
        htmlMetaElementGetContent,
        ghcjs_dom_html_meta_element_set_http_equiv,
        htmlMetaElementSetHttpEquiv,
        ghcjs_dom_html_meta_element_get_http_equiv,
        htmlMetaElementGetHttpEquiv, ghcjs_dom_html_meta_element_set_name,
        htmlMetaElementSetName, ghcjs_dom_html_meta_element_get_name,
        htmlMetaElementGetName, ghcjs_dom_html_meta_element_set_scheme,
        htmlMetaElementSetScheme, ghcjs_dom_html_meta_element_get_scheme,
        htmlMetaElementGetScheme, HTMLMetaElement, IsHTMLMetaElement,
        castToHTMLMetaElement, gTypeHTMLMetaElement, toHTMLMetaElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"content\"] = $2;"
        ghcjs_dom_html_meta_element_set_content ::
        JSRef HTMLMetaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_meta_element_set_content ::
                                          JSRef HTMLMetaElement -> JSString -> IO ()
ghcjs_dom_html_meta_element_set_content = undefined
#endif
 
htmlMetaElementSetContent ::
                          (IsHTMLMetaElement self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetContent self val
  = ghcjs_dom_html_meta_element_set_content
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"content\"]"
        ghcjs_dom_html_meta_element_get_content ::
        JSRef HTMLMetaElement -> IO JSString
#else 
ghcjs_dom_html_meta_element_get_content ::
                                          JSRef HTMLMetaElement -> IO JSString
ghcjs_dom_html_meta_element_get_content = undefined
#endif
 
htmlMetaElementGetContent ::
                          (IsHTMLMetaElement self, FromJSString result) => self -> IO result
htmlMetaElementGetContent self
  = fromJSString <$>
      (ghcjs_dom_html_meta_element_get_content
         (unHTMLMetaElement (toHTMLMetaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"httpEquiv\"] = $2;"
        ghcjs_dom_html_meta_element_set_http_equiv ::
        JSRef HTMLMetaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_meta_element_set_http_equiv ::
                                             JSRef HTMLMetaElement -> JSString -> IO ()
ghcjs_dom_html_meta_element_set_http_equiv = undefined
#endif
 
htmlMetaElementSetHttpEquiv ::
                            (IsHTMLMetaElement self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetHttpEquiv self val
  = ghcjs_dom_html_meta_element_set_http_equiv
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"httpEquiv\"]"
        ghcjs_dom_html_meta_element_get_http_equiv ::
        JSRef HTMLMetaElement -> IO JSString
#else 
ghcjs_dom_html_meta_element_get_http_equiv ::
                                             JSRef HTMLMetaElement -> IO JSString
ghcjs_dom_html_meta_element_get_http_equiv = undefined
#endif
 
htmlMetaElementGetHttpEquiv ::
                            (IsHTMLMetaElement self, FromJSString result) => self -> IO result
htmlMetaElementGetHttpEquiv self
  = fromJSString <$>
      (ghcjs_dom_html_meta_element_get_http_equiv
         (unHTMLMetaElement (toHTMLMetaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_meta_element_set_name ::
        JSRef HTMLMetaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_meta_element_set_name ::
                                       JSRef HTMLMetaElement -> JSString -> IO ()
ghcjs_dom_html_meta_element_set_name = undefined
#endif
 
htmlMetaElementSetName ::
                       (IsHTMLMetaElement self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetName self val
  = ghcjs_dom_html_meta_element_set_name
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_meta_element_get_name ::
        JSRef HTMLMetaElement -> IO JSString
#else 
ghcjs_dom_html_meta_element_get_name ::
                                       JSRef HTMLMetaElement -> IO JSString
ghcjs_dom_html_meta_element_get_name = undefined
#endif
 
htmlMetaElementGetName ::
                       (IsHTMLMetaElement self, FromJSString result) => self -> IO result
htmlMetaElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_meta_element_get_name
         (unHTMLMetaElement (toHTMLMetaElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scheme\"] = $2;"
        ghcjs_dom_html_meta_element_set_scheme ::
        JSRef HTMLMetaElement -> JSString -> IO ()
#else 
ghcjs_dom_html_meta_element_set_scheme ::
                                         JSRef HTMLMetaElement -> JSString -> IO ()
ghcjs_dom_html_meta_element_set_scheme = undefined
#endif
 
htmlMetaElementSetScheme ::
                         (IsHTMLMetaElement self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetScheme self val
  = ghcjs_dom_html_meta_element_set_scheme
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scheme\"]"
        ghcjs_dom_html_meta_element_get_scheme ::
        JSRef HTMLMetaElement -> IO JSString
#else 
ghcjs_dom_html_meta_element_get_scheme ::
                                         JSRef HTMLMetaElement -> IO JSString
ghcjs_dom_html_meta_element_get_scheme = undefined
#endif
 
htmlMetaElementGetScheme ::
                         (IsHTMLMetaElement self, FromJSString result) => self -> IO result
htmlMetaElementGetScheme self
  = fromJSString <$>
      (ghcjs_dom_html_meta_element_get_scheme
         (unHTMLMetaElement (toHTMLMetaElement self)))
#else
module GHCJS.DOM.HTMLMetaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMetaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMetaElement
#endif
