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
        cELEMENT_NODE, cATTRIBUTE_NODE, cTEXT_NODE, cCDATA_SECTION_NODE,
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

 
foreign import javascript unsafe "$1[\"insertBefore\"]($2, $3)"
        ghcjs_dom_node_insert_before ::
        JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
nodeInsertBefore ::
                 (MonadIO m, IsNode self, IsNode newChild, IsNode refChild) =>
                   self -> Maybe newChild -> Maybe refChild -> m (Maybe Node)
nodeInsertBefore self newChild refChild
  = liftIO
      ((ghcjs_dom_node_insert_before (unNode (toNode self))
          (maybe jsNull (unNode . toNode) newChild)
          (maybe jsNull (unNode . toNode) refChild))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceChild\"]($2, $3)"
        ghcjs_dom_node_replace_child ::
        JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
nodeReplaceChild ::
                 (MonadIO m, IsNode self, IsNode newChild, IsNode oldChild) =>
                   self -> Maybe newChild -> Maybe oldChild -> m (Maybe Node)
nodeReplaceChild self newChild oldChild
  = liftIO
      ((ghcjs_dom_node_replace_child (unNode (toNode self))
          (maybe jsNull (unNode . toNode) newChild)
          (maybe jsNull (unNode . toNode) oldChild))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeChild\"]($2)"
        ghcjs_dom_node_remove_child ::
        JSRef Node -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
nodeRemoveChild ::
                (MonadIO m, IsNode self, IsNode oldChild) =>
                  self -> Maybe oldChild -> m (Maybe Node)
nodeRemoveChild self oldChild
  = liftIO
      ((ghcjs_dom_node_remove_child (unNode (toNode self))
          (maybe jsNull (unNode . toNode) oldChild))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendChild\"]($2)"
        ghcjs_dom_node_append_child ::
        JSRef Node -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
nodeAppendChild ::
                (MonadIO m, IsNode self, IsNode newChild) =>
                  self -> Maybe newChild -> m (Maybe Node)
nodeAppendChild self newChild
  = liftIO
      ((ghcjs_dom_node_append_child (unNode (toNode self))
          (maybe jsNull (unNode . toNode) newChild))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"hasChildNodes\"]() ? 1 : 0)" ghcjs_dom_node_has_child_nodes
        :: JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
nodeHasChildNodes :: (MonadIO m, IsNode self) => self -> m Bool
nodeHasChildNodes self
  = liftIO (ghcjs_dom_node_has_child_nodes (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"cloneNode\"]($2)"
        ghcjs_dom_node_clone_node :: JSRef Node -> Bool -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
nodeCloneNode ::
              (MonadIO m, IsNode self) => self -> Bool -> m (Maybe Node)
nodeCloneNode self deep
  = liftIO
      ((ghcjs_dom_node_clone_node (unNode (toNode self)) deep) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"normalize\"]()"
        ghcjs_dom_node_normalize :: JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.normalize Mozilla Node.normalize documentation> 
nodeNormalize :: (MonadIO m, IsNode self) => self -> m ()
nodeNormalize self
  = liftIO (ghcjs_dom_node_normalize (unNode (toNode self)))
 
foreign import javascript unsafe
        "($1[\"isSupported\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_node_is_supported ::
        JSRef Node -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSupported Mozilla Node.isSupported documentation> 
nodeIsSupported ::
                (MonadIO m, IsNode self, ToJSString feature, ToJSString version) =>
                  self -> feature -> version -> m Bool
nodeIsSupported self feature version
  = liftIO
      (ghcjs_dom_node_is_supported (unNode (toNode self))
         (toJSString feature)
         (toJSString version))
 
foreign import javascript unsafe "($1[\"isSameNode\"]($2) ? 1 : 0)"
        ghcjs_dom_node_is_same_node :: JSRef Node -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSameNode Mozilla Node.isSameNode documentation> 
nodeIsSameNode ::
               (MonadIO m, IsNode self, IsNode other) =>
                 self -> Maybe other -> m Bool
nodeIsSameNode self other
  = liftIO
      (ghcjs_dom_node_is_same_node (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))
 
foreign import javascript unsafe
        "($1[\"isEqualNode\"]($2) ? 1 : 0)" ghcjs_dom_node_is_equal_node ::
        JSRef Node -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isEqualNode Mozilla Node.isEqualNode documentation> 
nodeIsEqualNode ::
                (MonadIO m, IsNode self, IsNode other) =>
                  self -> Maybe other -> m Bool
nodeIsEqualNode self other
  = liftIO
      (ghcjs_dom_node_is_equal_node (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))
 
foreign import javascript unsafe "$1[\"lookupPrefix\"]($2)"
        ghcjs_dom_node_lookup_prefix ::
        JSRef Node -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
nodeLookupPrefix ::
                 (MonadIO m, IsNode self, ToJSString namespaceURI,
                  FromJSString result) =>
                   self -> namespaceURI -> m result
nodeLookupPrefix self namespaceURI
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_node_lookup_prefix (unNode (toNode self))
            (toJSString namespaceURI)))
 
foreign import javascript unsafe
        "($1[\"isDefaultNamespace\"]($2) ? 1 : 0)"
        ghcjs_dom_node_is_default_namespace ::
        JSRef Node -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isDefaultNamespace Mozilla Node.isDefaultNamespace documentation> 
nodeIsDefaultNamespace ::
                       (MonadIO m, IsNode self, ToJSString namespaceURI) =>
                         self -> namespaceURI -> m Bool
nodeIsDefaultNamespace self namespaceURI
  = liftIO
      (ghcjs_dom_node_is_default_namespace (unNode (toNode self))
         (toJSString namespaceURI))
 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        ghcjs_dom_node_lookup_namespace_uri ::
        JSRef Node -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
nodeLookupNamespaceURI ::
                       (MonadIO m, IsNode self, ToJSString prefix, FromJSString result) =>
                         self -> prefix -> m result
nodeLookupNamespaceURI self prefix
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_node_lookup_namespace_uri (unNode (toNode self))
            (toJSString prefix)))
 
foreign import javascript unsafe
        "$1[\"compareDocumentPosition\"]($2)"
        ghcjs_dom_node_compare_document_position ::
        JSRef Node -> JSRef Node -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
nodeCompareDocumentPosition ::
                            (MonadIO m, IsNode self, IsNode other) =>
                              self -> Maybe other -> m Word
nodeCompareDocumentPosition self other
  = liftIO
      (ghcjs_dom_node_compare_document_position (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        ghcjs_dom_node_contains :: JSRef Node -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.contains Mozilla Node.contains documentation> 
nodeContains ::
             (MonadIO m, IsNode self, IsNode other) =>
               self -> Maybe other -> m Bool
nodeContains self other
  = liftIO
      (ghcjs_dom_node_contains (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeName Mozilla Node.nodeName documentation> 
nodeGetNodeName ::
                (MonadIO m, IsNode self, FromJSString result) => self -> m result
nodeGetNodeName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_node_get_node_name (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"nodeValue\"] = $2;"
        ghcjs_dom_node_set_node_value :: JSRef Node -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
nodeSetNodeValue ::
                 (MonadIO m, IsNode self, ToJSString val) => self -> val -> m ()
nodeSetNodeValue self val
  = liftIO
      (ghcjs_dom_node_set_node_value (unNode (toNode self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"nodeValue\"]"
        ghcjs_dom_node_get_node_value :: JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
nodeGetNodeValue ::
                 (MonadIO m, IsNode self, FromJSString result) => self -> m result
nodeGetNodeValue self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_node_get_node_value (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"nodeType\"]"
        ghcjs_dom_node_get_node_type :: JSRef Node -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeType Mozilla Node.nodeType documentation> 
nodeGetNodeType :: (MonadIO m, IsNode self) => self -> m Word
nodeGetNodeType self
  = liftIO (ghcjs_dom_node_get_node_type (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"parentNode\"]"
        ghcjs_dom_node_get_parent_node :: JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
nodeGetParentNode ::
                  (MonadIO m, IsNode self) => self -> m (Maybe Node)
nodeGetParentNode self
  = liftIO
      ((ghcjs_dom_node_get_parent_node (unNode (toNode self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"childNodes\"]"
        ghcjs_dom_node_get_child_nodes :: JSRef Node -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.childNodes Mozilla Node.childNodes documentation> 
nodeGetChildNodes ::
                  (MonadIO m, IsNode self) => self -> m (Maybe NodeList)
nodeGetChildNodes self
  = liftIO
      ((ghcjs_dom_node_get_child_nodes (unNode (toNode self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"firstChild\"]"
        ghcjs_dom_node_get_first_child :: JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
nodeGetFirstChild ::
                  (MonadIO m, IsNode self) => self -> m (Maybe Node)
nodeGetFirstChild self
  = liftIO
      ((ghcjs_dom_node_get_first_child (unNode (toNode self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"lastChild\"]"
        ghcjs_dom_node_get_last_child :: JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
nodeGetLastChild ::
                 (MonadIO m, IsNode self) => self -> m (Maybe Node)
nodeGetLastChild self
  = liftIO
      ((ghcjs_dom_node_get_last_child (unNode (toNode self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        ghcjs_dom_node_get_previous_sibling ::
        JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
nodeGetPreviousSibling ::
                       (MonadIO m, IsNode self) => self -> m (Maybe Node)
nodeGetPreviousSibling self
  = liftIO
      ((ghcjs_dom_node_get_previous_sibling (unNode (toNode self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        ghcjs_dom_node_get_next_sibling :: JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
nodeGetNextSibling ::
                   (MonadIO m, IsNode self) => self -> m (Maybe Node)
nodeGetNextSibling self
  = liftIO
      ((ghcjs_dom_node_get_next_sibling (unNode (toNode self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"ownerDocument\"]"
        ghcjs_dom_node_get_owner_document ::
        JSRef Node -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
nodeGetOwnerDocument ::
                     (MonadIO m, IsNode self) => self -> m (Maybe Document)
nodeGetOwnerDocument self
  = liftIO
      ((ghcjs_dom_node_get_owner_document (unNode (toNode self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"namespaceURI\"]"
        ghcjs_dom_node_get_namespace_uri :: JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.namespaceURI Mozilla Node.namespaceURI documentation> 
nodeGetNamespaceURI ::
                    (MonadIO m, IsNode self, FromJSString result) => self -> m result
nodeGetNamespaceURI self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_node_get_namespace_uri (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"prefix\"] = $2;"
        ghcjs_dom_node_set_prefix :: JSRef Node -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
nodeSetPrefix ::
              (MonadIO m, IsNode self, ToJSString val) => self -> val -> m ()
nodeSetPrefix self val
  = liftIO
      (ghcjs_dom_node_set_prefix (unNode (toNode self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"prefix\"]"
        ghcjs_dom_node_get_prefix :: JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
nodeGetPrefix ::
              (MonadIO m, IsNode self, FromJSString result) => self -> m result
nodeGetPrefix self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_node_get_prefix (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"localName\"]"
        ghcjs_dom_node_get_local_name :: JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.localName Mozilla Node.localName documentation> 
nodeGetLocalName ::
                 (MonadIO m, IsNode self, FromJSString result) => self -> m result
nodeGetLocalName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_node_get_local_name (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"baseURI\"]"
        ghcjs_dom_node_get_base_uri :: JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.baseURI Mozilla Node.baseURI documentation> 
nodeGetBaseURI ::
               (MonadIO m, IsNode self, FromJSString result) => self -> m result
nodeGetBaseURI self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_node_get_base_uri (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"textContent\"] = $2;"
        ghcjs_dom_node_set_text_content :: JSRef Node -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
nodeSetTextContent ::
                   (MonadIO m, IsNode self, ToJSString val) => self -> val -> m ()
nodeSetTextContent self val
  = liftIO
      (ghcjs_dom_node_set_text_content (unNode (toNode self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"textContent\"]"
        ghcjs_dom_node_get_text_content :: JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
nodeGetTextContent ::
                   (MonadIO m, IsNode self, FromJSString result) => self -> m result
nodeGetTextContent self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_node_get_text_content (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"parentElement\"]"
        ghcjs_dom_node_get_parent_element ::
        JSRef Node -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
nodeGetParentElement ::
                     (MonadIO m, IsNode self) => self -> m (Maybe Element)
nodeGetParentElement self
  = liftIO
      ((ghcjs_dom_node_get_parent_element (unNode (toNode self))) >>=
         fromJSRef)
#else
module GHCJS.DOM.Node (
  module Graphics.UI.Gtk.WebKit.DOM.Node
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Node
#endif
