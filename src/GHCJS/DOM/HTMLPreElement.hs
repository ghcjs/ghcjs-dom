{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLPreElement
       (webkit_dom_html_pre_element_set_width, htmlPreElementSetWidth,
        webkit_dom_html_pre_element_get_width, htmlPreElementGetWidth,
        webkit_dom_html_pre_element_set_wrap, htmlPreElementSetWrap,
        webkit_dom_html_pre_element_get_wrap, htmlPreElementGetWrap)
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
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_pre_element_set_width ::
        JSRef HTMLPreElement -> Int -> IO ()
#else 
webkit_dom_html_pre_element_set_width ::
                                        JSRef HTMLPreElement -> Int -> IO ()
webkit_dom_html_pre_element_set_width = undefined
#endif
 
htmlPreElementSetWidth ::
                       (HTMLPreElementClass self) => self -> Int -> IO ()
htmlPreElementSetWidth self val
  = webkit_dom_html_pre_element_set_width
      (unHTMLPreElement (toHTMLPreElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_pre_element_get_width ::
        JSRef HTMLPreElement -> IO Int
#else 
webkit_dom_html_pre_element_get_width ::
                                        JSRef HTMLPreElement -> IO Int
webkit_dom_html_pre_element_get_width = undefined
#endif
 
htmlPreElementGetWidth ::
                       (HTMLPreElementClass self) => self -> IO Int
htmlPreElementGetWidth self
  = webkit_dom_html_pre_element_get_width
      (unHTMLPreElement (toHTMLPreElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"wrap\"] = $2;"
        webkit_dom_html_pre_element_set_wrap ::
        JSRef HTMLPreElement -> JSBool -> IO ()
#else 
webkit_dom_html_pre_element_set_wrap ::
                                       JSRef HTMLPreElement -> JSBool -> IO ()
webkit_dom_html_pre_element_set_wrap = undefined
#endif
 
htmlPreElementSetWrap ::
                      (HTMLPreElementClass self) => self -> Bool -> IO ()
htmlPreElementSetWrap self val
  = webkit_dom_html_pre_element_set_wrap
      (unHTMLPreElement (toHTMLPreElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"wrap\"] ? 1 : 0)"
        webkit_dom_html_pre_element_get_wrap ::
        JSRef HTMLPreElement -> IO JSBool
#else 
webkit_dom_html_pre_element_get_wrap ::
                                       JSRef HTMLPreElement -> IO JSBool
webkit_dom_html_pre_element_get_wrap = undefined
#endif
 
htmlPreElementGetWrap ::
                      (HTMLPreElementClass self) => self -> IO Bool
htmlPreElementGetWrap self
  = fromJSBool <$>
      (webkit_dom_html_pre_element_get_wrap
         (unHTMLPreElement (toHTMLPreElement self)))