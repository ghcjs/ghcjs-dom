{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLMenuElement
       (ghcjs_dom_html_menu_element_set_compact,
        htmlMenuElementSetCompact, ghcjs_dom_html_menu_element_get_compact,
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
        ghcjs_dom_html_menu_element_set_compact ::
        JSRef HTMLMenuElement -> JSBool -> IO ()
#else 
ghcjs_dom_html_menu_element_set_compact ::
                                          JSRef HTMLMenuElement -> JSBool -> IO ()
ghcjs_dom_html_menu_element_set_compact = undefined
#endif
 
htmlMenuElementSetCompact ::
                          (IsHTMLMenuElement self) => self -> Bool -> IO ()
htmlMenuElementSetCompact self val
  = ghcjs_dom_html_menu_element_set_compact
      (unHTMLMenuElement (toHTMLMenuElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_html_menu_element_get_compact ::
        JSRef HTMLMenuElement -> IO JSBool
#else 
ghcjs_dom_html_menu_element_get_compact ::
                                          JSRef HTMLMenuElement -> IO JSBool
ghcjs_dom_html_menu_element_get_compact = undefined
#endif
 
htmlMenuElementGetCompact ::
                          (IsHTMLMenuElement self) => self -> IO Bool
htmlMenuElementGetCompact self
  = fromJSBool <$>
      (ghcjs_dom_html_menu_element_get_compact
         (unHTMLMenuElement (toHTMLMenuElement self)))