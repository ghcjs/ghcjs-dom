{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLMetaElement
       (webkit_dom_html_meta_element_set_content,
        htmlMetaElementSetContent,
        webkit_dom_html_meta_element_get_content,
        htmlMetaElementGetContent,
        webkit_dom_html_meta_element_set_http_equiv,
        htmlMetaElementSetHttpEquiv,
        webkit_dom_html_meta_element_get_http_equiv,
        htmlMetaElementGetHttpEquiv, webkit_dom_html_meta_element_set_name,
        htmlMetaElementSetName, webkit_dom_html_meta_element_get_name,
        htmlMetaElementGetName, webkit_dom_html_meta_element_set_scheme,
        htmlMetaElementSetScheme, webkit_dom_html_meta_element_get_scheme,
        htmlMetaElementGetScheme)
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
foreign import javascript unsafe "$1[\"content\"] = $2;"
        webkit_dom_html_meta_element_set_content ::
        JSRef HTMLMetaElement -> JSString -> IO ()
#else 
webkit_dom_html_meta_element_set_content ::
                                           JSRef HTMLMetaElement -> JSString -> IO ()
webkit_dom_html_meta_element_set_content = undefined
#endif
 
htmlMetaElementSetContent ::
                          (HTMLMetaElementClass self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetContent self val
  = webkit_dom_html_meta_element_set_content
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"content\"]"
        webkit_dom_html_meta_element_get_content ::
        JSRef HTMLMetaElement -> IO JSString
#else 
webkit_dom_html_meta_element_get_content ::
                                           JSRef HTMLMetaElement -> IO JSString
webkit_dom_html_meta_element_get_content = undefined
#endif
 
htmlMetaElementGetContent ::
                          (HTMLMetaElementClass self, FromJSString result) =>
                            self -> IO result
htmlMetaElementGetContent self
  = fromJSString <$>
      (webkit_dom_html_meta_element_get_content
         (unHTMLMetaElement (toHTMLMetaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"httpEquiv\"] = $2;"
        webkit_dom_html_meta_element_set_http_equiv ::
        JSRef HTMLMetaElement -> JSString -> IO ()
#else 
webkit_dom_html_meta_element_set_http_equiv ::
                                              JSRef HTMLMetaElement -> JSString -> IO ()
webkit_dom_html_meta_element_set_http_equiv = undefined
#endif
 
htmlMetaElementSetHttpEquiv ::
                            (HTMLMetaElementClass self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetHttpEquiv self val
  = webkit_dom_html_meta_element_set_http_equiv
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"httpEquiv\"]"
        webkit_dom_html_meta_element_get_http_equiv ::
        JSRef HTMLMetaElement -> IO JSString
#else 
webkit_dom_html_meta_element_get_http_equiv ::
                                              JSRef HTMLMetaElement -> IO JSString
webkit_dom_html_meta_element_get_http_equiv = undefined
#endif
 
htmlMetaElementGetHttpEquiv ::
                            (HTMLMetaElementClass self, FromJSString result) =>
                              self -> IO result
htmlMetaElementGetHttpEquiv self
  = fromJSString <$>
      (webkit_dom_html_meta_element_get_http_equiv
         (unHTMLMetaElement (toHTMLMetaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_meta_element_set_name ::
        JSRef HTMLMetaElement -> JSString -> IO ()
#else 
webkit_dom_html_meta_element_set_name ::
                                        JSRef HTMLMetaElement -> JSString -> IO ()
webkit_dom_html_meta_element_set_name = undefined
#endif
 
htmlMetaElementSetName ::
                       (HTMLMetaElementClass self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetName self val
  = webkit_dom_html_meta_element_set_name
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_meta_element_get_name ::
        JSRef HTMLMetaElement -> IO JSString
#else 
webkit_dom_html_meta_element_get_name ::
                                        JSRef HTMLMetaElement -> IO JSString
webkit_dom_html_meta_element_get_name = undefined
#endif
 
htmlMetaElementGetName ::
                       (HTMLMetaElementClass self, FromJSString result) =>
                         self -> IO result
htmlMetaElementGetName self
  = fromJSString <$>
      (webkit_dom_html_meta_element_get_name
         (unHTMLMetaElement (toHTMLMetaElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scheme\"] = $2;"
        webkit_dom_html_meta_element_set_scheme ::
        JSRef HTMLMetaElement -> JSString -> IO ()
#else 
webkit_dom_html_meta_element_set_scheme ::
                                          JSRef HTMLMetaElement -> JSString -> IO ()
webkit_dom_html_meta_element_set_scheme = undefined
#endif
 
htmlMetaElementSetScheme ::
                         (HTMLMetaElementClass self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetScheme self val
  = webkit_dom_html_meta_element_set_scheme
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scheme\"]"
        webkit_dom_html_meta_element_get_scheme ::
        JSRef HTMLMetaElement -> IO JSString
#else 
webkit_dom_html_meta_element_get_scheme ::
                                          JSRef HTMLMetaElement -> IO JSString
webkit_dom_html_meta_element_get_scheme = undefined
#endif
 
htmlMetaElementGetScheme ::
                         (HTMLMetaElementClass self, FromJSString result) =>
                           self -> IO result
htmlMetaElementGetScheme self
  = fromJSString <$>
      (webkit_dom_html_meta_element_get_scheme
         (unHTMLMetaElement (toHTMLMetaElement self)))