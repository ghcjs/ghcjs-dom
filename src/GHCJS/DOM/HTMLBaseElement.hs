{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBaseElement
       (ghcjs_dom_html_base_element_set_href, htmlBaseElementSetHref,
        ghcjs_dom_html_base_element_get_href, htmlBaseElementGetHref,
        ghcjs_dom_html_base_element_set_target, htmlBaseElementSetTarget,
        ghcjs_dom_html_base_element_get_target, htmlBaseElementGetTarget,
        HTMLBaseElement, IsHTMLBaseElement, castToHTMLBaseElement,
        gTypeHTMLBaseElement, toHTMLBaseElement)
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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_base_element_set_href ::
        JSRef HTMLBaseElement -> JSString -> IO ()
#else 
ghcjs_dom_html_base_element_set_href ::
                                       JSRef HTMLBaseElement -> JSString -> IO ()
ghcjs_dom_html_base_element_set_href = undefined
#endif
 
htmlBaseElementSetHref ::
                       (IsHTMLBaseElement self, ToJSString val) => self -> val -> IO ()
htmlBaseElementSetHref self val
  = ghcjs_dom_html_base_element_set_href
      (unHTMLBaseElement (toHTMLBaseElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_base_element_get_href ::
        JSRef HTMLBaseElement -> IO JSString
#else 
ghcjs_dom_html_base_element_get_href ::
                                       JSRef HTMLBaseElement -> IO JSString
ghcjs_dom_html_base_element_get_href = undefined
#endif
 
htmlBaseElementGetHref ::
                       (IsHTMLBaseElement self, FromJSString result) => self -> IO result
htmlBaseElementGetHref self
  = fromJSString <$>
      (ghcjs_dom_html_base_element_get_href
         (unHTMLBaseElement (toHTMLBaseElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_base_element_set_target ::
        JSRef HTMLBaseElement -> JSString -> IO ()
#else 
ghcjs_dom_html_base_element_set_target ::
                                         JSRef HTMLBaseElement -> JSString -> IO ()
ghcjs_dom_html_base_element_set_target = undefined
#endif
 
htmlBaseElementSetTarget ::
                         (IsHTMLBaseElement self, ToJSString val) => self -> val -> IO ()
htmlBaseElementSetTarget self val
  = ghcjs_dom_html_base_element_set_target
      (unHTMLBaseElement (toHTMLBaseElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_base_element_get_target ::
        JSRef HTMLBaseElement -> IO JSString
#else 
ghcjs_dom_html_base_element_get_target ::
                                         JSRef HTMLBaseElement -> IO JSString
ghcjs_dom_html_base_element_get_target = undefined
#endif
 
htmlBaseElementGetTarget ::
                         (IsHTMLBaseElement self, FromJSString result) => self -> IO result
htmlBaseElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_base_element_get_target
         (unHTMLBaseElement (toHTMLBaseElement self)))
#else
module GHCJS.DOM.HTMLBaseElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBaseElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBaseElement
#endif
