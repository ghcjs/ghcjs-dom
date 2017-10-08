{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Node
       (js_getRootNode, getRootNode, getRootNode_, js_hasChildNodes,
        hasChildNodes, hasChildNodes_, js_normalize, normalize,
        js_cloneNode, cloneNode, cloneNode_, js_isEqualNode, isEqualNode,
        isEqualNode_, js_isSameNode, isSameNode, isSameNode_,
        js_compareDocumentPosition, compareDocumentPosition,
        compareDocumentPosition_, js_contains, contains, contains_,
        js_lookupPrefix, lookupPrefix, lookupPrefix_, lookupPrefixUnsafe,
        lookupPrefixUnchecked, js_lookupNamespaceURI, lookupNamespaceURI,
        lookupNamespaceURI_, lookupNamespaceURIUnsafe,
        lookupNamespaceURIUnchecked, js_isDefaultNamespace,
        isDefaultNamespace, isDefaultNamespace_, js_insertBefore,
        insertBefore, insertBefore_, js_appendChild, appendChild,
        appendChild_, js_replaceChild, replaceChild, replaceChild_,
        js_removeChild, removeChild, removeChild_, pattern ELEMENT_NODE,
        pattern ATTRIBUTE_NODE, pattern TEXT_NODE,
        pattern CDATA_SECTION_NODE, pattern ENTITY_REFERENCE_NODE,
        pattern ENTITY_NODE, pattern PROCESSING_INSTRUCTION_NODE,
        pattern COMMENT_NODE, pattern DOCUMENT_NODE,
        pattern DOCUMENT_TYPE_NODE, pattern DOCUMENT_FRAGMENT_NODE,
        pattern NOTATION_NODE, pattern DOCUMENT_POSITION_DISCONNECTED,
        pattern DOCUMENT_POSITION_PRECEDING,
        pattern DOCUMENT_POSITION_FOLLOWING,
        pattern DOCUMENT_POSITION_CONTAINS,
        pattern DOCUMENT_POSITION_CONTAINED_BY,
        pattern DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC, js_getNodeType,
        getNodeType, js_getNodeName, getNodeName, js_getBaseURI,
        getBaseURI, js_getIsConnected, getIsConnected, js_getOwnerDocument,
        getOwnerDocument, getOwnerDocumentUnsafe,
        getOwnerDocumentUnchecked, js_getParentNode, getParentNode,
        getParentNodeUnsafe, getParentNodeUnchecked, js_getParentElement,
        getParentElement, getParentElementUnsafe,
        getParentElementUnchecked, js_getChildNodes, getChildNodes,
        js_getFirstChild, getFirstChild, getFirstChildUnsafe,
        getFirstChildUnchecked, js_getLastChild, getLastChild,
        getLastChildUnsafe, getLastChildUnchecked, js_getPreviousSibling,
        getPreviousSibling, getPreviousSiblingUnsafe,
        getPreviousSiblingUnchecked, js_getNextSibling, getNextSibling,
        getNextSiblingUnsafe, getNextSiblingUnchecked, js_setNodeValue,
        setNodeValue, js_getNodeValue, getNodeValue, getNodeValueUnsafe,
        getNodeValueUnchecked, js_setTextContent, setTextContent,
        js_getTextContent, getTextContent, getTextContentUnsafe,
        getTextContentUnchecked, Node(..), gTypeNode, IsNode, toNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"getRootNode\"]($2)"
        js_getRootNode :: Node -> Optional GetRootNodeOptions -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.getRootNode Mozilla Node.getRootNode documentation> 
getRootNode ::
            (MonadIO m, IsNode self) =>
              self -> Maybe GetRootNodeOptions -> m Node
getRootNode self options
  = liftIO (js_getRootNode (toNode self) (maybeToOptional options))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.getRootNode Mozilla Node.getRootNode documentation> 
getRootNode_ ::
             (MonadIO m, IsNode self) =>
               self -> Maybe GetRootNodeOptions -> m ()
getRootNode_ self options
  = liftIO
      (void (js_getRootNode (toNode self) (maybeToOptional options)))
 
foreign import javascript unsafe
        "($1[\"hasChildNodes\"]() ? 1 : 0)" js_hasChildNodes ::
        Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
hasChildNodes :: (MonadIO m, IsNode self) => self -> m Bool
hasChildNodes self = liftIO (js_hasChildNodes (toNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
hasChildNodes_ :: (MonadIO m, IsNode self) => self -> m ()
hasChildNodes_ self
  = liftIO (void (js_hasChildNodes (toNode self)))
 
foreign import javascript unsafe "$1[\"normalize\"]()" js_normalize
        :: Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.normalize Mozilla Node.normalize documentation> 
normalize :: (MonadIO m, IsNode self) => self -> m ()
normalize self = liftIO (js_normalize (toNode self))
 
foreign import javascript safe "$1[\"cloneNode\"]($2)" js_cloneNode
        :: Node -> Bool -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNode :: (MonadIO m, IsNode self) => self -> Bool -> m Node
cloneNode self deep = liftIO (js_cloneNode (toNode self) deep)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNode_ :: (MonadIO m, IsNode self) => self -> Bool -> m ()
cloneNode_ self deep
  = liftIO (void (js_cloneNode (toNode self) deep))
 
foreign import javascript unsafe
        "($1[\"isEqualNode\"]($2) ? 1 : 0)" js_isEqualNode ::
        Node -> Optional Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isEqualNode Mozilla Node.isEqualNode documentation> 
isEqualNode ::
            (MonadIO m, IsNode self, IsNode other) =>
              self -> Maybe other -> m Bool
isEqualNode self other
  = liftIO
      (js_isEqualNode (toNode self)
         (maybeToOptional (fmap toNode other)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isEqualNode Mozilla Node.isEqualNode documentation> 
isEqualNode_ ::
             (MonadIO m, IsNode self, IsNode other) =>
               self -> Maybe other -> m ()
isEqualNode_ self other
  = liftIO
      (void
         (js_isEqualNode (toNode self)
            (maybeToOptional (fmap toNode other))))
 
foreign import javascript unsafe "($1[\"isSameNode\"]($2) ? 1 : 0)"
        js_isSameNode :: Node -> Optional Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSameNode Mozilla Node.isSameNode documentation> 
isSameNode ::
           (MonadIO m, IsNode self, IsNode other) =>
             self -> Maybe other -> m Bool
isSameNode self other
  = liftIO
      (js_isSameNode (toNode self) (maybeToOptional (fmap toNode other)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSameNode Mozilla Node.isSameNode documentation> 
isSameNode_ ::
            (MonadIO m, IsNode self, IsNode other) =>
              self -> Maybe other -> m ()
isSameNode_ self other
  = liftIO
      (void
         (js_isSameNode (toNode self)
            (maybeToOptional (fmap toNode other))))
 
foreign import javascript unsafe
        "$1[\"compareDocumentPosition\"]($2)" js_compareDocumentPosition ::
        Node -> Node -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
compareDocumentPosition ::
                        (MonadIO m, IsNode self, IsNode other) => self -> other -> m Word
compareDocumentPosition self other
  = liftIO (js_compareDocumentPosition (toNode self) (toNode other))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
compareDocumentPosition_ ::
                         (MonadIO m, IsNode self, IsNode other) => self -> other -> m ()
compareDocumentPosition_ self other
  = liftIO
      (void (js_compareDocumentPosition (toNode self) (toNode other)))
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        js_contains :: Node -> Optional Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.contains Mozilla Node.contains documentation> 
contains ::
         (MonadIO m, IsNode self, IsNode other) =>
           self -> Maybe other -> m Bool
contains self other
  = liftIO
      (js_contains (toNode self) (maybeToOptional (fmap toNode other)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.contains Mozilla Node.contains documentation> 
contains_ ::
          (MonadIO m, IsNode self, IsNode other) =>
            self -> Maybe other -> m ()
contains_ self other
  = liftIO
      (void
         (js_contains (toNode self) (maybeToOptional (fmap toNode other))))
 
foreign import javascript unsafe "$1[\"lookupPrefix\"]($2)"
        js_lookupPrefix ::
        Node -> Optional JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefix ::
             (MonadIO m, IsNode self, ToJSString namespaceURI,
              FromJSString result) =>
               self -> Maybe namespaceURI -> m (Maybe result)
lookupPrefix self namespaceURI
  = liftIO
      (fromMaybeJSString <$>
         (js_lookupPrefix (toNode self) (toOptionalJSString namespaceURI)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefix_ ::
              (MonadIO m, IsNode self, ToJSString namespaceURI) =>
                self -> Maybe namespaceURI -> m ()
lookupPrefix_ self namespaceURI
  = liftIO
      (void
         (js_lookupPrefix (toNode self) (toOptionalJSString namespaceURI)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefixUnsafe ::
                   (MonadIO m, IsNode self, ToJSString namespaceURI, HasCallStack,
                    FromJSString result) =>
                     self -> Maybe namespaceURI -> m result
lookupPrefixUnsafe self namespaceURI
  = liftIO
      ((fromMaybeJSString <$>
          (js_lookupPrefix (toNode self) (toOptionalJSString namespaceURI)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefixUnchecked ::
                      (MonadIO m, IsNode self, ToJSString namespaceURI,
                       FromJSString result) =>
                        self -> Maybe namespaceURI -> m result
lookupPrefixUnchecked self namespaceURI
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_lookupPrefix (toNode self) (toOptionalJSString namespaceURI)))
 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        js_lookupNamespaceURI ::
        Node -> Optional JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURI ::
                   (MonadIO m, IsNode self, ToJSString prefix, FromJSString result) =>
                     self -> Maybe prefix -> m (Maybe result)
lookupNamespaceURI self prefix
  = liftIO
      (fromMaybeJSString <$>
         (js_lookupNamespaceURI (toNode self) (toOptionalJSString prefix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURI_ ::
                    (MonadIO m, IsNode self, ToJSString prefix) =>
                      self -> Maybe prefix -> m ()
lookupNamespaceURI_ self prefix
  = liftIO
      (void
         (js_lookupNamespaceURI (toNode self) (toOptionalJSString prefix)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURIUnsafe ::
                         (MonadIO m, IsNode self, ToJSString prefix, HasCallStack,
                          FromJSString result) =>
                           self -> Maybe prefix -> m result
lookupNamespaceURIUnsafe self prefix
  = liftIO
      ((fromMaybeJSString <$>
          (js_lookupNamespaceURI (toNode self) (toOptionalJSString prefix)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURIUnchecked ::
                            (MonadIO m, IsNode self, ToJSString prefix, FromJSString result) =>
                              self -> Maybe prefix -> m result
lookupNamespaceURIUnchecked self prefix
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_lookupNamespaceURI (toNode self) (toOptionalJSString prefix)))
 
foreign import javascript unsafe
        "($1[\"isDefaultNamespace\"]($2) ? 1 : 0)" js_isDefaultNamespace ::
        Node -> Optional JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isDefaultNamespace Mozilla Node.isDefaultNamespace documentation> 
isDefaultNamespace ::
                   (MonadIO m, IsNode self, ToJSString namespaceURI) =>
                     self -> Maybe namespaceURI -> m Bool
isDefaultNamespace self namespaceURI
  = liftIO
      (js_isDefaultNamespace (toNode self)
         (toOptionalJSString namespaceURI))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isDefaultNamespace Mozilla Node.isDefaultNamespace documentation> 
isDefaultNamespace_ ::
                    (MonadIO m, IsNode self, ToJSString namespaceURI) =>
                      self -> Maybe namespaceURI -> m ()
isDefaultNamespace_ self namespaceURI
  = liftIO
      (void
         (js_isDefaultNamespace (toNode self)
            (toOptionalJSString namespaceURI)))
 
foreign import javascript safe "$1[\"insertBefore\"]($2, $3)"
        js_insertBefore :: Node -> Node -> Optional Node -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBefore ::
             (MonadIO m, IsNode self, IsNode node, IsNode child) =>
               self -> node -> Maybe child -> m Node
insertBefore self node child
  = liftIO
      (js_insertBefore (toNode self) (toNode node)
         (maybeToOptional (fmap toNode child)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBefore_ ::
              (MonadIO m, IsNode self, IsNode node, IsNode child) =>
                self -> node -> Maybe child -> m ()
insertBefore_ self node child
  = liftIO
      (void
         (js_insertBefore (toNode self) (toNode node)
            (maybeToOptional (fmap toNode child))))
 
foreign import javascript safe "$1[\"appendChild\"]($2)"
        js_appendChild :: Node -> Node -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChild ::
            (MonadIO m, IsNode self, IsNode node) => self -> node -> m Node
appendChild self node
  = liftIO (js_appendChild (toNode self) (toNode node))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChild_ ::
             (MonadIO m, IsNode self, IsNode node) => self -> node -> m ()
appendChild_ self node
  = liftIO (void (js_appendChild (toNode self) (toNode node)))
 
foreign import javascript safe "$1[\"replaceChild\"]($2, $3)"
        js_replaceChild :: Node -> Node -> Node -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChild ::
             (MonadIO m, IsNode self, IsNode node, IsNode child) =>
               self -> node -> child -> m Node
replaceChild self node child
  = liftIO
      (js_replaceChild (toNode self) (toNode node) (toNode child))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChild_ ::
              (MonadIO m, IsNode self, IsNode node, IsNode child) =>
                self -> node -> child -> m ()
replaceChild_ self node child
  = liftIO
      (void (js_replaceChild (toNode self) (toNode node) (toNode child)))
 
foreign import javascript safe "$1[\"removeChild\"]($2)"
        js_removeChild :: Node -> Node -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChild ::
            (MonadIO m, IsNode self, IsNode child) => self -> child -> m Node
removeChild self child
  = liftIO (js_removeChild (toNode self) (toNode child))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChild_ ::
             (MonadIO m, IsNode self, IsNode child) => self -> child -> m ()
removeChild_ self child
  = liftIO (void (js_removeChild (toNode self) (toNode child)))
pattern ELEMENT_NODE = 1
pattern ATTRIBUTE_NODE = 2
pattern TEXT_NODE = 3
pattern CDATA_SECTION_NODE = 4
pattern ENTITY_REFERENCE_NODE = 5
pattern ENTITY_NODE = 6
pattern PROCESSING_INSTRUCTION_NODE = 7
pattern COMMENT_NODE = 8
pattern DOCUMENT_NODE = 9
pattern DOCUMENT_TYPE_NODE = 10
pattern DOCUMENT_FRAGMENT_NODE = 11
pattern NOTATION_NODE = 12
pattern DOCUMENT_POSITION_DISCONNECTED = 1
pattern DOCUMENT_POSITION_PRECEDING = 2
pattern DOCUMENT_POSITION_FOLLOWING = 4
pattern DOCUMENT_POSITION_CONTAINS = 8
pattern DOCUMENT_POSITION_CONTAINED_BY = 16
pattern DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 32
 
foreign import javascript unsafe "$1[\"nodeType\"]" js_getNodeType
        :: Node -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeType Mozilla Node.nodeType documentation> 
getNodeType :: (MonadIO m, IsNode self) => self -> m Word
getNodeType self = liftIO (js_getNodeType (toNode self))
 
foreign import javascript unsafe "$1[\"nodeName\"]" js_getNodeName
        :: Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeName Mozilla Node.nodeName documentation> 
getNodeName ::
            (MonadIO m, IsNode self, FromJSString result) => self -> m result
getNodeName self
  = liftIO (fromJSString <$> (js_getNodeName (toNode self)))
 
foreign import javascript unsafe "$1[\"baseURI\"]" js_getBaseURI ::
        Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.baseURI Mozilla Node.baseURI documentation> 
getBaseURI ::
           (MonadIO m, IsNode self, FromJSString result) => self -> m result
getBaseURI self
  = liftIO (fromJSString <$> (js_getBaseURI (toNode self)))
 
foreign import javascript unsafe "($1[\"isConnected\"] ? 1 : 0)"
        js_getIsConnected :: Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isConnected Mozilla Node.isConnected documentation> 
getIsConnected :: (MonadIO m, IsNode self) => self -> m Bool
getIsConnected self = liftIO (js_getIsConnected (toNode self))
 
foreign import javascript unsafe "$1[\"ownerDocument\"]"
        js_getOwnerDocument :: Node -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
getOwnerDocument ::
                 (MonadIO m, IsNode self) => self -> m (Maybe Document)
getOwnerDocument self
  = liftIO (nullableToMaybe <$> (js_getOwnerDocument (toNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
getOwnerDocumentUnsafe ::
                       (MonadIO m, IsNode self, HasCallStack) => self -> m Document
getOwnerDocumentUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getOwnerDocument (toNode self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
getOwnerDocumentUnchecked ::
                          (MonadIO m, IsNode self) => self -> m Document
getOwnerDocumentUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getOwnerDocument (toNode self)))
 
foreign import javascript unsafe "$1[\"parentNode\"]"
        js_getParentNode :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
getParentNode :: (MonadIO m, IsNode self) => self -> m (Maybe Node)
getParentNode self
  = liftIO (nullableToMaybe <$> (js_getParentNode (toNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
getParentNodeUnsafe ::
                    (MonadIO m, IsNode self, HasCallStack) => self -> m Node
getParentNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getParentNode (toNode self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
getParentNodeUnchecked ::
                       (MonadIO m, IsNode self) => self -> m Node
getParentNodeUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getParentNode (toNode self)))
 
foreign import javascript unsafe "$1[\"parentElement\"]"
        js_getParentElement :: Node -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
getParentElement ::
                 (MonadIO m, IsNode self) => self -> m (Maybe Element)
getParentElement self
  = liftIO (nullableToMaybe <$> (js_getParentElement (toNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
getParentElementUnsafe ::
                       (MonadIO m, IsNode self, HasCallStack) => self -> m Element
getParentElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getParentElement (toNode self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
getParentElementUnchecked ::
                          (MonadIO m, IsNode self) => self -> m Element
getParentElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getParentElement (toNode self)))
 
foreign import javascript unsafe "$1[\"childNodes\"]"
        js_getChildNodes :: Node -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.childNodes Mozilla Node.childNodes documentation> 
getChildNodes :: (MonadIO m, IsNode self) => self -> m NodeList
getChildNodes self = liftIO (js_getChildNodes (toNode self))
 
foreign import javascript unsafe "$1[\"firstChild\"]"
        js_getFirstChild :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
getFirstChild :: (MonadIO m, IsNode self) => self -> m (Maybe Node)
getFirstChild self
  = liftIO (nullableToMaybe <$> (js_getFirstChild (toNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
getFirstChildUnsafe ::
                    (MonadIO m, IsNode self, HasCallStack) => self -> m Node
getFirstChildUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFirstChild (toNode self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
getFirstChildUnchecked ::
                       (MonadIO m, IsNode self) => self -> m Node
getFirstChildUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getFirstChild (toNode self)))
 
foreign import javascript unsafe "$1[\"lastChild\"]"
        js_getLastChild :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
getLastChild :: (MonadIO m, IsNode self) => self -> m (Maybe Node)
getLastChild self
  = liftIO (nullableToMaybe <$> (js_getLastChild (toNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
getLastChildUnsafe ::
                   (MonadIO m, IsNode self, HasCallStack) => self -> m Node
getLastChildUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getLastChild (toNode self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
getLastChildUnchecked :: (MonadIO m, IsNode self) => self -> m Node
getLastChildUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getLastChild (toNode self)))
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        js_getPreviousSibling :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
getPreviousSibling ::
                   (MonadIO m, IsNode self) => self -> m (Maybe Node)
getPreviousSibling self
  = liftIO
      (nullableToMaybe <$> (js_getPreviousSibling (toNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
getPreviousSiblingUnsafe ::
                         (MonadIO m, IsNode self, HasCallStack) => self -> m Node
getPreviousSiblingUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPreviousSibling (toNode self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
getPreviousSiblingUnchecked ::
                            (MonadIO m, IsNode self) => self -> m Node
getPreviousSiblingUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getPreviousSibling (toNode self)))
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        js_getNextSibling :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
getNextSibling ::
               (MonadIO m, IsNode self) => self -> m (Maybe Node)
getNextSibling self
  = liftIO (nullableToMaybe <$> (js_getNextSibling (toNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
getNextSiblingUnsafe ::
                     (MonadIO m, IsNode self, HasCallStack) => self -> m Node
getNextSiblingUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getNextSibling (toNode self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
getNextSiblingUnchecked ::
                        (MonadIO m, IsNode self) => self -> m Node
getNextSiblingUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getNextSibling (toNode self)))
 
foreign import javascript safe "$1[\"nodeValue\"] = $2;"
        js_setNodeValue :: Node -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
setNodeValue ::
             (MonadIO m, IsNode self, ToJSString val) =>
               self -> Maybe val -> m ()
setNodeValue self val
  = liftIO (js_setNodeValue (toNode self) (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"nodeValue\"]"
        js_getNodeValue :: Node -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
getNodeValue ::
             (MonadIO m, IsNode self, FromJSString result) =>
               self -> m (Maybe result)
getNodeValue self
  = liftIO (fromMaybeJSString <$> (js_getNodeValue (toNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
getNodeValueUnsafe ::
                   (MonadIO m, IsNode self, HasCallStack, FromJSString result) =>
                     self -> m result
getNodeValueUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getNodeValue (toNode self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
getNodeValueUnchecked ::
                      (MonadIO m, IsNode self, FromJSString result) => self -> m result
getNodeValueUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getNodeValue (toNode self)))
 
foreign import javascript safe "$1[\"textContent\"] = $2;"
        js_setTextContent :: Node -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
setTextContent ::
               (MonadIO m, IsNode self, ToJSString val) =>
                 self -> Maybe val -> m ()
setTextContent self val
  = liftIO (js_setTextContent (toNode self) (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"textContent\"]"
        js_getTextContent :: Node -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
getTextContent ::
               (MonadIO m, IsNode self, FromJSString result) =>
                 self -> m (Maybe result)
getTextContent self
  = liftIO (fromMaybeJSString <$> (js_getTextContent (toNode self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
getTextContentUnsafe ::
                     (MonadIO m, IsNode self, HasCallStack, FromJSString result) =>
                       self -> m result
getTextContentUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getTextContent (toNode self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
getTextContentUnchecked ::
                        (MonadIO m, IsNode self, FromJSString result) => self -> m result
getTextContentUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getTextContent (toNode self)))