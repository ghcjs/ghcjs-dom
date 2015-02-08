{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Document
       (ghcjs_dom_document_new, documentNew,
        ghcjs_dom_document_create_element, documentCreateElement,
        ghcjs_dom_document_create_document_fragment,
        documentCreateDocumentFragment,
        ghcjs_dom_document_create_text_node, documentCreateTextNode,
        ghcjs_dom_document_create_comment, documentCreateComment,
        ghcjs_dom_document_create_cdata_section,
        documentCreateCDATASection,
        ghcjs_dom_document_create_processing_instruction,
        documentCreateProcessingInstruction,
        ghcjs_dom_document_create_attribute, documentCreateAttribute,
        ghcjs_dom_document_create_entity_reference,
        documentCreateEntityReference,
        ghcjs_dom_document_get_elements_by_tag_name,
        documentGetElementsByTagName, ghcjs_dom_document_import_node,
        documentImportNode, ghcjs_dom_document_create_element_ns,
        documentCreateElementNS, ghcjs_dom_document_create_attribute_ns,
        documentCreateAttributeNS,
        ghcjs_dom_document_get_elements_by_tag_name_ns,
        documentGetElementsByTagNameNS,
        ghcjs_dom_document_get_element_by_id, documentGetElementById,
        ghcjs_dom_document_adopt_node, documentAdoptNode,
        ghcjs_dom_document_create_event, documentCreateEvent,
        ghcjs_dom_document_create_range, documentCreateRange,
        ghcjs_dom_document_create_node_iterator,
        documentCreateNodeIterator, ghcjs_dom_document_create_tree_walker,
        documentCreateTreeWalker, ghcjs_dom_document_get_override_style,
        documentGetOverrideStyle, ghcjs_dom_document_create_expression,
        documentCreateExpression, ghcjs_dom_document_create_ns_resolver,
        documentCreateNSResolver, ghcjs_dom_document_evaluate,
        documentEvaluate, ghcjs_dom_document_exec_command,
        documentExecCommand, ghcjs_dom_document_query_command_enabled,
        documentQueryCommandEnabled,
        ghcjs_dom_document_query_command_indeterm,
        documentQueryCommandIndeterm,
        ghcjs_dom_document_query_command_state, documentQueryCommandState,
        ghcjs_dom_document_query_command_supported,
        documentQueryCommandSupported,
        ghcjs_dom_document_query_command_value, documentQueryCommandValue,
        ghcjs_dom_document_get_elements_by_name, documentGetElementsByName,
        ghcjs_dom_document_element_from_point, documentElementFromPoint,
        ghcjs_dom_document_caret_range_from_point,
        documentCaretRangeFromPoint,
        ghcjs_dom_document_create_css_style_declaration,
        documentCreateCSSStyleDeclaration,
        ghcjs_dom_document_get_css_canvas_context,
        documentGetCSSCanvasContext,
        ghcjs_dom_document_get_elements_by_class_name,
        documentGetElementsByClassName, ghcjs_dom_document_has_focus,
        documentHasFocus, ghcjs_dom_document_query_selector,
        documentQuerySelector, ghcjs_dom_document_query_selector_all,
        documentQuerySelectorAll,
        ghcjs_dom_document_webkit_cancel_full_screen,
        documentWebkitCancelFullScreen,
        ghcjs_dom_document_webkit_exit_fullscreen,
        documentWebkitExitFullscreen, ghcjs_dom_document_exit_pointer_lock,
        documentExitPointerLock, ghcjs_dom_document_webkit_get_named_flows,
        documentWebkitGetNamedFlows, ghcjs_dom_document_create_touch,
        documentCreateTouch, ghcjs_dom_document_create_touch_list,
        documentCreateTouchList, ghcjs_dom_document_get_doctype,
        documentGetDoctype, ghcjs_dom_document_get_implementation,
        documentGetImplementation, ghcjs_dom_document_get_document_element,
        documentGetDocumentElement, ghcjs_dom_document_get_input_encoding,
        documentGetInputEncoding, ghcjs_dom_document_get_xml_encoding,
        documentGetXmlEncoding, ghcjs_dom_document_set_xml_version,
        documentSetXmlVersion, ghcjs_dom_document_get_xml_version,
        documentGetXmlVersion, ghcjs_dom_document_set_xml_standalone,
        documentSetXmlStandalone, ghcjs_dom_document_get_xml_standalone,
        documentGetXmlStandalone, ghcjs_dom_document_set_document_uri,
        documentSetDocumentURI, ghcjs_dom_document_get_document_uri,
        documentGetDocumentURI, ghcjs_dom_document_get_default_view,
        documentGetDefaultView, ghcjs_dom_document_get_style_sheets,
        documentGetStyleSheets, ghcjs_dom_document_set_title,
        documentSetTitle, ghcjs_dom_document_get_title, documentGetTitle,
        ghcjs_dom_document_get_referrer, documentGetReferrer,
        ghcjs_dom_document_get_domain, documentGetDomain,
        ghcjs_dom_document_get_url, documentGetURL,
        ghcjs_dom_document_set_cookie, documentSetCookie,
        ghcjs_dom_document_get_cookie, documentGetCookie,
        ghcjs_dom_document_set_body, documentSetBody,
        ghcjs_dom_document_get_body, documentGetBody,
        ghcjs_dom_document_get_head, documentGetHead,
        ghcjs_dom_document_get_images, documentGetImages,
        ghcjs_dom_document_get_applets, documentGetApplets,
        ghcjs_dom_document_get_links, documentGetLinks,
        ghcjs_dom_document_get_forms, documentGetForms,
        ghcjs_dom_document_get_anchors, documentGetAnchors,
        ghcjs_dom_document_get_last_modified, documentGetLastModified,
        ghcjs_dom_document_set_charset, documentSetCharset,
        ghcjs_dom_document_get_charset, documentGetCharset,
        ghcjs_dom_document_get_default_charset, documentGetDefaultCharset,
        ghcjs_dom_document_get_ready_state, documentGetReadyState,
        ghcjs_dom_document_get_character_set, documentGetCharacterSet,
        ghcjs_dom_document_get_preferred_stylesheet_set,
        documentGetPreferredStylesheetSet,
        ghcjs_dom_document_set_selected_stylesheet_set,
        documentSetSelectedStylesheetSet,
        ghcjs_dom_document_get_selected_stylesheet_set,
        documentGetSelectedStylesheetSet,
        ghcjs_dom_document_get_active_element, documentGetActiveElement,
        ghcjs_dom_document_get_compat_mode, documentGetCompatMode,
        ghcjs_dom_document_get_webkit_is_full_screen,
        documentGetWebkitIsFullScreen,
        ghcjs_dom_document_get_webkit_full_screen_keyboard_input_allowed,
        documentGetWebkitFullScreenKeyboardInputAllowed,
        ghcjs_dom_document_get_webkit_current_full_screen_element,
        documentGetWebkitCurrentFullScreenElement,
        ghcjs_dom_document_get_webkit_fullscreen_enabled,
        documentGetWebkitFullscreenEnabled,
        ghcjs_dom_document_get_webkit_fullscreen_element,
        documentGetWebkitFullscreenElement,
        ghcjs_dom_document_get_pointer_lock_element,
        documentGetPointerLockElement,
        ghcjs_dom_document_get_visibility_state,
        documentGetVisibilityState, ghcjs_dom_document_get_hidden,
        documentGetHidden, ghcjs_dom_document_get_security_policy,
        documentGetSecurityPolicy, ghcjs_dom_document_get_current_script,
        documentGetCurrentScript, ghcjs_dom_document_get_origin,
        documentGetOrigin, Document, IsDocument, castToDocument,
        gTypeDocument, toDocument)
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

 
foreign import javascript unsafe "new window[\"Document\"]()"
        ghcjs_dom_document_new :: IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document Mozilla Document documentation> 
documentNew :: (MonadIO m) => m Document
documentNew
  = liftIO (ghcjs_dom_document_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"createElement\"]($2)"
        ghcjs_dom_document_create_element ::
        JSRef Document -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElement Mozilla Document.createElement documentation> 
documentCreateElement ::
                      (MonadIO m, IsDocument self, ToJSString tagName) =>
                        self -> tagName -> m (Maybe Element)
documentCreateElement self tagName
  = liftIO
      ((ghcjs_dom_document_create_element (unDocument (toDocument self))
          (toJSString tagName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createDocumentFragment\"]()"
        ghcjs_dom_document_create_document_fragment ::
        JSRef Document -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createDocumentFragment Mozilla Document.createDocumentFragment documentation> 
documentCreateDocumentFragment ::
                               (MonadIO m, IsDocument self) => self -> m (Maybe DocumentFragment)
documentCreateDocumentFragment self
  = liftIO
      ((ghcjs_dom_document_create_document_fragment
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createTextNode\"]($2)"
        ghcjs_dom_document_create_text_node ::
        JSRef Document -> JSString -> IO (JSRef Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTextNode Mozilla Document.createTextNode documentation> 
documentCreateTextNode ::
                       (MonadIO m, IsDocument self, ToJSString data') =>
                         self -> data' -> m (Maybe Text)
documentCreateTextNode self data'
  = liftIO
      ((ghcjs_dom_document_create_text_node
          (unDocument (toDocument self))
          (toJSString data'))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createComment\"]($2)"
        ghcjs_dom_document_create_comment ::
        JSRef Document -> JSString -> IO (JSRef Comment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createComment Mozilla Document.createComment documentation> 
documentCreateComment ::
                      (MonadIO m, IsDocument self, ToJSString data') =>
                        self -> data' -> m (Maybe Comment)
documentCreateComment self data'
  = liftIO
      ((ghcjs_dom_document_create_comment (unDocument (toDocument self))
          (toJSString data'))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createCDATASection\"]($2)"
        ghcjs_dom_document_create_cdata_section ::
        JSRef Document -> JSString -> IO (JSRef CDATASection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCDATASection Mozilla Document.createCDATASection documentation> 
documentCreateCDATASection ::
                           (MonadIO m, IsDocument self, ToJSString data') =>
                             self -> data' -> m (Maybe CDATASection)
documentCreateCDATASection self data'
  = liftIO
      ((ghcjs_dom_document_create_cdata_section
          (unDocument (toDocument self))
          (toJSString data'))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createProcessingInstruction\"]($2,\n$3)"
        ghcjs_dom_document_create_processing_instruction ::
        JSRef Document ->
          JSString -> JSString -> IO (JSRef ProcessingInstruction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createProcessingInstruction Mozilla Document.createProcessingInstruction documentation> 
documentCreateProcessingInstruction ::
                                    (MonadIO m, IsDocument self, ToJSString target,
                                     ToJSString data') =>
                                      self -> target -> data' -> m (Maybe ProcessingInstruction)
documentCreateProcessingInstruction self target data'
  = liftIO
      ((ghcjs_dom_document_create_processing_instruction
          (unDocument (toDocument self))
          (toJSString target)
          (toJSString data'))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createAttribute\"]($2)"
        ghcjs_dom_document_create_attribute ::
        JSRef Document -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttribute Mozilla Document.createAttribute documentation> 
documentCreateAttribute ::
                        (MonadIO m, IsDocument self, ToJSString name) =>
                          self -> name -> m (Maybe DOMAttr)
documentCreateAttribute self name
  = liftIO
      ((ghcjs_dom_document_create_attribute
          (unDocument (toDocument self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createEntityReference\"]($2)"
        ghcjs_dom_document_create_entity_reference ::
        JSRef Document -> JSString -> IO (JSRef EntityReference)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEntityReference Mozilla Document.createEntityReference documentation> 
documentCreateEntityReference ::
                              (MonadIO m, IsDocument self, ToJSString name) =>
                                self -> name -> m (Maybe EntityReference)
documentCreateEntityReference self name
  = liftIO
      ((ghcjs_dom_document_create_entity_reference
          (unDocument (toDocument self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        ghcjs_dom_document_get_elements_by_tag_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementsByTagName Mozilla Document.elementsByTagName documentation> 
documentGetElementsByTagName ::
                             (MonadIO m, IsDocument self, ToJSString tagname) =>
                               self -> tagname -> m (Maybe NodeList)
documentGetElementsByTagName self tagname
  = liftIO
      ((ghcjs_dom_document_get_elements_by_tag_name
          (unDocument (toDocument self))
          (toJSString tagname))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"importNode\"]($2, $3)"
        ghcjs_dom_document_import_node ::
        JSRef Document -> JSRef Node -> Bool -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.importNode Mozilla Document.importNode documentation> 
documentImportNode ::
                   (MonadIO m, IsDocument self, IsNode importedNode) =>
                     self -> Maybe importedNode -> Bool -> m (Maybe Node)
documentImportNode self importedNode deep
  = liftIO
      ((ghcjs_dom_document_import_node (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) importedNode)
          deep)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createElementNS\"]($2, $3)"
        ghcjs_dom_document_create_element_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createElementNS Mozilla Document.createElementNS documentation> 
documentCreateElementNS ::
                        (MonadIO m, IsDocument self, ToJSString namespaceURI,
                         ToJSString qualifiedName) =>
                          self -> namespaceURI -> qualifiedName -> m (Maybe Element)
documentCreateElementNS self namespaceURI qualifiedName
  = liftIO
      ((ghcjs_dom_document_create_element_ns
          (unDocument (toDocument self))
          (toJSString namespaceURI)
          (toJSString qualifiedName))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createAttributeNS\"]($2, $3)"
        ghcjs_dom_document_create_attribute_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createAttributeNS Mozilla Document.createAttributeNS documentation> 
documentCreateAttributeNS ::
                          (MonadIO m, IsDocument self, ToJSString namespaceURI,
                           ToJSString qualifiedName) =>
                            self -> namespaceURI -> qualifiedName -> m (Maybe DOMAttr)
documentCreateAttributeNS self namespaceURI qualifiedName
  = liftIO
      ((ghcjs_dom_document_create_attribute_ns
          (unDocument (toDocument self))
          (toJSString namespaceURI)
          (toJSString qualifiedName))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)"
        ghcjs_dom_document_get_elements_by_tag_name_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementsByTagNameNS Mozilla Document.elementsByTagNameNS documentation> 
documentGetElementsByTagNameNS ::
                               (MonadIO m, IsDocument self, ToJSString namespaceURI,
                                ToJSString localName) =>
                                 self -> namespaceURI -> localName -> m (Maybe NodeList)
documentGetElementsByTagNameNS self namespaceURI localName
  = liftIO
      ((ghcjs_dom_document_get_elements_by_tag_name_ns
          (unDocument (toDocument self))
          (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        ghcjs_dom_document_get_element_by_id ::
        JSRef Document -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementById Mozilla Document.elementById documentation> 
documentGetElementById ::
                       (MonadIO m, IsDocument self, ToJSString elementId) =>
                         self -> elementId -> m (Maybe Element)
documentGetElementById self elementId
  = liftIO
      ((ghcjs_dom_document_get_element_by_id
          (unDocument (toDocument self))
          (toJSString elementId))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"adoptNode\"]($2)"
        ghcjs_dom_document_adopt_node ::
        JSRef Document -> JSRef Node -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.adoptNode Mozilla Document.adoptNode documentation> 
documentAdoptNode ::
                  (MonadIO m, IsDocument self, IsNode source) =>
                    self -> Maybe source -> m (Maybe Node)
documentAdoptNode self source
  = liftIO
      ((ghcjs_dom_document_adopt_node (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) source))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        ghcjs_dom_document_create_event ::
        JSRef Document -> JSString -> IO (JSRef Event)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createEvent Mozilla Document.createEvent documentation> 
documentCreateEvent ::
                    (MonadIO m, IsDocument self, ToJSString eventType) =>
                      self -> eventType -> m (Maybe Event)
documentCreateEvent self eventType
  = liftIO
      ((ghcjs_dom_document_create_event (unDocument (toDocument self))
          (toJSString eventType))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createRange\"]()"
        ghcjs_dom_document_create_range ::
        JSRef Document -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createRange Mozilla Document.createRange documentation> 
documentCreateRange ::
                    (MonadIO m, IsDocument self) => self -> m (Maybe DOMRange)
documentCreateRange self
  = liftIO
      ((ghcjs_dom_document_create_range (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createNodeIterator\"]($2, $3,\n$4, $5)"
        ghcjs_dom_document_create_node_iterator ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> Bool -> IO (JSRef NodeIterator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNodeIterator Mozilla Document.createNodeIterator documentation> 
documentCreateNodeIterator ::
                           (MonadIO m, IsDocument self, IsNode root, IsNodeFilter filter) =>
                             self ->
                               Maybe root ->
                                 Word -> Maybe filter -> Bool -> m (Maybe NodeIterator)
documentCreateNodeIterator self root whatToShow filter
  expandEntityReferences
  = liftIO
      ((ghcjs_dom_document_create_node_iterator
          (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) root)
          whatToShow
          (maybe jsNull (unNodeFilter . toNodeFilter) filter)
          expandEntityReferences)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createTreeWalker\"]($2, $3,\n$4, $5)"
        ghcjs_dom_document_create_tree_walker ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> Bool -> IO (JSRef TreeWalker)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTreeWalker Mozilla Document.createTreeWalker documentation> 
documentCreateTreeWalker ::
                         (MonadIO m, IsDocument self, IsNode root, IsNodeFilter filter) =>
                           self ->
                             Maybe root -> Word -> Maybe filter -> Bool -> m (Maybe TreeWalker)
documentCreateTreeWalker self root whatToShow filter
  expandEntityReferences
  = liftIO
      ((ghcjs_dom_document_create_tree_walker
          (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) root)
          whatToShow
          (maybe jsNull (unNodeFilter . toNodeFilter) filter)
          expandEntityReferences)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getOverrideStyle\"]($2, $3)"
        ghcjs_dom_document_get_override_style ::
        JSRef Document ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.overrideStyle Mozilla Document.overrideStyle documentation> 
documentGetOverrideStyle ::
                         (MonadIO m, IsDocument self, IsElement element,
                          ToJSString pseudoElement) =>
                           self ->
                             Maybe element -> pseudoElement -> m (Maybe CSSStyleDeclaration)
documentGetOverrideStyle self element pseudoElement
  = liftIO
      ((ghcjs_dom_document_get_override_style
          (unDocument (toDocument self))
          (maybe jsNull (unElement . toElement) element)
          (toJSString pseudoElement))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createExpression\"]($2, $3)"
        ghcjs_dom_document_create_expression ::
        JSRef Document ->
          JSString -> JSRef XPathNSResolver -> IO (JSRef XPathExpression)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createExpression Mozilla Document.createExpression documentation> 
documentCreateExpression ::
                         (MonadIO m, IsDocument self, ToJSString expression,
                          IsXPathNSResolver resolver) =>
                           self -> expression -> Maybe resolver -> m (Maybe XPathExpression)
documentCreateExpression self expression resolver
  = liftIO
      ((ghcjs_dom_document_create_expression
          (unDocument (toDocument self))
          (toJSString expression)
          (maybe jsNull (unXPathNSResolver . toXPathNSResolver) resolver))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        ghcjs_dom_document_create_ns_resolver ::
        JSRef Document -> JSRef Node -> IO (JSRef XPathNSResolver)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createNSResolver Mozilla Document.createNSResolver documentation> 
documentCreateNSResolver ::
                         (MonadIO m, IsDocument self, IsNode nodeResolver) =>
                           self -> Maybe nodeResolver -> m (Maybe XPathNSResolver)
documentCreateNSResolver self nodeResolver
  = liftIO
      ((ghcjs_dom_document_create_ns_resolver
          (unDocument (toDocument self))
          (maybe jsNull (unNode . toNode) nodeResolver))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)" ghcjs_dom_document_evaluate
        ::
        JSRef Document ->
          JSString ->
            JSRef Node ->
              JSRef XPathNSResolver ->
                Word -> JSRef XPathResult -> IO (JSRef XPathResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.evaluate Mozilla Document.evaluate documentation> 
documentEvaluate ::
                 (MonadIO m, IsDocument self, ToJSString expression,
                  IsNode contextNode, IsXPathNSResolver resolver,
                  IsXPathResult inResult) =>
                   self ->
                     expression ->
                       Maybe contextNode ->
                         Maybe resolver -> Word -> Maybe inResult -> m (Maybe XPathResult)
documentEvaluate self expression contextNode resolver type'
  inResult
  = liftIO
      ((ghcjs_dom_document_evaluate (unDocument (toDocument self))
          (toJSString expression)
          (maybe jsNull (unNode . toNode) contextNode)
          (maybe jsNull (unXPathNSResolver . toXPathNSResolver) resolver)
          type'
          (maybe jsNull (unXPathResult . toXPathResult) inResult))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"execCommand\"]($2, $3,\n$4) ? 1 : 0)"
        ghcjs_dom_document_exec_command ::
        JSRef Document -> JSString -> Bool -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.execCommand Mozilla Document.execCommand documentation> 
documentExecCommand ::
                    (MonadIO m, IsDocument self, ToJSString command,
                     ToJSString value) =>
                      self -> command -> Bool -> value -> m Bool
documentExecCommand self command userInterface value
  = liftIO
      (ghcjs_dom_document_exec_command (unDocument (toDocument self))
         (toJSString command)
         userInterface
         (toJSString value))
 
foreign import javascript unsafe
        "($1[\"queryCommandEnabled\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_enabled ::
        JSRef Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandEnabled Mozilla Document.queryCommandEnabled documentation> 
documentQueryCommandEnabled ::
                            (MonadIO m, IsDocument self, ToJSString command) =>
                              self -> command -> m Bool
documentQueryCommandEnabled self command
  = liftIO
      (ghcjs_dom_document_query_command_enabled
         (unDocument (toDocument self))
         (toJSString command))
 
foreign import javascript unsafe
        "($1[\"queryCommandIndeterm\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_indeterm ::
        JSRef Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandIndeterm Mozilla Document.queryCommandIndeterm documentation> 
documentQueryCommandIndeterm ::
                             (MonadIO m, IsDocument self, ToJSString command) =>
                               self -> command -> m Bool
documentQueryCommandIndeterm self command
  = liftIO
      (ghcjs_dom_document_query_command_indeterm
         (unDocument (toDocument self))
         (toJSString command))
 
foreign import javascript unsafe
        "($1[\"queryCommandState\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_state ::
        JSRef Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandState Mozilla Document.queryCommandState documentation> 
documentQueryCommandState ::
                          (MonadIO m, IsDocument self, ToJSString command) =>
                            self -> command -> m Bool
documentQueryCommandState self command
  = liftIO
      (ghcjs_dom_document_query_command_state
         (unDocument (toDocument self))
         (toJSString command))
 
foreign import javascript unsafe
        "($1[\"queryCommandSupported\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_supported ::
        JSRef Document -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandSupported Mozilla Document.queryCommandSupported documentation> 
documentQueryCommandSupported ::
                              (MonadIO m, IsDocument self, ToJSString command) =>
                                self -> command -> m Bool
documentQueryCommandSupported self command
  = liftIO
      (ghcjs_dom_document_query_command_supported
         (unDocument (toDocument self))
         (toJSString command))
 
foreign import javascript unsafe "$1[\"queryCommandValue\"]($2)"
        ghcjs_dom_document_query_command_value ::
        JSRef Document -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.queryCommandValue Mozilla Document.queryCommandValue documentation> 
documentQueryCommandValue ::
                          (MonadIO m, IsDocument self, ToJSString command,
                           FromJSString result) =>
                            self -> command -> m result
documentQueryCommandValue self command
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_query_command_value
            (unDocument (toDocument self))
            (toJSString command)))
 
foreign import javascript unsafe "$1[\"getElementsByName\"]($2)"
        ghcjs_dom_document_get_elements_by_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementsByName Mozilla Document.elementsByName documentation> 
documentGetElementsByName ::
                          (MonadIO m, IsDocument self, ToJSString elementName) =>
                            self -> elementName -> m (Maybe NodeList)
documentGetElementsByName self elementName
  = liftIO
      ((ghcjs_dom_document_get_elements_by_name
          (unDocument (toDocument self))
          (toJSString elementName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"elementFromPoint\"]($2, $3)"
        ghcjs_dom_document_element_from_point ::
        JSRef Document -> Int -> Int -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementFromPoint Mozilla Document.elementFromPoint documentation> 
documentElementFromPoint ::
                         (MonadIO m, IsDocument self) =>
                           self -> Int -> Int -> m (Maybe Element)
documentElementFromPoint self x y
  = liftIO
      ((ghcjs_dom_document_element_from_point
          (unDocument (toDocument self))
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"caretRangeFromPoint\"]($2,\n$3)"
        ghcjs_dom_document_caret_range_from_point ::
        JSRef Document -> Int -> Int -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.caretRangeFromPoint Mozilla Document.caretRangeFromPoint documentation> 
documentCaretRangeFromPoint ::
                            (MonadIO m, IsDocument self) =>
                              self -> Int -> Int -> m (Maybe DOMRange)
documentCaretRangeFromPoint self x y
  = liftIO
      ((ghcjs_dom_document_caret_range_from_point
          (unDocument (toDocument self))
          x
          y)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createCSSStyleDeclaration\"]()"
        ghcjs_dom_document_create_css_style_declaration ::
        JSRef Document -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createCSSStyleDeclaration Mozilla Document.createCSSStyleDeclaration documentation> 
documentCreateCSSStyleDeclaration ::
                                  (MonadIO m, IsDocument self) =>
                                    self -> m (Maybe CSSStyleDeclaration)
documentCreateCSSStyleDeclaration self
  = liftIO
      ((ghcjs_dom_document_create_css_style_declaration
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getCSSCanvasContext\"]($2,\n$3, $4, $5)"
        ghcjs_dom_document_get_css_canvas_context ::
        JSRef Document ->
          JSString ->
            JSString -> Int -> Int -> IO (JSRef CanvasRenderingContext)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cssCanvasContext Mozilla Document.cssCanvasContext documentation> 
documentGetCSSCanvasContext ::
                            (MonadIO m, IsDocument self, ToJSString contextId,
                             ToJSString name) =>
                              self ->
                                contextId -> name -> Int -> Int -> m (Maybe CanvasRenderingContext)
documentGetCSSCanvasContext self contextId name width height
  = liftIO
      ((ghcjs_dom_document_get_css_canvas_context
          (unDocument (toDocument self))
          (toJSString contextId)
          (toJSString name)
          width
          height)
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)"
        ghcjs_dom_document_get_elements_by_class_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.elementsByClassName Mozilla Document.elementsByClassName documentation> 
documentGetElementsByClassName ::
                               (MonadIO m, IsDocument self, ToJSString tagname) =>
                                 self -> tagname -> m (Maybe NodeList)
documentGetElementsByClassName self tagname
  = liftIO
      ((ghcjs_dom_document_get_elements_by_class_name
          (unDocument (toDocument self))
          (toJSString tagname))
         >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"hasFocus\"]() ? 1 : 0)"
        ghcjs_dom_document_has_focus :: JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hasFocus Mozilla Document.hasFocus documentation> 
documentHasFocus :: (MonadIO m, IsDocument self) => self -> m Bool
documentHasFocus self
  = liftIO
      (ghcjs_dom_document_has_focus (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        ghcjs_dom_document_query_selector ::
        JSRef Document -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelector Mozilla Document.querySelector documentation> 
documentQuerySelector ::
                      (MonadIO m, IsDocument self, ToJSString selectors) =>
                        self -> selectors -> m (Maybe Element)
documentQuerySelector self selectors
  = liftIO
      ((ghcjs_dom_document_query_selector (unDocument (toDocument self))
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        ghcjs_dom_document_query_selector_all ::
        JSRef Document -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.querySelectorAll Mozilla Document.querySelectorAll documentation> 
documentQuerySelectorAll ::
                         (MonadIO m, IsDocument self, ToJSString selectors) =>
                           self -> selectors -> m (Maybe NodeList)
documentQuerySelectorAll self selectors
  = liftIO
      ((ghcjs_dom_document_query_selector_all
          (unDocument (toDocument self))
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitCancelFullScreen\"]()"
        ghcjs_dom_document_webkit_cancel_full_screen ::
        JSRef Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCancelFullScreen Mozilla Document.webkitCancelFullScreen documentation> 
documentWebkitCancelFullScreen ::
                               (MonadIO m, IsDocument self) => self -> m ()
documentWebkitCancelFullScreen self
  = liftIO
      (ghcjs_dom_document_webkit_cancel_full_screen
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"webkitExitFullscreen\"]()"
        ghcjs_dom_document_webkit_exit_fullscreen ::
        JSRef Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitExitFullscreen Mozilla Document.webkitExitFullscreen documentation> 
documentWebkitExitFullscreen ::
                             (MonadIO m, IsDocument self) => self -> m ()
documentWebkitExitFullscreen self
  = liftIO
      (ghcjs_dom_document_webkit_exit_fullscreen
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"exitPointerLock\"]()"
        ghcjs_dom_document_exit_pointer_lock :: JSRef Document -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.exitPointerLock Mozilla Document.exitPointerLock documentation> 
documentExitPointerLock ::
                        (MonadIO m, IsDocument self) => self -> m ()
documentExitPointerLock self
  = liftIO
      (ghcjs_dom_document_exit_pointer_lock
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"webkitGetNamedFlows\"]()"
        ghcjs_dom_document_webkit_get_named_flows ::
        JSRef Document -> IO (JSRef DOMNamedFlowCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitGetNamedFlows Mozilla Document.webkitGetNamedFlows documentation> 
documentWebkitGetNamedFlows ::
                            (MonadIO m, IsDocument self) =>
                              self -> m (Maybe DOMNamedFlowCollection)
documentWebkitGetNamedFlows self
  = liftIO
      ((ghcjs_dom_document_webkit_get_named_flows
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createTouch\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12)"
        ghcjs_dom_document_create_touch ::
        JSRef Document ->
          JSRef DOMWindow ->
            JSRef EventTarget ->
              Int ->
                Int ->
                  Int ->
                    Int -> Int -> Int -> Int -> Float -> Float -> IO (JSRef Touch)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouch Mozilla Document.createTouch documentation> 
documentCreateTouch ::
                    (MonadIO m, IsDocument self, IsDOMWindow window,
                     IsEventTarget target) =>
                      self ->
                        Maybe window ->
                          Maybe target ->
                            Int ->
                              Int ->
                                Int ->
                                  Int -> Int -> Int -> Int -> Float -> Float -> m (Maybe Touch)
documentCreateTouch self window target identifier pageX pageY
  screenX screenY webkitRadiusX webkitRadiusY webkitRotationAngle
  webkitForce
  = liftIO
      ((ghcjs_dom_document_create_touch (unDocument (toDocument self))
          (maybe jsNull (unDOMWindow . toDOMWindow) window)
          (maybe jsNull (unEventTarget . toEventTarget) target)
          identifier
          pageX
          pageY
          screenX
          screenY
          webkitRadiusX
          webkitRadiusY
          webkitRotationAngle
          webkitForce)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createTouchList\"]()"
        ghcjs_dom_document_create_touch_list ::
        JSRef Document -> IO (JSRef TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.createTouchList Mozilla Document.createTouchList documentation> 
documentCreateTouchList ::
                        (MonadIO m, IsDocument self) => self -> m (Maybe TouchList)
documentCreateTouchList self
  = liftIO
      ((ghcjs_dom_document_create_touch_list
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"doctype\"]"
        ghcjs_dom_document_get_doctype ::
        JSRef Document -> IO (JSRef DocumentType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.doctype Mozilla Document.doctype documentation> 
documentGetDoctype ::
                   (MonadIO m, IsDocument self) => self -> m (Maybe DocumentType)
documentGetDoctype self
  = liftIO
      ((ghcjs_dom_document_get_doctype (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"implementation\"]"
        ghcjs_dom_document_get_implementation ::
        JSRef Document -> IO (JSRef DOMImplementation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.implementation Mozilla Document.implementation documentation> 
documentGetImplementation ::
                          (MonadIO m, IsDocument self) => self -> m (Maybe DOMImplementation)
documentGetImplementation self
  = liftIO
      ((ghcjs_dom_document_get_implementation
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"documentElement\"]"
        ghcjs_dom_document_get_document_element ::
        JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentElement Mozilla Document.documentElement documentation> 
documentGetDocumentElement ::
                           (MonadIO m, IsDocument self) => self -> m (Maybe Element)
documentGetDocumentElement self
  = liftIO
      ((ghcjs_dom_document_get_document_element
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"inputEncoding\"]"
        ghcjs_dom_document_get_input_encoding ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.inputEncoding Mozilla Document.inputEncoding documentation> 
documentGetInputEncoding ::
                         (MonadIO m, IsDocument self, FromJSString result) =>
                           self -> m result
documentGetInputEncoding self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_input_encoding
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"xmlEncoding\"]"
        ghcjs_dom_document_get_xml_encoding ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlEncoding Mozilla Document.xmlEncoding documentation> 
documentGetXmlEncoding ::
                       (MonadIO m, IsDocument self, FromJSString result) =>
                         self -> m result
documentGetXmlEncoding self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_xml_encoding
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"xmlVersion\"] = $2;"
        ghcjs_dom_document_set_xml_version ::
        JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
documentSetXmlVersion ::
                      (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
documentSetXmlVersion self val
  = liftIO
      (ghcjs_dom_document_set_xml_version (unDocument (toDocument self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"xmlVersion\"]"
        ghcjs_dom_document_get_xml_version :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlVersion Mozilla Document.xmlVersion documentation> 
documentGetXmlVersion ::
                      (MonadIO m, IsDocument self, FromJSString result) =>
                        self -> m result
documentGetXmlVersion self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_xml_version
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"xmlStandalone\"] = $2;"
        ghcjs_dom_document_set_xml_standalone ::
        JSRef Document -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlStandalone Mozilla Document.xmlStandalone documentation> 
documentSetXmlStandalone ::
                         (MonadIO m, IsDocument self) => self -> Bool -> m ()
documentSetXmlStandalone self val
  = liftIO
      (ghcjs_dom_document_set_xml_standalone
         (unDocument (toDocument self))
         val)
 
foreign import javascript unsafe "($1[\"xmlStandalone\"] ? 1 : 0)"
        ghcjs_dom_document_get_xml_standalone :: JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.xmlStandalone Mozilla Document.xmlStandalone documentation> 
documentGetXmlStandalone ::
                         (MonadIO m, IsDocument self) => self -> m Bool
documentGetXmlStandalone self
  = liftIO
      (ghcjs_dom_document_get_xml_standalone
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"documentURI\"] = $2;"
        ghcjs_dom_document_set_document_uri ::
        JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentURI Mozilla Document.documentURI documentation> 
documentSetDocumentURI ::
                       (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
documentSetDocumentURI self val
  = liftIO
      (ghcjs_dom_document_set_document_uri (unDocument (toDocument self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"documentURI\"]"
        ghcjs_dom_document_get_document_uri ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.documentURI Mozilla Document.documentURI documentation> 
documentGetDocumentURI ::
                       (MonadIO m, IsDocument self, FromJSString result) =>
                         self -> m result
documentGetDocumentURI self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_document_uri
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"defaultView\"]"
        ghcjs_dom_document_get_default_view ::
        JSRef Document -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultView Mozilla Document.defaultView documentation> 
documentGetDefaultView ::
                       (MonadIO m, IsDocument self) => self -> m (Maybe DOMWindow)
documentGetDefaultView self
  = liftIO
      ((ghcjs_dom_document_get_default_view
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"styleSheets\"]"
        ghcjs_dom_document_get_style_sheets ::
        JSRef Document -> IO (JSRef StyleSheetList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.styleSheets Mozilla Document.styleSheets documentation> 
documentGetStyleSheets ::
                       (MonadIO m, IsDocument self) => self -> m (Maybe StyleSheetList)
documentGetStyleSheets self
  = liftIO
      ((ghcjs_dom_document_get_style_sheets
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"title\"] = $2;"
        ghcjs_dom_document_set_title :: JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
documentSetTitle ::
                 (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
documentSetTitle self val
  = liftIO
      (ghcjs_dom_document_set_title (unDocument (toDocument self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_document_get_title :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.title Mozilla Document.title documentation> 
documentGetTitle ::
                 (MonadIO m, IsDocument self, FromJSString result) =>
                   self -> m result
documentGetTitle self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_title (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"referrer\"]"
        ghcjs_dom_document_get_referrer :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.referrer Mozilla Document.referrer documentation> 
documentGetReferrer ::
                    (MonadIO m, IsDocument self, FromJSString result) =>
                      self -> m result
documentGetReferrer self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_referrer (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"domain\"]"
        ghcjs_dom_document_get_domain :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.domain Mozilla Document.domain documentation> 
documentGetDomain ::
                  (MonadIO m, IsDocument self, FromJSString result) =>
                    self -> m result
documentGetDomain self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_domain (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"URL\"]"
        ghcjs_dom_document_get_url :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.url Mozilla Document.url documentation> 
documentGetURL ::
               (MonadIO m, IsDocument self, FromJSString result) =>
                 self -> m result
documentGetURL self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_url (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"cookie\"] = $2;"
        ghcjs_dom_document_set_cookie ::
        JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
documentSetCookie ::
                  (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
documentSetCookie self val
  = liftIO
      (ghcjs_dom_document_set_cookie (unDocument (toDocument self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"cookie\"]"
        ghcjs_dom_document_get_cookie :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.cookie Mozilla Document.cookie documentation> 
documentGetCookie ::
                  (MonadIO m, IsDocument self, FromJSString result) =>
                    self -> m result
documentGetCookie self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_cookie (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"body\"] = $2;"
        ghcjs_dom_document_set_body ::
        JSRef Document -> JSRef HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
documentSetBody ::
                (MonadIO m, IsDocument self, IsHTMLElement val) =>
                  self -> Maybe val -> m ()
documentSetBody self val
  = liftIO
      (ghcjs_dom_document_set_body (unDocument (toDocument self))
         (maybe jsNull (unHTMLElement . toHTMLElement) val))
 
foreign import javascript unsafe "$1[\"body\"]"
        ghcjs_dom_document_get_body ::
        JSRef Document -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.body Mozilla Document.body documentation> 
documentGetBody ::
                (MonadIO m, IsDocument self) => self -> m (Maybe HTMLElement)
documentGetBody self
  = liftIO
      ((ghcjs_dom_document_get_body (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"head\"]"
        ghcjs_dom_document_get_head ::
        JSRef Document -> IO (JSRef HTMLHeadElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.head Mozilla Document.head documentation> 
documentGetHead ::
                (MonadIO m, IsDocument self) => self -> m (Maybe HTMLHeadElement)
documentGetHead self
  = liftIO
      ((ghcjs_dom_document_get_head (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"images\"]"
        ghcjs_dom_document_get_images ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.images Mozilla Document.images documentation> 
documentGetImages ::
                  (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
documentGetImages self
  = liftIO
      ((ghcjs_dom_document_get_images (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"applets\"]"
        ghcjs_dom_document_get_applets ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.applets Mozilla Document.applets documentation> 
documentGetApplets ::
                   (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
documentGetApplets self
  = liftIO
      ((ghcjs_dom_document_get_applets (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"links\"]"
        ghcjs_dom_document_get_links ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.links Mozilla Document.links documentation> 
documentGetLinks ::
                 (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
documentGetLinks self
  = liftIO
      ((ghcjs_dom_document_get_links (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"forms\"]"
        ghcjs_dom_document_get_forms ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.forms Mozilla Document.forms documentation> 
documentGetForms ::
                 (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
documentGetForms self
  = liftIO
      ((ghcjs_dom_document_get_forms (unDocument (toDocument self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"anchors\"]"
        ghcjs_dom_document_get_anchors ::
        JSRef Document -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.anchors Mozilla Document.anchors documentation> 
documentGetAnchors ::
                   (MonadIO m, IsDocument self) => self -> m (Maybe HTMLCollection)
documentGetAnchors self
  = liftIO
      ((ghcjs_dom_document_get_anchors (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lastModified\"]"
        ghcjs_dom_document_get_last_modified ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.lastModified Mozilla Document.lastModified documentation> 
documentGetLastModified ::
                        (MonadIO m, IsDocument self, FromJSString result) =>
                          self -> m result
documentGetLastModified self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_last_modified
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        ghcjs_dom_document_set_charset ::
        JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
documentSetCharset ::
                   (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
documentSetCharset self val
  = liftIO
      (ghcjs_dom_document_set_charset (unDocument (toDocument self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_document_get_charset :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.charset Mozilla Document.charset documentation> 
documentGetCharset ::
                   (MonadIO m, IsDocument self, FromJSString result) =>
                     self -> m result
documentGetCharset self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_charset (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"defaultCharset\"]"
        ghcjs_dom_document_get_default_charset ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.defaultCharset Mozilla Document.defaultCharset documentation> 
documentGetDefaultCharset ::
                          (MonadIO m, IsDocument self, FromJSString result) =>
                            self -> m result
documentGetDefaultCharset self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_default_charset
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_document_get_ready_state :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.readyState Mozilla Document.readyState documentation> 
documentGetReadyState ::
                      (MonadIO m, IsDocument self, FromJSString result) =>
                        self -> m result
documentGetReadyState self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_ready_state
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"characterSet\"]"
        ghcjs_dom_document_get_character_set ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.characterSet Mozilla Document.characterSet documentation> 
documentGetCharacterSet ::
                        (MonadIO m, IsDocument self, FromJSString result) =>
                          self -> m result
documentGetCharacterSet self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_character_set
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"preferredStylesheetSet\"]"
        ghcjs_dom_document_get_preferred_stylesheet_set ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.preferredStylesheetSet Mozilla Document.preferredStylesheetSet documentation> 
documentGetPreferredStylesheetSet ::
                                  (MonadIO m, IsDocument self, FromJSString result) =>
                                    self -> m result
documentGetPreferredStylesheetSet self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_preferred_stylesheet_set
            (unDocument (toDocument self))))
 
foreign import javascript unsafe
        "$1[\"selectedStylesheetSet\"] = $2;"
        ghcjs_dom_document_set_selected_stylesheet_set ::
        JSRef Document -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
documentSetSelectedStylesheetSet ::
                                 (MonadIO m, IsDocument self, ToJSString val) => self -> val -> m ()
documentSetSelectedStylesheetSet self val
  = liftIO
      (ghcjs_dom_document_set_selected_stylesheet_set
         (unDocument (toDocument self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"selectedStylesheetSet\"]"
        ghcjs_dom_document_get_selected_stylesheet_set ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.selectedStylesheetSet Mozilla Document.selectedStylesheetSet documentation> 
documentGetSelectedStylesheetSet ::
                                 (MonadIO m, IsDocument self, FromJSString result) =>
                                   self -> m result
documentGetSelectedStylesheetSet self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_selected_stylesheet_set
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "$1[\"activeElement\"]"
        ghcjs_dom_document_get_active_element ::
        JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.activeElement Mozilla Document.activeElement documentation> 
documentGetActiveElement ::
                         (MonadIO m, IsDocument self) => self -> m (Maybe Element)
documentGetActiveElement self
  = liftIO
      ((ghcjs_dom_document_get_active_element
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"compatMode\"]"
        ghcjs_dom_document_get_compat_mode :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.compatMode Mozilla Document.compatMode documentation> 
documentGetCompatMode ::
                      (MonadIO m, IsDocument self, FromJSString result) =>
                        self -> m result
documentGetCompatMode self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_compat_mode
            (unDocument (toDocument self))))
 
foreign import javascript unsafe
        "($1[\"webkitIsFullScreen\"] ? 1 : 0)"
        ghcjs_dom_document_get_webkit_is_full_screen ::
        JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitIsFullScreen Mozilla Document.webkitIsFullScreen documentation> 
documentGetWebkitIsFullScreen ::
                              (MonadIO m, IsDocument self) => self -> m Bool
documentGetWebkitIsFullScreen self
  = liftIO
      (ghcjs_dom_document_get_webkit_is_full_screen
         (unDocument (toDocument self)))
 
foreign import javascript unsafe
        "($1[\"webkitFullScreenKeyboardInputAllowed\"] ? 1 : 0)"
        ghcjs_dom_document_get_webkit_full_screen_keyboard_input_allowed ::
        JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullScreenKeyboardInputAllowed Mozilla Document.webkitFullScreenKeyboardInputAllowed documentation> 
documentGetWebkitFullScreenKeyboardInputAllowed ::
                                                (MonadIO m, IsDocument self) => self -> m Bool
documentGetWebkitFullScreenKeyboardInputAllowed self
  = liftIO
      (ghcjs_dom_document_get_webkit_full_screen_keyboard_input_allowed
         (unDocument (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"webkitCurrentFullScreenElement\"]"
        ghcjs_dom_document_get_webkit_current_full_screen_element ::
        JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitCurrentFullScreenElement Mozilla Document.webkitCurrentFullScreenElement documentation> 
documentGetWebkitCurrentFullScreenElement ::
                                          (MonadIO m, IsDocument self) => self -> m (Maybe Element)
documentGetWebkitCurrentFullScreenElement self
  = liftIO
      ((ghcjs_dom_document_get_webkit_current_full_screen_element
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"webkitFullscreenEnabled\"] ? 1 : 0)"
        ghcjs_dom_document_get_webkit_fullscreen_enabled ::
        JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenEnabled Mozilla Document.webkitFullscreenEnabled documentation> 
documentGetWebkitFullscreenEnabled ::
                                   (MonadIO m, IsDocument self) => self -> m Bool
documentGetWebkitFullscreenEnabled self
  = liftIO
      (ghcjs_dom_document_get_webkit_fullscreen_enabled
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"webkitFullscreenElement\"]"
        ghcjs_dom_document_get_webkit_fullscreen_element ::
        JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.webkitFullscreenElement Mozilla Document.webkitFullscreenElement documentation> 
documentGetWebkitFullscreenElement ::
                                   (MonadIO m, IsDocument self) => self -> m (Maybe Element)
documentGetWebkitFullscreenElement self
  = liftIO
      ((ghcjs_dom_document_get_webkit_fullscreen_element
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"pointerLockElement\"]"
        ghcjs_dom_document_get_pointer_lock_element ::
        JSRef Document -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.pointerLockElement Mozilla Document.pointerLockElement documentation> 
documentGetPointerLockElement ::
                              (MonadIO m, IsDocument self) => self -> m (Maybe Element)
documentGetPointerLockElement self
  = liftIO
      ((ghcjs_dom_document_get_pointer_lock_element
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"visibilityState\"]"
        ghcjs_dom_document_get_visibility_state ::
        JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.visibilityState Mozilla Document.visibilityState documentation> 
documentGetVisibilityState ::
                           (MonadIO m, IsDocument self, FromJSString result) =>
                             self -> m result
documentGetVisibilityState self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_visibility_state
            (unDocument (toDocument self))))
 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        ghcjs_dom_document_get_hidden :: JSRef Document -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.hidden Mozilla Document.hidden documentation> 
documentGetHidden :: (MonadIO m, IsDocument self) => self -> m Bool
documentGetHidden self
  = liftIO
      (ghcjs_dom_document_get_hidden (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"securityPolicy\"]"
        ghcjs_dom_document_get_security_policy ::
        JSRef Document -> IO (JSRef DOMSecurityPolicy)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.securityPolicy Mozilla Document.securityPolicy documentation> 
documentGetSecurityPolicy ::
                          (MonadIO m, IsDocument self) => self -> m (Maybe DOMSecurityPolicy)
documentGetSecurityPolicy self
  = liftIO
      ((ghcjs_dom_document_get_security_policy
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"currentScript\"]"
        ghcjs_dom_document_get_current_script ::
        JSRef Document -> IO (JSRef HTMLScriptElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.currentScript Mozilla Document.currentScript documentation> 
documentGetCurrentScript ::
                         (MonadIO m, IsDocument self) => self -> m (Maybe HTMLScriptElement)
documentGetCurrentScript self
  = liftIO
      ((ghcjs_dom_document_get_current_script
          (unDocument (toDocument self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"origin\"]"
        ghcjs_dom_document_get_origin :: JSRef Document -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Document.origin Mozilla Document.origin documentation> 
documentGetOrigin ::
                  (MonadIO m, IsDocument self, FromJSString result) =>
                    self -> m result
documentGetOrigin self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_document_get_origin (unDocument (toDocument self))))
#else
module GHCJS.DOM.Document (
  module Graphics.UI.Gtk.WebKit.DOM.Document
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Document
#endif
