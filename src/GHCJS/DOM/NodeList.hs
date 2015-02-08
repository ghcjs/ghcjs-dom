{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NodeList
       (ghcjs_dom_node_list_item, nodeListItem,
        ghcjs_dom_node_list_get_length, nodeListGetLength, NodeList,
        IsNodeList, castToNodeList, gTypeNodeList, toNodeList)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_node_list_item ::
        JSRef NodeList -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.item Mozilla NodeList.item documentation> 
nodeListItem ::
             (MonadIO m, IsNodeList self) => self -> Word -> m (Maybe Node)
nodeListItem self index
  = liftIO
      ((ghcjs_dom_node_list_item (unNodeList (toNodeList self)) index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_node_list_get_length :: JSRef NodeList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.length Mozilla NodeList.length documentation> 
nodeListGetLength :: (MonadIO m, IsNodeList self) => self -> m Word
nodeListGetLength self
  = liftIO
      (ghcjs_dom_node_list_get_length (unNodeList (toNodeList self)))
#else
module GHCJS.DOM.NodeList (
  module Graphics.UI.Gtk.WebKit.DOM.NodeList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.NodeList
#endif
