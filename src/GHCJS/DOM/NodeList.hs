{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NodeList
       (ghcjs_dom_node_list_item, nodeListItem,
        ghcjs_dom_node_list_get_length, nodeListGetLength, NodeList,
        IsNodeList, castToNodeList, gTypeNodeList, toNodeList)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_node_list_item ::
        JSRef NodeList -> Word -> IO (JSRef Node)
 
nodeListItem ::
             (IsNodeList self) => self -> Word -> IO (Maybe Node)
nodeListItem self index
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_list_item (unNodeList (toNodeList self)) index)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_node_list_get_length :: JSRef NodeList -> IO Word
 
nodeListGetLength :: (IsNodeList self) => self -> IO Word
nodeListGetLength self
  = ghcjs_dom_node_list_get_length (unNodeList (toNodeList self))
#else
module GHCJS.DOM.NodeList (
  module Graphics.UI.Gtk.WebKit.DOM.NodeList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.NodeList
#endif
