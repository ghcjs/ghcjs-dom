{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLOListElement
       (ghcjs_dom_htmlo_list_element_set_compact,
        htmloListElementSetCompact,
        ghcjs_dom_htmlo_list_element_get_compact,
        htmloListElementGetCompact, ghcjs_dom_htmlo_list_element_set_start,
        htmloListElementSetStart, ghcjs_dom_htmlo_list_element_get_start,
        htmloListElementGetStart,
        ghcjs_dom_htmlo_list_element_set_reversed,
        htmloListElementSetReversed,
        ghcjs_dom_htmlo_list_element_get_reversed,
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
        ghcjs_dom_htmlo_list_element_set_compact ::
        JSRef HTMLOListElement -> JSBool -> IO ()
#else 
ghcjs_dom_htmlo_list_element_set_compact ::
                                           JSRef HTMLOListElement -> JSBool -> IO ()
ghcjs_dom_htmlo_list_element_set_compact = undefined
#endif
 
htmloListElementSetCompact ::
                           (IsHTMLOListElement self) => self -> Bool -> IO ()
htmloListElementSetCompact self val
  = ghcjs_dom_htmlo_list_element_set_compact
      (unHTMLOListElement (toHTMLOListElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_htmlo_list_element_get_compact ::
        JSRef HTMLOListElement -> IO JSBool
#else 
ghcjs_dom_htmlo_list_element_get_compact ::
                                           JSRef HTMLOListElement -> IO JSBool
ghcjs_dom_htmlo_list_element_get_compact = undefined
#endif
 
htmloListElementGetCompact ::
                           (IsHTMLOListElement self) => self -> IO Bool
htmloListElementGetCompact self
  = fromJSBool <$>
      (ghcjs_dom_htmlo_list_element_get_compact
         (unHTMLOListElement (toHTMLOListElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"start\"] = $2;"
        ghcjs_dom_htmlo_list_element_set_start ::
        JSRef HTMLOListElement -> Int -> IO ()
#else 
ghcjs_dom_htmlo_list_element_set_start ::
                                         JSRef HTMLOListElement -> Int -> IO ()
ghcjs_dom_htmlo_list_element_set_start = undefined
#endif
 
htmloListElementSetStart ::
                         (IsHTMLOListElement self) => self -> Int -> IO ()
htmloListElementSetStart self val
  = ghcjs_dom_htmlo_list_element_set_start
      (unHTMLOListElement (toHTMLOListElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"start\"]"
        ghcjs_dom_htmlo_list_element_get_start ::
        JSRef HTMLOListElement -> IO Int
#else 
ghcjs_dom_htmlo_list_element_get_start ::
                                         JSRef HTMLOListElement -> IO Int
ghcjs_dom_htmlo_list_element_get_start = undefined
#endif
 
htmloListElementGetStart ::
                         (IsHTMLOListElement self) => self -> IO Int
htmloListElementGetStart self
  = ghcjs_dom_htmlo_list_element_get_start
      (unHTMLOListElement (toHTMLOListElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"reversed\"] = $2;"
        ghcjs_dom_htmlo_list_element_set_reversed ::
        JSRef HTMLOListElement -> JSBool -> IO ()
#else 
ghcjs_dom_htmlo_list_element_set_reversed ::
                                            JSRef HTMLOListElement -> JSBool -> IO ()
ghcjs_dom_htmlo_list_element_set_reversed = undefined
#endif
 
htmloListElementSetReversed ::
                            (IsHTMLOListElement self) => self -> Bool -> IO ()
htmloListElementSetReversed self val
  = ghcjs_dom_htmlo_list_element_set_reversed
      (unHTMLOListElement (toHTMLOListElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"reversed\"] ? 1 : 0)"
        ghcjs_dom_htmlo_list_element_get_reversed ::
        JSRef HTMLOListElement -> IO JSBool
#else 
ghcjs_dom_htmlo_list_element_get_reversed ::
                                            JSRef HTMLOListElement -> IO JSBool
ghcjs_dom_htmlo_list_element_get_reversed = undefined
#endif
 
htmloListElementGetReversed ::
                            (IsHTMLOListElement self) => self -> IO Bool
htmloListElementGetReversed self
  = fromJSBool <$>
      (ghcjs_dom_htmlo_list_element_get_reversed
         (unHTMLOListElement (toHTMLOListElement self)))