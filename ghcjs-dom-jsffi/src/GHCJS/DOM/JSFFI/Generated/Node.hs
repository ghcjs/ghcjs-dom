{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Node
       (js_insertBefore, insertBefore, js_replaceChild, replaceChild,
        js_removeChild, removeChild, js_appendChild, appendChild,
        js_hasChildNodes, hasChildNodes, js_cloneNode, cloneNode,
        js_normalize, normalize, js_isSupported, isSupported,
        js_isSameNode, isSameNode, js_isEqualNode, isEqualNode,
        js_lookupPrefix, lookupPrefix, js_isDefaultNamespace,
        isDefaultNamespace, js_lookupNamespaceURI, lookupNamespaceURI,
        js_compareDocumentPosition, compareDocumentPosition, js_contains,
        contains, pattern ELEMENT_NODE, pattern ATTRIBUTE_NODE,
        pattern TEXT_NODE, pattern CDATA_SECTION_NODE,
        pattern ENTITY_REFERENCE_NODE, pattern ENTITY_NODE,
        pattern PROCESSING_INSTRUCTION_NODE, pattern COMMENT_NODE,
        pattern DOCUMENT_NODE, pattern DOCUMENT_TYPE_NODE,
        pattern DOCUMENT_FRAGMENT_NODE, pattern NOTATION_NODE,
        pattern DOCUMENT_POSITION_DISCONNECTED,
        pattern DOCUMENT_POSITION_PRECEDING,
        pattern DOCUMENT_POSITION_FOLLOWING,
        pattern DOCUMENT_POSITION_CONTAINS,
        pattern DOCUMENT_POSITION_CONTAINED_BY,
        pattern DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC, js_getNodeName,
        getNodeName, js_setNodeValue, setNodeValue, js_getNodeValue,
        getNodeValue, js_getNodeType, getNodeType, js_getParentNode,
        getParentNode, js_getChildNodes, getChildNodes, js_getFirstChild,
        getFirstChild, js_getLastChild, getLastChild,
        js_getPreviousSibling, getPreviousSibling, js_getNextSibling,
        getNextSibling, js_getOwnerDocument, getOwnerDocument,
        js_getNamespaceURI, getNamespaceURI, js_setPrefix, setPrefix,
        js_getPrefix, getPrefix, js_getLocalName, getLocalName,
        js_getBaseURI, getBaseURI, js_setTextContent, setTextContent,
        js_getTextContent, getTextContent, js_getParentElement,
        getParentElement, Node, castToNode, gTypeNode, IsNode, toNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"insertBefore\"]($2, $3)"
        js_insertBefore ::
        Node -> Nullable Node -> Nullable Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBefore ::
             (MonadIO m, IsNode self, IsNode newChild, IsNode refChild) =>
               self -> Maybe newChild -> Maybe refChild -> m (Maybe Node)
insertBefore self newChild refChild
  = liftIO
      (nullableToMaybe <$>
         (js_insertBefore (toNode self)
            (maybeToNullable (fmap toNode newChild))
            (maybeToNullable (fmap toNode refChild))))
 
foreign import javascript unsafe "$1[\"replaceChild\"]($2, $3)"
        js_replaceChild ::
        Node -> Nullable Node -> Nullable Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChild ::
             (MonadIO m, IsNode self, IsNode newChild, IsNode oldChild) =>
               self -> Maybe newChild -> Maybe oldChild -> m (Maybe Node)
replaceChild self newChild oldChild
  = liftIO
      (nullableToMaybe <$>
         (js_replaceChild (toNode self)
            (maybeToNullable (fmap toNode newChild))
            (maybeToNullable (fmap toNode oldChild))))
 
foreign import javascript unsafe "$1[\"removeChild\"]($2)"
        js_removeChild :: Node -> Nullable Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChild ::
            (MonadIO m, IsNode self, IsNode oldChild) =>
              self -> Maybe oldChild -> m (Maybe Node)
removeChild self oldChild
  = liftIO
      (nullableToMaybe <$>
         (js_removeChild (toNode self)
            (maybeToNullable (fmap toNode oldChild))))
 
foreign import javascript unsafe "$1[\"appendChild\"]($2)"
        js_appendChild :: Node -> Nullable Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChild ::
            (MonadIO m, IsNode self, IsNode newChild) =>
              self -> Maybe newChild -> m (Maybe Node)
appendChild self newChild
  = liftIO
      (nullableToMaybe <$>
         (js_appendChild (toNode self)
            (maybeToNullable (fmap toNode newChild))))
 
foreign import javascript unsafe
        "($1[\"hasChildNodes\"]() ? 1 : 0)" js_hasChildNodes ::
        Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
hasChildNodes :: (MonadIO m, IsNode self) => self -> m Bool
hasChildNodes self = liftIO (js_hasChildNodes (toNode self))
 
foreign import javascript unsafe "$1[\"cloneNode\"]($2)"
        js_cloneNode :: Node -> Bool -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNode ::
          (MonadIO m, IsNode self) => self -> Bool -> m (Maybe Node)
cloneNode self deep
  = liftIO (nullableToMaybe <$> (js_cloneNode (toNode self) deep))
 
foreign import javascript unsafe "$1[\"normalize\"]()" js_normalize
        :: Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.normalize Mozilla Node.normalize documentation> 
normalize :: (MonadIO m, IsNode self) => self -> m ()
normalize self = liftIO (js_normalize (toNode self))
 
foreign import javascript unsafe
        "($1[\"isSupported\"]($2,\n$3) ? 1 : 0)" js_isSupported ::
        Node -> JSString -> Nullable JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSupported Mozilla Node.isSupported documentation> 
isSupported ::
            (MonadIO m, IsNode self, ToJSString feature, ToJSString version) =>
              self -> feature -> Maybe version -> m Bool
isSupported self feature version
  = liftIO
      (js_isSupported (toNode self) (toJSString feature)
         (toMaybeJSString version))
 
foreign import javascript unsafe "($1[\"isSameNode\"]($2) ? 1 : 0)"
        js_isSameNode :: Node -> Nullable Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSameNode Mozilla Node.isSameNode documentation> 
isSameNode ::
           (MonadIO m, IsNode self, IsNode other) =>
             self -> Maybe other -> m Bool
isSameNode self other
  = liftIO
      (js_isSameNode (toNode self) (maybeToNullable (fmap toNode other)))
 
foreign import javascript unsafe
        "($1[\"isEqualNode\"]($2) ? 1 : 0)" js_isEqualNode ::
        Node -> Nullable Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isEqualNode Mozilla Node.isEqualNode documentation> 
isEqualNode ::
            (MonadIO m, IsNode self, IsNode other) =>
              self -> Maybe other -> m Bool
isEqualNode self other
  = liftIO
      (js_isEqualNode (toNode self)
         (maybeToNullable (fmap toNode other)))
 
foreign import javascript unsafe "$1[\"lookupPrefix\"]($2)"
        js_lookupPrefix ::
        Node -> Nullable JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefix ::
             (MonadIO m, IsNode self, ToJSString namespaceURI,
              FromJSString result) =>
               self -> Maybe namespaceURI -> m (Maybe result)
lookupPrefix self namespaceURI
  = liftIO
      (fromMaybeJSString <$>
         (js_lookupPrefix (toNode self) (toMaybeJSString namespaceURI)))
 
foreign import javascript unsafe
        "($1[\"isDefaultNamespace\"]($2) ? 1 : 0)" js_isDefaultNamespace ::
        Node -> Nullable JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isDefaultNamespace Mozilla Node.isDefaultNamespace documentation> 
isDefaultNamespace ::
                   (MonadIO m, IsNode self, ToJSString namespaceURI) =>
                     self -> Maybe namespaceURI -> m Bool
isDefaultNamespace self namespaceURI
  = liftIO
      (js_isDefaultNamespace (toNode self)
         (toMaybeJSString namespaceURI))
 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        js_lookupNamespaceURI ::
        Node -> Nullable JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURI ::
                   (MonadIO m, IsNode self, ToJSString prefix, FromJSString result) =>
                     self -> Maybe prefix -> m (Maybe result)
lookupNamespaceURI self prefix
  = liftIO
      (fromMaybeJSString <$>
         (js_lookupNamespaceURI (toNode self) (toMaybeJSString prefix)))
 
foreign import javascript unsafe
        "$1[\"compareDocumentPosition\"]($2)" js_compareDocumentPosition ::
        Node -> Nullable Node -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
compareDocumentPosition ::
                        (MonadIO m, IsNode self, IsNode other) =>
                          self -> Maybe other -> m Word
compareDocumentPosition self other
  = liftIO
      (js_compareDocumentPosition (toNode self)
         (maybeToNullable (fmap toNode other)))
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        js_contains :: Node -> Nullable Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.contains Mozilla Node.contains documentation> 
contains ::
         (MonadIO m, IsNode self, IsNode other) =>
           self -> Maybe other -> m Bool
contains self other
  = liftIO
      (js_contains (toNode self) (maybeToNullable (fmap toNode other)))
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
 
foreign import javascript unsafe "$1[\"nodeName\"]" js_getNodeName
        :: Node -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeName Mozilla Node.nodeName documentation> 
getNodeName ::
            (MonadIO m, IsNode self, FromJSString result) =>
              self -> m (Maybe result)
getNodeName self
  = liftIO (fromMaybeJSString <$> (js_getNodeName (toNode self)))
 
foreign import javascript unsafe "$1[\"nodeValue\"] = $2;"
        js_setNodeValue :: Node -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
setNodeValue ::
             (MonadIO m, IsNode self, ToJSString val) =>
               self -> Maybe val -> m ()
setNodeValue self val
  = liftIO (js_setNodeValue (toNode self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"nodeValue\"]"
        js_getNodeValue :: Node -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
getNodeValue ::
             (MonadIO m, IsNode self, FromJSString result) =>
               self -> m (Maybe result)
getNodeValue self
  = liftIO (fromMaybeJSString <$> (js_getNodeValue (toNode self)))
 
foreign import javascript unsafe "$1[\"nodeType\"]" js_getNodeType
        :: Node -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeType Mozilla Node.nodeType documentation> 
getNodeType :: (MonadIO m, IsNode self) => self -> m Word
getNodeType self = liftIO (js_getNodeType (toNode self))
 
foreign import javascript unsafe "$1[\"parentNode\"]"
        js_getParentNode :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
getParentNode :: (MonadIO m, IsNode self) => self -> m (Maybe Node)
getParentNode self
  = liftIO (nullableToMaybe <$> (js_getParentNode (toNode self)))
 
foreign import javascript unsafe "$1[\"childNodes\"]"
        js_getChildNodes :: Node -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.childNodes Mozilla Node.childNodes documentation> 
getChildNodes ::
              (MonadIO m, IsNode self) => self -> m (Maybe NodeList)
getChildNodes self
  = liftIO (nullableToMaybe <$> (js_getChildNodes (toNode self)))
 
foreign import javascript unsafe "$1[\"firstChild\"]"
        js_getFirstChild :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
getFirstChild :: (MonadIO m, IsNode self) => self -> m (Maybe Node)
getFirstChild self
  = liftIO (nullableToMaybe <$> (js_getFirstChild (toNode self)))
 
foreign import javascript unsafe "$1[\"lastChild\"]"
        js_getLastChild :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
getLastChild :: (MonadIO m, IsNode self) => self -> m (Maybe Node)
getLastChild self
  = liftIO (nullableToMaybe <$> (js_getLastChild (toNode self)))
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        js_getPreviousSibling :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
getPreviousSibling ::
                   (MonadIO m, IsNode self) => self -> m (Maybe Node)
getPreviousSibling self
  = liftIO
      (nullableToMaybe <$> (js_getPreviousSibling (toNode self)))
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        js_getNextSibling :: Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
getNextSibling ::
               (MonadIO m, IsNode self) => self -> m (Maybe Node)
getNextSibling self
  = liftIO (nullableToMaybe <$> (js_getNextSibling (toNode self)))
 
foreign import javascript unsafe "$1[\"ownerDocument\"]"
        js_getOwnerDocument :: Node -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
getOwnerDocument ::
                 (MonadIO m, IsNode self) => self -> m (Maybe Document)
getOwnerDocument self
  = liftIO (nullableToMaybe <$> (js_getOwnerDocument (toNode self)))
 
foreign import javascript unsafe "$1[\"namespaceURI\"]"
        js_getNamespaceURI :: Node -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.namespaceURI Mozilla Node.namespaceURI documentation> 
getNamespaceURI ::
                (MonadIO m, IsNode self, FromJSString result) =>
                  self -> m (Maybe result)
getNamespaceURI self
  = liftIO (fromMaybeJSString <$> (js_getNamespaceURI (toNode self)))
 
foreign import javascript unsafe "$1[\"prefix\"] = $2;"
        js_setPrefix :: Node -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
setPrefix ::
          (MonadIO m, IsNode self, ToJSString val) =>
            self -> Maybe val -> m ()
setPrefix self val
  = liftIO (js_setPrefix (toNode self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"prefix\"]" js_getPrefix ::
        Node -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
getPrefix ::
          (MonadIO m, IsNode self, FromJSString result) =>
            self -> m (Maybe result)
getPrefix self
  = liftIO (fromMaybeJSString <$> (js_getPrefix (toNode self)))
 
foreign import javascript unsafe "$1[\"localName\"]"
        js_getLocalName :: Node -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.localName Mozilla Node.localName documentation> 
getLocalName ::
             (MonadIO m, IsNode self, FromJSString result) =>
               self -> m (Maybe result)
getLocalName self
  = liftIO (fromMaybeJSString <$> (js_getLocalName (toNode self)))
 
foreign import javascript unsafe "$1[\"baseURI\"]" js_getBaseURI ::
        Node -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.baseURI Mozilla Node.baseURI documentation> 
getBaseURI ::
           (MonadIO m, IsNode self, FromJSString result) =>
             self -> m (Maybe result)
getBaseURI self
  = liftIO (fromMaybeJSString <$> (js_getBaseURI (toNode self)))
 
foreign import javascript unsafe "$1[\"textContent\"] = $2;"
        js_setTextContent :: Node -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
setTextContent ::
               (MonadIO m, IsNode self, ToJSString val) =>
                 self -> Maybe val -> m ()
setTextContent self val
  = liftIO (js_setTextContent (toNode self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"textContent\"]"
        js_getTextContent :: Node -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
getTextContent ::
               (MonadIO m, IsNode self, FromJSString result) =>
                 self -> m (Maybe result)
getTextContent self
  = liftIO (fromMaybeJSString <$> (js_getTextContent (toNode self)))
 
foreign import javascript unsafe "$1[\"parentElement\"]"
        js_getParentElement :: Node -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
getParentElement ::
                 (MonadIO m, IsNode self) => self -> m (Maybe Element)
getParentElement self
  = liftIO (nullableToMaybe <$> (js_getParentElement (toNode self)))