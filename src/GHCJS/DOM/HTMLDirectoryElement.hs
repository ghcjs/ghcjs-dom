{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDirectoryElement
       (ghcjs_dom_html_directory_element_set_compact,
        htmlDirectoryElementSetCompact,
        ghcjs_dom_html_directory_element_get_compact,
        htmlDirectoryElementGetCompact)
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
        ghcjs_dom_html_directory_element_set_compact ::
        JSRef HTMLDirectoryElement -> JSBool -> IO ()
#else 
ghcjs_dom_html_directory_element_set_compact ::
                                               JSRef HTMLDirectoryElement -> JSBool -> IO ()
ghcjs_dom_html_directory_element_set_compact = undefined
#endif
 
htmlDirectoryElementSetCompact ::
                               (IsHTMLDirectoryElement self) => self -> Bool -> IO ()
htmlDirectoryElementSetCompact self val
  = ghcjs_dom_html_directory_element_set_compact
      (unHTMLDirectoryElement (toHTMLDirectoryElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        ghcjs_dom_html_directory_element_get_compact ::
        JSRef HTMLDirectoryElement -> IO JSBool
#else 
ghcjs_dom_html_directory_element_get_compact ::
                                               JSRef HTMLDirectoryElement -> IO JSBool
ghcjs_dom_html_directory_element_get_compact = undefined
#endif
 
htmlDirectoryElementGetCompact ::
                               (IsHTMLDirectoryElement self) => self -> IO Bool
htmlDirectoryElementGetCompact self
  = fromJSBool <$>
      (ghcjs_dom_html_directory_element_get_compact
         (unHTMLDirectoryElement (toHTMLDirectoryElement self)))