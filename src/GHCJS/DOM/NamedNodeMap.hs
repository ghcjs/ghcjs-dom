{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.NamedNodeMap
       (webkit_dom_named_node_map_get_named_item,
        namedNodeMapGetNamedItem, webkit_dom_named_node_map_set_named_item,
        namedNodeMapSetNamedItem,
        webkit_dom_named_node_map_remove_named_item,
        namedNodeMapRemoveNamedItem, webkit_dom_named_node_map_item,
        namedNodeMapItem, webkit_dom_named_node_map_get_named_item_ns,
        namedNodeMapGetNamedItemNS,
        webkit_dom_named_node_map_set_named_item_ns,
        namedNodeMapSetNamedItemNS,
        webkit_dom_named_node_map_remove_named_item_ns,
        namedNodeMapRemoveNamedItemNS,
        webkit_dom_named_node_map_get_length, namedNodeMapGetLength)
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
foreign import javascript unsafe "$1[\"getNamedItem\"]($2)"
        webkit_dom_named_node_map_get_named_item ::
        JSRef NamedNodeMap -> JSString -> IO (JSRef Node)
#else 
webkit_dom_named_node_map_get_named_item ::
                                           JSRef NamedNodeMap -> JSString -> IO (JSRef Node)
webkit_dom_named_node_map_get_named_item = undefined
#endif
 
namedNodeMapGetNamedItem ::
                         (NamedNodeMapClass self, ToJSString name) =>
                           self -> name -> IO (Maybe Node)
namedNodeMapGetNamedItem self name
  = fmap Node . maybeJSNull <$>
      (webkit_dom_named_node_map_get_named_item
         (unNamedNodeMap (toNamedNodeMap self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setNamedItem\"]($2)"
        webkit_dom_named_node_map_set_named_item ::
        JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_named_node_map_set_named_item ::
                                           JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)
webkit_dom_named_node_map_set_named_item = undefined
#endif
 
namedNodeMapSetNamedItem ::
                         (NamedNodeMapClass self, NodeClass node) =>
                           self -> Maybe node -> IO (Maybe Node)
namedNodeMapSetNamedItem self node
  = fmap Node . maybeJSNull <$>
      (webkit_dom_named_node_map_set_named_item
         (unNamedNodeMap (toNamedNodeMap self))
         (maybe jsNull (unNode . toNode) node))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"removeNamedItem\"]($2)"
        webkit_dom_named_node_map_remove_named_item ::
        JSRef NamedNodeMap -> JSString -> IO (JSRef Node)
#else 
webkit_dom_named_node_map_remove_named_item ::
                                              JSRef NamedNodeMap -> JSString -> IO (JSRef Node)
webkit_dom_named_node_map_remove_named_item = undefined
#endif
 
namedNodeMapRemoveNamedItem ::
                            (NamedNodeMapClass self, ToJSString name) =>
                              self -> name -> IO (Maybe Node)
namedNodeMapRemoveNamedItem self name
  = fmap Node . maybeJSNull <$>
      (webkit_dom_named_node_map_remove_named_item
         (unNamedNodeMap (toNamedNodeMap self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_named_node_map_item ::
        JSRef NamedNodeMap -> Word -> IO (JSRef Node)
#else 
webkit_dom_named_node_map_item ::
                                 JSRef NamedNodeMap -> Word -> IO (JSRef Node)
webkit_dom_named_node_map_item = undefined
#endif
 
namedNodeMapItem ::
                 (NamedNodeMapClass self) => self -> Word -> IO (Maybe Node)
namedNodeMapItem self index
  = fmap Node . maybeJSNull <$>
      (webkit_dom_named_node_map_item
         (unNamedNodeMap (toNamedNodeMap self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getNamedItemNS\"]($2, $3)"
        webkit_dom_named_node_map_get_named_item_ns ::
        JSRef NamedNodeMap -> JSString -> JSString -> IO (JSRef Node)
#else 
webkit_dom_named_node_map_get_named_item_ns ::
                                              JSRef NamedNodeMap ->
                                                JSString -> JSString -> IO (JSRef Node)
webkit_dom_named_node_map_get_named_item_ns = undefined
#endif
 
namedNodeMapGetNamedItemNS ::
                           (NamedNodeMapClass self, ToJSString namespaceURI,
                            ToJSString localName) =>
                             self -> namespaceURI -> localName -> IO (Maybe Node)
namedNodeMapGetNamedItemNS self namespaceURI localName
  = fmap Node . maybeJSNull <$>
      (webkit_dom_named_node_map_get_named_item_ns
         (unNamedNodeMap (toNamedNodeMap self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setNamedItemNS\"]($2)"
        webkit_dom_named_node_map_set_named_item_ns ::
        JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_named_node_map_set_named_item_ns ::
                                              JSRef NamedNodeMap -> JSRef Node -> IO (JSRef Node)
webkit_dom_named_node_map_set_named_item_ns = undefined
#endif
 
namedNodeMapSetNamedItemNS ::
                           (NamedNodeMapClass self, NodeClass node) =>
                             self -> Maybe node -> IO (Maybe Node)
namedNodeMapSetNamedItemNS self node
  = fmap Node . maybeJSNull <$>
      (webkit_dom_named_node_map_set_named_item_ns
         (unNamedNodeMap (toNamedNodeMap self))
         (maybe jsNull (unNode . toNode) node))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"removeNamedItemNS\"]($2, $3)"
        webkit_dom_named_node_map_remove_named_item_ns ::
        JSRef NamedNodeMap -> JSString -> JSString -> IO (JSRef Node)
#else 
webkit_dom_named_node_map_remove_named_item_ns ::
                                                 JSRef NamedNodeMap ->
                                                   JSString -> JSString -> IO (JSRef Node)
webkit_dom_named_node_map_remove_named_item_ns = undefined
#endif
 
namedNodeMapRemoveNamedItemNS ::
                              (NamedNodeMapClass self, ToJSString namespaceURI,
                               ToJSString localName) =>
                                self -> namespaceURI -> localName -> IO (Maybe Node)
namedNodeMapRemoveNamedItemNS self namespaceURI localName
  = fmap Node . maybeJSNull <$>
      (webkit_dom_named_node_map_remove_named_item_ns
         (unNamedNodeMap (toNamedNodeMap self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_named_node_map_get_length ::
        JSRef NamedNodeMap -> IO Word
#else 
webkit_dom_named_node_map_get_length ::
                                       JSRef NamedNodeMap -> IO Word
webkit_dom_named_node_map_get_length = undefined
#endif
 
namedNodeMapGetLength ::
                      (NamedNodeMapClass self) => self -> IO Word
namedNodeMapGetLength self
  = webkit_dom_named_node_map_get_length
      (unNamedNodeMap (toNamedNodeMap self))