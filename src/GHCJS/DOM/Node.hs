{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Node
       (ghcjs_dom_node_insert_before, nodeInsertBefore,
        ghcjs_dom_node_replace_child, nodeReplaceChild,
        ghcjs_dom_node_remove_child, nodeRemoveChild,
        ghcjs_dom_node_append_child, nodeAppendChild,
        ghcjs_dom_node_has_child_nodes, nodeHasChildNodes,
        ghcjs_dom_node_clone_node, nodeCloneNode, ghcjs_dom_node_normalize,
        nodeNormalize, ghcjs_dom_node_is_supported, nodeIsSupported,
        ghcjs_dom_node_is_same_node, nodeIsSameNode,
        ghcjs_dom_node_is_equal_node, nodeIsEqualNode,
        ghcjs_dom_node_lookup_prefix, nodeLookupPrefix,
        ghcjs_dom_node_is_default_namespace, nodeIsDefaultNamespace,
        ghcjs_dom_node_lookup_namespace_uri, nodeLookupNamespaceURI,
        ghcjs_dom_node_compare_document_position,
        nodeCompareDocumentPosition, ghcjs_dom_node_contains, nodeContains,
        ghcjs_dom_node_dispatch_event, nodeDispatchEvent, cELEMENT_NODE,
        cATTRIBUTE_NODE, cTEXT_NODE, cCDATA_SECTION_NODE,
        cENTITY_REFERENCE_NODE, cENTITY_NODE, cPROCESSING_INSTRUCTION_NODE,
        cCOMMENT_NODE, cDOCUMENT_NODE, cDOCUMENT_TYPE_NODE,
        cDOCUMENT_FRAGMENT_NODE, cNOTATION_NODE,
        cDOCUMENT_POSITION_DISCONNECTED, cDOCUMENT_POSITION_PRECEDING,
        cDOCUMENT_POSITION_FOLLOWING, cDOCUMENT_POSITION_CONTAINS,
        cDOCUMENT_POSITION_CONTAINED_BY,
        cDOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC,
        ghcjs_dom_node_get_node_name, nodeGetNodeName,
        ghcjs_dom_node_set_node_value, nodeSetNodeValue,
        ghcjs_dom_node_get_node_value, nodeGetNodeValue,
        ghcjs_dom_node_get_node_type, nodeGetNodeType,
        ghcjs_dom_node_get_parent_node, nodeGetParentNode,
        ghcjs_dom_node_get_child_nodes, nodeGetChildNodes,
        ghcjs_dom_node_get_first_child, nodeGetFirstChild,
        ghcjs_dom_node_get_last_child, nodeGetLastChild,
        ghcjs_dom_node_get_previous_sibling, nodeGetPreviousSibling,
        ghcjs_dom_node_get_next_sibling, nodeGetNextSibling,
        ghcjs_dom_node_get_owner_document, nodeGetOwnerDocument,
        ghcjs_dom_node_get_namespace_uri, nodeGetNamespaceURI,
        ghcjs_dom_node_set_prefix, nodeSetPrefix,
        ghcjs_dom_node_get_prefix, nodeGetPrefix,
        ghcjs_dom_node_get_local_name, nodeGetLocalName,
        ghcjs_dom_node_get_base_uri, nodeGetBaseURI,
        ghcjs_dom_node_set_text_content, nodeSetTextContent,
        ghcjs_dom_node_get_text_content, nodeGetTextContent,
        ghcjs_dom_node_get_parent_element, nodeGetParentElement, Node,
        IsNode, castToNode, gTypeNode, toNode)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"insertBefore\"]($2, $3)"
        ghcjs_dom_node_insert_before ::
        JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)
 
nodeInsertBefore ::
                 (IsNode self, IsNode newChild, IsNode refChild) =>
                   self -> Maybe newChild -> Maybe refChild -> IO (Maybe Node)
nodeInsertBefore self newChild refChild
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_insert_before (unNode (toNode self))
         (maybe jsNull (unNode . toNode) newChild)
         (maybe jsNull (unNode . toNode) refChild))
 
foreign import javascript unsafe "$1[\"replaceChild\"]($2, $3)"
        ghcjs_dom_node_replace_child ::
        JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)
 
nodeReplaceChild ::
                 (IsNode self, IsNode newChild, IsNode oldChild) =>
                   self -> Maybe newChild -> Maybe oldChild -> IO (Maybe Node)
nodeReplaceChild self newChild oldChild
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_replace_child (unNode (toNode self))
         (maybe jsNull (unNode . toNode) newChild)
         (maybe jsNull (unNode . toNode) oldChild))
 
foreign import javascript unsafe "$1[\"removeChild\"]($2)"
        ghcjs_dom_node_remove_child ::
        JSRef Node -> JSRef Node -> IO (JSRef Node)
 
nodeRemoveChild ::
                (IsNode self, IsNode oldChild) =>
                  self -> Maybe oldChild -> IO (Maybe Node)
nodeRemoveChild self oldChild
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_remove_child (unNode (toNode self))
         (maybe jsNull (unNode . toNode) oldChild))
 
foreign import javascript unsafe "$1[\"appendChild\"]($2)"
        ghcjs_dom_node_append_child ::
        JSRef Node -> JSRef Node -> IO (JSRef Node)
 
nodeAppendChild ::
                (IsNode self, IsNode newChild) =>
                  self -> Maybe newChild -> IO (Maybe Node)
nodeAppendChild self newChild
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_append_child (unNode (toNode self))
         (maybe jsNull (unNode . toNode) newChild))
 
foreign import javascript unsafe
        "($1[\"hasChildNodes\"]() ? 1 : 0)" ghcjs_dom_node_has_child_nodes
        :: JSRef Node -> IO Bool
 
nodeHasChildNodes :: (IsNode self) => self -> IO Bool
nodeHasChildNodes self
  = ghcjs_dom_node_has_child_nodes (unNode (toNode self))
 
foreign import javascript unsafe "$1[\"cloneNode\"]($2)"
        ghcjs_dom_node_clone_node :: JSRef Node -> Bool -> IO (JSRef Node)
 
nodeCloneNode :: (IsNode self) => self -> Bool -> IO (Maybe Node)
nodeCloneNode self deep
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_clone_node (unNode (toNode self)) deep)
 
foreign import javascript unsafe "$1[\"normalize\"]()"
        ghcjs_dom_node_normalize :: JSRef Node -> IO ()
 
nodeNormalize :: (IsNode self) => self -> IO ()
nodeNormalize self
  = ghcjs_dom_node_normalize (unNode (toNode self))
 
foreign import javascript unsafe
        "($1[\"isSupported\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_node_is_supported ::
        JSRef Node -> JSString -> JSString -> IO Bool
 
nodeIsSupported ::
                (IsNode self, ToJSString feature, ToJSString version) =>
                  self -> feature -> version -> IO Bool
nodeIsSupported self feature version
  = ghcjs_dom_node_is_supported (unNode (toNode self))
      (toJSString feature)
      (toJSString version)
 
foreign import javascript unsafe "($1[\"isSameNode\"]($2) ? 1 : 0)"
        ghcjs_dom_node_is_same_node :: JSRef Node -> JSRef Node -> IO Bool
 
nodeIsSameNode ::
               (IsNode self, IsNode other) => self -> Maybe other -> IO Bool
nodeIsSameNode self other
  = ghcjs_dom_node_is_same_node (unNode (toNode self))
      (maybe jsNull (unNode . toNode) other)
 
foreign import javascript unsafe
        "($1[\"isEqualNode\"]($2) ? 1 : 0)" ghcjs_dom_node_is_equal_node ::
        JSRef Node -> JSRef Node -> IO Bool
 
nodeIsEqualNode ::
                (IsNode self, IsNode other) => self -> Maybe other -> IO Bool
nodeIsEqualNode self other
  = ghcjs_dom_node_is_equal_node (unNode (toNode self))
      (maybe jsNull (unNode . toNode) other)
 
foreign import javascript unsafe "$1[\"lookupPrefix\"]($2)"
        ghcjs_dom_node_lookup_prefix ::
        JSRef Node -> JSString -> IO JSString
 
nodeLookupPrefix ::
                 (IsNode self, ToJSString namespaceURI, FromJSString result) =>
                   self -> namespaceURI -> IO result
nodeLookupPrefix self namespaceURI
  = fromJSString <$>
      (ghcjs_dom_node_lookup_prefix (unNode (toNode self))
         (toJSString namespaceURI))
 
foreign import javascript unsafe
        "($1[\"isDefaultNamespace\"]($2) ? 1 : 0)"
        ghcjs_dom_node_is_default_namespace ::
        JSRef Node -> JSString -> IO Bool
 
nodeIsDefaultNamespace ::
                       (IsNode self, ToJSString namespaceURI) =>
                         self -> namespaceURI -> IO Bool
nodeIsDefaultNamespace self namespaceURI
  = ghcjs_dom_node_is_default_namespace (unNode (toNode self))
      (toJSString namespaceURI)
 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        ghcjs_dom_node_lookup_namespace_uri ::
        JSRef Node -> JSString -> IO JSString
 
nodeLookupNamespaceURI ::
                       (IsNode self, ToJSString prefix, FromJSString result) =>
                         self -> prefix -> IO result
nodeLookupNamespaceURI self prefix
  = fromJSString <$>
      (ghcjs_dom_node_lookup_namespace_uri (unNode (toNode self))
         (toJSString prefix))
 
foreign import javascript unsafe
        "$1[\"compareDocumentPosition\"]($2)"
        ghcjs_dom_node_compare_document_position ::
        JSRef Node -> JSRef Node -> IO Word
 
nodeCompareDocumentPosition ::
                            (IsNode self, IsNode other) => self -> Maybe other -> IO Word
nodeCompareDocumentPosition self other
  = ghcjs_dom_node_compare_document_position (unNode (toNode self))
      (maybe jsNull (unNode . toNode) other)
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        ghcjs_dom_node_contains :: JSRef Node -> JSRef Node -> IO Bool
 
nodeContains ::
             (IsNode self, IsNode other) => self -> Maybe other -> IO Bool
nodeContains self other
  = ghcjs_dom_node_contains (unNode (toNode self))
      (maybe jsNull (unNode . toNode) other)
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)" ghcjs_dom_node_dispatch_event
        :: JSRef Node -> JSRef Event -> IO Bool
 
nodeDispatchEvent ::
                  (IsNode self, IsEvent event) => self -> Maybe event -> IO Bool
nodeDispatchEvent self event
  = ghcjs_dom_node_dispatch_event (unNode (toNode self))
      (maybe jsNull (unEvent . toEvent) event)
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
 
foreign import javascript unsafe "$1[\"nodeName\"]"
        ghcjs_dom_node_get_node_name :: JSRef Node -> IO JSString
 
nodeGetNodeName ::
                (IsNode self, FromJSString result) => self -> IO result
nodeGetNodeName self
  = fromJSString <$>
      (ghcjs_dom_node_get_node_name (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"nodeValue\"] = $2;"
        ghcjs_dom_node_set_node_value :: JSRef Node -> JSString -> IO ()
 
nodeSetNodeValue ::
                 (IsNode self, ToJSString val) => self -> val -> IO ()
nodeSetNodeValue self val
  = ghcjs_dom_node_set_node_value (unNode (toNode self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"nodeValue\"]"
        ghcjs_dom_node_get_node_value :: JSRef Node -> IO JSString
 
nodeGetNodeValue ::
                 (IsNode self, FromJSString result) => self -> IO result
nodeGetNodeValue self
  = fromJSString <$>
      (ghcjs_dom_node_get_node_value (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"nodeType\"]"
        ghcjs_dom_node_get_node_type :: JSRef Node -> IO Word
 
nodeGetNodeType :: (IsNode self) => self -> IO Word
nodeGetNodeType self
  = ghcjs_dom_node_get_node_type (unNode (toNode self))
 
foreign import javascript unsafe "$1[\"parentNode\"]"
        ghcjs_dom_node_get_parent_node :: JSRef Node -> IO (JSRef Node)
 
nodeGetParentNode :: (IsNode self) => self -> IO (Maybe Node)
nodeGetParentNode self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_get_parent_node (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"childNodes\"]"
        ghcjs_dom_node_get_child_nodes :: JSRef Node -> IO (JSRef NodeList)
 
nodeGetChildNodes :: (IsNode self) => self -> IO (Maybe NodeList)
nodeGetChildNodes self
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_node_get_child_nodes (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"firstChild\"]"
        ghcjs_dom_node_get_first_child :: JSRef Node -> IO (JSRef Node)
 
nodeGetFirstChild :: (IsNode self) => self -> IO (Maybe Node)
nodeGetFirstChild self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_get_first_child (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"lastChild\"]"
        ghcjs_dom_node_get_last_child :: JSRef Node -> IO (JSRef Node)
 
nodeGetLastChild :: (IsNode self) => self -> IO (Maybe Node)
nodeGetLastChild self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_get_last_child (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        ghcjs_dom_node_get_previous_sibling ::
        JSRef Node -> IO (JSRef Node)
 
nodeGetPreviousSibling :: (IsNode self) => self -> IO (Maybe Node)
nodeGetPreviousSibling self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_get_previous_sibling (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        ghcjs_dom_node_get_next_sibling :: JSRef Node -> IO (JSRef Node)
 
nodeGetNextSibling :: (IsNode self) => self -> IO (Maybe Node)
nodeGetNextSibling self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_get_next_sibling (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"ownerDocument\"]"
        ghcjs_dom_node_get_owner_document ::
        JSRef Node -> IO (JSRef Document)
 
nodeGetOwnerDocument ::
                     (IsNode self) => self -> IO (Maybe Document)
nodeGetOwnerDocument self
  = fmap Document . maybeJSNull <$>
      (ghcjs_dom_node_get_owner_document (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"namespaceURI\"]"
        ghcjs_dom_node_get_namespace_uri :: JSRef Node -> IO JSString
 
nodeGetNamespaceURI ::
                    (IsNode self, FromJSString result) => self -> IO result
nodeGetNamespaceURI self
  = fromJSString <$>
      (ghcjs_dom_node_get_namespace_uri (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"prefix\"] = $2;"
        ghcjs_dom_node_set_prefix :: JSRef Node -> JSString -> IO ()
 
nodeSetPrefix ::
              (IsNode self, ToJSString val) => self -> val -> IO ()
nodeSetPrefix self val
  = ghcjs_dom_node_set_prefix (unNode (toNode self)) (toJSString val)
 
foreign import javascript unsafe "$1[\"prefix\"]"
        ghcjs_dom_node_get_prefix :: JSRef Node -> IO JSString
 
nodeGetPrefix ::
              (IsNode self, FromJSString result) => self -> IO result
nodeGetPrefix self
  = fromJSString <$>
      (ghcjs_dom_node_get_prefix (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"localName\"]"
        ghcjs_dom_node_get_local_name :: JSRef Node -> IO JSString
 
nodeGetLocalName ::
                 (IsNode self, FromJSString result) => self -> IO result
nodeGetLocalName self
  = fromJSString <$>
      (ghcjs_dom_node_get_local_name (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"baseURI\"]"
        ghcjs_dom_node_get_base_uri :: JSRef Node -> IO JSString
 
nodeGetBaseURI ::
               (IsNode self, FromJSString result) => self -> IO result
nodeGetBaseURI self
  = fromJSString <$>
      (ghcjs_dom_node_get_base_uri (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"textContent\"] = $2;"
        ghcjs_dom_node_set_text_content :: JSRef Node -> JSString -> IO ()
 
nodeSetTextContent ::
                   (IsNode self, ToJSString val) => self -> val -> IO ()
nodeSetTextContent self val
  = ghcjs_dom_node_set_text_content (unNode (toNode self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"textContent\"]"
        ghcjs_dom_node_get_text_content :: JSRef Node -> IO JSString
 
nodeGetTextContent ::
                   (IsNode self, FromJSString result) => self -> IO result
nodeGetTextContent self
  = fromJSString <$>
      (ghcjs_dom_node_get_text_content (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"parentElement\"]"
        ghcjs_dom_node_get_parent_element ::
        JSRef Node -> IO (JSRef Element)
 
nodeGetParentElement :: (IsNode self) => self -> IO (Maybe Element)
nodeGetParentElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_node_get_parent_element (unNode (toNode self)))
#else
module GHCJS.DOM.Node (
  module Graphics.UI.Gtk.WebKit.DOM.Node
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Node
#endif
