{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLBaseElement
       (webkit_dom_html_base_element_set_href, htmlBaseElementSetHref,
        webkit_dom_html_base_element_get_href, htmlBaseElementGetHref,
        webkit_dom_html_base_element_set_target, htmlBaseElementSetTarget,
        webkit_dom_html_base_element_get_target, htmlBaseElementGetTarget)
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
foreign import javascript unsafe "$1[\"href\"] = $2;"
        webkit_dom_html_base_element_set_href ::
        JSRef HTMLBaseElement -> JSString -> IO ()
#else 
webkit_dom_html_base_element_set_href ::
                                        JSRef HTMLBaseElement -> JSString -> IO ()
webkit_dom_html_base_element_set_href = undefined
#endif
 
htmlBaseElementSetHref ::
                       (HTMLBaseElementClass self, ToJSString val) => self -> val -> IO ()
htmlBaseElementSetHref self val
  = webkit_dom_html_base_element_set_href
      (unHTMLBaseElement (toHTMLBaseElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"href\"]"
        webkit_dom_html_base_element_get_href ::
        JSRef HTMLBaseElement -> IO JSString
#else 
webkit_dom_html_base_element_get_href ::
                                        JSRef HTMLBaseElement -> IO JSString
webkit_dom_html_base_element_get_href = undefined
#endif
 
htmlBaseElementGetHref ::
                       (HTMLBaseElementClass self, FromJSString result) =>
                         self -> IO result
htmlBaseElementGetHref self
  = fromJSString <$>
      (webkit_dom_html_base_element_get_href
         (unHTMLBaseElement (toHTMLBaseElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        webkit_dom_html_base_element_set_target ::
        JSRef HTMLBaseElement -> JSString -> IO ()
#else 
webkit_dom_html_base_element_set_target ::
                                          JSRef HTMLBaseElement -> JSString -> IO ()
webkit_dom_html_base_element_set_target = undefined
#endif
 
htmlBaseElementSetTarget ::
                         (HTMLBaseElementClass self, ToJSString val) => self -> val -> IO ()
htmlBaseElementSetTarget self val
  = webkit_dom_html_base_element_set_target
      (unHTMLBaseElement (toHTMLBaseElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"target\"]"
        webkit_dom_html_base_element_get_target ::
        JSRef HTMLBaseElement -> IO JSString
#else 
webkit_dom_html_base_element_get_target ::
                                          JSRef HTMLBaseElement -> IO JSString
webkit_dom_html_base_element_get_target = undefined
#endif
 
htmlBaseElementGetTarget ::
                         (HTMLBaseElementClass self, FromJSString result) =>
                           self -> IO result
htmlBaseElementGetTarget self
  = fromJSString <$>
      (webkit_dom_html_base_element_get_target
         (unHTMLBaseElement (toHTMLBaseElement self)))