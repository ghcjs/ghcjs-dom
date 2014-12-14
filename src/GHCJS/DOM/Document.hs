{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Document
       (ghcjs_dom_document_create_element, documentCreateElement,
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
        ghcjs_dom_document_get_elements_by_class_name,
        documentGetElementsByClassName, ghcjs_dom_document_has_focus,
        documentHasFocus, ghcjs_dom_document_query_selector,
        documentQuerySelector, ghcjs_dom_document_query_selector_all,
        documentQuerySelectorAll, ghcjs_dom_document_exit_pointer_lock,
        documentExitPointerLock, ghcjs_dom_document_webkit_get_named_flows,
        documentWebkitGetNamedFlows, ghcjs_dom_document_get_doctype,
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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"createElement\"]($2)"
        ghcjs_dom_document_create_element ::
        JSRef Document -> JSString -> IO (JSRef Element)
 
documentCreateElement ::
                      (IsDocument self, ToJSString tagName) =>
                        self -> tagName -> IO (Maybe Element)
documentCreateElement self tagName
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_create_element (unDocument (toDocument self))
         (toJSString tagName))
 
foreign import javascript unsafe "$1[\"createDocumentFragment\"]()"
        ghcjs_dom_document_create_document_fragment ::
        JSRef Document -> IO (JSRef DocumentFragment)
 
documentCreateDocumentFragment ::
                               (IsDocument self) => self -> IO (Maybe DocumentFragment)
documentCreateDocumentFragment self
  = fmap DocumentFragment . maybeJSNull <$>
      (ghcjs_dom_document_create_document_fragment
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"createTextNode\"]($2)"
        ghcjs_dom_document_create_text_node ::
        JSRef Document -> JSString -> IO (JSRef Text)
 
documentCreateTextNode ::
                       (IsDocument self, ToJSString data') =>
                         self -> data' -> IO (Maybe Text)
documentCreateTextNode self data'
  = fmap Text . maybeJSNull <$>
      (ghcjs_dom_document_create_text_node (unDocument (toDocument self))
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"createComment\"]($2)"
        ghcjs_dom_document_create_comment ::
        JSRef Document -> JSString -> IO (JSRef Comment)
 
documentCreateComment ::
                      (IsDocument self, ToJSString data') =>
                        self -> data' -> IO (Maybe Comment)
documentCreateComment self data'
  = fmap Comment . maybeJSNull <$>
      (ghcjs_dom_document_create_comment (unDocument (toDocument self))
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"createCDATASection\"]($2)"
        ghcjs_dom_document_create_cdata_section ::
        JSRef Document -> JSString -> IO (JSRef CDATASection)
 
documentCreateCDATASection ::
                           (IsDocument self, ToJSString data') =>
                             self -> data' -> IO (Maybe CDATASection)
documentCreateCDATASection self data'
  = fmap CDATASection . maybeJSNull <$>
      (ghcjs_dom_document_create_cdata_section
         (unDocument (toDocument self))
         (toJSString data'))
 
foreign import javascript unsafe
        "$1[\"createProcessingInstruction\"]($2,\n$3)"
        ghcjs_dom_document_create_processing_instruction ::
        JSRef Document ->
          JSString -> JSString -> IO (JSRef ProcessingInstruction)
 
documentCreateProcessingInstruction ::
                                    (IsDocument self, ToJSString target, ToJSString data') =>
                                      self -> target -> data' -> IO (Maybe ProcessingInstruction)
documentCreateProcessingInstruction self target data'
  = fmap ProcessingInstruction . maybeJSNull <$>
      (ghcjs_dom_document_create_processing_instruction
         (unDocument (toDocument self))
         (toJSString target)
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"createAttribute\"]($2)"
        ghcjs_dom_document_create_attribute ::
        JSRef Document -> JSString -> IO (JSRef DOMAttr)
 
documentCreateAttribute ::
                        (IsDocument self, ToJSString name) =>
                          self -> name -> IO (Maybe DOMAttr)
documentCreateAttribute self name
  = fmap DOMAttr . maybeJSNull <$>
      (ghcjs_dom_document_create_attribute (unDocument (toDocument self))
         (toJSString name))
 
foreign import javascript unsafe
        "$1[\"createEntityReference\"]($2)"
        ghcjs_dom_document_create_entity_reference ::
        JSRef Document -> JSString -> IO (JSRef EntityReference)
 
documentCreateEntityReference ::
                              (IsDocument self, ToJSString name) =>
                                self -> name -> IO (Maybe EntityReference)
documentCreateEntityReference self name
  = fmap EntityReference . maybeJSNull <$>
      (ghcjs_dom_document_create_entity_reference
         (unDocument (toDocument self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        ghcjs_dom_document_get_elements_by_tag_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
 
documentGetElementsByTagName ::
                             (IsDocument self, ToJSString tagname) =>
                               self -> tagname -> IO (Maybe NodeList)
documentGetElementsByTagName self tagname
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_get_elements_by_tag_name
         (unDocument (toDocument self))
         (toJSString tagname))
 
foreign import javascript unsafe "$1[\"importNode\"]($2, $3)"
        ghcjs_dom_document_import_node ::
        JSRef Document -> JSRef Node -> Bool -> IO (JSRef Node)
 
documentImportNode ::
                   (IsDocument self, IsNode importedNode) =>
                     self -> Maybe importedNode -> Bool -> IO (Maybe Node)
documentImportNode self importedNode deep
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_document_import_node (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) importedNode)
         deep)
 
foreign import javascript unsafe "$1[\"createElementNS\"]($2, $3)"
        ghcjs_dom_document_create_element_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef Element)
 
documentCreateElementNS ::
                        (IsDocument self, ToJSString namespaceURI,
                         ToJSString qualifiedName) =>
                          self -> namespaceURI -> qualifiedName -> IO (Maybe Element)
documentCreateElementNS self namespaceURI qualifiedName
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_create_element_ns
         (unDocument (toDocument self))
         (toJSString namespaceURI)
         (toJSString qualifiedName))
 
foreign import javascript unsafe
        "$1[\"createAttributeNS\"]($2, $3)"
        ghcjs_dom_document_create_attribute_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef DOMAttr)
 
documentCreateAttributeNS ::
                          (IsDocument self, ToJSString namespaceURI,
                           ToJSString qualifiedName) =>
                            self -> namespaceURI -> qualifiedName -> IO (Maybe DOMAttr)
documentCreateAttributeNS self namespaceURI qualifiedName
  = fmap DOMAttr . maybeJSNull <$>
      (ghcjs_dom_document_create_attribute_ns
         (unDocument (toDocument self))
         (toJSString namespaceURI)
         (toJSString qualifiedName))
 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)"
        ghcjs_dom_document_get_elements_by_tag_name_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef NodeList)
 
documentGetElementsByTagNameNS ::
                               (IsDocument self, ToJSString namespaceURI, ToJSString localName) =>
                                 self -> namespaceURI -> localName -> IO (Maybe NodeList)
documentGetElementsByTagNameNS self namespaceURI localName
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_get_elements_by_tag_name_ns
         (unDocument (toDocument self))
         (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        ghcjs_dom_document_get_element_by_id ::
        JSRef Document -> JSString -> IO (JSRef Element)
 
documentGetElementById ::
                       (IsDocument self, ToJSString elementId) =>
                         self -> elementId -> IO (Maybe Element)
documentGetElementById self elementId
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_get_element_by_id
         (unDocument (toDocument self))
         (toJSString elementId))
 
foreign import javascript unsafe "$1[\"adoptNode\"]($2)"
        ghcjs_dom_document_adopt_node ::
        JSRef Document -> JSRef Node -> IO (JSRef Node)
 
documentAdoptNode ::
                  (IsDocument self, IsNode source) =>
                    self -> Maybe source -> IO (Maybe Node)
documentAdoptNode self source
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_document_adopt_node (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) source))
 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        ghcjs_dom_document_create_event ::
        JSRef Document -> JSString -> IO (JSRef Event)
 
documentCreateEvent ::
                    (IsDocument self, ToJSString eventType) =>
                      self -> eventType -> IO (Maybe Event)
documentCreateEvent self eventType
  = fmap Event . maybeJSNull <$>
      (ghcjs_dom_document_create_event (unDocument (toDocument self))
         (toJSString eventType))
 
foreign import javascript unsafe "$1[\"createRange\"]()"
        ghcjs_dom_document_create_range ::
        JSRef Document -> IO (JSRef DOMRange)
 
documentCreateRange ::
                    (IsDocument self) => self -> IO (Maybe DOMRange)
documentCreateRange self
  = fmap DOMRange . maybeJSNull <$>
      (ghcjs_dom_document_create_range (unDocument (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"createNodeIterator\"]($2, $3,\n$4, $5)"
        ghcjs_dom_document_create_node_iterator ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> Bool -> IO (JSRef NodeIterator)
 
documentCreateNodeIterator ::
                           (IsDocument self, IsNode root, IsNodeFilter filter) =>
                             self ->
                               Maybe root ->
                                 Word -> Maybe filter -> Bool -> IO (Maybe NodeIterator)
documentCreateNodeIterator self root whatToShow filter
  expandEntityReferences
  = fmap NodeIterator . maybeJSNull <$>
      (ghcjs_dom_document_create_node_iterator
         (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) root)
         whatToShow
         (maybe jsNull (unNodeFilter . toNodeFilter) filter)
         expandEntityReferences)
 
foreign import javascript unsafe
        "$1[\"createTreeWalker\"]($2, $3,\n$4, $5)"
        ghcjs_dom_document_create_tree_walker ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> Bool -> IO (JSRef TreeWalker)
 
documentCreateTreeWalker ::
                         (IsDocument self, IsNode root, IsNodeFilter filter) =>
                           self ->
                             Maybe root -> Word -> Maybe filter -> Bool -> IO (Maybe TreeWalker)
documentCreateTreeWalker self root whatToShow filter
  expandEntityReferences
  = fmap TreeWalker . maybeJSNull <$>
      (ghcjs_dom_document_create_tree_walker
         (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) root)
         whatToShow
         (maybe jsNull (unNodeFilter . toNodeFilter) filter)
         expandEntityReferences)
 
foreign import javascript unsafe "$1[\"getOverrideStyle\"]($2, $3)"
        ghcjs_dom_document_get_override_style ::
        JSRef Document ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)
 
documentGetOverrideStyle ::
                         (IsDocument self, IsElement element, ToJSString pseudoElement) =>
                           self ->
                             Maybe element -> pseudoElement -> IO (Maybe CSSStyleDeclaration)
documentGetOverrideStyle self element pseudoElement
  = fmap CSSStyleDeclaration . maybeJSNull <$>
      (ghcjs_dom_document_get_override_style
         (unDocument (toDocument self))
         (maybe jsNull (unElement . toElement) element)
         (toJSString pseudoElement))
 
foreign import javascript unsafe "$1[\"createExpression\"]($2, $3)"
        ghcjs_dom_document_create_expression ::
        JSRef Document ->
          JSString -> JSRef XPathNSResolver -> IO (JSRef XPathExpression)
 
documentCreateExpression ::
                         (IsDocument self, ToJSString expression,
                          IsXPathNSResolver resolver) =>
                           self -> expression -> Maybe resolver -> IO (Maybe XPathExpression)
documentCreateExpression self expression resolver
  = fmap XPathExpression . maybeJSNull <$>
      (ghcjs_dom_document_create_expression
         (unDocument (toDocument self))
         (toJSString expression)
         (maybe jsNull (unXPathNSResolver . toXPathNSResolver) resolver))
 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        ghcjs_dom_document_create_ns_resolver ::
        JSRef Document -> JSRef Node -> IO (JSRef XPathNSResolver)
 
documentCreateNSResolver ::
                         (IsDocument self, IsNode nodeResolver) =>
                           self -> Maybe nodeResolver -> IO (Maybe XPathNSResolver)
documentCreateNSResolver self nodeResolver
  = fmap XPathNSResolver . maybeJSNull <$>
      (ghcjs_dom_document_create_ns_resolver
         (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) nodeResolver))
 
foreign import javascript unsafe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)" ghcjs_dom_document_evaluate
        ::
        JSRef Document ->
          JSString ->
            JSRef Node ->
              JSRef XPathNSResolver ->
                Word -> JSRef XPathResult -> IO (JSRef XPathResult)
 
documentEvaluate ::
                 (IsDocument self, ToJSString expression, IsNode contextNode,
                  IsXPathNSResolver resolver, IsXPathResult inResult) =>
                   self ->
                     expression ->
                       Maybe contextNode ->
                         Maybe resolver -> Word -> Maybe inResult -> IO (Maybe XPathResult)
documentEvaluate self expression contextNode resolver type'
  inResult
  = fmap XPathResult . maybeJSNull <$>
      (ghcjs_dom_document_evaluate (unDocument (toDocument self))
         (toJSString expression)
         (maybe jsNull (unNode . toNode) contextNode)
         (maybe jsNull (unXPathNSResolver . toXPathNSResolver) resolver)
         type'
         (maybe jsNull (unXPathResult . toXPathResult) inResult))
 
foreign import javascript unsafe
        "($1[\"execCommand\"]($2, $3,\n$4) ? 1 : 0)"
        ghcjs_dom_document_exec_command ::
        JSRef Document -> JSString -> Bool -> JSString -> IO Bool
 
documentExecCommand ::
                    (IsDocument self, ToJSString command, ToJSString value) =>
                      self -> command -> Bool -> value -> IO Bool
documentExecCommand self command userInterface value
  = ghcjs_dom_document_exec_command (unDocument (toDocument self))
      (toJSString command)
      userInterface
      (toJSString value)
 
foreign import javascript unsafe
        "($1[\"queryCommandEnabled\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_enabled ::
        JSRef Document -> JSString -> IO Bool
 
documentQueryCommandEnabled ::
                            (IsDocument self, ToJSString command) => self -> command -> IO Bool
documentQueryCommandEnabled self command
  = ghcjs_dom_document_query_command_enabled
      (unDocument (toDocument self))
      (toJSString command)
 
foreign import javascript unsafe
        "($1[\"queryCommandIndeterm\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_indeterm ::
        JSRef Document -> JSString -> IO Bool
 
documentQueryCommandIndeterm ::
                             (IsDocument self, ToJSString command) => self -> command -> IO Bool
documentQueryCommandIndeterm self command
  = ghcjs_dom_document_query_command_indeterm
      (unDocument (toDocument self))
      (toJSString command)
 
foreign import javascript unsafe
        "($1[\"queryCommandState\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_state ::
        JSRef Document -> JSString -> IO Bool
 
documentQueryCommandState ::
                          (IsDocument self, ToJSString command) => self -> command -> IO Bool
documentQueryCommandState self command
  = ghcjs_dom_document_query_command_state
      (unDocument (toDocument self))
      (toJSString command)
 
foreign import javascript unsafe
        "($1[\"queryCommandSupported\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_supported ::
        JSRef Document -> JSString -> IO Bool
 
documentQueryCommandSupported ::
                              (IsDocument self, ToJSString command) => self -> command -> IO Bool
documentQueryCommandSupported self command
  = ghcjs_dom_document_query_command_supported
      (unDocument (toDocument self))
      (toJSString command)
 
foreign import javascript unsafe "$1[\"queryCommandValue\"]($2)"
        ghcjs_dom_document_query_command_value ::
        JSRef Document -> JSString -> IO JSString
 
documentQueryCommandValue ::
                          (IsDocument self, ToJSString command, FromJSString result) =>
                            self -> command -> IO result
documentQueryCommandValue self command
  = fromJSString <$>
      (ghcjs_dom_document_query_command_value
         (unDocument (toDocument self))
         (toJSString command))
 
foreign import javascript unsafe "$1[\"getElementsByName\"]($2)"
        ghcjs_dom_document_get_elements_by_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
 
documentGetElementsByName ::
                          (IsDocument self, ToJSString elementName) =>
                            self -> elementName -> IO (Maybe NodeList)
documentGetElementsByName self elementName
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_get_elements_by_name
         (unDocument (toDocument self))
         (toJSString elementName))
 
foreign import javascript unsafe "$1[\"elementFromPoint\"]($2, $3)"
        ghcjs_dom_document_element_from_point ::
        JSRef Document -> Int -> Int -> IO (JSRef Element)
 
documentElementFromPoint ::
                         (IsDocument self) => self -> Int -> Int -> IO (Maybe Element)
documentElementFromPoint self x y
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_element_from_point
         (unDocument (toDocument self))
         x
         y)
 
foreign import javascript unsafe
        "$1[\"caretRangeFromPoint\"]($2,\n$3)"
        ghcjs_dom_document_caret_range_from_point ::
        JSRef Document -> Int -> Int -> IO (JSRef DOMRange)
 
documentCaretRangeFromPoint ::
                            (IsDocument self) => self -> Int -> Int -> IO (Maybe DOMRange)
documentCaretRangeFromPoint self x y
  = fmap DOMRange . maybeJSNull <$>
      (ghcjs_dom_document_caret_range_from_point
         (unDocument (toDocument self))
         x
         y)
 
foreign import javascript unsafe
        "$1[\"createCSSStyleDeclaration\"]()"
        ghcjs_dom_document_create_css_style_declaration ::
        JSRef Document -> IO (JSRef CSSStyleDeclaration)
 
documentCreateCSSStyleDeclaration ::
                                  (IsDocument self) => self -> IO (Maybe CSSStyleDeclaration)
documentCreateCSSStyleDeclaration self
  = fmap CSSStyleDeclaration . maybeJSNull <$>
      (ghcjs_dom_document_create_css_style_declaration
         (unDocument (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)"
        ghcjs_dom_document_get_elements_by_class_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
 
documentGetElementsByClassName ::
                               (IsDocument self, ToJSString tagname) =>
                                 self -> tagname -> IO (Maybe NodeList)
documentGetElementsByClassName self tagname
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_get_elements_by_class_name
         (unDocument (toDocument self))
         (toJSString tagname))
 
foreign import javascript unsafe "($1[\"hasFocus\"]() ? 1 : 0)"
        ghcjs_dom_document_has_focus :: JSRef Document -> IO Bool
 
documentHasFocus :: (IsDocument self) => self -> IO Bool
documentHasFocus self
  = ghcjs_dom_document_has_focus (unDocument (toDocument self))
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        ghcjs_dom_document_query_selector ::
        JSRef Document -> JSString -> IO (JSRef Element)
 
documentQuerySelector ::
                      (IsDocument self, ToJSString selectors) =>
                        self -> selectors -> IO (Maybe Element)
documentQuerySelector self selectors
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_query_selector (unDocument (toDocument self))
         (toJSString selectors))
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        ghcjs_dom_document_query_selector_all ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
 
documentQuerySelectorAll ::
                         (IsDocument self, ToJSString selectors) =>
                           self -> selectors -> IO (Maybe NodeList)
documentQuerySelectorAll self selectors
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_query_selector_all
         (unDocument (toDocument self))
         (toJSString selectors))
 
foreign import javascript unsafe "$1[\"exitPointerLock\"]()"
        ghcjs_dom_document_exit_pointer_lock :: JSRef Document -> IO ()
 
documentExitPointerLock :: (IsDocument self) => self -> IO ()
documentExitPointerLock self
  = ghcjs_dom_document_exit_pointer_lock
      (unDocument (toDocument self))
 
foreign import javascript unsafe "$1[\"webkitGetNamedFlows\"]()"
        ghcjs_dom_document_webkit_get_named_flows ::
        JSRef Document -> IO (JSRef DOMNamedFlowCollection)
 
documentWebkitGetNamedFlows ::
                            (IsDocument self) => self -> IO (Maybe DOMNamedFlowCollection)
documentWebkitGetNamedFlows self
  = fmap DOMNamedFlowCollection . maybeJSNull <$>
      (ghcjs_dom_document_webkit_get_named_flows
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"doctype\"]"
        ghcjs_dom_document_get_doctype ::
        JSRef Document -> IO (JSRef DocumentType)
 
documentGetDoctype ::
                   (IsDocument self) => self -> IO (Maybe DocumentType)
documentGetDoctype self
  = fmap DocumentType . maybeJSNull <$>
      (ghcjs_dom_document_get_doctype (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"implementation\"]"
        ghcjs_dom_document_get_implementation ::
        JSRef Document -> IO (JSRef DOMImplementation)
 
documentGetImplementation ::
                          (IsDocument self) => self -> IO (Maybe DOMImplementation)
documentGetImplementation self
  = fmap DOMImplementation . maybeJSNull <$>
      (ghcjs_dom_document_get_implementation
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"documentElement\"]"
        ghcjs_dom_document_get_document_element ::
        JSRef Document -> IO (JSRef Element)
 
documentGetDocumentElement ::
                           (IsDocument self) => self -> IO (Maybe Element)
documentGetDocumentElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_get_document_element
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"inputEncoding\"]"
        ghcjs_dom_document_get_input_encoding ::
        JSRef Document -> IO JSString
 
documentGetInputEncoding ::
                         (IsDocument self, FromJSString result) => self -> IO result
documentGetInputEncoding self
  = fromJSString <$>
      (ghcjs_dom_document_get_input_encoding
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"xmlEncoding\"]"
        ghcjs_dom_document_get_xml_encoding ::
        JSRef Document -> IO JSString
 
documentGetXmlEncoding ::
                       (IsDocument self, FromJSString result) => self -> IO result
documentGetXmlEncoding self
  = fromJSString <$>
      (ghcjs_dom_document_get_xml_encoding
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"xmlVersion\"] = $2;"
        ghcjs_dom_document_set_xml_version ::
        JSRef Document -> JSString -> IO ()
 
documentSetXmlVersion ::
                      (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetXmlVersion self val
  = ghcjs_dom_document_set_xml_version (unDocument (toDocument self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"xmlVersion\"]"
        ghcjs_dom_document_get_xml_version :: JSRef Document -> IO JSString
 
documentGetXmlVersion ::
                      (IsDocument self, FromJSString result) => self -> IO result
documentGetXmlVersion self
  = fromJSString <$>
      (ghcjs_dom_document_get_xml_version (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"xmlStandalone\"] = $2;"
        ghcjs_dom_document_set_xml_standalone ::
        JSRef Document -> Bool -> IO ()
 
documentSetXmlStandalone ::
                         (IsDocument self) => self -> Bool -> IO ()
documentSetXmlStandalone self val
  = ghcjs_dom_document_set_xml_standalone
      (unDocument (toDocument self))
      val
 
foreign import javascript unsafe "($1[\"xmlStandalone\"] ? 1 : 0)"
        ghcjs_dom_document_get_xml_standalone :: JSRef Document -> IO Bool
 
documentGetXmlStandalone :: (IsDocument self) => self -> IO Bool
documentGetXmlStandalone self
  = ghcjs_dom_document_get_xml_standalone
      (unDocument (toDocument self))
 
foreign import javascript unsafe "$1[\"documentURI\"] = $2;"
        ghcjs_dom_document_set_document_uri ::
        JSRef Document -> JSString -> IO ()
 
documentSetDocumentURI ::
                       (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetDocumentURI self val
  = ghcjs_dom_document_set_document_uri
      (unDocument (toDocument self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"documentURI\"]"
        ghcjs_dom_document_get_document_uri ::
        JSRef Document -> IO JSString
 
documentGetDocumentURI ::
                       (IsDocument self, FromJSString result) => self -> IO result
documentGetDocumentURI self
  = fromJSString <$>
      (ghcjs_dom_document_get_document_uri
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"defaultView\"]"
        ghcjs_dom_document_get_default_view ::
        JSRef Document -> IO (JSRef DOMWindow)
 
documentGetDefaultView ::
                       (IsDocument self) => self -> IO (Maybe DOMWindow)
documentGetDefaultView self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_document_get_default_view
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"styleSheets\"]"
        ghcjs_dom_document_get_style_sheets ::
        JSRef Document -> IO (JSRef StyleSheetList)
 
documentGetStyleSheets ::
                       (IsDocument self) => self -> IO (Maybe StyleSheetList)
documentGetStyleSheets self
  = fmap StyleSheetList . maybeJSNull <$>
      (ghcjs_dom_document_get_style_sheets
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"title\"] = $2;"
        ghcjs_dom_document_set_title :: JSRef Document -> JSString -> IO ()
 
documentSetTitle ::
                 (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetTitle self val
  = ghcjs_dom_document_set_title (unDocument (toDocument self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_document_get_title :: JSRef Document -> IO JSString
 
documentGetTitle ::
                 (IsDocument self, FromJSString result) => self -> IO result
documentGetTitle self
  = fromJSString <$>
      (ghcjs_dom_document_get_title (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"referrer\"]"
        ghcjs_dom_document_get_referrer :: JSRef Document -> IO JSString
 
documentGetReferrer ::
                    (IsDocument self, FromJSString result) => self -> IO result
documentGetReferrer self
  = fromJSString <$>
      (ghcjs_dom_document_get_referrer (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"domain\"]"
        ghcjs_dom_document_get_domain :: JSRef Document -> IO JSString
 
documentGetDomain ::
                  (IsDocument self, FromJSString result) => self -> IO result
documentGetDomain self
  = fromJSString <$>
      (ghcjs_dom_document_get_domain (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"cookie\"] = $2;"
        ghcjs_dom_document_set_cookie ::
        JSRef Document -> JSString -> IO ()
 
documentSetCookie ::
                  (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetCookie self val
  = ghcjs_dom_document_set_cookie (unDocument (toDocument self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cookie\"]"
        ghcjs_dom_document_get_cookie :: JSRef Document -> IO JSString
 
documentGetCookie ::
                  (IsDocument self, FromJSString result) => self -> IO result
documentGetCookie self
  = fromJSString <$>
      (ghcjs_dom_document_get_cookie (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"body\"] = $2;"
        ghcjs_dom_document_set_body ::
        JSRef Document -> JSRef HTMLElement -> IO ()
 
documentSetBody ::
                (IsDocument self, IsHTMLElement val) => self -> Maybe val -> IO ()
documentSetBody self val
  = ghcjs_dom_document_set_body (unDocument (toDocument self))
      (maybe jsNull (unHTMLElement . toHTMLElement) val)
 
foreign import javascript unsafe "$1[\"body\"]"
        ghcjs_dom_document_get_body ::
        JSRef Document -> IO (JSRef HTMLElement)
 
documentGetBody ::
                (IsDocument self) => self -> IO (Maybe HTMLElement)
documentGetBody self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_document_get_body (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"head\"]"
        ghcjs_dom_document_get_head ::
        JSRef Document -> IO (JSRef HTMLHeadElement)
 
documentGetHead ::
                (IsDocument self) => self -> IO (Maybe HTMLHeadElement)
documentGetHead self
  = fmap HTMLHeadElement . maybeJSNull <$>
      (ghcjs_dom_document_get_head (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"images\"]"
        ghcjs_dom_document_get_images ::
        JSRef Document -> IO (JSRef HTMLCollection)
 
documentGetImages ::
                  (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetImages self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_images (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"applets\"]"
        ghcjs_dom_document_get_applets ::
        JSRef Document -> IO (JSRef HTMLCollection)
 
documentGetApplets ::
                   (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetApplets self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_applets (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"links\"]"
        ghcjs_dom_document_get_links ::
        JSRef Document -> IO (JSRef HTMLCollection)
 
documentGetLinks ::
                 (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetLinks self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_links (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"forms\"]"
        ghcjs_dom_document_get_forms ::
        JSRef Document -> IO (JSRef HTMLCollection)
 
documentGetForms ::
                 (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetForms self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_forms (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"anchors\"]"
        ghcjs_dom_document_get_anchors ::
        JSRef Document -> IO (JSRef HTMLCollection)
 
documentGetAnchors ::
                   (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetAnchors self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_anchors (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"lastModified\"]"
        ghcjs_dom_document_get_last_modified ::
        JSRef Document -> IO JSString
 
documentGetLastModified ::
                        (IsDocument self, FromJSString result) => self -> IO result
documentGetLastModified self
  = fromJSString <$>
      (ghcjs_dom_document_get_last_modified
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        ghcjs_dom_document_set_charset ::
        JSRef Document -> JSString -> IO ()
 
documentSetCharset ::
                   (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetCharset self val
  = ghcjs_dom_document_set_charset (unDocument (toDocument self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_document_get_charset :: JSRef Document -> IO JSString
 
documentGetCharset ::
                   (IsDocument self, FromJSString result) => self -> IO result
documentGetCharset self
  = fromJSString <$>
      (ghcjs_dom_document_get_charset (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"defaultCharset\"]"
        ghcjs_dom_document_get_default_charset ::
        JSRef Document -> IO JSString
 
documentGetDefaultCharset ::
                          (IsDocument self, FromJSString result) => self -> IO result
documentGetDefaultCharset self
  = fromJSString <$>
      (ghcjs_dom_document_get_default_charset
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_document_get_ready_state :: JSRef Document -> IO JSString
 
documentGetReadyState ::
                      (IsDocument self, FromJSString result) => self -> IO result
documentGetReadyState self
  = fromJSString <$>
      (ghcjs_dom_document_get_ready_state (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"characterSet\"]"
        ghcjs_dom_document_get_character_set ::
        JSRef Document -> IO JSString
 
documentGetCharacterSet ::
                        (IsDocument self, FromJSString result) => self -> IO result
documentGetCharacterSet self
  = fromJSString <$>
      (ghcjs_dom_document_get_character_set
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"preferredStylesheetSet\"]"
        ghcjs_dom_document_get_preferred_stylesheet_set ::
        JSRef Document -> IO JSString
 
documentGetPreferredStylesheetSet ::
                                  (IsDocument self, FromJSString result) => self -> IO result
documentGetPreferredStylesheetSet self
  = fromJSString <$>
      (ghcjs_dom_document_get_preferred_stylesheet_set
         (unDocument (toDocument self)))
 
foreign import javascript unsafe
        "$1[\"selectedStylesheetSet\"] = $2;"
        ghcjs_dom_document_set_selected_stylesheet_set ::
        JSRef Document -> JSString -> IO ()
 
documentSetSelectedStylesheetSet ::
                                 (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetSelectedStylesheetSet self val
  = ghcjs_dom_document_set_selected_stylesheet_set
      (unDocument (toDocument self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"selectedStylesheetSet\"]"
        ghcjs_dom_document_get_selected_stylesheet_set ::
        JSRef Document -> IO JSString
 
documentGetSelectedStylesheetSet ::
                                 (IsDocument self, FromJSString result) => self -> IO result
documentGetSelectedStylesheetSet self
  = fromJSString <$>
      (ghcjs_dom_document_get_selected_stylesheet_set
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"activeElement\"]"
        ghcjs_dom_document_get_active_element ::
        JSRef Document -> IO (JSRef Element)
 
documentGetActiveElement ::
                         (IsDocument self) => self -> IO (Maybe Element)
documentGetActiveElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_get_active_element
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"compatMode\"]"
        ghcjs_dom_document_get_compat_mode :: JSRef Document -> IO JSString
 
documentGetCompatMode ::
                      (IsDocument self, FromJSString result) => self -> IO result
documentGetCompatMode self
  = fromJSString <$>
      (ghcjs_dom_document_get_compat_mode (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"pointerLockElement\"]"
        ghcjs_dom_document_get_pointer_lock_element ::
        JSRef Document -> IO (JSRef Element)
 
documentGetPointerLockElement ::
                              (IsDocument self) => self -> IO (Maybe Element)
documentGetPointerLockElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_get_pointer_lock_element
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"visibilityState\"]"
        ghcjs_dom_document_get_visibility_state ::
        JSRef Document -> IO JSString
 
documentGetVisibilityState ::
                           (IsDocument self, FromJSString result) => self -> IO result
documentGetVisibilityState self
  = fromJSString <$>
      (ghcjs_dom_document_get_visibility_state
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        ghcjs_dom_document_get_hidden :: JSRef Document -> IO Bool
 
documentGetHidden :: (IsDocument self) => self -> IO Bool
documentGetHidden self
  = ghcjs_dom_document_get_hidden (unDocument (toDocument self))
 
foreign import javascript unsafe "$1[\"securityPolicy\"]"
        ghcjs_dom_document_get_security_policy ::
        JSRef Document -> IO (JSRef DOMSecurityPolicy)
 
documentGetSecurityPolicy ::
                          (IsDocument self) => self -> IO (Maybe DOMSecurityPolicy)
documentGetSecurityPolicy self
  = fmap DOMSecurityPolicy . maybeJSNull <$>
      (ghcjs_dom_document_get_security_policy
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"currentScript\"]"
        ghcjs_dom_document_get_current_script ::
        JSRef Document -> IO (JSRef HTMLScriptElement)
 
documentGetCurrentScript ::
                         (IsDocument self) => self -> IO (Maybe HTMLScriptElement)
documentGetCurrentScript self
  = fmap HTMLScriptElement . maybeJSNull <$>
      (ghcjs_dom_document_get_current_script
         (unDocument (toDocument self)))
 
foreign import javascript unsafe "$1[\"origin\"]"
        ghcjs_dom_document_get_origin :: JSRef Document -> IO JSString
 
documentGetOrigin ::
                  (IsDocument self, FromJSString result) => self -> IO result
documentGetOrigin self
  = fromJSString <$>
      (ghcjs_dom_document_get_origin (unDocument (toDocument self)))
#else
module GHCJS.DOM.Document (
  module Graphics.UI.Gtk.WebKit.DOM.Document
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Document
#endif
