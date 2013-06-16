{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLModElement
       (webkit_dom_html_mod_element_set_cite, htmlModElementSetCite,
        webkit_dom_html_mod_element_get_cite, htmlModElementGetCite,
        webkit_dom_html_mod_element_set_date_time,
        htmlModElementSetDateTime,
        webkit_dom_html_mod_element_get_date_time,
        htmlModElementGetDateTime)
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
        webkit_dom_html_mod_element_set_cite ::
        JSRef HTMLModElement -> JSString -> IO ()
#else 
webkit_dom_html_mod_element_set_cite ::
                                       JSRef HTMLModElement -> JSString -> IO ()
webkit_dom_html_mod_element_set_cite = undefined
#endif
 
htmlModElementSetCite ::
                      (HTMLModElementClass self, ToJSString val) => self -> val -> IO ()
htmlModElementSetCite self val
  = webkit_dom_html_mod_element_set_cite
      (unHTMLModElement (toHTMLModElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cite\"]"
        webkit_dom_html_mod_element_get_cite ::
        JSRef HTMLModElement -> IO JSString
#else 
webkit_dom_html_mod_element_get_cite ::
                                       JSRef HTMLModElement -> IO JSString
webkit_dom_html_mod_element_get_cite = undefined
#endif
 
htmlModElementGetCite ::
                      (HTMLModElementClass self, FromJSString result) =>
                        self -> IO result
htmlModElementGetCite self
  = fromJSString <$>
      (webkit_dom_html_mod_element_get_cite
         (unHTMLModElement (toHTMLModElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dateTime\"] = $2;"
        webkit_dom_html_mod_element_set_date_time ::
        JSRef HTMLModElement -> JSString -> IO ()
#else 
webkit_dom_html_mod_element_set_date_time ::
                                            JSRef HTMLModElement -> JSString -> IO ()
webkit_dom_html_mod_element_set_date_time = undefined
#endif
 
htmlModElementSetDateTime ::
                          (HTMLModElementClass self, ToJSString val) => self -> val -> IO ()
htmlModElementSetDateTime self val
  = webkit_dom_html_mod_element_set_date_time
      (unHTMLModElement (toHTMLModElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dateTime\"]"
        webkit_dom_html_mod_element_get_date_time ::
        JSRef HTMLModElement -> IO JSString
#else 
webkit_dom_html_mod_element_get_date_time ::
                                            JSRef HTMLModElement -> IO JSString
webkit_dom_html_mod_element_get_date_time = undefined
#endif
 
htmlModElementGetDateTime ::
                          (HTMLModElementClass self, FromJSString result) =>
                            self -> IO result
htmlModElementGetDateTime self
  = fromJSString <$>
      (webkit_dom_html_mod_element_get_date_time
         (unHTMLModElement (toHTMLModElement self)))