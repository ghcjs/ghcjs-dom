{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NamedNodeMap
       (ghcjs_dom_named_node_map_get_named_item, namedNodeMapGetNamedItem,
        ghcjs_dom_named_node_map_set_named_item, namedNodeMapSetNamedItem,
        ghcjs_dom_named_node_map_remove_named_item,
        namedNodeMapRemoveNamedItem, ghcjs_dom_named_node_map_item,
        namedNodeMapItem, ghcjs_dom_named_node_map_get_named_item_ns,
        namedNodeMapGetNamedItemNS,
        ghcjs_dom_named_node_map_set_named_item_ns,
        namedNodeMapSetNamedItemNS,
        ghcjs_dom_named_node_map_remove_named_item_ns,
        namedNodeMapRemoveNamedItemNS, ghcjs_dom_named_node_map_get_length,
        namedNodeMapGetLength, NamedNodeMap, IsNamedNodeMap,
        castToNamedNodeMap, gTypeNamedNodeMap, toNamedNodeMap)
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

 
foreign import javascript unsafe "$1[\"getNamedItem\"]($2)"
        ghcjs_dom_named_node_map_get_named_item ::
        JSRef NamedNodeMap -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.namedItem Mozilla NamedNodeMap.namedItem documentation> 
namedNodeMapGetNamedItem ::
                         (MonadIO m, IsNamedNodeMap self, ToJSString name) =>
                           self -> name -> m (Maybe Node)
namedNodeMapGetNamedItem self name
  = liftIO
      ((ghcjs_dom_named_node_map_get_named_item
          (unNamedNodeMap (toNamedNodeMap self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setNamedItem\"]($2)"
        ghcjs_dom_named_node_map_set_named_item ::
        JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.namedItem Mozilla NamedNodeMap.namedItem documentation> 
namedNodeMapSetNamedItem ::
                         (MonadIO m, IsNamedNodeMap self, IsNode node) =>
                           self -> Maybe node -> m (Maybe Node)
namedNodeMapSetNamedItem self node
  = liftIO
      ((ghcjs_dom_named_node_map_set_named_item
          (unNamedNodeMap (toNamedNodeMap self))
          (maybe jsNull (unNode . toNode) node))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeNamedItem\"]($2)"
        ghcjs_dom_named_node_map_remove_named_item ::
        JSRef NamedNodeMap -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
namedNodeMapRemoveNamedItem ::
                            (MonadIO m, IsNamedNodeMap self, ToJSString name) =>
                              self -> name -> m (Maybe Node)
namedNodeMapRemoveNamedItem self name
  = liftIO
      ((ghcjs_dom_named_node_map_remove_named_item
          (unNamedNodeMap (toNamedNodeMap self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_named_node_map_item ::
        JSRef NamedNodeMap -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
namedNodeMapItem ::
                 (MonadIO m, IsNamedNodeMap self) => self -> Word -> m (Maybe Node)
namedNodeMapItem self index
  = liftIO
      ((ghcjs_dom_named_node_map_item
          (unNamedNodeMap (toNamedNodeMap self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getNamedItemNS\"]($2, $3)"
        ghcjs_dom_named_node_map_get_named_item_ns ::
        JSRef NamedNodeMap -> JSString -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.namedItemNS Mozilla NamedNodeMap.namedItemNS documentation> 
namedNodeMapGetNamedItemNS ::
                           (MonadIO m, IsNamedNodeMap self, ToJSString namespaceURI,
                            ToJSString localName) =>
                             self -> namespaceURI -> localName -> m (Maybe Node)
namedNodeMapGetNamedItemNS self namespaceURI localName
  = liftIO
      ((ghcjs_dom_named_node_map_get_named_item_ns
          (unNamedNodeMap (toNamedNodeMap self))
          (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setNamedItemNS\"]($2)"
        ghcjs_dom_named_node_map_set_named_item_ns ::
        JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.namedItemNS Mozilla NamedNodeMap.namedItemNS documentation> 
namedNodeMapSetNamedItemNS ::
                           (MonadIO m, IsNamedNodeMap self, IsNode node) =>
                             self -> Maybe node -> m (Maybe Node)
namedNodeMapSetNamedItemNS self node
  = liftIO
      ((ghcjs_dom_named_node_map_set_named_item_ns
          (unNamedNodeMap (toNamedNodeMap self))
          (maybe jsNull (unNode . toNode) node))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"removeNamedItemNS\"]($2, $3)"
        ghcjs_dom_named_node_map_remove_named_item_ns ::
        JSRef NamedNodeMap -> JSString -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
namedNodeMapRemoveNamedItemNS ::
                              (MonadIO m, IsNamedNodeMap self, ToJSString namespaceURI,
                               ToJSString localName) =>
                                self -> namespaceURI -> localName -> m (Maybe Node)
namedNodeMapRemoveNamedItemNS self namespaceURI localName
  = liftIO
      ((ghcjs_dom_named_node_map_remove_named_item_ns
          (unNamedNodeMap (toNamedNodeMap self))
          (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_named_node_map_get_length ::
        JSRef NamedNodeMap -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.length Mozilla NamedNodeMap.length documentation> 
namedNodeMapGetLength ::
                      (MonadIO m, IsNamedNodeMap self) => self -> m Word
namedNodeMapGetLength self
  = liftIO
      (ghcjs_dom_named_node_map_get_length
         (unNamedNodeMap (toNamedNodeMap self)))
#else
module GHCJS.DOM.NamedNodeMap (
  module Graphics.UI.Gtk.WebKit.DOM.NamedNodeMap
  ) where
import Graphics.UI.Gtk.WebKit.DOM.NamedNodeMap
#endif
