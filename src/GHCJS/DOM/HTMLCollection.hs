{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLCollection
       (webkit_dom_html_collection_item, htmlCollectionItem,
        webkit_dom_html_collection_get_length, htmlCollectionGetLength)
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
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_html_collection_item ::
        JSRef HTMLCollection -> Word -> IO (JSRef Node)
#else 
webkit_dom_html_collection_item ::
                                  JSRef HTMLCollection -> Word -> IO (JSRef Node)
webkit_dom_html_collection_item = undefined
#endif
 
htmlCollectionItem ::
                   (HTMLCollectionClass self) => self -> Word -> IO (Maybe Node)
htmlCollectionItem self index
  = fmap Node . maybeJSNull <$>
      (webkit_dom_html_collection_item
         (unHTMLCollection (toHTMLCollection self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_html_collection_get_length ::
        JSRef HTMLCollection -> IO Word
#else 
webkit_dom_html_collection_get_length ::
                                        JSRef HTMLCollection -> IO Word
webkit_dom_html_collection_get_length = undefined
#endif
 
htmlCollectionGetLength ::
                        (HTMLCollectionClass self) => self -> IO Word
htmlCollectionGetLength self
  = webkit_dom_html_collection_get_length
      (unHTMLCollection (toHTMLCollection self))