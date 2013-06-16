{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLHeadElement
       (webkit_dom_html_head_element_set_profile,
        htmlHeadElementSetProfile,
        webkit_dom_html_head_element_get_profile,
        htmlHeadElementGetProfile)
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
foreign import javascript unsafe "$1[\"profile\"] = $2;"
        webkit_dom_html_head_element_set_profile ::
        JSRef HTMLHeadElement -> JSString -> IO ()
#else 
webkit_dom_html_head_element_set_profile ::
                                           JSRef HTMLHeadElement -> JSString -> IO ()
webkit_dom_html_head_element_set_profile = undefined
#endif
 
htmlHeadElementSetProfile ::
                          (HTMLHeadElementClass self, ToJSString val) => self -> val -> IO ()
htmlHeadElementSetProfile self val
  = webkit_dom_html_head_element_set_profile
      (unHTMLHeadElement (toHTMLHeadElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"profile\"]"
        webkit_dom_html_head_element_get_profile ::
        JSRef HTMLHeadElement -> IO JSString
#else 
webkit_dom_html_head_element_get_profile ::
                                           JSRef HTMLHeadElement -> IO JSString
webkit_dom_html_head_element_get_profile = undefined
#endif
 
htmlHeadElementGetProfile ::
                          (HTMLHeadElementClass self, FromJSString result) =>
                            self -> IO result
htmlHeadElementGetProfile self
  = fromJSString <$>
      (webkit_dom_html_head_element_get_profile
         (unHTMLHeadElement (toHTMLHeadElement self)))