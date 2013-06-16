{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDirectoryElement
       (webkit_dom_html_directory_element_set_compact,
        htmlDirectoryElementSetCompact,
        webkit_dom_html_directory_element_get_compact,
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
        webkit_dom_html_directory_element_set_compact ::
        JSRef HTMLDirectoryElement -> JSBool -> IO ()
#else 
webkit_dom_html_directory_element_set_compact ::
                                                JSRef HTMLDirectoryElement -> JSBool -> IO ()
webkit_dom_html_directory_element_set_compact = undefined
#endif
 
htmlDirectoryElementSetCompact ::
                               (HTMLDirectoryElementClass self) => self -> Bool -> IO ()
htmlDirectoryElementSetCompact self val
  = webkit_dom_html_directory_element_set_compact
      (unHTMLDirectoryElement (toHTMLDirectoryElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"compact\"]"
        webkit_dom_html_directory_element_get_compact ::
        JSRef HTMLDirectoryElement -> IO JSBool
#else 
webkit_dom_html_directory_element_get_compact ::
                                                JSRef HTMLDirectoryElement -> IO JSBool
webkit_dom_html_directory_element_get_compact = undefined
#endif
 
htmlDirectoryElementGetCompact ::
                               (HTMLDirectoryElementClass self) => self -> IO Bool
htmlDirectoryElementGetCompact self
  = fromJSBool <$>
      (webkit_dom_html_directory_element_get_compact
         (unHTMLDirectoryElement (toHTMLDirectoryElement self)))