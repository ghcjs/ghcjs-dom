{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLModElement
       (ghcjs_dom_html_mod_element_set_cite, htmlModElementSetCite,
        ghcjs_dom_html_mod_element_get_cite, htmlModElementGetCite,
        ghcjs_dom_html_mod_element_set_date_time,
        htmlModElementSetDateTime,
        ghcjs_dom_html_mod_element_get_date_time,
        htmlModElementGetDateTime, HTMLModElement, IsHTMLModElement,
        castToHTMLModElement, gTypeHTMLModElement, toHTMLModElement)
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
foreign import javascript unsafe "$1[\"cite\"] = $2;"
        ghcjs_dom_html_mod_element_set_cite ::
        JSRef HTMLModElement -> JSString -> IO ()
#else 
ghcjs_dom_html_mod_element_set_cite ::
                                      JSRef HTMLModElement -> JSString -> IO ()
ghcjs_dom_html_mod_element_set_cite = undefined
#endif
 
htmlModElementSetCite ::
                      (IsHTMLModElement self, ToJSString val) => self -> val -> IO ()
htmlModElementSetCite self val
  = ghcjs_dom_html_mod_element_set_cite
      (unHTMLModElement (toHTMLModElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cite\"]"
        ghcjs_dom_html_mod_element_get_cite ::
        JSRef HTMLModElement -> IO JSString
#else 
ghcjs_dom_html_mod_element_get_cite ::
                                      JSRef HTMLModElement -> IO JSString
ghcjs_dom_html_mod_element_get_cite = undefined
#endif
 
htmlModElementGetCite ::
                      (IsHTMLModElement self, FromJSString result) => self -> IO result
htmlModElementGetCite self
  = fromJSString <$>
      (ghcjs_dom_html_mod_element_get_cite
         (unHTMLModElement (toHTMLModElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dateTime\"] = $2;"
        ghcjs_dom_html_mod_element_set_date_time ::
        JSRef HTMLModElement -> JSString -> IO ()
#else 
ghcjs_dom_html_mod_element_set_date_time ::
                                           JSRef HTMLModElement -> JSString -> IO ()
ghcjs_dom_html_mod_element_set_date_time = undefined
#endif
 
htmlModElementSetDateTime ::
                          (IsHTMLModElement self, ToJSString val) => self -> val -> IO ()
htmlModElementSetDateTime self val
  = ghcjs_dom_html_mod_element_set_date_time
      (unHTMLModElement (toHTMLModElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dateTime\"]"
        ghcjs_dom_html_mod_element_get_date_time ::
        JSRef HTMLModElement -> IO JSString
#else 
ghcjs_dom_html_mod_element_get_date_time ::
                                           JSRef HTMLModElement -> IO JSString
ghcjs_dom_html_mod_element_get_date_time = undefined
#endif
 
htmlModElementGetDateTime ::
                          (IsHTMLModElement self, FromJSString result) => self -> IO result
htmlModElementGetDateTime self
  = fromJSString <$>
      (ghcjs_dom_html_mod_element_get_date_time
         (unHTMLModElement (toHTMLModElement self)))
#else
module GHCJS.DOM.HTMLModElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLModElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLModElement
#endif
