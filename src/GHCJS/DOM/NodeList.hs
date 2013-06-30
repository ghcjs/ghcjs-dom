{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.NodeList
       (ghcjs_dom_node_list_item, nodeListItem,
        ghcjs_dom_node_list_get_length, nodeListGetLength)
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
        ghcjs_dom_node_list_item ::
        JSRef NodeList -> Word -> IO (JSRef Node)
#else 
ghcjs_dom_node_list_item ::
                           JSRef NodeList -> Word -> IO (JSRef Node)
ghcjs_dom_node_list_item = undefined
#endif
 
nodeListItem ::
             (IsNodeList self) => self -> Word -> IO (Maybe Node)
nodeListItem self index
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_list_item (unNodeList (toNodeList self)) index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_node_list_get_length :: JSRef NodeList -> IO Word
#else 
ghcjs_dom_node_list_get_length :: JSRef NodeList -> IO Word
ghcjs_dom_node_list_get_length = undefined
#endif
 
nodeListGetLength :: (IsNodeList self) => self -> IO Word
nodeListGetLength self
  = ghcjs_dom_node_list_get_length (unNodeList (toNodeList self))