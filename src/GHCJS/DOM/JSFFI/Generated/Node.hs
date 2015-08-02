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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"insertBefore\"]($2, $3)"
        js_insertBefore ::
        JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.insertBefore Mozilla Node.insertBefore documentation> 
insertBefore ::
             (MonadIO m, IsNode self, IsNode newChild, IsNode refChild) =>
               self -> Maybe newChild -> Maybe refChild -> m (Maybe Node)
insertBefore self newChild refChild
  = liftIO
      ((js_insertBefore (unNode (toNode self))
          (maybe jsNull (unNode . toNode) newChild)
          (maybe jsNull (unNode . toNode) refChild))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"replaceChild\"]($2, $3)"
        js_replaceChild ::
        JSRef Node -> JSRef Node -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.replaceChild Mozilla Node.replaceChild documentation> 
replaceChild ::
             (MonadIO m, IsNode self, IsNode newChild, IsNode oldChild) =>
               self -> Maybe newChild -> Maybe oldChild -> m (Maybe Node)
replaceChild self newChild oldChild
  = liftIO
      ((js_replaceChild (unNode (toNode self))
          (maybe jsNull (unNode . toNode) newChild)
          (maybe jsNull (unNode . toNode) oldChild))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeChild\"]($2)"
        js_removeChild :: JSRef Node -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.removeChild Mozilla Node.removeChild documentation> 
removeChild ::
            (MonadIO m, IsNode self, IsNode oldChild) =>
              self -> Maybe oldChild -> m (Maybe Node)
removeChild self oldChild
  = liftIO
      ((js_removeChild (unNode (toNode self))
          (maybe jsNull (unNode . toNode) oldChild))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"appendChild\"]($2)"
        js_appendChild :: JSRef Node -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.appendChild Mozilla Node.appendChild documentation> 
appendChild ::
            (MonadIO m, IsNode self, IsNode newChild) =>
              self -> Maybe newChild -> m (Maybe Node)
appendChild self newChild
  = liftIO
      ((js_appendChild (unNode (toNode self))
          (maybe jsNull (unNode . toNode) newChild))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"hasChildNodes\"]() ? 1 : 0)" js_hasChildNodes ::
        JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.hasChildNodes Mozilla Node.hasChildNodes documentation> 
hasChildNodes :: (MonadIO m, IsNode self) => self -> m Bool
hasChildNodes self
  = liftIO (js_hasChildNodes (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"cloneNode\"]($2)"
        js_cloneNode :: JSRef Node -> Bool -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.cloneNode Mozilla Node.cloneNode documentation> 
cloneNode ::
          (MonadIO m, IsNode self) => self -> Bool -> m (Maybe Node)
cloneNode self deep
  = liftIO ((js_cloneNode (unNode (toNode self)) deep) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"normalize\"]()" js_normalize
        :: JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.normalize Mozilla Node.normalize documentation> 
normalize :: (MonadIO m, IsNode self) => self -> m ()
normalize self = liftIO (js_normalize (unNode (toNode self)))
 
foreign import javascript unsafe
        "($1[\"isSupported\"]($2,\n$3) ? 1 : 0)" js_isSupported ::
        JSRef Node -> JSString -> JSRef (Maybe JSString) -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSupported Mozilla Node.isSupported documentation> 
isSupported ::
            (MonadIO m, IsNode self, ToJSString feature, ToJSString version) =>
              self -> feature -> Maybe version -> m Bool
isSupported self feature version
  = liftIO
      (js_isSupported (unNode (toNode self)) (toJSString feature)
         (toMaybeJSString version))
 
foreign import javascript unsafe "($1[\"isSameNode\"]($2) ? 1 : 0)"
        js_isSameNode :: JSRef Node -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isSameNode Mozilla Node.isSameNode documentation> 
isSameNode ::
           (MonadIO m, IsNode self, IsNode other) =>
             self -> Maybe other -> m Bool
isSameNode self other
  = liftIO
      (js_isSameNode (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))
 
foreign import javascript unsafe
        "($1[\"isEqualNode\"]($2) ? 1 : 0)" js_isEqualNode ::
        JSRef Node -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isEqualNode Mozilla Node.isEqualNode documentation> 
isEqualNode ::
            (MonadIO m, IsNode self, IsNode other) =>
              self -> Maybe other -> m Bool
isEqualNode self other
  = liftIO
      (js_isEqualNode (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))
 
foreign import javascript unsafe "$1[\"lookupPrefix\"]($2)"
        js_lookupPrefix ::
        JSRef Node -> JSRef (Maybe JSString) -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupPrefix Mozilla Node.lookupPrefix documentation> 
lookupPrefix ::
             (MonadIO m, IsNode self, ToJSString namespaceURI,
              FromJSString result) =>
               self -> Maybe namespaceURI -> m (Maybe result)
lookupPrefix self namespaceURI
  = liftIO
      (fromMaybeJSString <$>
         (js_lookupPrefix (unNode (toNode self))
            (toMaybeJSString namespaceURI)))
 
foreign import javascript unsafe
        "($1[\"isDefaultNamespace\"]($2) ? 1 : 0)" js_isDefaultNamespace ::
        JSRef Node -> JSRef (Maybe JSString) -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.isDefaultNamespace Mozilla Node.isDefaultNamespace documentation> 
isDefaultNamespace ::
                   (MonadIO m, IsNode self, ToJSString namespaceURI) =>
                     self -> Maybe namespaceURI -> m Bool
isDefaultNamespace self namespaceURI
  = liftIO
      (js_isDefaultNamespace (unNode (toNode self))
         (toMaybeJSString namespaceURI))
 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        js_lookupNamespaceURI ::
        JSRef Node -> JSRef (Maybe JSString) -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lookupNamespaceURI Mozilla Node.lookupNamespaceURI documentation> 
lookupNamespaceURI ::
                   (MonadIO m, IsNode self, ToJSString prefix, FromJSString result) =>
                     self -> Maybe prefix -> m (Maybe result)
lookupNamespaceURI self prefix
  = liftIO
      (fromMaybeJSString <$>
         (js_lookupNamespaceURI (unNode (toNode self))
            (toMaybeJSString prefix)))
 
foreign import javascript unsafe
        "$1[\"compareDocumentPosition\"]($2)" js_compareDocumentPosition ::
        JSRef Node -> JSRef Node -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.compareDocumentPosition Mozilla Node.compareDocumentPosition documentation> 
compareDocumentPosition ::
                        (MonadIO m, IsNode self, IsNode other) =>
                          self -> Maybe other -> m Word
compareDocumentPosition self other
  = liftIO
      (js_compareDocumentPosition (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        js_contains :: JSRef Node -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.contains Mozilla Node.contains documentation> 
contains ::
         (MonadIO m, IsNode self, IsNode other) =>
           self -> Maybe other -> m Bool
contains self other
  = liftIO
      (js_contains (unNode (toNode self))
         (maybe jsNull (unNode . toNode) other))
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
        :: JSRef Node -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeName Mozilla Node.nodeName documentation> 
getNodeName ::
            (MonadIO m, IsNode self, FromJSString result) =>
              self -> m (Maybe result)
getNodeName self
  = liftIO
      (fromMaybeJSString <$> (js_getNodeName (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"nodeValue\"] = $2;"
        js_setNodeValue :: JSRef Node -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
setNodeValue ::
             (MonadIO m, IsNode self, ToJSString val) =>
               self -> Maybe val -> m ()
setNodeValue self val
  = liftIO
      (js_setNodeValue (unNode (toNode self)) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"nodeValue\"]"
        js_getNodeValue :: JSRef Node -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeValue Mozilla Node.nodeValue documentation> 
getNodeValue ::
             (MonadIO m, IsNode self, FromJSString result) =>
               self -> m (Maybe result)
getNodeValue self
  = liftIO
      (fromMaybeJSString <$> (js_getNodeValue (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"nodeType\"]" js_getNodeType
        :: JSRef Node -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nodeType Mozilla Node.nodeType documentation> 
getNodeType :: (MonadIO m, IsNode self) => self -> m Word
getNodeType self = liftIO (js_getNodeType (unNode (toNode self)))
 
foreign import javascript unsafe "$1[\"parentNode\"]"
        js_getParentNode :: JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentNode Mozilla Node.parentNode documentation> 
getParentNode :: (MonadIO m, IsNode self) => self -> m (Maybe Node)
getParentNode self
  = liftIO ((js_getParentNode (unNode (toNode self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"childNodes\"]"
        js_getChildNodes :: JSRef Node -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.childNodes Mozilla Node.childNodes documentation> 
getChildNodes ::
              (MonadIO m, IsNode self) => self -> m (Maybe NodeList)
getChildNodes self
  = liftIO ((js_getChildNodes (unNode (toNode self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"firstChild\"]"
        js_getFirstChild :: JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.firstChild Mozilla Node.firstChild documentation> 
getFirstChild :: (MonadIO m, IsNode self) => self -> m (Maybe Node)
getFirstChild self
  = liftIO ((js_getFirstChild (unNode (toNode self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lastChild\"]"
        js_getLastChild :: JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.lastChild Mozilla Node.lastChild documentation> 
getLastChild :: (MonadIO m, IsNode self) => self -> m (Maybe Node)
getLastChild self
  = liftIO ((js_getLastChild (unNode (toNode self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousSibling\"]"
        js_getPreviousSibling :: JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.previousSibling Mozilla Node.previousSibling documentation> 
getPreviousSibling ::
                   (MonadIO m, IsNode self) => self -> m (Maybe Node)
getPreviousSibling self
  = liftIO
      ((js_getPreviousSibling (unNode (toNode self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nextSibling\"]"
        js_getNextSibling :: JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.nextSibling Mozilla Node.nextSibling documentation> 
getNextSibling ::
               (MonadIO m, IsNode self) => self -> m (Maybe Node)
getNextSibling self
  = liftIO ((js_getNextSibling (unNode (toNode self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"ownerDocument\"]"
        js_getOwnerDocument :: JSRef Node -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.ownerDocument Mozilla Node.ownerDocument documentation> 
getOwnerDocument ::
                 (MonadIO m, IsNode self) => self -> m (Maybe Document)
getOwnerDocument self
  = liftIO
      ((js_getOwnerDocument (unNode (toNode self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namespaceURI\"]"
        js_getNamespaceURI :: JSRef Node -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.namespaceURI Mozilla Node.namespaceURI documentation> 
getNamespaceURI ::
                (MonadIO m, IsNode self, FromJSString result) =>
                  self -> m (Maybe result)
getNamespaceURI self
  = liftIO
      (fromMaybeJSString <$> (js_getNamespaceURI (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"prefix\"] = $2;"
        js_setPrefix :: JSRef Node -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
setPrefix ::
          (MonadIO m, IsNode self, ToJSString val) =>
            self -> Maybe val -> m ()
setPrefix self val
  = liftIO
      (js_setPrefix (unNode (toNode self)) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"prefix\"]" js_getPrefix ::
        JSRef Node -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.prefix Mozilla Node.prefix documentation> 
getPrefix ::
          (MonadIO m, IsNode self, FromJSString result) =>
            self -> m (Maybe result)
getPrefix self
  = liftIO
      (fromMaybeJSString <$> (js_getPrefix (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"localName\"]"
        js_getLocalName :: JSRef Node -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.localName Mozilla Node.localName documentation> 
getLocalName ::
             (MonadIO m, IsNode self, FromJSString result) =>
               self -> m (Maybe result)
getLocalName self
  = liftIO
      (fromMaybeJSString <$> (js_getLocalName (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"baseURI\"]" js_getBaseURI ::
        JSRef Node -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.baseURI Mozilla Node.baseURI documentation> 
getBaseURI ::
           (MonadIO m, IsNode self, FromJSString result) =>
             self -> m (Maybe result)
getBaseURI self
  = liftIO
      (fromMaybeJSString <$> (js_getBaseURI (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"textContent\"] = $2;"
        js_setTextContent :: JSRef Node -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
setTextContent ::
               (MonadIO m, IsNode self, ToJSString val) =>
                 self -> Maybe val -> m ()
setTextContent self val
  = liftIO
      (js_setTextContent (unNode (toNode self)) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"textContent\"]"
        js_getTextContent :: JSRef Node -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.textContent Mozilla Node.textContent documentation> 
getTextContent ::
               (MonadIO m, IsNode self, FromJSString result) =>
                 self -> m (Maybe result)
getTextContent self
  = liftIO
      (fromMaybeJSString <$> (js_getTextContent (unNode (toNode self))))
 
foreign import javascript unsafe "$1[\"parentElement\"]"
        js_getParentElement :: JSRef Node -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Node.parentElement Mozilla Node.parentElement documentation> 
getParentElement ::
                 (MonadIO m, IsNode self) => self -> m (Maybe Element)
getParentElement self
  = liftIO
      ((js_getParentElement (unNode (toNode self))) >>= fromJSRef)