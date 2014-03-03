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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getNamedItem\"]($2)"
        ghcjs_dom_named_node_map_get_named_item ::
        JSRef NamedNodeMap -> JSString -> IO (JSRef Node)
#else 
ghcjs_dom_named_node_map_get_named_item ::
                                          JSRef NamedNodeMap -> JSString -> IO (JSRef Node)
ghcjs_dom_named_node_map_get_named_item = undefined
#endif
 
namedNodeMapGetNamedItem ::
                         (IsNamedNodeMap self, ToJSString name) =>
                           self -> name -> IO (Maybe Node)
namedNodeMapGetNamedItem self name
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_named_node_map_get_named_item
         (unNamedNodeMap (toNamedNodeMap self))
         (toJSString name))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setNamedItem\"]($2)"
        ghcjs_dom_named_node_map_set_named_item ::
        JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)
#else 
ghcjs_dom_named_node_map_set_named_item ::
                                          JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)
ghcjs_dom_named_node_map_set_named_item = undefined
#endif
 
namedNodeMapSetNamedItem ::
                         (IsNamedNodeMap self, IsNode node) =>
                           self -> Maybe node -> IO (Maybe Node)
namedNodeMapSetNamedItem self node
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_named_node_map_set_named_item
         (unNamedNodeMap (toNamedNodeMap self))
         (maybe jsNull (unNode . toNode) node))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"removeNamedItem\"]($2)"
        ghcjs_dom_named_node_map_remove_named_item ::
        JSRef NamedNodeMap -> JSString -> IO (JSRef Node)
#else 
ghcjs_dom_named_node_map_remove_named_item ::
                                             JSRef NamedNodeMap -> JSString -> IO (JSRef Node)
ghcjs_dom_named_node_map_remove_named_item = undefined
#endif
 
namedNodeMapRemoveNamedItem ::
                            (IsNamedNodeMap self, ToJSString name) =>
                              self -> name -> IO (Maybe Node)
namedNodeMapRemoveNamedItem self name
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_named_node_map_remove_named_item
         (unNamedNodeMap (toNamedNodeMap self))
         (toJSString name))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_named_node_map_item ::
        JSRef NamedNodeMap -> Word -> IO (JSRef Node)
#else 
ghcjs_dom_named_node_map_item ::
                                JSRef NamedNodeMap -> Word -> IO (JSRef Node)
ghcjs_dom_named_node_map_item = undefined
#endif
 
namedNodeMapItem ::
                 (IsNamedNodeMap self) => self -> Word -> IO (Maybe Node)
namedNodeMapItem self index
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_named_node_map_item
         (unNamedNodeMap (toNamedNodeMap self))
         index)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getNamedItemNS\"]($2, $3)"
        ghcjs_dom_named_node_map_get_named_item_ns ::
        JSRef NamedNodeMap -> JSString -> JSString -> IO (JSRef Node)
#else 
ghcjs_dom_named_node_map_get_named_item_ns ::
                                             JSRef NamedNodeMap ->
                                               JSString -> JSString -> IO (JSRef Node)
ghcjs_dom_named_node_map_get_named_item_ns = undefined
#endif
 
namedNodeMapGetNamedItemNS ::
                           (IsNamedNodeMap self, ToJSString namespaceURI,
                            ToJSString localName) =>
                             self -> namespaceURI -> localName -> IO (Maybe Node)
namedNodeMapGetNamedItemNS self namespaceURI localName
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_named_node_map_get_named_item_ns
         (unNamedNodeMap (toNamedNodeMap self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setNamedItemNS\"]($2)"
        ghcjs_dom_named_node_map_set_named_item_ns ::
        JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)
#else 
ghcjs_dom_named_node_map_set_named_item_ns ::
                                             JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)
ghcjs_dom_named_node_map_set_named_item_ns = undefined
#endif
 
namedNodeMapSetNamedItemNS ::
                           (IsNamedNodeMap self, IsNode node) =>
                             self -> Maybe node -> IO (Maybe Node)
namedNodeMapSetNamedItemNS self node
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_named_node_map_set_named_item_ns
         (unNamedNodeMap (toNamedNodeMap self))
         (maybe jsNull (unNode . toNode) node))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"removeNamedItemNS\"]($2, $3)"
        ghcjs_dom_named_node_map_remove_named_item_ns ::
        JSRef NamedNodeMap -> JSString -> JSString -> IO (JSRef Node)
#else 
ghcjs_dom_named_node_map_remove_named_item_ns ::
                                                JSRef NamedNodeMap ->
                                                  JSString -> JSString -> IO (JSRef Node)
ghcjs_dom_named_node_map_remove_named_item_ns = undefined
#endif
 
namedNodeMapRemoveNamedItemNS ::
                              (IsNamedNodeMap self, ToJSString namespaceURI,
                               ToJSString localName) =>
                                self -> namespaceURI -> localName -> IO (Maybe Node)
namedNodeMapRemoveNamedItemNS self namespaceURI localName
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_named_node_map_remove_named_item_ns
         (unNamedNodeMap (toNamedNodeMap self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_named_node_map_get_length ::
        JSRef NamedNodeMap -> IO Word
#else 
ghcjs_dom_named_node_map_get_length ::
                                      JSRef NamedNodeMap -> IO Word
ghcjs_dom_named_node_map_get_length = undefined
#endif
 
namedNodeMapGetLength :: (IsNamedNodeMap self) => self -> IO Word
namedNodeMapGetLength self
  = ghcjs_dom_named_node_map_get_length
      (unNamedNodeMap (toNamedNodeMap self))
#else
module GHCJS.DOM.NamedNodeMap (
  module Graphics.UI.Gtk.WebKit.DOM.NamedNodeMap
  ) where
import Graphics.UI.Gtk.WebKit.DOM.NamedNodeMap
#endif
