{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLOptionsCollection
       (webkit_dom_html_options_collection_set_selected_index,
        htmlOptionsCollectionSetSelectedIndex,
        webkit_dom_html_options_collection_get_selected_index,
        htmlOptionsCollectionGetSelectedIndex)
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
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        webkit_dom_html_options_collection_set_selected_index ::
        JSRef HTMLOptionsCollection -> Int -> IO ()
#else 
webkit_dom_html_options_collection_set_selected_index ::
                                                        JSRef HTMLOptionsCollection -> Int -> IO ()
webkit_dom_html_options_collection_set_selected_index = undefined
#endif
 
htmlOptionsCollectionSetSelectedIndex ::
                                      (HTMLOptionsCollectionClass self) => self -> Int -> IO ()
htmlOptionsCollectionSetSelectedIndex self val
  = webkit_dom_html_options_collection_set_selected_index
      (unHTMLOptionsCollection (toHTMLOptionsCollection self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        webkit_dom_html_options_collection_get_selected_index ::
        JSRef HTMLOptionsCollection -> IO Int
#else 
webkit_dom_html_options_collection_get_selected_index ::
                                                        JSRef HTMLOptionsCollection -> IO Int
webkit_dom_html_options_collection_get_selected_index = undefined
#endif
 
htmlOptionsCollectionGetSelectedIndex ::
                                      (HTMLOptionsCollectionClass self) => self -> IO Int
htmlOptionsCollectionGetSelectedIndex self
  = webkit_dom_html_options_collection_get_selected_index
      (unHTMLOptionsCollection (toHTMLOptionsCollection self))