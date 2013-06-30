{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLOListElement
       (webkit_dom_htmlo_list_element_set_compact,
        htmloListElementSetCompact,
        webkit_dom_htmlo_list_element_get_compact,
        htmloListElementGetCompact,
        webkit_dom_htmlo_list_element_set_start, htmloListElementSetStart,
        webkit_dom_htmlo_list_element_get_start, htmloListElementGetStart,
        webkit_dom_htmlo_list_element_set_reversed,
        htmloListElementSetReversed,
        webkit_dom_htmlo_list_element_get_reversed,
        htmloListElementGetReversed)
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
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        webkit_dom_htmlo_list_element_set_compact ::
        JSRef HTMLOListElement -> JSBool -> IO ()
#else 
webkit_dom_htmlo_list_element_set_compact ::
                                            JSRef HTMLOListElement -> JSBool -> IO ()
webkit_dom_htmlo_list_element_set_compact = undefined
#endif
 
htmloListElementSetCompact ::
                           (HTMLOListElementClass self) => self -> Bool -> IO ()
htmloListElementSetCompact self val
  = webkit_dom_htmlo_list_element_set_compact
      (unHTMLOListElement (toHTMLOListElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        webkit_dom_htmlo_list_element_get_compact ::
        JSRef HTMLOListElement -> IO JSBool
#else 
webkit_dom_htmlo_list_element_get_compact ::
                                            JSRef HTMLOListElement -> IO JSBool
webkit_dom_htmlo_list_element_get_compact = undefined
#endif
 
htmloListElementGetCompact ::
                           (HTMLOListElementClass self) => self -> IO Bool
htmloListElementGetCompact self
  = fromJSBool <$>
      (webkit_dom_htmlo_list_element_get_compact
         (unHTMLOListElement (toHTMLOListElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"start\"] = $2;"
        webkit_dom_htmlo_list_element_set_start ::
        JSRef HTMLOListElement -> Int -> IO ()
#else 
webkit_dom_htmlo_list_element_set_start ::
                                          JSRef HTMLOListElement -> Int -> IO ()
webkit_dom_htmlo_list_element_set_start = undefined
#endif
 
htmloListElementSetStart ::
                         (HTMLOListElementClass self) => self -> Int -> IO ()
htmloListElementSetStart self val
  = webkit_dom_htmlo_list_element_set_start
      (unHTMLOListElement (toHTMLOListElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"start\"]"
        webkit_dom_htmlo_list_element_get_start ::
        JSRef HTMLOListElement -> IO Int
#else 
webkit_dom_htmlo_list_element_get_start ::
                                          JSRef HTMLOListElement -> IO Int
webkit_dom_htmlo_list_element_get_start = undefined
#endif
 
htmloListElementGetStart ::
                         (HTMLOListElementClass self) => self -> IO Int
htmloListElementGetStart self
  = webkit_dom_htmlo_list_element_get_start
      (unHTMLOListElement (toHTMLOListElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"reversed\"] = $2;"
        webkit_dom_htmlo_list_element_set_reversed ::
        JSRef HTMLOListElement -> JSBool -> IO ()
#else 
webkit_dom_htmlo_list_element_set_reversed ::
                                             JSRef HTMLOListElement -> JSBool -> IO ()
webkit_dom_htmlo_list_element_set_reversed = undefined
#endif
 
htmloListElementSetReversed ::
                            (HTMLOListElementClass self) => self -> Bool -> IO ()
htmloListElementSetReversed self val
  = webkit_dom_htmlo_list_element_set_reversed
      (unHTMLOListElement (toHTMLOListElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"reversed\"] ? 1 : 0)"
        webkit_dom_htmlo_list_element_get_reversed ::
        JSRef HTMLOListElement -> IO JSBool
#else 
webkit_dom_htmlo_list_element_get_reversed ::
                                             JSRef HTMLOListElement -> IO JSBool
webkit_dom_htmlo_list_element_get_reversed = undefined
#endif
 
htmloListElementGetReversed ::
                            (HTMLOListElementClass self) => self -> IO Bool
htmloListElementGetReversed self
  = fromJSBool <$>
      (webkit_dom_htmlo_list_element_get_reversed
         (unHTMLOListElement (toHTMLOListElement self)))