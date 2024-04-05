{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Document
       (js_getAnimations, getAnimations, getAnimations_, js_newDocument,
        newDocument, js_getElementsByTagName, getElementsByTagName,
        getElementsByTagName_, js_getElementsByTagNameNS,
        getElementsByTagNameNS, getElementsByTagNameNS_,
        js_getElementsByClassName, getElementsByClassName,
        getElementsByClassName_, js_createElement, createElement,
        createElement_, js_createElementNS, createElementNS,
        createElementNS_, js_createDocumentFragment,
        createDocumentFragment, createDocumentFragment_, js_createTextNode,
        createTextNode, createTextNode_, js_createCDATASection,
        createCDATASection, createCDATASection_, js_createComment,
        createComment, createComment_, js_createProcessingInstruction,
        createProcessingInstruction, createProcessingInstruction_,
        js_importNode, importNode, importNode_, js_adoptNode, adoptNode,
        adoptNode_, js_createAttribute, createAttribute, createAttribute_,
        js_createAttributeNS, createAttributeNS, createAttributeNS_,
        js_createEvent, createEvent, createEvent_, js_createRange,
        createRange, createRange_, js_createNodeIterator,
        createNodeIterator, createNodeIterator_, js_createTreeWalker,
        createTreeWalker, createTreeWalker_, js_getElementsByName,
        getElementsByName, getElementsByName_, js_hasFocus, hasFocus,
        hasFocus_, js_execCommand, execCommand, execCommand_,
        js_queryCommandEnabled, queryCommandEnabled, queryCommandEnabled_,
        js_queryCommandIndeterm, queryCommandIndeterm,
        queryCommandIndeterm_, js_queryCommandState, queryCommandState,
        queryCommandState_, js_queryCommandSupported,
        queryCommandSupported, queryCommandSupported_,
        js_queryCommandValue, queryCommandValue, queryCommandValue_,
        js_getSelection, getSelection, getSelection_, getSelectionUnsafe,
        getSelectionUnchecked, js_createExpression, createExpression,
        createExpression_, js_createNSResolver, createNSResolver,
        createNSResolver_, js_evaluate, evaluate, evaluate_,
        js_webkitExitFullscreen, webkitExitFullscreen,
        js_webkitCancelFullScreen, webkitCancelFullScreen,
        js_exitPointerLock, exitPointerLock, js_getOverrideStyle,
        getOverrideStyle, getOverrideStyle_, js_caretRangeFromPoint,
        caretRangeFromPoint, caretRangeFromPoint_, js_getCSSCanvasContext,
        getCSSCanvasContext, getCSSCanvasContext_, js_webkitGetNamedFlows,
        webkitGetNamedFlows, webkitGetNamedFlows_, js_createTouch,
        createTouch, createTouch_, js_createTouchList, createTouchList,
        createTouchList_, js_getTimeline, getTimeline,
        js_getImplementation, getImplementation, js_getURL, getURL,
        js_getDocumentURI, getDocumentURI, js_getOrigin, getOrigin,
        js_getCompatMode, getCompatMode, js_getCharacterSet,
        getCharacterSet, js_getCharset, getCharset, js_getInputEncoding,
        getInputEncoding, js_getContentType, getContentType, js_getDoctype,
        getDoctype, getDoctypeUnsafe, getDoctypeUnchecked,
        js_getDocumentElement, getDocumentElement,
        getDocumentElementUnsafe, getDocumentElementUnchecked,
        js_getLocation, getLocation, getLocationUnsafe,
        getLocationUnchecked, js_setDomain, setDomain, js_getDomain,
        getDomain, js_getReferrer, getReferrer, js_setCookie, setCookie,
        js_getCookie, getCookie, js_getLastModified, getLastModified,
        js_getReadyState, getReadyState, js_setTitle, setTitle,
        js_getTitle, getTitle, js_setDir, setDir, js_getDir, getDir,
        js_setBody, setBody, js_getBody, getBody, getBodyUnsafe,
        getBodyUnchecked, js_getHead, getHead, getHeadUnsafe,
        getHeadUnchecked, js_getImages, getImages, js_getEmbeds, getEmbeds,
        js_getPlugins, getPlugins, js_getLinks, getLinks, js_getForms,
        getForms, js_getScripts, getScripts, js_getCurrentScript,
        getCurrentScript, getCurrentScriptUnsafe,
        getCurrentScriptUnchecked, js_getDefaultView, getDefaultView,
        getDefaultViewUnsafe, getDefaultViewUnchecked, js_setDesignMode,
        setDesignMode, js_getDesignMode, getDesignMode, readyStateChange,
        js_getStyleSheets, getStyleSheets, js_getScrollingElement,
        getScrollingElement, getScrollingElementUnsafe,
        getScrollingElementUnchecked, js_getWebkitFullscreenEnabled,
        getWebkitFullscreenEnabled, js_getWebkitFullscreenElement,
        getWebkitFullscreenElement, getWebkitFullscreenElementUnsafe,
        getWebkitFullscreenElementUnchecked, js_getWebkitIsFullScreen,
        getWebkitIsFullScreen, js_getWebkitFullScreenKeyboardInputAllowed,
        getWebkitFullScreenKeyboardInputAllowed,
        js_getWebkitCurrentFullScreenElement,
        getWebkitCurrentFullScreenElement, webKitFullscreenChange,
        webKitFullscreenError, pointerlockchange, pointerlockerror,
        js_getFonts, getFonts, js_getHidden, getHidden,
        js_getVisibilityState, getVisibilityState, visibilitychange,
        js_getApplets, getApplets, js_getAnchors, getAnchors,
        js_getPreferredStylesheetSet, getPreferredStylesheetSet,
        getPreferredStylesheetSetUnsafe,
        getPreferredStylesheetSetUnchecked, js_setSelectedStylesheetSet,
        setSelectedStylesheetSet, js_getSelectedStylesheetSet,
        getSelectedStylesheetSet, getSelectedStylesheetSetUnsafe,
        getSelectedStylesheetSetUnchecked, js_getXmlEncoding,
        getXmlEncoding, getXmlEncodingUnsafe, getXmlEncodingUnchecked,
        js_setXmlVersion, setXmlVersion, js_getXmlVersion, getXmlVersion,
        getXmlVersionUnsafe, getXmlVersionUnchecked, js_setXmlStandalone,
        setXmlStandalone, js_getXmlStandalone, getXmlStandalone,
        selectStart, selectionchange, js_getRootElement, getRootElement,
        getRootElementUnsafe, getRootElementUnchecked, Document(..),
        gTypeDocument, IsDocument, toDocument)
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
 
foreign import javascript unsafe "$1[\"getAnimations\"]()"
        js_getAnimations :: Document -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getAnimations Mozilla Document.getAnimations documentation> 
getAnimations ::
              (MonadIO m, IsDocument self) => self -> m [Animation]
getAnimations self
  = liftIO
      ((js_getAnimations (toDocument self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getAnimations Mozilla Document.getAnimations documentation> 
getAnimations_ :: (MonadIO m, IsDocument self) => self -> m ()
getAnimations_ self
  = liftIO (void (js_getAnimations (toDocument self)))
 
foreign import javascript unsafe "new window[\"Document\"]()"
        js_newDocument :: IO Document

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation> 
newDocument :: (MonadIO m) => m Document
newDocument = liftIO (js_newDocument)
 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        js_getElementsByTagName ::
        Document -> JSString -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadIO m, IsDocument self, ToJSString qualifiedName) =>
                       self -> qualifiedName -> m HTMLCollection
getElementsByTagName self qualifiedName
  = liftIO
      (js_getElementsByTagName (toDocument self)
         (toJSString qualifiedName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagName_ ::
                      (MonadIO m, IsDocument self, ToJSString qualifiedName) =>
                        self -> qualifiedName -> m ()
getElementsByTagName_ self qualifiedName
  = liftIO
      (void
         (js_getElementsByTagName (toDocument self)
            (toJSString qualifiedName)))
 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)" js_getElementsByTagNameNS
        :: Document -> Optional JSString -> JSString -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagNameNS Mozilla Document.getElementsByTagNameNS documentation> 
getElementsByTagNameNS ::
                       (MonadIO m, IsDocument self, ToJSString namespaceURI,
                        ToJSString localName) =>
                         self -> Maybe namespaceURI -> localName -> m HTMLCollection
getElementsByTagNameNS self namespaceURI localName
  = liftIO
      (js_getElementsByTagNameNS (toDocument self)
         (toOptionalJSString namespaceURI)
         (toJSString localName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagNameNS Mozilla Document.getElementsByTagNameNS documentation> 
getElementsByTagNameNS_ ::
                        (MonadIO m, IsDocument self, ToJSString namespaceURI,
                         ToJSString localName) =>
                          self -> Maybe namespaceURI -> localName -> m ()
getElementsByTagNameNS_ self namespaceURI localName
  = liftIO
      (void
         (js_getElementsByTagNameNS (toDocument self)
            (toOptionalJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)" js_getElementsByClassName ::
        Document -> JSString -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadIO m, IsDocument self, ToJSString classNames) =>
                         self -> classNames -> m HTMLCollection
getElementsByClassName self classNames
  = liftIO
      (js_getElementsByClassName (toDocument self)
         (toJSString classNames))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassName_ ::
                        (MonadIO m, IsDocument self, ToJSString classNames) =>
                          self -> classNames -> m ()
getElementsByClassName_ self classNames
  = liftIO
      (void
         (js_getElementsByClassName (toDocument self)
            (toJSString classNames)))
 
foreign import javascript safe "$1[\"createElement\"]($2)"
        js_createElement :: Document -> JSString -> IO Element

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElement ::
              (MonadIO m, IsDocument self, ToJSString localName) =>
                self -> localName -> m Element
createElement self localName
  = liftIO
      (js_createElement (toDocument self) (toJSString localName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElement_ ::
               (MonadIO m, IsDocument self, ToJSString localName) =>
                 self -> localName -> m ()
createElement_ self localName
  = liftIO
      (void (js_createElement (toDocument self) (toJSString localName)))
 
foreign import javascript safe "$1[\"createElementNS\"]($2, $3)"
        js_createElementNS ::
        Document -> Optional JSString -> JSString -> IO Element

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNS ::
                (MonadIO m, IsDocument self, ToJSString namespaceURI,
                 ToJSString qualifiedName) =>
                  self -> Maybe namespaceURI -> qualifiedName -> m Element
createElementNS self namespaceURI qualifiedName
  = liftIO
      (js_createElementNS (toDocument self)
         (toOptionalJSString namespaceURI)
         (toJSString qualifiedName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNS_ ::
                 (MonadIO m, IsDocument self, ToJSString namespaceURI,
                  ToJSString qualifiedName) =>
                   self -> Maybe namespaceURI -> qualifiedName -> m ()
createElementNS_ self namespaceURI qualifiedName
  = liftIO
      (void
         (js_createElementNS (toDocument self)
            (toOptionalJSString namespaceURI)
            (toJSString qualifiedName)))
 
foreign import javascript unsafe "$1[\"createDocumentFragment\"]()"
        js_createDocumentFragment :: Document -> IO DocumentFragment

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragment ::
                       (MonadIO m, IsDocument self) => self -> m DocumentFragment
createDocumentFragment self
  = liftIO (js_createDocumentFragment (toDocument self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragment_ ::
                        (MonadIO m, IsDocument self) => self -> m ()
createDocumentFragment_ self
  = liftIO (void (js_createDocumentFragment (toDocument self)))
 
foreign import javascript unsafe "$1[\"createTextNode\"]($2)"
        js_createTextNode :: Document -> JSString -> IO Text

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNode ::
               (MonadIO m, IsDocument self, ToJSString data') =>
                 self -> data' -> m Text
createTextNode self data'
  = liftIO (js_createTextNode (toDocument self) (toJSString data'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNode_ ::
                (MonadIO m, IsDocument self, ToJSString data') =>
                  self -> data' -> m ()
createTextNode_ self data'
  = liftIO
      (void (js_createTextNode (toDocument self) (toJSString data')))
 
foreign import javascript safe "$1[\"createCDATASection\"]($2)"
        js_createCDATASection :: Document -> JSString -> IO CDATASection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASection ::
                   (MonadIO m, IsDocument self, ToJSString data') =>
                     self -> data' -> m CDATASection
createCDATASection self data'
  = liftIO
      (js_createCDATASection (toDocument self) (toJSString data'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASection_ ::
                    (MonadIO m, IsDocument self, ToJSString data') =>
                      self -> data' -> m ()
createCDATASection_ self data'
  = liftIO
      (void (js_createCDATASection (toDocument self) (toJSString data')))
 
foreign import javascript unsafe "$1[\"createComment\"]($2)"
        js_createComment :: Document -> JSString -> IO Comment

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createComment ::
              (MonadIO m, IsDocument self, ToJSString data') =>
                self -> data' -> m Comment
createComment self data'
  = liftIO (js_createComment (toDocument self) (toJSString data'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createComment_ ::
               (MonadIO m, IsDocument self, ToJSString data') =>
                 self -> data' -> m ()
createComment_ self data'
  = liftIO
      (void (js_createComment (toDocument self) (toJSString data')))
 
foreign import javascript safe
        "$1[\"createProcessingInstruction\"]($2,\n$3)"
        js_createProcessingInstruction ::
        Document -> JSString -> JSString -> IO ProcessingInstruction

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
createProcessingInstruction ::
                            (MonadIO m, IsDocument self, ToJSString target,
                             ToJSString data') =>
                              self -> target -> data' -> m ProcessingInstruction
createProcessingInstruction self target data'
  = liftIO
      (js_createProcessingInstruction (toDocument self)
         (toJSString target)
         (toJSString data'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
createProcessingInstruction_ ::
                             (MonadIO m, IsDocument self, ToJSString target,
                              ToJSString data') =>
                               self -> target -> data' -> m ()
createProcessingInstruction_ self target data'
  = liftIO
      (void
         (js_createProcessingInstruction (toDocument self)
            (toJSString target)
            (toJSString data')))
 
foreign import javascript safe "$1[\"importNode\"]($2, $3)"
        js_importNode :: Document -> Node -> Bool -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNode ::
           (MonadIO m, IsDocument self, IsNode node) =>
             self -> node -> Bool -> m Node
importNode self node deep
  = liftIO (js_importNode (toDocument self) (toNode node) deep)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNode_ ::
            (MonadIO m, IsDocument self, IsNode node) =>
              self -> node -> Bool -> m ()
importNode_ self node deep
  = liftIO
      (void (js_importNode (toDocument self) (toNode node) deep))
 
foreign import javascript safe "$1[\"adoptNode\"]($2)" js_adoptNode
        :: Document -> Node -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNode ::
          (MonadIO m, IsDocument self, IsNode node) => self -> node -> m Node
adoptNode self node
  = liftIO (js_adoptNode (toDocument self) (toNode node))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNode_ ::
           (MonadIO m, IsDocument self, IsNode node) => self -> node -> m ()
adoptNode_ self node
  = liftIO (void (js_adoptNode (toDocument self) (toNode node)))
 
foreign import javascript safe "$1[\"createAttribute\"]($2)"
        js_createAttribute :: Document -> JSString -> IO Attr

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttribute ::
                (MonadIO m, IsDocument self, ToJSString localName) =>
                  self -> localName -> m Attr
createAttribute self localName
  = liftIO
      (js_createAttribute (toDocument self) (toJSString localName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttribute_ ::
                 (MonadIO m, IsDocument self, ToJSString localName) =>
                   self -> localName -> m ()
createAttribute_ self localName
  = liftIO
      (void
         (js_createAttribute (toDocument self) (toJSString localName)))
 
foreign import javascript safe "$1[\"createAttributeNS\"]($2, $3)"
        js_createAttributeNS ::
        Document -> Optional JSString -> JSString -> IO Attr

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNS ::
                  (MonadIO m, IsDocument self, ToJSString namespaceURI,
                   ToJSString qualifiedName) =>
                    self -> Maybe namespaceURI -> qualifiedName -> m Attr
createAttributeNS self namespaceURI qualifiedName
  = liftIO
      (js_createAttributeNS (toDocument self)
         (toOptionalJSString namespaceURI)
         (toJSString qualifiedName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNS_ ::
                   (MonadIO m, IsDocument self, ToJSString namespaceURI,
                    ToJSString qualifiedName) =>
                     self -> Maybe namespaceURI -> qualifiedName -> m ()
createAttributeNS_ self namespaceURI qualifiedName
  = liftIO
      (void
         (js_createAttributeNS (toDocument self)
            (toOptionalJSString namespaceURI)
            (toJSString qualifiedName)))
 
foreign import javascript safe "$1[\"createEvent\"]($2)"
        js_createEvent :: Document -> JSString -> IO Event

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEvent ::
            (MonadIO m, IsDocument self, ToJSString type') =>
              self -> type' -> m Event
createEvent self type'
  = liftIO (js_createEvent (toDocument self) (toJSString type'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEvent_ ::
             (MonadIO m, IsDocument self, ToJSString type') =>
               self -> type' -> m ()
createEvent_ self type'
  = liftIO
      (void (js_createEvent (toDocument self) (toJSString type')))
 
foreign import javascript unsafe "$1[\"createRange\"]()"
        js_createRange :: Document -> IO Range

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRange :: (MonadIO m, IsDocument self) => self -> m Range
createRange self = liftIO (js_createRange (toDocument self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRange_ :: (MonadIO m, IsDocument self) => self -> m ()
createRange_ self
  = liftIO (void (js_createRange (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"createNodeIterator\"]($2, $3,\n$4)" js_createNodeIterator ::
        Document ->
          Node -> Optional Word -> Optional NodeFilter -> IO NodeIterator

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIterator ::
                   (MonadIO m, IsDocument self, IsNode root) =>
                     self -> root -> Maybe Word -> Maybe NodeFilter -> m NodeIterator
createNodeIterator self root whatToShow filter
  = liftIO
      (js_createNodeIterator (toDocument self) (toNode root)
         (maybeToOptional whatToShow)
         (maybeToOptional filter))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIterator_ ::
                    (MonadIO m, IsDocument self, IsNode root) =>
                      self -> root -> Maybe Word -> Maybe NodeFilter -> m ()
createNodeIterator_ self root whatToShow filter
  = liftIO
      (void
         (js_createNodeIterator (toDocument self) (toNode root)
            (maybeToOptional whatToShow)
            (maybeToOptional filter)))
 
foreign import javascript unsafe
        "$1[\"createTreeWalker\"]($2, $3,\n$4)" js_createTreeWalker ::
        Document ->
          Node -> Optional Word -> Optional NodeFilter -> IO TreeWalker

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalker ::
                 (MonadIO m, IsDocument self, IsNode root) =>
                   self -> root -> Maybe Word -> Maybe NodeFilter -> m TreeWalker
createTreeWalker self root whatToShow filter
  = liftIO
      (js_createTreeWalker (toDocument self) (toNode root)
         (maybeToOptional whatToShow)
         (maybeToOptional filter))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalker_ ::
                  (MonadIO m, IsDocument self, IsNode root) =>
                    self -> root -> Maybe Word -> Maybe NodeFilter -> m ()
createTreeWalker_ self root whatToShow filter
  = liftIO
      (void
         (js_createTreeWalker (toDocument self) (toNode root)
            (maybeToOptional whatToShow)
            (maybeToOptional filter)))
 
foreign import javascript unsafe "$1[\"getElementsByName\"]($2)"
        js_getElementsByName :: Document -> JSString -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByName ::
                  (MonadIO m, IsDocument self, ToJSString elementName) =>
                    self -> elementName -> m NodeList
getElementsByName self elementName
  = liftIO
      (js_getElementsByName (toDocument self) (toJSString elementName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByName_ ::
                   (MonadIO m, IsDocument self, ToJSString elementName) =>
                     self -> elementName -> m ()
getElementsByName_ self elementName
  = liftIO
      (void
         (js_getElementsByName (toDocument self) (toJSString elementName)))
 
foreign import javascript unsafe "($1[\"hasFocus\"]() ? 1 : 0)"
        js_hasFocus :: Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
hasFocus :: (MonadIO m, IsDocument self) => self -> m Bool
hasFocus self = liftIO (js_hasFocus (toDocument self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
hasFocus_ :: (MonadIO m, IsDocument self) => self -> m ()
hasFocus_ self = liftIO (void (js_hasFocus (toDocument self)))
 
foreign import javascript unsafe
        "($1[\"execCommand\"]($2, $3,\n$4) ? 1 : 0)" js_execCommand ::
        Document -> JSString -> Bool -> Optional JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.execCommand Mozilla Document.execCommand documentation> 
execCommand ::
            (MonadIO m, IsDocument self, ToJSString commandId,
             ToJSString value) =>
              self -> commandId -> Bool -> Maybe value -> m Bool
execCommand self commandId showUI value
  = liftIO
      (js_execCommand (toDocument self) (toJSString commandId) showUI
         (toOptionalJSString value))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.execCommand Mozilla Document.execCommand documentation> 
execCommand_ ::
             (MonadIO m, IsDocument self, ToJSString commandId,
              ToJSString value) =>
               self -> commandId -> Bool -> Maybe value -> m ()
execCommand_ self commandId showUI value
  = liftIO
      (void
         (js_execCommand (toDocument self) (toJSString commandId) showUI
            (toOptionalJSString value)))
 
foreign import javascript unsafe
        "($1[\"queryCommandEnabled\"]($2) ? 1 : 0)" js_queryCommandEnabled
        :: Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandEnabled Mozilla Document.queryCommandEnabled documentation> 
queryCommandEnabled ::
                    (MonadIO m, IsDocument self, ToJSString commandId) =>
                      self -> commandId -> m Bool
queryCommandEnabled self commandId
  = liftIO
      (js_queryCommandEnabled (toDocument self) (toJSString commandId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandEnabled Mozilla Document.queryCommandEnabled documentation> 
queryCommandEnabled_ ::
                     (MonadIO m, IsDocument self, ToJSString commandId) =>
                       self -> commandId -> m ()
queryCommandEnabled_ self commandId
  = liftIO
      (void
         (js_queryCommandEnabled (toDocument self) (toJSString commandId)))
 
foreign import javascript unsafe
        "($1[\"queryCommandIndeterm\"]($2) ? 1 : 0)"
        js_queryCommandIndeterm :: Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandIndeterm Mozilla Document.queryCommandIndeterm documentation> 
queryCommandIndeterm ::
                     (MonadIO m, IsDocument self, ToJSString commandId) =>
                       self -> commandId -> m Bool
queryCommandIndeterm self commandId
  = liftIO
      (js_queryCommandIndeterm (toDocument self) (toJSString commandId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandIndeterm Mozilla Document.queryCommandIndeterm documentation> 
queryCommandIndeterm_ ::
                      (MonadIO m, IsDocument self, ToJSString commandId) =>
                        self -> commandId -> m ()
queryCommandIndeterm_ self commandId
  = liftIO
      (void
         (js_queryCommandIndeterm (toDocument self) (toJSString commandId)))
 
foreign import javascript unsafe
        "($1[\"queryCommandState\"]($2) ? 1 : 0)" js_queryCommandState ::
        Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandState Mozilla Document.queryCommandState documentation> 
queryCommandState ::
                  (MonadIO m, IsDocument self, ToJSString commandId) =>
                    self -> commandId -> m Bool
queryCommandState self commandId
  = liftIO
      (js_queryCommandState (toDocument self) (toJSString commandId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandState Mozilla Document.queryCommandState documentation> 
queryCommandState_ ::
                   (MonadIO m, IsDocument self, ToJSString commandId) =>
                     self -> commandId -> m ()
queryCommandState_ self commandId
  = liftIO
      (void
         (js_queryCommandState (toDocument self) (toJSString commandId)))
 
foreign import javascript unsafe
        "($1[\"queryCommandSupported\"]($2) ? 1 : 0)"
        js_queryCommandSupported :: Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandSupported Mozilla Document.queryCommandSupported documentation> 
queryCommandSupported ::
                      (MonadIO m, IsDocument self, ToJSString commandId) =>
                        self -> commandId -> m Bool
queryCommandSupported self commandId
  = liftIO
      (js_queryCommandSupported (toDocument self) (toJSString commandId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandSupported Mozilla Document.queryCommandSupported documentation> 
queryCommandSupported_ ::
                       (MonadIO m, IsDocument self, ToJSString commandId) =>
                         self -> commandId -> m ()
queryCommandSupported_ self commandId
  = liftIO
      (void
         (js_queryCommandSupported (toDocument self)
            (toJSString commandId)))
 
foreign import javascript unsafe "$1[\"queryCommandValue\"]($2)"
        js_queryCommandValue :: Document -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandValue Mozilla Document.queryCommandValue documentation> 
queryCommandValue ::
                  (MonadIO m, IsDocument self, ToJSString commandId,
                   FromJSString result) =>
                    self -> commandId -> m result
queryCommandValue self commandId
  = liftIO
      (fromJSString <$>
         (js_queryCommandValue (toDocument self) (toJSString commandId)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandValue Mozilla Document.queryCommandValue documentation> 
queryCommandValue_ ::
                   (MonadIO m, IsDocument self, ToJSString commandId) =>
                     self -> commandId -> m ()
queryCommandValue_ self commandId
  = liftIO
      (void
         (js_queryCommandValue (toDocument self) (toJSString commandId)))
 
foreign import javascript unsafe "$1[\"getSelection\"]()"
        js_getSelection :: Document -> IO (Nullable Selection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelection ::
             (MonadIO m, IsDocument self) => self -> m (Maybe Selection)
getSelection self
  = liftIO (nullableToMaybe <$> (js_getSelection (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelection_ :: (MonadIO m, IsDocument self) => self -> m ()
getSelection_ self
  = liftIO (void (js_getSelection (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelectionUnsafe ::
                   (MonadIO m, IsDocument self, HasCallStack) => self -> m Selection
getSelectionUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSelection (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelectionUnchecked ::
                      (MonadIO m, IsDocument self) => self -> m Selection
getSelectionUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getSelection (toDocument self)))
 
foreign import javascript safe "$1[\"createExpression\"]($2, $3)"
        js_createExpression ::
        Document ->
          Optional JSString -> Optional XPathNSResolver -> IO XPathExpression

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpression ::
                 (MonadIO m, IsDocument self, ToJSString expression) =>
                   self ->
                     Maybe expression -> Maybe XPathNSResolver -> m XPathExpression
createExpression self expression resolver
  = liftIO
      (js_createExpression (toDocument self)
         (toOptionalJSString expression)
         (maybeToOptional resolver))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpression_ ::
                  (MonadIO m, IsDocument self, ToJSString expression) =>
                    self -> Maybe expression -> Maybe XPathNSResolver -> m ()
createExpression_ self expression resolver
  = liftIO
      (void
         (js_createExpression (toDocument self)
            (toOptionalJSString expression)
            (maybeToOptional resolver)))
 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        js_createNSResolver ::
        Document -> Optional Node -> IO XPathNSResolver

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolver ::
                 (MonadIO m, IsDocument self, IsNode nodeResolver) =>
                   self -> Maybe nodeResolver -> m XPathNSResolver
createNSResolver self nodeResolver
  = liftIO
      (js_createNSResolver (toDocument self)
         (maybeToOptional (fmap toNode nodeResolver)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolver_ ::
                  (MonadIO m, IsDocument self, IsNode nodeResolver) =>
                    self -> Maybe nodeResolver -> m ()
createNSResolver_ self nodeResolver
  = liftIO
      (void
         (js_createNSResolver (toDocument self)
            (maybeToOptional (fmap toNode nodeResolver))))
 
foreign import javascript safe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)" js_evaluate ::
        Document ->
          Optional JSString ->
            Optional Node ->
              Optional XPathNSResolver ->
                Optional Word -> Optional XPathResult -> IO XPathResult

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluate ::
         (MonadIO m, IsDocument self, ToJSString expression,
          IsNode contextNode) =>
           self ->
             Maybe expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Maybe Word -> Maybe XPathResult -> m XPathResult
evaluate self expression contextNode resolver type' inResult
  = liftIO
      (js_evaluate (toDocument self) (toOptionalJSString expression)
         (maybeToOptional (fmap toNode contextNode))
         (maybeToOptional resolver)
         (maybeToOptional type')
         (maybeToOptional inResult))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluate_ ::
          (MonadIO m, IsDocument self, ToJSString expression,
           IsNode contextNode) =>
            self ->
              Maybe expression ->
                Maybe contextNode ->
                  Maybe XPathNSResolver -> Maybe Word -> Maybe XPathResult -> m ()
evaluate_ self expression contextNode resolver type' inResult
  = liftIO
      (void
         (js_evaluate (toDocument self) (toOptionalJSString expression)
            (maybeToOptional (fmap toNode contextNode))
            (maybeToOptional resolver)
            (maybeToOptional type')
            (maybeToOptional inResult)))
 
foreign import javascript unsafe "$1[\"webkitExitFullscreen\"]()"
        js_webkitExitFullscreen :: Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitExitFullscreen Mozilla Document.webkitExitFullscreen documentation> 
webkitExitFullscreen ::
                     (MonadIO m, IsDocument self) => self -> m ()
webkitExitFullscreen self
  = liftIO (js_webkitExitFullscreen (toDocument self))
 
foreign import javascript unsafe "$1[\"webkitCancelFullScreen\"]()"
        js_webkitCancelFullScreen :: Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCancelFullScreen Mozilla Document.webkitCancelFullScreen documentation> 
webkitCancelFullScreen ::
                       (MonadIO m, IsDocument self) => self -> m ()
webkitCancelFullScreen self
  = liftIO (js_webkitCancelFullScreen (toDocument self))
 
foreign import javascript unsafe "$1[\"exitPointerLock\"]()"
        js_exitPointerLock :: Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.exitPointerLock Mozilla Document.exitPointerLock documentation> 
exitPointerLock :: (MonadIO m, IsDocument self) => self -> m ()
exitPointerLock self
  = liftIO (js_exitPointerLock (toDocument self))
 
foreign import javascript unsafe "$1[\"getOverrideStyle\"]($2, $3)"
        js_getOverrideStyle ::
        Document ->
          Optional Element -> Optional JSString -> IO CSSStyleDeclaration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyle ::
                 (MonadIO m, IsDocument self, IsElement element,
                  ToJSString pseudoElement) =>
                   self ->
                     Maybe element -> Maybe pseudoElement -> m CSSStyleDeclaration
getOverrideStyle self element pseudoElement
  = liftIO
      (js_getOverrideStyle (toDocument self)
         (maybeToOptional (fmap toElement element))
         (toOptionalJSString pseudoElement))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyle_ ::
                  (MonadIO m, IsDocument self, IsElement element,
                   ToJSString pseudoElement) =>
                    self -> Maybe element -> Maybe pseudoElement -> m ()
getOverrideStyle_ self element pseudoElement
  = liftIO
      (void
         (js_getOverrideStyle (toDocument self)
            (maybeToOptional (fmap toElement element))
            (toOptionalJSString pseudoElement)))
 
foreign import javascript unsafe
        "$1[\"caretRangeFromPoint\"]($2,\n$3)" js_caretRangeFromPoint ::
        Document -> Optional Int -> Optional Int -> IO Range

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPoint ::
                    (MonadIO m, IsDocument self) =>
                      self -> Maybe Int -> Maybe Int -> m Range
caretRangeFromPoint self x y
  = liftIO
      (js_caretRangeFromPoint (toDocument self) (maybeToOptional x)
         (maybeToOptional y))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPoint_ ::
                     (MonadIO m, IsDocument self) =>
                       self -> Maybe Int -> Maybe Int -> m ()
caretRangeFromPoint_ self x y
  = liftIO
      (void
         (js_caretRangeFromPoint (toDocument self) (maybeToOptional x)
            (maybeToOptional y)))
 
foreign import javascript unsafe
        "$1[\"getCSSCanvasContext\"]($2,\n$3, $4, $5)"
        js_getCSSCanvasContext ::
        Document ->
          JSString -> JSString -> Int -> Int -> IO RenderingContext

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getCSSCanvasContext Mozilla Document.getCSSCanvasContext documentation> 
getCSSCanvasContext ::
                    (MonadIO m, IsDocument self, ToJSString contextId,
                     ToJSString name) =>
                      self -> contextId -> name -> Int -> Int -> m RenderingContext
getCSSCanvasContext self contextId name width height
  = liftIO
      (js_getCSSCanvasContext (toDocument self) (toJSString contextId)
         (toJSString name)
         width
         height)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getCSSCanvasContext Mozilla Document.getCSSCanvasContext documentation> 
getCSSCanvasContext_ ::
                     (MonadIO m, IsDocument self, ToJSString contextId,
                      ToJSString name) =>
                       self -> contextId -> name -> Int -> Int -> m ()
getCSSCanvasContext_ self contextId name width height
  = liftIO
      (void
         (js_getCSSCanvasContext (toDocument self) (toJSString contextId)
            (toJSString name)
            width
            height))
 
foreign import javascript unsafe "$1[\"webkitGetNamedFlows\"]()"
        js_webkitGetNamedFlows :: Document -> IO DOMNamedFlowCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
webkitGetNamedFlows ::
                    (MonadIO m, IsDocument self) => self -> m DOMNamedFlowCollection
webkitGetNamedFlows self
  = liftIO (js_webkitGetNamedFlows (toDocument self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
webkitGetNamedFlows_ ::
                     (MonadIO m, IsDocument self) => self -> m ()
webkitGetNamedFlows_ self
  = liftIO (void (js_webkitGetNamedFlows (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"createTouch\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12)"
        js_createTouch ::
        Document ->
          Optional Window ->
            Optional EventTarget ->
              Optional Int ->
                Optional Int ->
                  Optional Int ->
                    Optional Int ->
                      Optional Int ->
                        Optional Int ->
                          Optional Int -> Optional Float -> Optional Float -> IO Touch

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouch ::
            (MonadIO m, IsDocument self, IsEventTarget target) =>
              self ->
                Maybe Window ->
                  Maybe target ->
                    Maybe Int ->
                      Maybe Int ->
                        Maybe Int ->
                          Maybe Int ->
                            Maybe Int ->
                              Maybe Int -> Maybe Int -> Maybe Float -> Maybe Float -> m Touch
createTouch self window target identifier pageX pageY screenX
  screenY webkitRadiusX webkitRadiusY webkitRotationAngle webkitForce
  = liftIO
      (js_createTouch (toDocument self) (maybeToOptional window)
         (maybeToOptional (fmap toEventTarget target))
         (maybeToOptional identifier)
         (maybeToOptional pageX)
         (maybeToOptional pageY)
         (maybeToOptional screenX)
         (maybeToOptional screenY)
         (maybeToOptional webkitRadiusX)
         (maybeToOptional webkitRadiusY)
         (maybeToOptional webkitRotationAngle)
         (maybeToOptional webkitForce))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouch_ ::
             (MonadIO m, IsDocument self, IsEventTarget target) =>
               self ->
                 Maybe Window ->
                   Maybe target ->
                     Maybe Int ->
                       Maybe Int ->
                         Maybe Int ->
                           Maybe Int ->
                             Maybe Int ->
                               Maybe Int -> Maybe Int -> Maybe Float -> Maybe Float -> m ()
createTouch_ self window target identifier pageX pageY screenX
  screenY webkitRadiusX webkitRadiusY webkitRotationAngle webkitForce
  = liftIO
      (void
         (js_createTouch (toDocument self) (maybeToOptional window)
            (maybeToOptional (fmap toEventTarget target))
            (maybeToOptional identifier)
            (maybeToOptional pageX)
            (maybeToOptional pageY)
            (maybeToOptional screenX)
            (maybeToOptional screenY)
            (maybeToOptional webkitRadiusX)
            (maybeToOptional webkitRadiusY)
            (maybeToOptional webkitRotationAngle)
            (maybeToOptional webkitForce)))
 
foreign import javascript unsafe "$1[\"createTouchList\"]($2)"
        js_createTouchList :: Document -> JSVal -> IO TouchList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchList ::
                (MonadIO m, IsDocument self) => self -> [Touch] -> m TouchList
createTouchList self touches
  = liftIO
      (toJSVal touches >>=
         \ touches' -> js_createTouchList (toDocument self) touches')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchList_ ::
                 (MonadIO m, IsDocument self) => self -> [Touch] -> m ()
createTouchList_ self touches
  = liftIO
      (void
         (toJSVal touches >>=
            \ touches' -> js_createTouchList (toDocument self) touches'))
 
foreign import javascript unsafe "$1[\"timeline\"]" js_getTimeline
        :: Document -> IO DocumentTimeline

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.timeline Mozilla Document.timeline documentation> 
getTimeline ::
            (MonadIO m, IsDocument self) => self -> m DocumentTimeline
getTimeline self = liftIO (js_getTimeline (toDocument self))
 
foreign import javascript unsafe "$1[\"implementation\"]"
        js_getImplementation :: Document -> IO DOMImplementation

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.implementation Mozilla Document.implementation documentation> 
getImplementation ::
                  (MonadIO m, IsDocument self) => self -> m DOMImplementation
getImplementation self
  = liftIO (js_getImplementation (toDocument self))
 
foreign import javascript unsafe "$1[\"URL\"]" js_getURL ::
        Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.URL Mozilla Document.URL documentation> 
getURL ::
       (MonadIO m, IsDocument self, FromJSString result) =>
         self -> m result
getURL self
  = liftIO (fromJSString <$> (js_getURL (toDocument self)))
 
foreign import javascript unsafe "$1[\"documentURI\"]"
        js_getDocumentURI :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentURI Mozilla Document.documentURI documentation> 
getDocumentURI ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m result
getDocumentURI self
  = liftIO (fromJSString <$> (js_getDocumentURI (toDocument self)))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.origin Mozilla Document.origin documentation> 
getOrigin ::
          (MonadIO m, IsDocument self, FromJSString result) =>
            self -> m result
getOrigin self
  = liftIO (fromJSString <$> (js_getOrigin (toDocument self)))
 
foreign import javascript unsafe "$1[\"compatMode\"]"
        js_getCompatMode :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.compatMode Mozilla Document.compatMode documentation> 
getCompatMode ::
              (MonadIO m, IsDocument self, FromJSString result) =>
                self -> m result
getCompatMode self
  = liftIO (fromJSString <$> (js_getCompatMode (toDocument self)))
 
foreign import javascript unsafe "$1[\"characterSet\"]"
        js_getCharacterSet :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.characterSet Mozilla Document.characterSet documentation> 
getCharacterSet ::
                (MonadIO m, IsDocument self, FromJSString result) =>
                  self -> m result
getCharacterSet self
  = liftIO (fromJSString <$> (js_getCharacterSet (toDocument self)))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
getCharset ::
           (MonadIO m, IsDocument self, FromJSString result) =>
             self -> m result
getCharset self
  = liftIO (fromJSString <$> (js_getCharset (toDocument self)))
 
foreign import javascript unsafe "$1[\"inputEncoding\"]"
        js_getInputEncoding :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.inputEncoding Mozilla Document.inputEncoding documentation> 
getInputEncoding ::
                 (MonadIO m, IsDocument self, FromJSString result) =>
                   self -> m result
getInputEncoding self
  = liftIO (fromJSString <$> (js_getInputEncoding (toDocument self)))
 
foreign import javascript unsafe "$1[\"contentType\"]"
        js_getContentType :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.contentType Mozilla Document.contentType documentation> 
getContentType ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m result
getContentType self
  = liftIO (fromJSString <$> (js_getContentType (toDocument self)))
 
foreign import javascript unsafe "$1[\"doctype\"]" js_getDoctype ::
        Document -> IO (Nullable DocumentType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
getDoctype ::
           (MonadIO m, IsDocument self) => self -> m (Maybe DocumentType)
getDoctype self
  = liftIO (nullableToMaybe <$> (js_getDoctype (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
getDoctypeUnsafe ::
                 (MonadIO m, IsDocument self, HasCallStack) =>
                   self -> m DocumentType
getDoctypeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDoctype (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
getDoctypeUnchecked ::
                    (MonadIO m, IsDocument self) => self -> m DocumentType
getDoctypeUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getDoctype (toDocument self)))
 
foreign import javascript unsafe "$1[\"documentElement\"]"
        js_getDocumentElement :: Document -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
getDocumentElement ::
                   (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getDocumentElement self
  = liftIO
      (nullableToMaybe <$> (js_getDocumentElement (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
getDocumentElementUnsafe ::
                         (MonadIO m, IsDocument self, HasCallStack) => self -> m Element
getDocumentElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDocumentElement (toDocument self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
getDocumentElementUnchecked ::
                            (MonadIO m, IsDocument self) => self -> m Element
getDocumentElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getDocumentElement (toDocument self)))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: Document -> IO (Nullable Location)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
getLocation ::
            (MonadIO m, IsDocument self) => self -> m (Maybe Location)
getLocation self
  = liftIO (nullableToMaybe <$> (js_getLocation (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
getLocationUnsafe ::
                  (MonadIO m, IsDocument self, HasCallStack) => self -> m Location
getLocationUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getLocation (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
getLocationUnchecked ::
                     (MonadIO m, IsDocument self) => self -> m Location
getLocationUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getLocation (toDocument self)))
 
foreign import javascript safe "$1[\"domain\"] = $2;" js_setDomain
        :: Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
setDomain ::
          (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setDomain self val
  = liftIO (js_setDomain (toDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"domain\"]" js_getDomain ::
        Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
getDomain ::
          (MonadIO m, IsDocument self, FromJSString result) =>
            self -> m result
getDomain self
  = liftIO (fromJSString <$> (js_getDomain (toDocument self)))
 
foreign import javascript unsafe "$1[\"referrer\"]" js_getReferrer
        :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.referrer Mozilla Document.referrer documentation> 
getReferrer ::
            (MonadIO m, IsDocument self, FromJSString result) =>
              self -> m result
getReferrer self
  = liftIO (fromJSString <$> (js_getReferrer (toDocument self)))
 
foreign import javascript safe "$1[\"cookie\"] = $2;" js_setCookie
        :: Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
setCookie ::
          (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setCookie self val
  = liftIO (js_setCookie (toDocument self) (toJSString val))
 
foreign import javascript safe "$1[\"cookie\"]" js_getCookie ::
        Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
getCookie ::
          (MonadIO m, IsDocument self, FromJSString result) =>
            self -> m result
getCookie self
  = liftIO (fromJSString <$> (js_getCookie (toDocument self)))
 
foreign import javascript unsafe "$1[\"lastModified\"]"
        js_getLastModified :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.lastModified Mozilla Document.lastModified documentation> 
getLastModified ::
                (MonadIO m, IsDocument self, FromJSString result) =>
                  self -> m result
getLastModified self
  = liftIO (fromJSString <$> (js_getLastModified (toDocument self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: Document -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.readyState Mozilla Document.readyState documentation> 
getReadyState ::
              (MonadIO m, IsDocument self) => self -> m DocumentReadyState
getReadyState self
  = liftIO
      ((js_getReadyState (toDocument self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"title\"] = $2;" js_setTitle
        :: Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
setTitle ::
         (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setTitle self val
  = liftIO (js_setTitle (toDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
getTitle ::
         (MonadIO m, IsDocument self, FromJSString result) =>
           self -> m result
getTitle self
  = liftIO (fromJSString <$> (js_getTitle (toDocument self)))
 
foreign import javascript unsafe "$1[\"dir\"] = $2;" js_setDir ::
        Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.dir Mozilla Document.dir documentation> 
setDir ::
       (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setDir self val
  = liftIO (js_setDir (toDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"dir\"]" js_getDir ::
        Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.dir Mozilla Document.dir documentation> 
getDir ::
       (MonadIO m, IsDocument self, FromJSString result) =>
         self -> m result
getDir self
  = liftIO (fromJSString <$> (js_getDir (toDocument self)))
 
foreign import javascript safe "$1[\"body\"] = $2;" js_setBody ::
        Document -> Optional HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
setBody ::
        (MonadIO m, IsDocument self, IsHTMLElement val) =>
          self -> Maybe val -> m ()
setBody self val
  = liftIO
      (js_setBody (toDocument self)
         (maybeToOptional (fmap toHTMLElement val)))
 
foreign import javascript unsafe "$1[\"body\"]" js_getBody ::
        Document -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
getBody ::
        (MonadIO m, IsDocument self) => self -> m (Maybe HTMLElement)
getBody self
  = liftIO (nullableToMaybe <$> (js_getBody (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
getBodyUnsafe ::
              (MonadIO m, IsDocument self, HasCallStack) => self -> m HTMLElement
getBodyUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBody (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
getBodyUnchecked ::
                 (MonadIO m, IsDocument self) => self -> m HTMLElement
getBodyUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getBody (toDocument self)))
 
foreign import javascript unsafe "$1[\"head\"]" js_getHead ::
        Document -> IO (Nullable HTMLHeadElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
getHead ::
        (MonadIO m, IsDocument self) => self -> m (Maybe HTMLHeadElement)
getHead self
  = liftIO (nullableToMaybe <$> (js_getHead (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
getHeadUnsafe ::
              (MonadIO m, IsDocument self, HasCallStack) =>
                self -> m HTMLHeadElement
getHeadUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getHead (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
getHeadUnchecked ::
                 (MonadIO m, IsDocument self) => self -> m HTMLHeadElement
getHeadUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getHead (toDocument self)))
 
foreign import javascript unsafe "$1[\"images\"]" js_getImages ::
        Document -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.images Mozilla Document.images documentation> 
getImages ::
          (MonadIO m, IsDocument self) => self -> m HTMLCollection
getImages self = liftIO (js_getImages (toDocument self))
 
foreign import javascript unsafe "$1[\"embeds\"]" js_getEmbeds ::
        Document -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.embeds Mozilla Document.embeds documentation> 
getEmbeds ::
          (MonadIO m, IsDocument self) => self -> m HTMLCollection
getEmbeds self = liftIO (js_getEmbeds (toDocument self))
 
foreign import javascript unsafe "$1[\"plugins\"]" js_getPlugins ::
        Document -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.plugins Mozilla Document.plugins documentation> 
getPlugins ::
           (MonadIO m, IsDocument self) => self -> m HTMLCollection
getPlugins self = liftIO (js_getPlugins (toDocument self))
 
foreign import javascript unsafe "$1[\"links\"]" js_getLinks ::
        Document -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.links Mozilla Document.links documentation> 
getLinks ::
         (MonadIO m, IsDocument self) => self -> m HTMLCollection
getLinks self = liftIO (js_getLinks (toDocument self))
 
foreign import javascript unsafe "$1[\"forms\"]" js_getForms ::
        Document -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.forms Mozilla Document.forms documentation> 
getForms ::
         (MonadIO m, IsDocument self) => self -> m HTMLCollection
getForms self = liftIO (js_getForms (toDocument self))
 
foreign import javascript unsafe "$1[\"scripts\"]" js_getScripts ::
        Document -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.scripts Mozilla Document.scripts documentation> 
getScripts ::
           (MonadIO m, IsDocument self) => self -> m HTMLCollection
getScripts self = liftIO (js_getScripts (toDocument self))
 
foreign import javascript unsafe "$1[\"currentScript\"]"
        js_getCurrentScript :: Document -> IO (Nullable HTMLScriptElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
getCurrentScript ::
                 (MonadIO m, IsDocument self) => self -> m (Maybe HTMLScriptElement)
getCurrentScript self
  = liftIO
      (nullableToMaybe <$> (js_getCurrentScript (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
getCurrentScriptUnsafe ::
                       (MonadIO m, IsDocument self, HasCallStack) =>
                         self -> m HTMLScriptElement
getCurrentScriptUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCurrentScript (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
getCurrentScriptUnchecked ::
                          (MonadIO m, IsDocument self) => self -> m HTMLScriptElement
getCurrentScriptUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getCurrentScript (toDocument self)))
 
foreign import javascript unsafe "$1[\"defaultView\"]"
        js_getDefaultView :: Document -> IO (Nullable Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultView ::
               (MonadIO m, IsDocument self) => self -> m (Maybe Window)
getDefaultView self
  = liftIO
      (nullableToMaybe <$> (js_getDefaultView (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultViewUnsafe ::
                     (MonadIO m, IsDocument self, HasCallStack) => self -> m Window
getDefaultViewUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDefaultView (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultViewUnchecked ::
                        (MonadIO m, IsDocument self) => self -> m Window
getDefaultViewUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getDefaultView (toDocument self)))
 
foreign import javascript unsafe "$1[\"designMode\"] = $2;"
        js_setDesignMode :: Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.designMode Mozilla Document.designMode documentation> 
setDesignMode ::
              (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
setDesignMode self val
  = liftIO (js_setDesignMode (toDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"designMode\"]"
        js_getDesignMode :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.designMode Mozilla Document.designMode documentation> 
getDesignMode ::
              (MonadIO m, IsDocument self, FromJSString result) =>
                self -> m result
getDesignMode self
  = liftIO (fromJSString <$> (js_getDesignMode (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onreadystatechange Mozilla Document.onreadystatechange documentation> 
readyStateChange ::
                 (IsDocument self, IsEventTarget self) => EventName self Event
readyStateChange
  = unsafeEventNameAsync (toJSString "readystatechange")
 
foreign import javascript unsafe "$1[\"styleSheets\"]"
        js_getStyleSheets :: Document -> IO StyleSheetList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.styleSheets Mozilla Document.styleSheets documentation> 
getStyleSheets ::
               (MonadIO m, IsDocument self) => self -> m StyleSheetList
getStyleSheets self = liftIO (js_getStyleSheets (toDocument self))
 
foreign import javascript unsafe "$1[\"scrollingElement\"]"
        js_getScrollingElement :: Document -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.scrollingElement Mozilla Document.scrollingElement documentation> 
getScrollingElement ::
                    (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getScrollingElement self
  = liftIO
      (nullableToMaybe <$> (js_getScrollingElement (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.scrollingElement Mozilla Document.scrollingElement documentation> 
getScrollingElementUnsafe ::
                          (MonadIO m, IsDocument self, HasCallStack) => self -> m Element
getScrollingElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getScrollingElement (toDocument self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.scrollingElement Mozilla Document.scrollingElement documentation> 
getScrollingElementUnchecked ::
                             (MonadIO m, IsDocument self) => self -> m Element
getScrollingElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getScrollingElement (toDocument self)))
 
foreign import javascript unsafe
        "($1[\"webkitFullscreenEnabled\"] ? 1 : 0)"
        js_getWebkitFullscreenEnabled :: Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenEnabled Mozilla Document.webkitFullscreenEnabled documentation> 
getWebkitFullscreenEnabled ::
                           (MonadIO m, IsDocument self) => self -> m Bool
getWebkitFullscreenEnabled self
  = liftIO (js_getWebkitFullscreenEnabled (toDocument self))
 
foreign import javascript unsafe "$1[\"webkitFullscreenElement\"]"
        js_getWebkitFullscreenElement :: Document -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenElement Mozilla Document.webkitFullscreenElement documentation> 
getWebkitFullscreenElement ::
                           (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getWebkitFullscreenElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getWebkitFullscreenElement (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenElement Mozilla Document.webkitFullscreenElement documentation> 
getWebkitFullscreenElementUnsafe ::
                                 (MonadIO m, IsDocument self, HasCallStack) => self -> m Element
getWebkitFullscreenElementUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getWebkitFullscreenElement (toDocument self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenElement Mozilla Document.webkitFullscreenElement documentation> 
getWebkitFullscreenElementUnchecked ::
                                    (MonadIO m, IsDocument self) => self -> m Element
getWebkitFullscreenElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getWebkitFullscreenElement (toDocument self)))
 
foreign import javascript unsafe
        "($1[\"webkitIsFullScreen\"] ? 1 : 0)" js_getWebkitIsFullScreen ::
        Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitIsFullScreen Mozilla Document.webkitIsFullScreen documentation> 
getWebkitIsFullScreen ::
                      (MonadIO m, IsDocument self) => self -> m Bool
getWebkitIsFullScreen self
  = liftIO (js_getWebkitIsFullScreen (toDocument self))
 
foreign import javascript unsafe
        "($1[\"webkitFullScreenKeyboardInputAllowed\"] ? 1 : 0)"
        js_getWebkitFullScreenKeyboardInputAllowed :: Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullScreenKeyboardInputAllowed Mozilla Document.webkitFullScreenKeyboardInputAllowed documentation> 
getWebkitFullScreenKeyboardInputAllowed ::
                                        (MonadIO m, IsDocument self) => self -> m Bool
getWebkitFullScreenKeyboardInputAllowed self
  = liftIO
      (js_getWebkitFullScreenKeyboardInputAllowed (toDocument self))
 
foreign import javascript unsafe
        "$1[\"webkitCurrentFullScreenElement\"]"
        js_getWebkitCurrentFullScreenElement :: Document -> IO Element

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCurrentFullScreenElement Mozilla Document.webkitCurrentFullScreenElement documentation> 
getWebkitCurrentFullScreenElement ::
                                  (MonadIO m, IsDocument self) => self -> m Element
getWebkitCurrentFullScreenElement self
  = liftIO (js_getWebkitCurrentFullScreenElement (toDocument self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitfullscreenchange Mozilla Document.onwebkitfullscreenchange documentation> 
webKitFullscreenChange ::
                       (IsDocument self, IsEventTarget self) => EventName self Event
webKitFullscreenChange
  = unsafeEventName (toJSString "webkitfullscreenchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitfullscreenerror Mozilla Document.onwebkitfullscreenerror documentation> 
webKitFullscreenError ::
                      (IsDocument self, IsEventTarget self) => EventName self Event
webKitFullscreenError
  = unsafeEventName (toJSString "webkitfullscreenerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onpointerlockchange Mozilla Document.onpointerlockchange documentation> 
pointerlockchange ::
                  (IsDocument self, IsEventTarget self) => EventName self Event
pointerlockchange
  = unsafeEventName (toJSString "pointerlockchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onpointerlockerror Mozilla Document.onpointerlockerror documentation> 
pointerlockerror ::
                 (IsDocument self, IsEventTarget self) => EventName self Event
pointerlockerror = unsafeEventName (toJSString "pointerlockerror")
 
foreign import javascript unsafe "$1[\"fonts\"]" js_getFonts ::
        Document -> IO FontFaceSet

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.fonts Mozilla Document.fonts documentation> 
getFonts :: (MonadIO m, IsDocument self) => self -> m FontFaceSet
getFonts self = liftIO (js_getFonts (toDocument self))
 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        js_getHidden :: Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hidden Mozilla Document.hidden documentation> 
getHidden :: (MonadIO m, IsDocument self) => self -> m Bool
getHidden self = liftIO (js_getHidden (toDocument self))
 
foreign import javascript unsafe "$1[\"visibilityState\"]"
        js_getVisibilityState :: Document -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.visibilityState Mozilla Document.visibilityState documentation> 
getVisibilityState ::
                   (MonadIO m, IsDocument self) => self -> m VisibilityState
getVisibilityState self
  = liftIO
      ((js_getVisibilityState (toDocument self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onvisibilitychange Mozilla Document.onvisibilitychange documentation> 
visibilitychange ::
                 (IsDocument self, IsEventTarget self) => EventName self Event
visibilitychange = unsafeEventName (toJSString "visibilitychange")
 
foreign import javascript unsafe "$1[\"applets\"]" js_getApplets ::
        Document -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.applets Mozilla Document.applets documentation> 
getApplets ::
           (MonadIO m, IsDocument self) => self -> m HTMLCollection
getApplets self = liftIO (js_getApplets (toDocument self))
 
foreign import javascript unsafe "$1[\"anchors\"]" js_getAnchors ::
        Document -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.anchors Mozilla Document.anchors documentation> 
getAnchors ::
           (MonadIO m, IsDocument self) => self -> m HTMLCollection
getAnchors self = liftIO (js_getAnchors (toDocument self))
 
foreign import javascript unsafe "$1[\"preferredStylesheetSet\"]"
        js_getPreferredStylesheetSet :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSet ::
                          (MonadIO m, IsDocument self, FromJSString result) =>
                            self -> m (Maybe result)
getPreferredStylesheetSet self
  = liftIO
      (fromMaybeJSString <$>
         (js_getPreferredStylesheetSet (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSetUnsafe ::
                                (MonadIO m, IsDocument self, HasCallStack, FromJSString result) =>
                                  self -> m result
getPreferredStylesheetSetUnsafe self
  = liftIO
      ((fromMaybeJSString <$>
          (js_getPreferredStylesheetSet (toDocument self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
getPreferredStylesheetSetUnchecked ::
                                   (MonadIO m, IsDocument self, FromJSString result) =>
                                     self -> m result
getPreferredStylesheetSetUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getPreferredStylesheetSet (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"selectedStylesheetSet\"] = $2;" js_setSelectedStylesheetSet
        :: Document -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
setSelectedStylesheetSet ::
                         (MonadIO m, IsDocument self, ToJSString val) =>
                           self -> Maybe val -> m ()
setSelectedStylesheetSet self val
  = liftIO
      (js_setSelectedStylesheetSet (toDocument self)
         (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"selectedStylesheetSet\"]"
        js_getSelectedStylesheetSet :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
getSelectedStylesheetSet ::
                         (MonadIO m, IsDocument self, FromJSString result) =>
                           self -> m (Maybe result)
getSelectedStylesheetSet self
  = liftIO
      (fromMaybeJSString <$>
         (js_getSelectedStylesheetSet (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
getSelectedStylesheetSetUnsafe ::
                               (MonadIO m, IsDocument self, HasCallStack, FromJSString result) =>
                                 self -> m result
getSelectedStylesheetSetUnsafe self
  = liftIO
      ((fromMaybeJSString <$>
          (js_getSelectedStylesheetSet (toDocument self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
getSelectedStylesheetSetUnchecked ::
                                  (MonadIO m, IsDocument self, FromJSString result) =>
                                    self -> m result
getSelectedStylesheetSetUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getSelectedStylesheetSet (toDocument self)))
 
foreign import javascript unsafe "$1[\"xmlEncoding\"]"
        js_getXmlEncoding :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncoding ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m (Maybe result)
getXmlEncoding self
  = liftIO
      (fromMaybeJSString <$> (js_getXmlEncoding (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncodingUnsafe ::
                     (MonadIO m, IsDocument self, HasCallStack, FromJSString result) =>
                       self -> m result
getXmlEncodingUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getXmlEncoding (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncodingUnchecked ::
                        (MonadIO m, IsDocument self, FromJSString result) =>
                          self -> m result
getXmlEncodingUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getXmlEncoding (toDocument self)))
 
foreign import javascript safe "$1[\"xmlVersion\"] = $2;"
        js_setXmlVersion :: Document -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
setXmlVersion ::
              (MonadIO m, IsDocument self, ToJSString val) =>
                self -> Maybe val -> m ()
setXmlVersion self val
  = liftIO
      (js_setXmlVersion (toDocument self) (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"xmlVersion\"]"
        js_getXmlVersion :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
getXmlVersion ::
              (MonadIO m, IsDocument self, FromJSString result) =>
                self -> m (Maybe result)
getXmlVersion self
  = liftIO
      (fromMaybeJSString <$> (js_getXmlVersion (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
getXmlVersionUnsafe ::
                    (MonadIO m, IsDocument self, HasCallStack, FromJSString result) =>
                      self -> m result
getXmlVersionUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getXmlVersion (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
getXmlVersionUnchecked ::
                       (MonadIO m, IsDocument self, FromJSString result) =>
                         self -> m result
getXmlVersionUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getXmlVersion (toDocument self)))
 
foreign import javascript unsafe "$1[\"xmlStandalone\"] = $2;"
        js_setXmlStandalone :: Document -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlStandalone Mozilla Document.xmlStandalone documentation> 
setXmlStandalone ::
                 (MonadIO m, IsDocument self) => self -> Bool -> m ()
setXmlStandalone self val
  = liftIO (js_setXmlStandalone (toDocument self) val)
 
foreign import javascript unsafe "($1[\"xmlStandalone\"] ? 1 : 0)"
        js_getXmlStandalone :: Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlStandalone Mozilla Document.xmlStandalone documentation> 
getXmlStandalone :: (MonadIO m, IsDocument self) => self -> m Bool
getXmlStandalone self
  = liftIO (js_getXmlStandalone (toDocument self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselectstart Mozilla Document.onselectstart documentation> 
selectStart ::
            (IsDocument self, IsEventTarget self) => EventName self Event
selectStart = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselectionchange Mozilla Document.onselectionchange documentation> 
selectionchange ::
                (IsDocument self, IsEventTarget self) =>
                  EventName self onselectionchange
selectionchange = unsafeEventName (toJSString "selectionchange")
 
foreign import javascript unsafe "$1[\"rootElement\"]"
        js_getRootElement :: Document -> IO (Nullable SVGSVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.rootElement Mozilla Document.rootElement documentation> 
getRootElement ::
               (MonadIO m, IsDocument self) => self -> m (Maybe SVGSVGElement)
getRootElement self
  = liftIO
      (nullableToMaybe <$> (js_getRootElement (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.rootElement Mozilla Document.rootElement documentation> 
getRootElementUnsafe ::
                     (MonadIO m, IsDocument self, HasCallStack) =>
                       self -> m SVGSVGElement
getRootElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRootElement (toDocument self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.rootElement Mozilla Document.rootElement documentation> 
getRootElementUnchecked ::
                        (MonadIO m, IsDocument self) => self -> m SVGSVGElement
getRootElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getRootElement (toDocument self)))