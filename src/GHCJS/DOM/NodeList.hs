{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.NodeList
       (webkit_dom_node_list_item, nodeListItem,
        webkit_dom_node_list_get_length, nodeListGetLength)
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
        webkit_dom_node_list_item ::
        JSRef NodeList -> Word -> IO (JSRef Node)
#else 
webkit_dom_node_list_item ::
                            JSRef NodeList -> Word -> IO (JSRef Node)
webkit_dom_node_list_item = undefined
#endif
 
nodeListItem ::
             (NodeListClass self) => self -> Word -> IO (Maybe Node)
nodeListItem self index
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_list_item (unNodeList (toNodeList self)) index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_node_list_get_length :: JSRef NodeList -> IO Word
#else 
webkit_dom_node_list_get_length :: JSRef NodeList -> IO Word
webkit_dom_node_list_get_length = undefined
#endif
 
nodeListGetLength :: (NodeListClass self) => self -> IO Word
nodeListGetLength self
  = webkit_dom_node_list_get_length (unNodeList (toNodeList self))