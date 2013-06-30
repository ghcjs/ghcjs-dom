{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLMenuElement
       (webkit_dom_html_menu_element_set_compact,
        htmlMenuElementSetCompact,
        webkit_dom_html_menu_element_get_compact,
        htmlMenuElementGetCompact)
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
        webkit_dom_html_menu_element_set_compact ::
        JSRef HTMLMenuElement -> JSBool -> IO ()
#else 
webkit_dom_html_menu_element_set_compact ::
                                           JSRef HTMLMenuElement -> JSBool -> IO ()
webkit_dom_html_menu_element_set_compact = undefined
#endif
 
htmlMenuElementSetCompact ::
                          (HTMLMenuElementClass self) => self -> Bool -> IO ()
htmlMenuElementSetCompact self val
  = webkit_dom_html_menu_element_set_compact
      (unHTMLMenuElement (toHTMLMenuElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        webkit_dom_html_menu_element_get_compact ::
        JSRef HTMLMenuElement -> IO JSBool
#else 
webkit_dom_html_menu_element_get_compact ::
                                           JSRef HTMLMenuElement -> IO JSBool
webkit_dom_html_menu_element_get_compact = undefined
#endif
 
htmlMenuElementGetCompact ::
                          (HTMLMenuElementClass self) => self -> IO Bool
htmlMenuElementGetCompact self
  = fromJSBool <$>
      (webkit_dom_html_menu_element_get_compact
         (unHTMLMenuElement (toHTMLMenuElement self)))