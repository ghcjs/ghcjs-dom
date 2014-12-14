{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
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
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"cite\"] = $2;"
        ghcjs_dom_html_mod_element_set_cite ::
        JSRef HTMLModElement -> JSString -> IO ()
 
htmlModElementSetCite ::
                      (IsHTMLModElement self, ToJSString val) => self -> val -> IO ()
htmlModElementSetCite self val
  = ghcjs_dom_html_mod_element_set_cite
      (unHTMLModElement (toHTMLModElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cite\"]"
        ghcjs_dom_html_mod_element_get_cite ::
        JSRef HTMLModElement -> IO JSString
 
htmlModElementGetCite ::
                      (IsHTMLModElement self, FromJSString result) => self -> IO result
htmlModElementGetCite self
  = fromJSString <$>
      (ghcjs_dom_html_mod_element_get_cite
         (unHTMLModElement (toHTMLModElement self)))
 
foreign import javascript unsafe "$1[\"dateTime\"] = $2;"
        ghcjs_dom_html_mod_element_set_date_time ::
        JSRef HTMLModElement -> JSString -> IO ()
 
htmlModElementSetDateTime ::
                          (IsHTMLModElement self, ToJSString val) => self -> val -> IO ()
htmlModElementSetDateTime self val
  = ghcjs_dom_html_mod_element_set_date_time
      (unHTMLModElement (toHTMLModElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"dateTime\"]"
        ghcjs_dom_html_mod_element_get_date_time ::
        JSRef HTMLModElement -> IO JSString
 
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
