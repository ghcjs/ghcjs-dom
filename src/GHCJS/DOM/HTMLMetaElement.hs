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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"content\"] = $2;"
        ghcjs_dom_html_meta_element_set_content ::
        JSRef HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.content Mozilla HTMLMetaElement.content documentation> 
htmlMetaElementSetContent ::
                          (IsHTMLMetaElement self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetContent self val
  = ghcjs_dom_html_meta_element_set_content
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"content\"]"
        ghcjs_dom_html_meta_element_get_content ::
        JSRef HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.content Mozilla HTMLMetaElement.content documentation> 
htmlMetaElementGetContent ::
                          (IsHTMLMetaElement self, FromJSString result) => self -> IO result
htmlMetaElementGetContent self
  = fromJSString <$>
      (ghcjs_dom_html_meta_element_get_content
         (unHTMLMetaElement (toHTMLMetaElement self)))
 
foreign import javascript unsafe "$1[\"httpEquiv\"] = $2;"
        ghcjs_dom_html_meta_element_set_http_equiv ::
        JSRef HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.httpEquiv Mozilla HTMLMetaElement.httpEquiv documentation> 
htmlMetaElementSetHttpEquiv ::
                            (IsHTMLMetaElement self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetHttpEquiv self val
  = ghcjs_dom_html_meta_element_set_http_equiv
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"httpEquiv\"]"
        ghcjs_dom_html_meta_element_get_http_equiv ::
        JSRef HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.httpEquiv Mozilla HTMLMetaElement.httpEquiv documentation> 
htmlMetaElementGetHttpEquiv ::
                            (IsHTMLMetaElement self, FromJSString result) => self -> IO result
htmlMetaElementGetHttpEquiv self
  = fromJSString <$>
      (ghcjs_dom_html_meta_element_get_http_equiv
         (unHTMLMetaElement (toHTMLMetaElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_meta_element_set_name ::
        JSRef HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.name Mozilla HTMLMetaElement.name documentation> 
htmlMetaElementSetName ::
                       (IsHTMLMetaElement self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetName self val
  = ghcjs_dom_html_meta_element_set_name
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_meta_element_get_name ::
        JSRef HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.name Mozilla HTMLMetaElement.name documentation> 
htmlMetaElementGetName ::
                       (IsHTMLMetaElement self, FromJSString result) => self -> IO result
htmlMetaElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_meta_element_get_name
         (unHTMLMetaElement (toHTMLMetaElement self)))
 
foreign import javascript unsafe "$1[\"scheme\"] = $2;"
        ghcjs_dom_html_meta_element_set_scheme ::
        JSRef HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.scheme Mozilla HTMLMetaElement.scheme documentation> 
htmlMetaElementSetScheme ::
                         (IsHTMLMetaElement self, ToJSString val) => self -> val -> IO ()
htmlMetaElementSetScheme self val
  = ghcjs_dom_html_meta_element_set_scheme
      (unHTMLMetaElement (toHTMLMetaElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"scheme\"]"
        ghcjs_dom_html_meta_element_get_scheme ::
        JSRef HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.scheme Mozilla HTMLMetaElement.scheme documentation> 
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
