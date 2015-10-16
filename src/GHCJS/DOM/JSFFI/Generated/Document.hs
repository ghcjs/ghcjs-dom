{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Document
       (js_newDocument, newDocument, js_createElement, createElement,
        js_createDocumentFragment, createDocumentFragment,
        js_createTextNode, createTextNode, js_createComment, createComment,
        js_createCDATASection, createCDATASection,
        js_createProcessingInstruction, createProcessingInstruction,
        js_createAttribute, createAttribute, js_createEntityReference,
        createEntityReference, js_getElementsByTagName,
        getElementsByTagName, js_importNode, importNode,
        js_createElementNS, createElementNS, js_createAttributeNS,
        createAttributeNS, js_getElementsByTagNameNS,
        getElementsByTagNameNS, js_getElementById, getElementById,
        js_adoptNode, adoptNode, js_createEvent, createEvent,
        js_createRange, createRange, js_createNodeIterator,
        createNodeIterator, js_createTreeWalker, createTreeWalker,
        js_getOverrideStyle, getOverrideStyle, js_createExpression,
        createExpression, js_createNSResolver, createNSResolver,
        js_evaluate, evaluate, js_execCommand, execCommand,
        js_queryCommandEnabled, queryCommandEnabled,
        js_queryCommandIndeterm, queryCommandIndeterm,
        js_queryCommandState, queryCommandState, js_queryCommandSupported,
        queryCommandSupported, js_queryCommandValue, queryCommandValue,
        js_getElementsByName, getElementsByName, js_elementFromPoint,
        elementFromPoint, js_caretRangeFromPoint, caretRangeFromPoint,
        js_getSelection, getSelection, js_getCSSCanvasContext,
        getCSSCanvasContext, js_getElementsByClassName,
        getElementsByClassName, js_hasFocus, hasFocus, js_querySelector,
        querySelector, js_querySelectorAll, querySelectorAll,
        js_webkitCancelFullScreen, webkitCancelFullScreen,
        js_webkitExitFullscreen, webkitExitFullscreen, js_exitPointerLock,
        exitPointerLock, js_webkitGetNamedFlows, webkitGetNamedFlows,
        js_createTouch, createTouch, js_createTouchList, createTouchList,
        js_getDoctype, getDoctype, js_getImplementation, getImplementation,
        js_getDocumentElement, getDocumentElement, js_getInputEncoding,
        getInputEncoding, js_getXmlEncoding, getXmlEncoding,
        js_setXmlVersion, setXmlVersion, js_getXmlVersion, getXmlVersion,
        js_setXmlStandalone, setXmlStandalone, js_getXmlStandalone,
        getXmlStandalone, js_getDocumentURI, getDocumentURI,
        js_getDefaultView, getDefaultView, js_getStyleSheets,
        getStyleSheets, js_getContentType, getContentType, js_setTitle,
        setTitle, js_getTitle, getTitle, js_getReferrer, getReferrer,
        js_setDomain, setDomain, js_getDomain, getDomain, js_getURL,
        getURL, js_setCookie, setCookie, js_getCookie, getCookie,
        js_setBody, setBody, js_getBody, getBody, js_getHead, getHead,
        js_getImages, getImages, js_getApplets, getApplets, js_getLinks,
        getLinks, js_getForms, getForms, js_getAnchors, getAnchors,
        js_getLastModified, getLastModified, js_setLocation, setLocation,
        js_getLocation, getLocation, js_setCharset, setCharset,
        js_getCharset, getCharset, js_getDefaultCharset, getDefaultCharset,
        js_getReadyState, getReadyState, js_getCharacterSet,
        getCharacterSet, js_getPreferredStylesheetSet,
        getPreferredStylesheetSet, js_setSelectedStylesheetSet,
        setSelectedStylesheetSet, js_getSelectedStylesheetSet,
        getSelectedStylesheetSet, js_getActiveElement, getActiveElement,
        js_getCompatMode, getCompatMode, js_getWebkitIsFullScreen,
        getWebkitIsFullScreen, js_getWebkitFullScreenKeyboardInputAllowed,
        getWebkitFullScreenKeyboardInputAllowed,
        js_getWebkitCurrentFullScreenElement,
        getWebkitCurrentFullScreenElement, js_getWebkitFullscreenEnabled,
        getWebkitFullscreenEnabled, js_getWebkitFullscreenElement,
        getWebkitFullscreenElement, js_getPointerLockElement,
        getPointerLockElement, js_getFonts, getFonts, abort, blur, change,
        click, contextMenu, dblClick, drag, dragEnd, dragEnter, dragLeave,
        dragOver, dragStart, drop, error, focus, input, invalid, keyDown,
        keyPress, keyUp, load, mouseDown, mouseEnter, mouseLeave,
        mouseMove, mouseOut, mouseOver, mouseUp, mouseWheel,
        readyStateChange, scroll, select, submit, wheel, beforeCut, cut,
        beforeCopy, copy, beforePaste, paste, reset, search, selectStart,
        selectionchange, touchStart, touchMove, touchEnd, touchCancel,
        webKitFullscreenChange, webKitFullscreenError, pointerlockchange,
        pointerlockerror, securitypolicyviolation, webKitWillRevealBottom,
        webKitWillRevealLeft, webKitWillRevealRight, webKitWillRevealTop,
        js_getVisibilityState, getVisibilityState, js_getHidden, getHidden,
        js_getSecurityPolicy, getSecurityPolicy, js_getCurrentScript,
        getCurrentScript, js_getOrigin, getOrigin, Document,
        castToDocument, gTypeDocument, IsDocument, toDocument)
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
 
foreign import javascript unsafe "new window[\"Document\"]()"
        js_newDocument :: IO Document

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation> 
newDocument :: (MonadIO m) => m Document
newDocument = liftIO (js_newDocument)
 
foreign import javascript unsafe "$1[\"createElement\"]($2)"
        js_createElement ::
        Document -> Nullable JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
createElement ::
              (MonadIO m, IsDocument self, ToJSString tagName) =>
                self -> Maybe tagName -> m (Maybe Element)
createElement self tagName
  = liftIO
      (nullableToMaybe <$>
         (js_createElement (toDocument self) (toMaybeJSString tagName)))
 
foreign import javascript unsafe "$1[\"createDocumentFragment\"]()"
        js_createDocumentFragment ::
        Document -> IO (Nullable DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
createDocumentFragment ::
                       (MonadIO m, IsDocument self) => self -> m (Maybe DocumentFragment)
createDocumentFragment self
  = liftIO
      (nullableToMaybe <$> (js_createDocumentFragment (toDocument self)))
 
foreign import javascript unsafe "$1[\"createTextNode\"]($2)"
        js_createTextNode :: Document -> JSString -> IO (Nullable Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
createTextNode ::
               (MonadIO m, IsDocument self, ToJSString data') =>
                 self -> data' -> m (Maybe Text)
createTextNode self data'
  = liftIO
      (nullableToMaybe <$>
         (js_createTextNode (toDocument self) (toJSString data')))
 
foreign import javascript unsafe "$1[\"createComment\"]($2)"
        js_createComment :: Document -> JSString -> IO (Nullable Comment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
createComment ::
              (MonadIO m, IsDocument self, ToJSString data') =>
                self -> data' -> m (Maybe Comment)
createComment self data'
  = liftIO
      (nullableToMaybe <$>
         (js_createComment (toDocument self) (toJSString data')))
 
foreign import javascript unsafe "$1[\"createCDATASection\"]($2)"
        js_createCDATASection ::
        Document -> JSString -> IO (Nullable CDATASection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
createCDATASection ::
                   (MonadIO m, IsDocument self, ToJSString data') =>
                     self -> data' -> m (Maybe CDATASection)
createCDATASection self data'
  = liftIO
      (nullableToMaybe <$>
         (js_createCDATASection (toDocument self) (toJSString data')))
 
foreign import javascript unsafe
        "$1[\"createProcessingInstruction\"]($2,\n$3)"
        js_createProcessingInstruction ::
        Document ->
          JSString -> JSString -> IO (Nullable ProcessingInstruction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
createProcessingInstruction ::
                            (MonadIO m, IsDocument self, ToJSString target,
                             ToJSString data') =>
                              self -> target -> data' -> m (Maybe ProcessingInstruction)
createProcessingInstruction self target data'
  = liftIO
      (nullableToMaybe <$>
         (js_createProcessingInstruction (toDocument self)
            (toJSString target)
            (toJSString data')))
 
foreign import javascript unsafe "$1[\"createAttribute\"]($2)"
        js_createAttribute :: Document -> JSString -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
createAttribute ::
                (MonadIO m, IsDocument self, ToJSString name) =>
                  self -> name -> m (Maybe Attr)
createAttribute self name
  = liftIO
      (nullableToMaybe <$>
         (js_createAttribute (toDocument self) (toJSString name)))
 
foreign import javascript unsafe
        "$1[\"createEntityReference\"]($2)" js_createEntityReference ::
        Document -> JSString -> IO (Nullable EntityReference)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEntityReference Mozilla Document.createEntityReference documentation> 
createEntityReference ::
                      (MonadIO m, IsDocument self, ToJSString name) =>
                        self -> name -> m (Maybe EntityReference)
createEntityReference self name
  = liftIO
      (nullableToMaybe <$>
         (js_createEntityReference (toDocument self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        js_getElementsByTagName ::
        Document -> JSString -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagName Mozilla Document.getElementsByTagName documentation> 
getElementsByTagName ::
                     (MonadIO m, IsDocument self, ToJSString tagname) =>
                       self -> tagname -> m (Maybe NodeList)
getElementsByTagName self tagname
  = liftIO
      (nullableToMaybe <$>
         (js_getElementsByTagName (toDocument self) (toJSString tagname)))
 
foreign import javascript unsafe "$1[\"importNode\"]($2, $3)"
        js_importNode ::
        Document -> Nullable Node -> Bool -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
importNode ::
           (MonadIO m, IsDocument self, IsNode importedNode) =>
             self -> Maybe importedNode -> Bool -> m (Maybe Node)
importNode self importedNode deep
  = liftIO
      (nullableToMaybe <$>
         (js_importNode (toDocument self)
            (maybeToNullable (fmap toNode importedNode))
            deep))
 
foreign import javascript unsafe "$1[\"createElementNS\"]($2, $3)"
        js_createElementNS ::
        Document ->
          Nullable JSString -> Nullable JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
createElementNS ::
                (MonadIO m, IsDocument self, ToJSString namespaceURI,
                 ToJSString qualifiedName) =>
                  self ->
                    Maybe namespaceURI -> Maybe qualifiedName -> m (Maybe Element)
createElementNS self namespaceURI qualifiedName
  = liftIO
      (nullableToMaybe <$>
         (js_createElementNS (toDocument self)
            (toMaybeJSString namespaceURI)
            (toMaybeJSString qualifiedName)))
 
foreign import javascript unsafe
        "$1[\"createAttributeNS\"]($2, $3)" js_createAttributeNS ::
        Document ->
          Nullable JSString -> Nullable JSString -> IO (Nullable Attr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
createAttributeNS ::
                  (MonadIO m, IsDocument self, ToJSString namespaceURI,
                   ToJSString qualifiedName) =>
                    self -> Maybe namespaceURI -> Maybe qualifiedName -> m (Maybe Attr)
createAttributeNS self namespaceURI qualifiedName
  = liftIO
      (nullableToMaybe <$>
         (js_createAttributeNS (toDocument self)
            (toMaybeJSString namespaceURI)
            (toMaybeJSString qualifiedName)))
 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)" js_getElementsByTagNameNS
        ::
        Document -> Nullable JSString -> JSString -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByTagNameNS Mozilla Document.getElementsByTagNameNS documentation> 
getElementsByTagNameNS ::
                       (MonadIO m, IsDocument self, ToJSString namespaceURI,
                        ToJSString localName) =>
                         self -> Maybe namespaceURI -> localName -> m (Maybe NodeList)
getElementsByTagNameNS self namespaceURI localName
  = liftIO
      (nullableToMaybe <$>
         (js_getElementsByTagNameNS (toDocument self)
            (toMaybeJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        js_getElementById :: Document -> JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementById Mozilla Document.getElementById documentation> 
getElementById ::
               (MonadIO m, IsDocument self, ToJSString elementId) =>
                 self -> elementId -> m (Maybe Element)
getElementById self elementId
  = liftIO
      (nullableToMaybe <$>
         (js_getElementById (toDocument self) (toJSString elementId)))
 
foreign import javascript unsafe "$1[\"adoptNode\"]($2)"
        js_adoptNode :: Document -> Nullable Node -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
adoptNode ::
          (MonadIO m, IsDocument self, IsNode source) =>
            self -> Maybe source -> m (Maybe Node)
adoptNode self source
  = liftIO
      (nullableToMaybe <$>
         (js_adoptNode (toDocument self)
            (maybeToNullable (fmap toNode source))))
 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        js_createEvent :: Document -> JSString -> IO (Nullable Event)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
createEvent ::
            (MonadIO m, IsDocument self, ToJSString eventType) =>
              self -> eventType -> m (Maybe Event)
createEvent self eventType
  = liftIO
      (nullableToMaybe <$>
         (js_createEvent (toDocument self) (toJSString eventType)))
 
foreign import javascript unsafe "$1[\"createRange\"]()"
        js_createRange :: Document -> IO (Nullable Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
createRange ::
            (MonadIO m, IsDocument self) => self -> m (Maybe Range)
createRange self
  = liftIO (nullableToMaybe <$> (js_createRange (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"createNodeIterator\"]($2, $3,\n$4, $5)" js_createNodeIterator
        ::
        Document ->
          Nullable Node ->
            Word -> Nullable NodeFilter -> Bool -> IO (Nullable NodeIterator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
createNodeIterator ::
                   (MonadIO m, IsDocument self, IsNode root) =>
                     self ->
                       Maybe root ->
                         Word -> Maybe NodeFilter -> Bool -> m (Maybe NodeIterator)
createNodeIterator self root whatToShow filter
  expandEntityReferences
  = liftIO
      (nullableToMaybe <$>
         (js_createNodeIterator (toDocument self)
            (maybeToNullable (fmap toNode root))
            whatToShow
            (maybeToNullable filter)
            expandEntityReferences))
 
foreign import javascript unsafe
        "$1[\"createTreeWalker\"]($2, $3,\n$4, $5)" js_createTreeWalker ::
        Document ->
          Nullable Node ->
            Word -> Nullable NodeFilter -> Bool -> IO (Nullable TreeWalker)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
createTreeWalker ::
                 (MonadIO m, IsDocument self, IsNode root) =>
                   self ->
                     Maybe root ->
                       Word -> Maybe NodeFilter -> Bool -> m (Maybe TreeWalker)
createTreeWalker self root whatToShow filter expandEntityReferences
  = liftIO
      (nullableToMaybe <$>
         (js_createTreeWalker (toDocument self)
            (maybeToNullable (fmap toNode root))
            whatToShow
            (maybeToNullable filter)
            expandEntityReferences))
 
foreign import javascript unsafe "$1[\"getOverrideStyle\"]($2, $3)"
        js_getOverrideStyle ::
        Document ->
          Nullable Element -> JSString -> IO (Nullable CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getOverrideStyle Mozilla Document.getOverrideStyle documentation> 
getOverrideStyle ::
                 (MonadIO m, IsDocument self, IsElement element,
                  ToJSString pseudoElement) =>
                   self ->
                     Maybe element -> pseudoElement -> m (Maybe CSSStyleDeclaration)
getOverrideStyle self element pseudoElement
  = liftIO
      (nullableToMaybe <$>
         (js_getOverrideStyle (toDocument self)
            (maybeToNullable (fmap toElement element))
            (toJSString pseudoElement)))
 
foreign import javascript unsafe "$1[\"createExpression\"]($2, $3)"
        js_createExpression ::
        Document ->
          JSString ->
            Nullable XPathNSResolver -> IO (Nullable XPathExpression)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
createExpression ::
                 (MonadIO m, IsDocument self, ToJSString expression) =>
                   self ->
                     expression -> Maybe XPathNSResolver -> m (Maybe XPathExpression)
createExpression self expression resolver
  = liftIO
      (nullableToMaybe <$>
         (js_createExpression (toDocument self) (toJSString expression)
            (maybeToNullable resolver)))
 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        js_createNSResolver ::
        Document -> Nullable Node -> IO (Nullable XPathNSResolver)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
createNSResolver ::
                 (MonadIO m, IsDocument self, IsNode nodeResolver) =>
                   self -> Maybe nodeResolver -> m (Maybe XPathNSResolver)
createNSResolver self nodeResolver
  = liftIO
      (nullableToMaybe <$>
         (js_createNSResolver (toDocument self)
            (maybeToNullable (fmap toNode nodeResolver))))
 
foreign import javascript unsafe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)" js_evaluate ::
        Document ->
          JSString ->
            Nullable Node ->
              Nullable XPathNSResolver ->
                Word -> Nullable XPathResult -> IO (Nullable XPathResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
evaluate ::
         (MonadIO m, IsDocument self, ToJSString expression,
          IsNode contextNode) =>
           self ->
             expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Word -> Maybe XPathResult -> m (Maybe XPathResult)
evaluate self expression contextNode resolver type' inResult
  = liftIO
      (nullableToMaybe <$>
         (js_evaluate (toDocument self) (toJSString expression)
            (maybeToNullable (fmap toNode contextNode))
            (maybeToNullable resolver)
            type'
            (maybeToNullable inResult)))
 
foreign import javascript unsafe
        "($1[\"execCommand\"]($2, $3,\n$4) ? 1 : 0)" js_execCommand ::
        Document -> JSString -> Bool -> Nullable JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.execCommand Mozilla Document.execCommand documentation> 
execCommand ::
            (MonadIO m, IsDocument self, ToJSString command,
             ToJSString value) =>
              self -> command -> Bool -> Maybe value -> m Bool
execCommand self command userInterface value
  = liftIO
      (js_execCommand (toDocument self) (toJSString command)
         userInterface
         (toMaybeJSString value))
 
foreign import javascript unsafe
        "($1[\"queryCommandEnabled\"]($2) ? 1 : 0)" js_queryCommandEnabled
        :: Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandEnabled Mozilla Document.queryCommandEnabled documentation> 
queryCommandEnabled ::
                    (MonadIO m, IsDocument self, ToJSString command) =>
                      self -> command -> m Bool
queryCommandEnabled self command
  = liftIO
      (js_queryCommandEnabled (toDocument self) (toJSString command))
 
foreign import javascript unsafe
        "($1[\"queryCommandIndeterm\"]($2) ? 1 : 0)"
        js_queryCommandIndeterm :: Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandIndeterm Mozilla Document.queryCommandIndeterm documentation> 
queryCommandIndeterm ::
                     (MonadIO m, IsDocument self, ToJSString command) =>
                       self -> command -> m Bool
queryCommandIndeterm self command
  = liftIO
      (js_queryCommandIndeterm (toDocument self) (toJSString command))
 
foreign import javascript unsafe
        "($1[\"queryCommandState\"]($2) ? 1 : 0)" js_queryCommandState ::
        Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandState Mozilla Document.queryCommandState documentation> 
queryCommandState ::
                  (MonadIO m, IsDocument self, ToJSString command) =>
                    self -> command -> m Bool
queryCommandState self command
  = liftIO
      (js_queryCommandState (toDocument self) (toJSString command))
 
foreign import javascript unsafe
        "($1[\"queryCommandSupported\"]($2) ? 1 : 0)"
        js_queryCommandSupported :: Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandSupported Mozilla Document.queryCommandSupported documentation> 
queryCommandSupported ::
                      (MonadIO m, IsDocument self, ToJSString command) =>
                        self -> command -> m Bool
queryCommandSupported self command
  = liftIO
      (js_queryCommandSupported (toDocument self) (toJSString command))
 
foreign import javascript unsafe "$1[\"queryCommandValue\"]($2)"
        js_queryCommandValue :: Document -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandValue Mozilla Document.queryCommandValue documentation> 
queryCommandValue ::
                  (MonadIO m, IsDocument self, ToJSString command,
                   FromJSString result) =>
                    self -> command -> m result
queryCommandValue self command
  = liftIO
      (fromJSString <$>
         (js_queryCommandValue (toDocument self) (toJSString command)))
 
foreign import javascript unsafe "$1[\"getElementsByName\"]($2)"
        js_getElementsByName ::
        Document -> JSString -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByName Mozilla Document.getElementsByName documentation> 
getElementsByName ::
                  (MonadIO m, IsDocument self, ToJSString elementName) =>
                    self -> elementName -> m (Maybe NodeList)
getElementsByName self elementName
  = liftIO
      (nullableToMaybe <$>
         (js_getElementsByName (toDocument self) (toJSString elementName)))
 
foreign import javascript unsafe "$1[\"elementFromPoint\"]($2, $3)"
        js_elementFromPoint ::
        Document -> Int -> Int -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementFromPoint Mozilla Document.elementFromPoint documentation> 
elementFromPoint ::
                 (MonadIO m, IsDocument self) =>
                   self -> Int -> Int -> m (Maybe Element)
elementFromPoint self x y
  = liftIO
      (nullableToMaybe <$> (js_elementFromPoint (toDocument self) x y))
 
foreign import javascript unsafe
        "$1[\"caretRangeFromPoint\"]($2,\n$3)" js_caretRangeFromPoint ::
        Document -> Int -> Int -> IO (Nullable Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
caretRangeFromPoint ::
                    (MonadIO m, IsDocument self) =>
                      self -> Int -> Int -> m (Maybe Range)
caretRangeFromPoint self x y
  = liftIO
      (nullableToMaybe <$>
         (js_caretRangeFromPoint (toDocument self) x y))
 
foreign import javascript unsafe "$1[\"getSelection\"]()"
        js_getSelection :: Document -> IO (Nullable Selection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getSelection Mozilla Document.getSelection documentation> 
getSelection ::
             (MonadIO m, IsDocument self) => self -> m (Maybe Selection)
getSelection self
  = liftIO (nullableToMaybe <$> (js_getSelection (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"getCSSCanvasContext\"]($2,\n$3, $4, $5)"
        js_getCSSCanvasContext ::
        Document ->
          JSString ->
            JSString -> Int -> Int -> IO (Nullable CanvasRenderingContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getCSSCanvasContext Mozilla Document.getCSSCanvasContext documentation> 
getCSSCanvasContext ::
                    (MonadIO m, IsDocument self, ToJSString contextId,
                     ToJSString name) =>
                      self ->
                        contextId -> name -> Int -> Int -> m (Maybe CanvasRenderingContext)
getCSSCanvasContext self contextId name width height
  = liftIO
      (nullableToMaybe <$>
         (js_getCSSCanvasContext (toDocument self) (toJSString contextId)
            (toJSString name)
            width
            height))
 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)" js_getElementsByClassName ::
        Document -> JSString -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.getElementsByClassName Mozilla Document.getElementsByClassName documentation> 
getElementsByClassName ::
                       (MonadIO m, IsDocument self, ToJSString tagname) =>
                         self -> tagname -> m (Maybe NodeList)
getElementsByClassName self tagname
  = liftIO
      (nullableToMaybe <$>
         (js_getElementsByClassName (toDocument self) (toJSString tagname)))
 
foreign import javascript unsafe "($1[\"hasFocus\"]() ? 1 : 0)"
        js_hasFocus :: Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
hasFocus :: (MonadIO m, IsDocument self) => self -> m Bool
hasFocus self = liftIO (js_hasFocus (toDocument self))
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        js_querySelector :: Document -> JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelector Mozilla Document.querySelector documentation> 
querySelector ::
              (MonadIO m, IsDocument self, ToJSString selectors) =>
                self -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftIO
      (nullableToMaybe <$>
         (js_querySelector (toDocument self) (toJSString selectors)))
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        js_querySelectorAll ::
        Document -> JSString -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelectorAll Mozilla Document.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadIO m, IsDocument self, ToJSString selectors) =>
                   self -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftIO
      (nullableToMaybe <$>
         (js_querySelectorAll (toDocument self) (toJSString selectors)))
 
foreign import javascript unsafe "$1[\"webkitCancelFullScreen\"]()"
        js_webkitCancelFullScreen :: Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCancelFullScreen Mozilla Document.webkitCancelFullScreen documentation> 
webkitCancelFullScreen ::
                       (MonadIO m, IsDocument self) => self -> m ()
webkitCancelFullScreen self
  = liftIO (js_webkitCancelFullScreen (toDocument self))
 
foreign import javascript unsafe "$1[\"webkitExitFullscreen\"]()"
        js_webkitExitFullscreen :: Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitExitFullscreen Mozilla Document.webkitExitFullscreen documentation> 
webkitExitFullscreen ::
                     (MonadIO m, IsDocument self) => self -> m ()
webkitExitFullscreen self
  = liftIO (js_webkitExitFullscreen (toDocument self))
 
foreign import javascript unsafe "$1[\"exitPointerLock\"]()"
        js_exitPointerLock :: Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.exitPointerLock Mozilla Document.exitPointerLock documentation> 
exitPointerLock :: (MonadIO m, IsDocument self) => self -> m ()
exitPointerLock self
  = liftIO (js_exitPointerLock (toDocument self))
 
foreign import javascript unsafe "$1[\"webkitGetNamedFlows\"]()"
        js_webkitGetNamedFlows ::
        Document -> IO (Nullable DOMNamedFlowCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
webkitGetNamedFlows ::
                    (MonadIO m, IsDocument self) =>
                      self -> m (Maybe DOMNamedFlowCollection)
webkitGetNamedFlows self
  = liftIO
      (nullableToMaybe <$> (js_webkitGetNamedFlows (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"createTouch\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12)"
        js_createTouch ::
        Document ->
          Nullable Window ->
            Nullable EventTarget ->
              Int ->
                Int ->
                  Int ->
                    Int -> Int -> Int -> Int -> Float -> Float -> IO (Nullable Touch)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
createTouch ::
            (MonadIO m, IsDocument self, IsEventTarget target) =>
              self ->
                Maybe Window ->
                  Maybe target ->
                    Int ->
                      Int ->
                        Int ->
                          Int -> Int -> Int -> Int -> Float -> Float -> m (Maybe Touch)
createTouch self window target identifier pageX pageY screenX
  screenY webkitRadiusX webkitRadiusY webkitRotationAngle webkitForce
  = liftIO
      (nullableToMaybe <$>
         (js_createTouch (toDocument self) (maybeToNullable window)
            (maybeToNullable (fmap toEventTarget target))
            identifier
            pageX
            pageY
            screenX
            screenY
            webkitRadiusX
            webkitRadiusY
            webkitRotationAngle
            webkitForce))
 
foreign import javascript unsafe "$1[\"createTouchList\"]()"
        js_createTouchList :: Document -> IO (Nullable TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
createTouchList ::
                (MonadIO m, IsDocument self) => self -> m (Maybe TouchList)
createTouchList self
  = liftIO
      (nullableToMaybe <$> (js_createTouchList (toDocument self)))
 
foreign import javascript unsafe "$1[\"doctype\"]" js_getDoctype ::
        Document -> IO (Nullable DocumentType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
getDoctype ::
           (MonadIO m, IsDocument self) => self -> m (Maybe DocumentType)
getDoctype self
  = liftIO (nullableToMaybe <$> (js_getDoctype (toDocument self)))
 
foreign import javascript unsafe "$1[\"implementation\"]"
        js_getImplementation :: Document -> IO (Nullable DOMImplementation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.implementation Mozilla Document.implementation documentation> 
getImplementation ::
                  (MonadIO m, IsDocument self) => self -> m (Maybe DOMImplementation)
getImplementation self
  = liftIO
      (nullableToMaybe <$> (js_getImplementation (toDocument self)))
 
foreign import javascript unsafe "$1[\"documentElement\"]"
        js_getDocumentElement :: Document -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
getDocumentElement ::
                   (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getDocumentElement self
  = liftIO
      (nullableToMaybe <$> (js_getDocumentElement (toDocument self)))
 
foreign import javascript unsafe "$1[\"inputEncoding\"]"
        js_getInputEncoding :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.inputEncoding Mozilla Document.inputEncoding documentation> 
getInputEncoding ::
                 (MonadIO m, IsDocument self, FromJSString result) =>
                   self -> m (Maybe result)
getInputEncoding self
  = liftIO
      (fromMaybeJSString <$> (js_getInputEncoding (toDocument self)))
 
foreign import javascript unsafe "$1[\"xmlEncoding\"]"
        js_getXmlEncoding :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
getXmlEncoding ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m (Maybe result)
getXmlEncoding self
  = liftIO
      (fromMaybeJSString <$> (js_getXmlEncoding (toDocument self)))
 
foreign import javascript unsafe "$1[\"xmlVersion\"] = $2;"
        js_setXmlVersion :: Document -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
setXmlVersion ::
              (MonadIO m, IsDocument self, ToJSString val) =>
                self -> Maybe val -> m ()
setXmlVersion self val
  = liftIO (js_setXmlVersion (toDocument self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"xmlVersion\"]"
        js_getXmlVersion :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
getXmlVersion ::
              (MonadIO m, IsDocument self, FromJSString result) =>
                self -> m (Maybe result)
getXmlVersion self
  = liftIO
      (fromMaybeJSString <$> (js_getXmlVersion (toDocument self)))
 
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
 
foreign import javascript unsafe "$1[\"documentURI\"]"
        js_getDocumentURI :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentURI Mozilla Document.documentURI documentation> 
getDocumentURI ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m (Maybe result)
getDocumentURI self
  = liftIO
      (fromMaybeJSString <$> (js_getDocumentURI (toDocument self)))
 
foreign import javascript unsafe "$1[\"defaultView\"]"
        js_getDefaultView :: Document -> IO (Nullable Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
getDefaultView ::
               (MonadIO m, IsDocument self) => self -> m (Maybe Window)
getDefaultView self
  = liftIO
      (nullableToMaybe <$> (js_getDefaultView (toDocument self)))
 
foreign import javascript unsafe "$1[\"styleSheets\"]"
        js_getStyleSheets :: Document -> IO (Nullable StyleSheetList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.styleSheets Mozilla Document.styleSheets documentation> 
getStyleSheets ::
               (MonadIO m, IsDocument self) => self -> m (Maybe StyleSheetList)
getStyleSheets self
  = liftIO
      (nullableToMaybe <$> (js_getStyleSheets (toDocument self)))
 
foreign import javascript unsafe "$1[\"contentType\"]"
        js_getContentType :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.contentType Mozilla Document.contentType documentation> 
getContentType ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m result
getContentType self
  = liftIO (fromJSString <$> (js_getContentType (toDocument self)))
 
foreign import javascript unsafe "$1[\"title\"] = $2;" js_setTitle
        :: Document -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
setTitle ::
         (MonadIO m, IsDocument self, ToJSString val) =>
           self -> Maybe val -> m ()
setTitle self val
  = liftIO (js_setTitle (toDocument self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
getTitle ::
         (MonadIO m, IsDocument self, FromJSString result) =>
           self -> m (Maybe result)
getTitle self
  = liftIO (fromMaybeJSString <$> (js_getTitle (toDocument self)))
 
foreign import javascript unsafe "$1[\"referrer\"]" js_getReferrer
        :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.referrer Mozilla Document.referrer documentation> 
getReferrer ::
            (MonadIO m, IsDocument self, FromJSString result) =>
              self -> m result
getReferrer self
  = liftIO (fromJSString <$> (js_getReferrer (toDocument self)))
 
foreign import javascript unsafe "$1[\"domain\"] = $2;"
        js_setDomain :: Document -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
setDomain ::
          (MonadIO m, IsDocument self, ToJSString val) =>
            self -> Maybe val -> m ()
setDomain self val
  = liftIO (js_setDomain (toDocument self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"domain\"]" js_getDomain ::
        Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
getDomain ::
          (MonadIO m, IsDocument self, FromJSString result) =>
            self -> m (Maybe result)
getDomain self
  = liftIO (fromMaybeJSString <$> (js_getDomain (toDocument self)))
 
foreign import javascript unsafe "$1[\"URL\"]" js_getURL ::
        Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.URL Mozilla Document.URL documentation> 
getURL ::
       (MonadIO m, IsDocument self, FromJSString result) =>
         self -> m result
getURL self
  = liftIO (fromJSString <$> (js_getURL (toDocument self)))
 
foreign import javascript unsafe "$1[\"cookie\"] = $2;"
        js_setCookie :: Document -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
setCookie ::
          (MonadIO m, IsDocument self, ToJSString val) =>
            self -> Maybe val -> m ()
setCookie self val
  = liftIO (js_setCookie (toDocument self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"cookie\"]" js_getCookie ::
        Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
getCookie ::
          (MonadIO m, IsDocument self, FromJSString result) =>
            self -> m (Maybe result)
getCookie self
  = liftIO (fromMaybeJSString <$> (js_getCookie (toDocument self)))
 
foreign import javascript unsafe "$1[\"body\"] = $2;" js_setBody ::
        Document -> Nullable HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
setBody ::
        (MonadIO m, IsDocument self, IsHTMLElement val) =>
          self -> Maybe val -> m ()
setBody self val
  = liftIO
      (js_setBody (toDocument self)
         (maybeToNullable (fmap toHTMLElement val)))
 
foreign import javascript unsafe "$1[\"body\"]" js_getBody ::
        Document -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
getBody ::
        (MonadIO m, IsDocument self) => self -> m (Maybe HTMLElement)
getBody self
  = liftIO (nullableToMaybe <$> (js_getBody (toDocument self)))
 
foreign import javascript unsafe "$1[\"head\"]" js_getHead ::
        Document -> IO (Nullable HTMLHeadElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
getHead ::
        (MonadIO m, IsDocument self) => self -> m (Maybe HTMLHeadElement)
getHead self
  = liftIO (nullableToMaybe <$> (js_getHead (toDocument self)))
 
foreign import javascript unsafe "$1[\"images\"]" js_getImages ::
        Document -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.images Mozilla Document.images documentation> 
getImages ::
          (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getImages self
  = liftIO (nullableToMaybe <$> (js_getImages (toDocument self)))
 
foreign import javascript unsafe "$1[\"applets\"]" js_getApplets ::
        Document -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.applets Mozilla Document.applets documentation> 
getApplets ::
           (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getApplets self
  = liftIO (nullableToMaybe <$> (js_getApplets (toDocument self)))
 
foreign import javascript unsafe "$1[\"links\"]" js_getLinks ::
        Document -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.links Mozilla Document.links documentation> 
getLinks ::
         (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getLinks self
  = liftIO (nullableToMaybe <$> (js_getLinks (toDocument self)))
 
foreign import javascript unsafe "$1[\"forms\"]" js_getForms ::
        Document -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.forms Mozilla Document.forms documentation> 
getForms ::
         (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getForms self
  = liftIO (nullableToMaybe <$> (js_getForms (toDocument self)))
 
foreign import javascript unsafe "$1[\"anchors\"]" js_getAnchors ::
        Document -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.anchors Mozilla Document.anchors documentation> 
getAnchors ::
           (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
getAnchors self
  = liftIO (nullableToMaybe <$> (js_getAnchors (toDocument self)))
 
foreign import javascript unsafe "$1[\"lastModified\"]"
        js_getLastModified :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.lastModified Mozilla Document.lastModified documentation> 
getLastModified ::
                (MonadIO m, IsDocument self, FromJSString result) =>
                  self -> m result
getLastModified self
  = liftIO (fromJSString <$> (js_getLastModified (toDocument self)))
 
foreign import javascript unsafe "$1[\"location\"] = $2;"
        js_setLocation :: Document -> Nullable Location -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
setLocation ::
            (MonadIO m, IsDocument self) => self -> Maybe Location -> m ()
setLocation self val
  = liftIO (js_setLocation (toDocument self) (maybeToNullable val))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: Document -> IO (Nullable Location)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.location Mozilla Document.location documentation> 
getLocation ::
            (MonadIO m, IsDocument self) => self -> m (Maybe Location)
getLocation self
  = liftIO (nullableToMaybe <$> (js_getLocation (toDocument self)))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        js_setCharset :: Document -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
setCharset ::
           (MonadIO m, IsDocument self, ToJSString val) =>
             self -> Maybe val -> m ()
setCharset self val
  = liftIO (js_setCharset (toDocument self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
getCharset ::
           (MonadIO m, IsDocument self, FromJSString result) =>
             self -> m (Maybe result)
getCharset self
  = liftIO (fromMaybeJSString <$> (js_getCharset (toDocument self)))
 
foreign import javascript unsafe "$1[\"defaultCharset\"]"
        js_getDefaultCharset :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultCharset Mozilla Document.defaultCharset documentation> 
getDefaultCharset ::
                  (MonadIO m, IsDocument self, FromJSString result) =>
                    self -> m (Maybe result)
getDefaultCharset self
  = liftIO
      (fromMaybeJSString <$> (js_getDefaultCharset (toDocument self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.readyState Mozilla Document.readyState documentation> 
getReadyState ::
              (MonadIO m, IsDocument self, FromJSString result) =>
                self -> m (Maybe result)
getReadyState self
  = liftIO
      (fromMaybeJSString <$> (js_getReadyState (toDocument self)))
 
foreign import javascript unsafe "$1[\"characterSet\"]"
        js_getCharacterSet :: Document -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.characterSet Mozilla Document.characterSet documentation> 
getCharacterSet ::
                (MonadIO m, IsDocument self, FromJSString result) =>
                  self -> m (Maybe result)
getCharacterSet self
  = liftIO
      (fromMaybeJSString <$> (js_getCharacterSet (toDocument self)))
 
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
 
foreign import javascript unsafe
        "$1[\"selectedStylesheetSet\"] = $2;" js_setSelectedStylesheetSet
        :: Document -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
setSelectedStylesheetSet ::
                         (MonadIO m, IsDocument self, ToJSString val) =>
                           self -> Maybe val -> m ()
setSelectedStylesheetSet self val
  = liftIO
      (js_setSelectedStylesheetSet (toDocument self)
         (toMaybeJSString val))
 
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
 
foreign import javascript unsafe "$1[\"activeElement\"]"
        js_getActiveElement :: Document -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.activeElement Mozilla Document.activeElement documentation> 
getActiveElement ::
                 (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getActiveElement self
  = liftIO
      (nullableToMaybe <$> (js_getActiveElement (toDocument self)))
 
foreign import javascript unsafe "$1[\"compatMode\"]"
        js_getCompatMode :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.compatMode Mozilla Document.compatMode documentation> 
getCompatMode ::
              (MonadIO m, IsDocument self, FromJSString result) =>
                self -> m result
getCompatMode self
  = liftIO (fromJSString <$> (js_getCompatMode (toDocument self)))
 
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
        js_getWebkitCurrentFullScreenElement ::
        Document -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCurrentFullScreenElement Mozilla Document.webkitCurrentFullScreenElement documentation> 
getWebkitCurrentFullScreenElement ::
                                  (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getWebkitCurrentFullScreenElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getWebkitCurrentFullScreenElement (toDocument self)))
 
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
 
foreign import javascript unsafe "$1[\"pointerLockElement\"]"
        js_getPointerLockElement :: Document -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.pointerLockElement Mozilla Document.pointerLockElement documentation> 
getPointerLockElement ::
                      (MonadIO m, IsDocument self) => self -> m (Maybe Element)
getPointerLockElement self
  = liftIO
      (nullableToMaybe <$> (js_getPointerLockElement (toDocument self)))
 
foreign import javascript unsafe "$1[\"fonts\"]" js_getFonts ::
        Document -> IO (Nullable FontLoader)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.fonts Mozilla Document.fonts documentation> 
getFonts ::
         (MonadIO m, IsDocument self) => self -> m (Maybe FontLoader)
getFonts self
  = liftIO (nullableToMaybe <$> (js_getFonts (toDocument self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onabort Mozilla Document.onabort documentation> 
abort ::
      (IsDocument self, IsEventTarget self) => EventName self UIEvent
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onblur Mozilla Document.onblur documentation> 
blur ::
     (IsDocument self, IsEventTarget self) => EventName self FocusEvent
blur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onchange Mozilla Document.onchange documentation> 
change ::
       (IsDocument self, IsEventTarget self) => EventName self Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onclick Mozilla Document.onclick documentation> 
click ::
      (IsDocument self, IsEventTarget self) => EventName self MouseEvent
click = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oncontextmenu Mozilla Document.oncontextmenu documentation> 
contextMenu ::
            (IsDocument self, IsEventTarget self) => EventName self MouseEvent
contextMenu = unsafeEventName (toJSString "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondblclick Mozilla Document.ondblclick documentation> 
dblClick ::
         (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dblClick = unsafeEventName (toJSString "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondrag Mozilla Document.ondrag documentation> 
drag ::
     (IsDocument self, IsEventTarget self) => EventName self MouseEvent
drag = unsafeEventName (toJSString "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragend Mozilla Document.ondragend documentation> 
dragEnd ::
        (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragEnd = unsafeEventName (toJSString "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragenter Mozilla Document.ondragenter documentation> 
dragEnter ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragEnter = unsafeEventName (toJSString "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragleave Mozilla Document.ondragleave documentation> 
dragLeave ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragLeave = unsafeEventName (toJSString "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragover Mozilla Document.ondragover documentation> 
dragOver ::
         (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragOver = unsafeEventName (toJSString "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondragstart Mozilla Document.ondragstart documentation> 
dragStart ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
dragStart = unsafeEventName (toJSString "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ondrop Mozilla Document.ondrop documentation> 
drop ::
     (IsDocument self, IsEventTarget self) => EventName self MouseEvent
drop = unsafeEventName (toJSString "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onerror Mozilla Document.onerror documentation> 
error ::
      (IsDocument self, IsEventTarget self) => EventName self UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onfocus Mozilla Document.onfocus documentation> 
focus ::
      (IsDocument self, IsEventTarget self) => EventName self FocusEvent
focus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oninput Mozilla Document.oninput documentation> 
input ::
      (IsDocument self, IsEventTarget self) => EventName self Event
input = unsafeEventName (toJSString "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oninvalid Mozilla Document.oninvalid documentation> 
invalid ::
        (IsDocument self, IsEventTarget self) => EventName self Event
invalid = unsafeEventName (toJSString "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onkeydown Mozilla Document.onkeydown documentation> 
keyDown ::
        (IsDocument self, IsEventTarget self) =>
          EventName self KeyboardEvent
keyDown = unsafeEventName (toJSString "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onkeypress Mozilla Document.onkeypress documentation> 
keyPress ::
         (IsDocument self, IsEventTarget self) =>
           EventName self KeyboardEvent
keyPress = unsafeEventName (toJSString "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onkeyup Mozilla Document.onkeyup documentation> 
keyUp ::
      (IsDocument self, IsEventTarget self) =>
        EventName self KeyboardEvent
keyUp = unsafeEventName (toJSString "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onload Mozilla Document.onload documentation> 
load ::
     (IsDocument self, IsEventTarget self) => EventName self UIEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmousedown Mozilla Document.onmousedown documentation> 
mouseDown ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseDown = unsafeEventName (toJSString "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseenter Mozilla Document.onmouseenter documentation> 
mouseEnter ::
           (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseEnter = unsafeEventName (toJSString "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseleave Mozilla Document.onmouseleave documentation> 
mouseLeave ::
           (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseLeave = unsafeEventName (toJSString "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmousemove Mozilla Document.onmousemove documentation> 
mouseMove ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseMove = unsafeEventName (toJSString "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseout Mozilla Document.onmouseout documentation> 
mouseOut ::
         (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseOut = unsafeEventName (toJSString "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseover Mozilla Document.onmouseover documentation> 
mouseOver ::
          (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseOver = unsafeEventName (toJSString "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmouseup Mozilla Document.onmouseup documentation> 
mouseUp ::
        (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseUp = unsafeEventName (toJSString "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onmousewheel Mozilla Document.onmousewheel documentation> 
mouseWheel ::
           (IsDocument self, IsEventTarget self) => EventName self MouseEvent
mouseWheel = unsafeEventName (toJSString "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onreadystatechange Mozilla Document.onreadystatechange documentation> 
readyStateChange ::
                 (IsDocument self, IsEventTarget self) => EventName self Event
readyStateChange = unsafeEventName (toJSString "readystatechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onscroll Mozilla Document.onscroll documentation> 
scroll ::
       (IsDocument self, IsEventTarget self) => EventName self UIEvent
scroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselect Mozilla Document.onselect documentation> 
select ::
       (IsDocument self, IsEventTarget self) => EventName self UIEvent
select = unsafeEventName (toJSString "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onsubmit Mozilla Document.onsubmit documentation> 
submit ::
       (IsDocument self, IsEventTarget self) => EventName self Event
submit = unsafeEventName (toJSString "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwheel Mozilla Document.onwheel documentation> 
wheel ::
      (IsDocument self, IsEventTarget self) => EventName self WheelEvent
wheel = unsafeEventName (toJSString "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforecut Mozilla Document.onbeforecut documentation> 
beforeCut ::
          (IsDocument self, IsEventTarget self) => EventName self Event
beforeCut = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oncut Mozilla Document.oncut documentation> 
cut ::
    (IsDocument self, IsEventTarget self) => EventName self Event
cut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforecopy Mozilla Document.onbeforecopy documentation> 
beforeCopy ::
           (IsDocument self, IsEventTarget self) => EventName self Event
beforeCopy = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.oncopy Mozilla Document.oncopy documentation> 
copy ::
     (IsDocument self, IsEventTarget self) => EventName self Event
copy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onbeforepaste Mozilla Document.onbeforepaste documentation> 
beforePaste ::
            (IsDocument self, IsEventTarget self) => EventName self Event
beforePaste = unsafeEventName (toJSString "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onpaste Mozilla Document.onpaste documentation> 
paste ::
      (IsDocument self, IsEventTarget self) => EventName self Event
paste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onreset Mozilla Document.onreset documentation> 
reset ::
      (IsDocument self, IsEventTarget self) => EventName self Event
reset = unsafeEventName (toJSString "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onsearch Mozilla Document.onsearch documentation> 
search ::
       (IsDocument self, IsEventTarget self) => EventName self Event
search = unsafeEventName (toJSString "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselectstart Mozilla Document.onselectstart documentation> 
selectStart ::
            (IsDocument self, IsEventTarget self) => EventName self Event
selectStart = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onselectionchange Mozilla Document.onselectionchange documentation> 
selectionchange ::
                (IsDocument self, IsEventTarget self) =>
                  EventName self onselectionchange
selectionchange = unsafeEventName (toJSString "selectionchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ontouchstart Mozilla Document.ontouchstart documentation> 
touchStart ::
           (IsDocument self, IsEventTarget self) => EventName self TouchEvent
touchStart = unsafeEventName (toJSString "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ontouchmove Mozilla Document.ontouchmove documentation> 
touchMove ::
          (IsDocument self, IsEventTarget self) => EventName self TouchEvent
touchMove = unsafeEventName (toJSString "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ontouchend Mozilla Document.ontouchend documentation> 
touchEnd ::
         (IsDocument self, IsEventTarget self) => EventName self TouchEvent
touchEnd = unsafeEventName (toJSString "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.ontouchcancel Mozilla Document.ontouchcancel documentation> 
touchCancel ::
            (IsDocument self, IsEventTarget self) => EventName self TouchEvent
touchCancel = unsafeEventName (toJSString "touchcancel")

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onsecuritypolicyviolation Mozilla Document.onsecuritypolicyviolation documentation> 
securitypolicyviolation ::
                        (IsDocument self, IsEventTarget self) =>
                          EventName self onsecuritypolicyviolation
securitypolicyviolation
  = unsafeEventName (toJSString "securitypolicyviolation")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitwillrevealbottom Mozilla Document.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom ::
                       (IsDocument self, IsEventTarget self) => EventName self Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitwillrevealleft Mozilla Document.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft ::
                     (IsDocument self, IsEventTarget self) => EventName self Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitwillrevealright Mozilla Document.onwebkitwillrevealright documentation> 
webKitWillRevealRight ::
                      (IsDocument self, IsEventTarget self) => EventName self Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.onwebkitwillrevealtop Mozilla Document.onwebkitwillrevealtop documentation> 
webKitWillRevealTop ::
                    (IsDocument self, IsEventTarget self) => EventName self Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")
 
foreign import javascript unsafe "$1[\"visibilityState\"]"
        js_getVisibilityState :: Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.visibilityState Mozilla Document.visibilityState documentation> 
getVisibilityState ::
                   (MonadIO m, IsDocument self, FromJSString result) =>
                     self -> m result
getVisibilityState self
  = liftIO
      (fromJSString <$> (js_getVisibilityState (toDocument self)))
 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        js_getHidden :: Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hidden Mozilla Document.hidden documentation> 
getHidden :: (MonadIO m, IsDocument self) => self -> m Bool
getHidden self = liftIO (js_getHidden (toDocument self))
 
foreign import javascript unsafe "$1[\"securityPolicy\"]"
        js_getSecurityPolicy :: Document -> IO (Nullable SecurityPolicy)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.securityPolicy Mozilla Document.securityPolicy documentation> 
getSecurityPolicy ::
                  (MonadIO m, IsDocument self) => self -> m (Maybe SecurityPolicy)
getSecurityPolicy self
  = liftIO
      (nullableToMaybe <$> (js_getSecurityPolicy (toDocument self)))
 
foreign import javascript unsafe "$1[\"currentScript\"]"
        js_getCurrentScript :: Document -> IO (Nullable HTMLScriptElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
getCurrentScript ::
                 (MonadIO m, IsDocument self) => self -> m (Maybe HTMLScriptElement)
getCurrentScript self
  = liftIO
      (nullableToMaybe <$> (js_getCurrentScript (toDocument self)))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.origin Mozilla Document.origin documentation> 
getOrigin ::
          (MonadIO m, IsDocument self, FromJSString result) =>
            self -> m result
getOrigin self
  = liftIO (fromJSString <$> (js_getOrigin (toDocument self)))