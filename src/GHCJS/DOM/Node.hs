{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Node
       (webkit_dom_node_insert_before, nodeInsertBefore,
        webkit_dom_node_replace_child, nodeReplaceChild,
        webkit_dom_node_remove_child, nodeRemoveChild,
        webkit_dom_node_append_child, nodeAppendChild,
        webkit_dom_node_has_child_nodes, nodeHasChildNodes,
        webkit_dom_node_clone_node, nodeCloneNode,
        webkit_dom_node_normalize, nodeNormalize,
        webkit_dom_node_is_supported, nodeIsSupported,
        webkit_dom_node_has_attributes, nodeHasAttributes,
        webkit_dom_node_is_same_node, nodeIsSameNode,
        webkit_dom_node_is_equal_node, nodeIsEqualNode,
        webkit_dom_node_lookup_prefix, nodeLookupPrefix,
        webkit_dom_node_is_default_namespace, nodeIsDefaultNamespace,
        webkit_dom_node_lookup_namespace_uri, nodeLookupNamespaceURI,
        webkit_dom_node_compare_document_position,
        nodeCompareDocumentPosition, webkit_dom_node_contains,
        nodeContains, webkit_dom_node_dispatch_event, nodeDispatchEvent,
        cELEMENT_NODE, cATTRIBUTE_NODE, cTEXT_NODE, cCDATA_SECTION_NODE,
        cENTITY_REFERENCE_NODE, cENTITY_NODE, cPROCESSING_INSTRUCTION_NODE,
        cCOMMENT_NODE, cDOCUMENT_NODE, cDOCUMENT_TYPE_NODE,
        cDOCUMENT_FRAGMENT_NODE, cNOTATION_NODE,
        cDOCUMENT_POSITION_DISCONNECTED, cDOCUMENT_POSITION_PRECEDING,
        cDOCUMENT_POSITION_FOLLOWING, cDOCUMENT_POSITION_CONTAINS,
        cDOCUMENT_POSITION_CONTAINED_BY,
        cDOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC,
        webkit_dom_node_get_node_name, nodeGetNodeName,
        webkit_dom_node_set_node_value, nodeSetNodeValue,
        webkit_dom_node_get_node_value, nodeGetNodeValue,
        webkit_dom_node_get_node_type, nodeGetNodeType,
        webkit_dom_node_get_parent_node, nodeGetParentNode,
        webkit_dom_node_get_child_nodes, nodeGetChildNodes,
        webkit_dom_node_get_first_child, nodeGetFirstChild,
        webkit_dom_node_get_last_child, nodeGetLastChild,
        webkit_dom_node_get_previous_sibling, nodeGetPreviousSibling,
        webkit_dom_node_get_next_sibling, nodeGetNextSibling,
        webkit_dom_node_get_attributes, nodeGetAttributes,
        webkit_dom_node_get_owner_document, nodeGetOwnerDocument,
        webkit_dom_node_get_namespace_uri, nodeGetNamespaceURI,
        webkit_dom_node_set_prefix, nodeSetPrefix,
        webkit_dom_node_get_prefix, nodeGetPrefix,
        webkit_dom_node_get_local_name, nodeGetLocalName,
        webkit_dom_node_get_base_uri, nodeGetBaseURI,
        webkit_dom_node_set_text_content, nodeSetTextContent,
        webkit_dom_node_get_text_content, nodeGetTextContent,
        webkit_dom_node_get_parent_element, nodeGetParentElement)
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
foreign import javascript unsafe "$1[\"insertBefore\"]($2, $3)"
        webkit_dom_node_insert_before ::
        JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_node_insert_before ::
                                JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)
webkit_dom_node_insert_before = undefined
#endif
 
nodeInsertBefore ::
                 (NodeClass self, NodeClass newChild, NodeClass refChild) =>
                   self -> Maybe newChild -> Maybe refChild -> IO (Maybe Node)
nodeInsertBefore self newChild refChild
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_insert_before (unNode (toNode self))
         (maybe jsNull (unNode . toNode) newChild)
         (maybe jsNull (unNode . toNode) refChild))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"replaceChild\"]($2, $3)"
        webkit_dom_node_replace_child ::
        JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_node_replace_child ::
                                JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)
webkit_dom_node_replace_child = undefined
#endif
 
nodeReplaceChild ::
                 (NodeClass self, NodeClass newChild, NodeClass oldChild) =>
                   self -> Maybe newChild -> Maybe oldChild -> IO (Maybe Node)
nodeReplaceChild self newChild oldChild
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_replace_child (unNode (toNode self))
         (maybe jsNull (unNode . toNode) newChild)
         (maybe jsNull (unNode . toNode) oldChild))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"removeChild\"]($2)"
        webkit_dom_node_remove_child ::
        JSRef Node -> JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_node_remove_child ::
                               JSRef Node -> JSRef Node -> IO (JSRef Node)
webkit_dom_node_remove_child = undefined
#endif
 
nodeRemoveChild ::
                (NodeClass self, NodeClass oldChild) =>
                  self -> Maybe oldChild -> IO (Maybe Node)
nodeRemoveChild self oldChild
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_remove_child (unNode (toNode self))
         (maybe jsNull (unNode . toNode) oldChild))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"appendChild\"]($2)"
        webkit_dom_node_append_child ::
        JSRef Node -> JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_node_append_child ::
                               JSRef Node -> JSRef Node -> IO (JSRef Node)
webkit_dom_node_append_child = undefined
#endif
 
nodeAppendChild ::
                (NodeClass self, NodeClass newChild) =>
                  self -> Maybe newChild -> IO (Maybe Node)
nodeAppendChild self newChild
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_append_child (unNode (toNode self))
         (maybe jsNull (unNode . toNode) newChild))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"hasChildNodes\"]() ? 1 : 0)" webkit_dom_node_has_child_nodes
        :: JSRef Node -> IO JSBool
#else 
webkit_dom_node_has_child_nodes :: JSRef Node -> IO JSBool
webkit_dom_node_has_child_nodes = undefined
#endif
 
nodeHasChildNodes :: (NodeClass self) => self -> IO Bool
nodeHasChildNodes self
  = fromJSBool <$>
      (webkit_dom_node_has_child_nodes (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cloneNode\"]($2)"
        webkit_dom_node_clone_node ::
        JSRef Node -> JSBool -> IO (JSRef Node)
#else 
webkit_dom_node_clone_node ::
                             JSRef Node -> JSBool -> IO (JSRef Node)
webkit_dom_node_clone_node = undefined
#endif
 
nodeCloneNode ::
              (NodeClass self) => self -> Bool -> IO (Maybe Node)
nodeCloneNode self deep
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_clone_node (unNode (toNode self)) (toJSBool deep))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"normalize\"]()"
        webkit_dom_node_normalize :: JSRef Node -> IO ()
#else 
webkit_dom_node_normalize :: JSRef Node -> IO ()
webkit_dom_node_normalize = undefined
#endif
 
nodeNormalize :: (NodeClass self) => self -> IO ()
nodeNormalize self
  = webkit_dom_node_normalize (unNode (toNode self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"isSupported\"]($2,\n$3) ? 1 : 0)"
        webkit_dom_node_is_supported ::
        JSRef Node -> JSString -> JSString -> IO JSBool
#else 
webkit_dom_node_is_supported ::
                               JSRef Node -> JSString -> JSString -> IO JSBool
webkit_dom_node_is_supported = undefined
#endif
 
nodeIsSupported ::
                (NodeClass self, ToJSString feature, ToJSString version) =>
                  self -> feature -> version -> IO Bool
nodeIsSupported self feature version
  = fromJSBool <$>
      (webkit_dom_node_is_supported (unNode (toNode self))
         (toJSString feature)
         (toJSString version))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"hasAttributes\"]() ? 1 : 0)" webkit_dom_node_has_attributes
        :: JSRef Node -> IO JSBool
#else 
webkit_dom_node_has_attributes :: JSRef Node -> IO JSBool
webkit_dom_node_has_attributes = undefined
#endif
 
nodeHasAttributes :: (NodeClass self) => self -> IO Bool
nodeHasAttributes self
  = fromJSBool <$>
      (webkit_dom_node_has_attributes (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"isSameNode\"]($2) ? 1 : 0)"
        webkit_dom_node_is_same_node ::
        JSRef Node -> JSRef Node -> IO JSBool
#else 
webkit_dom_node_is_same_node ::
                               JSRef Node -> JSRef Node -> IO JSBool
webkit_dom_node_is_same_node = undefined
#endif
 
nodeIsSameNode ::
               (NodeClass self, NodeClass other) => self -> Maybe other -> IO Bool
nodeIsSameNode self other
  = fromJSBool <$>
      (webkit_dom_node_is_same_node (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"isEqualNode\"]($2) ? 1 : 0)" webkit_dom_node_is_equal_node
        :: JSRef Node -> JSRef Node -> IO JSBool
#else 
webkit_dom_node_is_equal_node ::
                                JSRef Node -> JSRef Node -> IO JSBool
webkit_dom_node_is_equal_node = undefined
#endif
 
nodeIsEqualNode ::
                (NodeClass self, NodeClass other) => self -> Maybe other -> IO Bool
nodeIsEqualNode self other
  = fromJSBool <$>
      (webkit_dom_node_is_equal_node (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lookupPrefix\"]($2)"
        webkit_dom_node_lookup_prefix ::
        JSRef Node -> JSString -> IO JSString
#else 
webkit_dom_node_lookup_prefix ::
                                JSRef Node -> JSString -> IO JSString
webkit_dom_node_lookup_prefix = undefined
#endif
 
nodeLookupPrefix ::
                 (NodeClass self, ToJSString namespaceURI, FromJSString result) =>
                   self -> namespaceURI -> IO result
nodeLookupPrefix self namespaceURI
  = fromJSString <$>
      (webkit_dom_node_lookup_prefix (unNode (toNode self))
         (toJSString namespaceURI))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"isDefaultNamespace\"]($2) ? 1 : 0)"
        webkit_dom_node_is_default_namespace ::
        JSRef Node -> JSString -> IO JSBool
#else 
webkit_dom_node_is_default_namespace ::
                                       JSRef Node -> JSString -> IO JSBool
webkit_dom_node_is_default_namespace = undefined
#endif
 
nodeIsDefaultNamespace ::
                       (NodeClass self, ToJSString namespaceURI) =>
                         self -> namespaceURI -> IO Bool
nodeIsDefaultNamespace self namespaceURI
  = fromJSBool <$>
      (webkit_dom_node_is_default_namespace (unNode (toNode self))
         (toJSString namespaceURI))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        webkit_dom_node_lookup_namespace_uri ::
        JSRef Node -> JSString -> IO JSString
#else 
webkit_dom_node_lookup_namespace_uri ::
                                       JSRef Node -> JSString -> IO JSString
webkit_dom_node_lookup_namespace_uri = undefined
#endif
 
nodeLookupNamespaceURI ::
                       (NodeClass self, ToJSString prefix, FromJSString result) =>
                         self -> prefix -> IO result
nodeLookupNamespaceURI self prefix
  = fromJSString <$>
      (webkit_dom_node_lookup_namespace_uri (unNode (toNode self))
         (toJSString prefix))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"compareDocumentPosition\"]($2)"
        webkit_dom_node_compare_document_position ::
        JSRef Node -> JSRef Node -> IO Word
#else 
webkit_dom_node_compare_document_position ::
                                            JSRef Node -> JSRef Node -> IO Word
webkit_dom_node_compare_document_position = undefined
#endif
 
nodeCompareDocumentPosition ::
                            (NodeClass self, NodeClass other) => self -> Maybe other -> IO Word
nodeCompareDocumentPosition self other
  = webkit_dom_node_compare_document_position (unNode (toNode self))
      (maybe jsNull (unNode . toNode) other)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        webkit_dom_node_contains :: JSRef Node -> JSRef Node -> IO JSBool
#else 
webkit_dom_node_contains :: JSRef Node -> JSRef Node -> IO JSBool
webkit_dom_node_contains = undefined
#endif
 
nodeContains ::
             (NodeClass self, NodeClass other) => self -> Maybe other -> IO Bool
nodeContains self other
  = fromJSBool <$>
      (webkit_dom_node_contains (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        webkit_dom_node_dispatch_event ::
        JSRef Node -> JSRef Event -> IO JSBool
#else 
webkit_dom_node_dispatch_event ::
                                 JSRef Node -> JSRef Event -> IO JSBool
webkit_dom_node_dispatch_event = undefined
#endif
 
nodeDispatchEvent ::
                  (NodeClass self, EventClass event) =>
                    self -> Maybe event -> IO Bool
nodeDispatchEvent self event
  = fromJSBool <$>
      (webkit_dom_node_dispatch_event (unNode (toNode self))
         (maybe jsNull (unEvent . toEvent) event))
cELEMENT_NODE = 1
cATTRIBUTE_NODE = 2
cTEXT_NODE = 3
cCDATA_SECTION_NODE = 4
cENTITY_REFERENCE_NODE = 5
cENTITY_NODE = 6
cPROCESSING_INSTRUCTION_NODE = 7
cCOMMENT_NODE = 8
cDOCUMENT_NODE = 9
cDOCUMENT_TYPE_NODE = 10
cDOCUMENT_FRAGMENT_NODE = 11
cNOTATION_NODE = 12
cDOCUMENT_POSITION_DISCONNECTED = 1
cDOCUMENT_POSITION_PRECEDING = 2
cDOCUMENT_POSITION_FOLLOWING = 4
cDOCUMENT_POSITION_CONTAINS = 8
cDOCUMENT_POSITION_CONTAINED_BY = 16
cDOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 32


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"nodeName\"]"
        webkit_dom_node_get_node_name :: JSRef Node -> IO JSString
#else 
webkit_dom_node_get_node_name :: JSRef Node -> IO JSString
webkit_dom_node_get_node_name = undefined
#endif
 
nodeGetNodeName ::
                (NodeClass self, FromJSString result) => self -> IO result
nodeGetNodeName self
  = fromJSString <$>
      (webkit_dom_node_get_node_name (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"nodeValue\"] = $2;"
        webkit_dom_node_set_node_value :: JSRef Node -> JSString -> IO ()
#else 
webkit_dom_node_set_node_value :: JSRef Node -> JSString -> IO ()
webkit_dom_node_set_node_value = undefined
#endif
 
nodeSetNodeValue ::
                 (NodeClass self, ToJSString val) => self -> val -> IO ()
nodeSetNodeValue self val
  = webkit_dom_node_set_node_value (unNode (toNode self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"nodeValue\"]"
        webkit_dom_node_get_node_value :: JSRef Node -> IO JSString
#else 
webkit_dom_node_get_node_value :: JSRef Node -> IO JSString
webkit_dom_node_get_node_value = undefined
#endif
 
nodeGetNodeValue ::
                 (NodeClass self, FromJSString result) => self -> IO result
nodeGetNodeValue self
  = fromJSString <$>
      (webkit_dom_node_get_node_value (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"nodeType\"]"
        webkit_dom_node_get_node_type :: JSRef Node -> IO Word
#else 
webkit_dom_node_get_node_type :: JSRef Node -> IO Word
webkit_dom_node_get_node_type = undefined
#endif
 
nodeGetNodeType :: (NodeClass self) => self -> IO Word
nodeGetNodeType self
  = webkit_dom_node_get_node_type (unNode (toNode self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentNode\"]"
        webkit_dom_node_get_parent_node :: JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_node_get_parent_node :: JSRef Node -> IO (JSRef Node)
webkit_dom_node_get_parent_node = undefined
#endif
 
nodeGetParentNode :: (NodeClass self) => self -> IO (Maybe Node)
nodeGetParentNode self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_get_parent_node (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"childNodes\"]"
        webkit_dom_node_get_child_nodes ::
        JSRef Node -> IO (JSRef NodeList)
#else 
webkit_dom_node_get_child_nodes ::
                                  JSRef Node -> IO (JSRef NodeList)
webkit_dom_node_get_child_nodes = undefined
#endif
 
nodeGetChildNodes ::
                  (NodeClass self) => self -> IO (Maybe NodeList)
nodeGetChildNodes self
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_node_get_child_nodes (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"firstChild\"]"
        webkit_dom_node_get_first_child :: JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_node_get_first_child :: JSRef Node -> IO (JSRef Node)
webkit_dom_node_get_first_child = undefined
#endif
 
nodeGetFirstChild :: (NodeClass self) => self -> IO (Maybe Node)
nodeGetFirstChild self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_get_first_child (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lastChild\"]"
        webkit_dom_node_get_last_child :: JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_node_get_last_child :: JSRef Node -> IO (JSRef Node)
webkit_dom_node_get_last_child = undefined
#endif
 
nodeGetLastChild :: (NodeClass self) => self -> IO (Maybe Node)
nodeGetLastChild self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_get_last_child (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        webkit_dom_node_get_previous_sibling ::
        JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_node_get_previous_sibling ::
                                       JSRef Node -> IO (JSRef Node)
webkit_dom_node_get_previous_sibling = undefined
#endif
 
nodeGetPreviousSibling ::
                       (NodeClass self) => self -> IO (Maybe Node)
nodeGetPreviousSibling self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_get_previous_sibling (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        webkit_dom_node_get_next_sibling :: JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_node_get_next_sibling :: JSRef Node -> IO (JSRef Node)
webkit_dom_node_get_next_sibling = undefined
#endif
 
nodeGetNextSibling :: (NodeClass self) => self -> IO (Maybe Node)
nodeGetNextSibling self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_get_next_sibling (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"attributes\"]"
        webkit_dom_node_get_attributes ::
        JSRef Node -> IO (JSRef NamedNodeMap)
#else 
webkit_dom_node_get_attributes ::
                                 JSRef Node -> IO (JSRef NamedNodeMap)
webkit_dom_node_get_attributes = undefined
#endif
 
nodeGetAttributes ::
                  (NodeClass self) => self -> IO (Maybe NamedNodeMap)
nodeGetAttributes self
  = fmap NamedNodeMap . maybeJSNull <$>
      (webkit_dom_node_get_attributes (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ownerDocument\"]"
        webkit_dom_node_get_owner_document ::
        JSRef Node -> IO (JSRef Document)
#else 
webkit_dom_node_get_owner_document ::
                                     JSRef Node -> IO (JSRef Document)
webkit_dom_node_get_owner_document = undefined
#endif
 
nodeGetOwnerDocument ::
                     (NodeClass self) => self -> IO (Maybe Document)
nodeGetOwnerDocument self
  = fmap Document . maybeJSNull <$>
      (webkit_dom_node_get_owner_document (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"namespaceURI\"]"
        webkit_dom_node_get_namespace_uri :: JSRef Node -> IO JSString
#else 
webkit_dom_node_get_namespace_uri :: JSRef Node -> IO JSString
webkit_dom_node_get_namespace_uri = undefined
#endif
 
nodeGetNamespaceURI ::
                    (NodeClass self, FromJSString result) => self -> IO result
nodeGetNamespaceURI self
  = fromJSString <$>
      (webkit_dom_node_get_namespace_uri (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"prefix\"] = $2;"
        webkit_dom_node_set_prefix :: JSRef Node -> JSString -> IO ()
#else 
webkit_dom_node_set_prefix :: JSRef Node -> JSString -> IO ()
webkit_dom_node_set_prefix = undefined
#endif
 
nodeSetPrefix ::
              (NodeClass self, ToJSString val) => self -> val -> IO ()
nodeSetPrefix self val
  = webkit_dom_node_set_prefix (unNode (toNode self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"prefix\"]"
        webkit_dom_node_get_prefix :: JSRef Node -> IO JSString
#else 
webkit_dom_node_get_prefix :: JSRef Node -> IO JSString
webkit_dom_node_get_prefix = undefined
#endif
 
nodeGetPrefix ::
              (NodeClass self, FromJSString result) => self -> IO result
nodeGetPrefix self
  = fromJSString <$>
      (webkit_dom_node_get_prefix (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"localName\"]"
        webkit_dom_node_get_local_name :: JSRef Node -> IO JSString
#else 
webkit_dom_node_get_local_name :: JSRef Node -> IO JSString
webkit_dom_node_get_local_name = undefined
#endif
 
nodeGetLocalName ::
                 (NodeClass self, FromJSString result) => self -> IO result
nodeGetLocalName self
  = fromJSString <$>
      (webkit_dom_node_get_local_name (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"baseURI\"]"
        webkit_dom_node_get_base_uri :: JSRef Node -> IO JSString
#else 
webkit_dom_node_get_base_uri :: JSRef Node -> IO JSString
webkit_dom_node_get_base_uri = undefined
#endif
 
nodeGetBaseURI ::
               (NodeClass self, FromJSString result) => self -> IO result
nodeGetBaseURI self
  = fromJSString <$>
      (webkit_dom_node_get_base_uri (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"textContent\"] = $2;"
        webkit_dom_node_set_text_content :: JSRef Node -> JSString -> IO ()
#else 
webkit_dom_node_set_text_content :: JSRef Node -> JSString -> IO ()
webkit_dom_node_set_text_content = undefined
#endif
 
nodeSetTextContent ::
                   (NodeClass self, ToJSString val) => self -> val -> IO ()
nodeSetTextContent self val
  = webkit_dom_node_set_text_content (unNode (toNode self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"textContent\"]"
        webkit_dom_node_get_text_content :: JSRef Node -> IO JSString
#else 
webkit_dom_node_get_text_content :: JSRef Node -> IO JSString
webkit_dom_node_get_text_content = undefined
#endif
 
nodeGetTextContent ::
                   (NodeClass self, FromJSString result) => self -> IO result
nodeGetTextContent self
  = fromJSString <$>
      (webkit_dom_node_get_text_content (unNode (toNode self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentElement\"]"
        webkit_dom_node_get_parent_element ::
        JSRef Node -> IO (JSRef Element)
#else 
webkit_dom_node_get_parent_element ::
                                     JSRef Node -> IO (JSRef Element)
webkit_dom_node_get_parent_element = undefined
#endif
 
nodeGetParentElement ::
                     (NodeClass self) => self -> IO (Maybe Element)
nodeGetParentElement self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_node_get_parent_element (unNode (toNode self)))