{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
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
        documentGetElementsByClassName, ghcjs_dom_document_query_selector,
        documentQuerySelector, ghcjs_dom_document_query_selector_all,
        documentQuerySelectorAll,
        ghcjs_dom_document_webkit_exit_pointer_lock,
        documentWebkitExitPointerLock,
        ghcjs_dom_document_webkit_get_named_flows,
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
        ghcjs_dom_document_get_compat_mode, documentGetCompatMode,
        ghcjs_dom_document_get_webkit_pointer_lock_element,
        documentGetWebkitPointerLockElement, documentOnabort,
        documentOnblur, documentOnchange, documentOnclick,
        documentOncontextmenu, documentOndblclick, documentOndrag,
        documentOndragend, documentOndragenter, documentOndragleave,
        documentOndragover, documentOndragstart, documentOndrop,
        documentOnerror, documentOnfocus, documentOninput,
        documentOninvalid, documentOnkeydown, documentOnkeypress,
        documentOnkeyup, documentOnload, documentOnmousedown,
        documentOnmouseenter, documentOnmouseleave, documentOnmousemove,
        documentOnmouseout, documentOnmouseover, documentOnmouseup,
        documentOnmousewheel, documentOnreadystatechange, documentOnscroll,
        documentOnselect, documentOnsubmit, documentOnbeforecut,
        documentOncut, documentOnbeforecopy, documentOncopy,
        documentOnbeforepaste, documentOnpaste, documentOnreset,
        documentOnsearch, documentOnselectstart, documentOnselectionchange,
        documentOntouchstart, documentOntouchmove, documentOntouchend,
        documentOntouchcancel, documentOnwebkitfullscreenchange,
        documentOnwebkitfullscreenerror, documentOnwebkitpointerlockchange,
        documentOnwebkitpointerlockerror,
        documentOnsecuritypolicyviolation,
        ghcjs_dom_document_get_visibility_state,
        documentGetVisibilityState, ghcjs_dom_document_get_hidden,
        documentGetHidden, ghcjs_dom_document_get_security_policy,
        documentGetSecurityPolicy, ghcjs_dom_document_get_current_script,
        documentGetCurrentScript, Document, IsDocument, castToDocument,
        gTypeDocument, toDocument)
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
foreign import javascript unsafe "$1[\"createElement\"]($2)"
        ghcjs_dom_document_create_element ::
        JSRef Document -> JSString -> IO (JSRef Element)
#else 
ghcjs_dom_document_create_element ::
                                    JSRef Document -> JSString -> IO (JSRef Element)
ghcjs_dom_document_create_element = undefined
#endif
 
documentCreateElement ::
                      (IsDocument self, ToJSString tagName) =>
                        self -> tagName -> IO (Maybe Element)
documentCreateElement self tagName
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_create_element (unDocument (toDocument self))
         (toJSString tagName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createDocumentFragment\"]()"
        ghcjs_dom_document_create_document_fragment ::
        JSRef Document -> IO (JSRef DocumentFragment)
#else 
ghcjs_dom_document_create_document_fragment ::
                                              JSRef Document -> IO (JSRef DocumentFragment)
ghcjs_dom_document_create_document_fragment = undefined
#endif
 
documentCreateDocumentFragment ::
                               (IsDocument self) => self -> IO (Maybe DocumentFragment)
documentCreateDocumentFragment self
  = fmap DocumentFragment . maybeJSNull <$>
      (ghcjs_dom_document_create_document_fragment
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createTextNode\"]($2)"
        ghcjs_dom_document_create_text_node ::
        JSRef Document -> JSString -> IO (JSRef Text)
#else 
ghcjs_dom_document_create_text_node ::
                                      JSRef Document -> JSString -> IO (JSRef Text)
ghcjs_dom_document_create_text_node = undefined
#endif
 
documentCreateTextNode ::
                       (IsDocument self, ToJSString data') =>
                         self -> data' -> IO (Maybe Text)
documentCreateTextNode self data'
  = fmap Text . maybeJSNull <$>
      (ghcjs_dom_document_create_text_node (unDocument (toDocument self))
         (toJSString data'))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createComment\"]($2)"
        ghcjs_dom_document_create_comment ::
        JSRef Document -> JSString -> IO (JSRef Comment)
#else 
ghcjs_dom_document_create_comment ::
                                    JSRef Document -> JSString -> IO (JSRef Comment)
ghcjs_dom_document_create_comment = undefined
#endif
 
documentCreateComment ::
                      (IsDocument self, ToJSString data') =>
                        self -> data' -> IO (Maybe Comment)
documentCreateComment self data'
  = fmap Comment . maybeJSNull <$>
      (ghcjs_dom_document_create_comment (unDocument (toDocument self))
         (toJSString data'))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createCDATASection\"]($2)"
        ghcjs_dom_document_create_cdata_section ::
        JSRef Document -> JSString -> IO (JSRef CDATASection)
#else 
ghcjs_dom_document_create_cdata_section ::
                                          JSRef Document -> JSString -> IO (JSRef CDATASection)
ghcjs_dom_document_create_cdata_section = undefined
#endif
 
documentCreateCDATASection ::
                           (IsDocument self, ToJSString data') =>
                             self -> data' -> IO (Maybe CDATASection)
documentCreateCDATASection self data'
  = fmap CDATASection . maybeJSNull <$>
      (ghcjs_dom_document_create_cdata_section
         (unDocument (toDocument self))
         (toJSString data'))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createProcessingInstruction\"]($2,\n$3)"
        ghcjs_dom_document_create_processing_instruction ::
        JSRef Document ->
          JSString -> JSString -> IO (JSRef ProcessingInstruction)
#else 
ghcjs_dom_document_create_processing_instruction ::
                                                   JSRef Document ->
                                                     JSString ->
                                                       JSString -> IO (JSRef ProcessingInstruction)
ghcjs_dom_document_create_processing_instruction = undefined
#endif
 
documentCreateProcessingInstruction ::
                                    (IsDocument self, ToJSString target, ToJSString data') =>
                                      self -> target -> data' -> IO (Maybe ProcessingInstruction)
documentCreateProcessingInstruction self target data'
  = fmap ProcessingInstruction . maybeJSNull <$>
      (ghcjs_dom_document_create_processing_instruction
         (unDocument (toDocument self))
         (toJSString target)
         (toJSString data'))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createAttribute\"]($2)"
        ghcjs_dom_document_create_attribute ::
        JSRef Document -> JSString -> IO (JSRef DOMAttr)
#else 
ghcjs_dom_document_create_attribute ::
                                      JSRef Document -> JSString -> IO (JSRef DOMAttr)
ghcjs_dom_document_create_attribute = undefined
#endif
 
documentCreateAttribute ::
                        (IsDocument self, ToJSString name) =>
                          self -> name -> IO (Maybe DOMAttr)
documentCreateAttribute self name
  = fmap DOMAttr . maybeJSNull <$>
      (ghcjs_dom_document_create_attribute (unDocument (toDocument self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createEntityReference\"]($2)"
        ghcjs_dom_document_create_entity_reference ::
        JSRef Document -> JSString -> IO (JSRef EntityReference)
#else 
ghcjs_dom_document_create_entity_reference ::
                                             JSRef Document ->
                                               JSString -> IO (JSRef EntityReference)
ghcjs_dom_document_create_entity_reference = undefined
#endif
 
documentCreateEntityReference ::
                              (IsDocument self, ToJSString name) =>
                                self -> name -> IO (Maybe EntityReference)
documentCreateEntityReference self name
  = fmap EntityReference . maybeJSNull <$>
      (ghcjs_dom_document_create_entity_reference
         (unDocument (toDocument self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        ghcjs_dom_document_get_elements_by_tag_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_document_get_elements_by_tag_name ::
                                              JSRef Document -> JSString -> IO (JSRef NodeList)
ghcjs_dom_document_get_elements_by_tag_name = undefined
#endif
 
documentGetElementsByTagName ::
                             (IsDocument self, ToJSString tagname) =>
                               self -> tagname -> IO (Maybe NodeList)
documentGetElementsByTagName self tagname
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_get_elements_by_tag_name
         (unDocument (toDocument self))
         (toJSString tagname))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"importNode\"]($2, $3)"
        ghcjs_dom_document_import_node ::
        JSRef Document -> JSRef Node -> Bool -> IO (JSRef Node)
#else 
ghcjs_dom_document_import_node ::
                                 JSRef Document -> JSRef Node -> Bool -> IO (JSRef Node)
ghcjs_dom_document_import_node = undefined
#endif
 
documentImportNode ::
                   (IsDocument self, IsNode importedNode) =>
                     self -> Maybe importedNode -> Bool -> IO (Maybe Node)
documentImportNode self importedNode deep
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_document_import_node (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) importedNode)
         deep)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createElementNS\"]($2, $3)"
        ghcjs_dom_document_create_element_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef Element)
#else 
ghcjs_dom_document_create_element_ns ::
                                       JSRef Document -> JSString -> JSString -> IO (JSRef Element)
ghcjs_dom_document_create_element_ns = undefined
#endif
 
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


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createAttributeNS\"]($2, $3)"
        ghcjs_dom_document_create_attribute_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef DOMAttr)
#else 
ghcjs_dom_document_create_attribute_ns ::
                                         JSRef Document ->
                                           JSString -> JSString -> IO (JSRef DOMAttr)
ghcjs_dom_document_create_attribute_ns = undefined
#endif
 
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


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)"
        ghcjs_dom_document_get_elements_by_tag_name_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_document_get_elements_by_tag_name_ns ::
                                                 JSRef Document ->
                                                   JSString -> JSString -> IO (JSRef NodeList)
ghcjs_dom_document_get_elements_by_tag_name_ns = undefined
#endif
 
documentGetElementsByTagNameNS ::
                               (IsDocument self, ToJSString namespaceURI, ToJSString localName) =>
                                 self -> namespaceURI -> localName -> IO (Maybe NodeList)
documentGetElementsByTagNameNS self namespaceURI localName
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_get_elements_by_tag_name_ns
         (unDocument (toDocument self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        ghcjs_dom_document_get_element_by_id ::
        JSRef Document -> JSString -> IO (JSRef Element)
#else 
ghcjs_dom_document_get_element_by_id ::
                                       JSRef Document -> JSString -> IO (JSRef Element)
ghcjs_dom_document_get_element_by_id = undefined
#endif
 
documentGetElementById ::
                       (IsDocument self, ToJSString elementId) =>
                         self -> elementId -> IO (Maybe Element)
documentGetElementById self elementId
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_get_element_by_id
         (unDocument (toDocument self))
         (toJSString elementId))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"adoptNode\"]($2)"
        ghcjs_dom_document_adopt_node ::
        JSRef Document -> JSRef Node -> IO (JSRef Node)
#else 
ghcjs_dom_document_adopt_node ::
                                JSRef Document -> JSRef Node -> IO (JSRef Node)
ghcjs_dom_document_adopt_node = undefined
#endif
 
documentAdoptNode ::
                  (IsDocument self, IsNode source) =>
                    self -> Maybe source -> IO (Maybe Node)
documentAdoptNode self source
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_document_adopt_node (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) source))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        ghcjs_dom_document_create_event ::
        JSRef Document -> JSString -> IO (JSRef Event)
#else 
ghcjs_dom_document_create_event ::
                                  JSRef Document -> JSString -> IO (JSRef Event)
ghcjs_dom_document_create_event = undefined
#endif
 
documentCreateEvent ::
                    (IsDocument self, ToJSString eventType) =>
                      self -> eventType -> IO (Maybe Event)
documentCreateEvent self eventType
  = fmap Event . maybeJSNull <$>
      (ghcjs_dom_document_create_event (unDocument (toDocument self))
         (toJSString eventType))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createRange\"]()"
        ghcjs_dom_document_create_range ::
        JSRef Document -> IO (JSRef DOMRange)
#else 
ghcjs_dom_document_create_range ::
                                  JSRef Document -> IO (JSRef DOMRange)
ghcjs_dom_document_create_range = undefined
#endif
 
documentCreateRange ::
                    (IsDocument self) => self -> IO (Maybe DOMRange)
documentCreateRange self
  = fmap DOMRange . maybeJSNull <$>
      (ghcjs_dom_document_create_range (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createNodeIterator\"]($2, $3,\n$4, $5)"
        ghcjs_dom_document_create_node_iterator ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> Bool -> IO (JSRef NodeIterator)
#else 
ghcjs_dom_document_create_node_iterator ::
                                          JSRef Document ->
                                            JSRef Node ->
                                              Word ->
                                                JSRef NodeFilter -> Bool -> IO (JSRef NodeIterator)
ghcjs_dom_document_create_node_iterator = undefined
#endif
 
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


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createTreeWalker\"]($2, $3,\n$4, $5)"
        ghcjs_dom_document_create_tree_walker ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> Bool -> IO (JSRef TreeWalker)
#else 
ghcjs_dom_document_create_tree_walker ::
                                        JSRef Document ->
                                          JSRef Node ->
                                            Word ->
                                              JSRef NodeFilter -> Bool -> IO (JSRef TreeWalker)
ghcjs_dom_document_create_tree_walker = undefined
#endif
 
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


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getOverrideStyle\"]($2, $3)"
        ghcjs_dom_document_get_override_style ::
        JSRef Document ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)
#else 
ghcjs_dom_document_get_override_style ::
                                        JSRef Document ->
                                          JSRef Element ->
                                            JSString -> IO (JSRef CSSStyleDeclaration)
ghcjs_dom_document_get_override_style = undefined
#endif
 
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


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createExpression\"]($2, $3)"
        ghcjs_dom_document_create_expression ::
        JSRef Document ->
          JSString -> JSRef XPathNSResolver -> IO (JSRef XPathExpression)
#else 
ghcjs_dom_document_create_expression ::
                                       JSRef Document ->
                                         JSString ->
                                           JSRef XPathNSResolver -> IO (JSRef XPathExpression)
ghcjs_dom_document_create_expression = undefined
#endif
 
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


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        ghcjs_dom_document_create_ns_resolver ::
        JSRef Document -> JSRef Node -> IO (JSRef XPathNSResolver)
#else 
ghcjs_dom_document_create_ns_resolver ::
                                        JSRef Document -> JSRef Node -> IO (JSRef XPathNSResolver)
ghcjs_dom_document_create_ns_resolver = undefined
#endif
 
documentCreateNSResolver ::
                         (IsDocument self, IsNode nodeResolver) =>
                           self -> Maybe nodeResolver -> IO (Maybe XPathNSResolver)
documentCreateNSResolver self nodeResolver
  = fmap XPathNSResolver . maybeJSNull <$>
      (ghcjs_dom_document_create_ns_resolver
         (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) nodeResolver))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)" ghcjs_dom_document_evaluate
        ::
        JSRef Document ->
          JSString ->
            JSRef Node ->
              JSRef XPathNSResolver ->
                Word -> JSRef XPathResult -> IO (JSRef XPathResult)
#else 
ghcjs_dom_document_evaluate ::
                              JSRef Document ->
                                JSString ->
                                  JSRef Node ->
                                    JSRef XPathNSResolver ->
                                      Word -> JSRef XPathResult -> IO (JSRef XPathResult)
ghcjs_dom_document_evaluate = undefined
#endif
 
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


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"execCommand\"]($2, $3,\n$4) ? 1 : 0)"
        ghcjs_dom_document_exec_command ::
        JSRef Document -> JSString -> Bool -> JSString -> IO Bool
#else 
ghcjs_dom_document_exec_command ::
                                  JSRef Document -> JSString -> Bool -> JSString -> IO Bool
ghcjs_dom_document_exec_command = undefined
#endif
 
documentExecCommand ::
                    (IsDocument self, ToJSString command, ToJSString value) =>
                      self -> command -> Bool -> value -> IO Bool
documentExecCommand self command userInterface value
  = ghcjs_dom_document_exec_command (unDocument (toDocument self))
      (toJSString command)
      userInterface
      (toJSString value)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"queryCommandEnabled\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_enabled ::
        JSRef Document -> JSString -> IO Bool
#else 
ghcjs_dom_document_query_command_enabled ::
                                           JSRef Document -> JSString -> IO Bool
ghcjs_dom_document_query_command_enabled = undefined
#endif
 
documentQueryCommandEnabled ::
                            (IsDocument self, ToJSString command) => self -> command -> IO Bool
documentQueryCommandEnabled self command
  = ghcjs_dom_document_query_command_enabled
      (unDocument (toDocument self))
      (toJSString command)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"queryCommandIndeterm\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_indeterm ::
        JSRef Document -> JSString -> IO Bool
#else 
ghcjs_dom_document_query_command_indeterm ::
                                            JSRef Document -> JSString -> IO Bool
ghcjs_dom_document_query_command_indeterm = undefined
#endif
 
documentQueryCommandIndeterm ::
                             (IsDocument self, ToJSString command) => self -> command -> IO Bool
documentQueryCommandIndeterm self command
  = ghcjs_dom_document_query_command_indeterm
      (unDocument (toDocument self))
      (toJSString command)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"queryCommandState\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_state ::
        JSRef Document -> JSString -> IO Bool
#else 
ghcjs_dom_document_query_command_state ::
                                         JSRef Document -> JSString -> IO Bool
ghcjs_dom_document_query_command_state = undefined
#endif
 
documentQueryCommandState ::
                          (IsDocument self, ToJSString command) => self -> command -> IO Bool
documentQueryCommandState self command
  = ghcjs_dom_document_query_command_state
      (unDocument (toDocument self))
      (toJSString command)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"queryCommandSupported\"]($2) ? 1 : 0)"
        ghcjs_dom_document_query_command_supported ::
        JSRef Document -> JSString -> IO Bool
#else 
ghcjs_dom_document_query_command_supported ::
                                             JSRef Document -> JSString -> IO Bool
ghcjs_dom_document_query_command_supported = undefined
#endif
 
documentQueryCommandSupported ::
                              (IsDocument self, ToJSString command) => self -> command -> IO Bool
documentQueryCommandSupported self command
  = ghcjs_dom_document_query_command_supported
      (unDocument (toDocument self))
      (toJSString command)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"queryCommandValue\"]($2)"
        ghcjs_dom_document_query_command_value ::
        JSRef Document -> JSString -> IO JSString
#else 
ghcjs_dom_document_query_command_value ::
                                         JSRef Document -> JSString -> IO JSString
ghcjs_dom_document_query_command_value = undefined
#endif
 
documentQueryCommandValue ::
                          (IsDocument self, ToJSString command, FromJSString result) =>
                            self -> command -> IO result
documentQueryCommandValue self command
  = fromJSString <$>
      (ghcjs_dom_document_query_command_value
         (unDocument (toDocument self))
         (toJSString command))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getElementsByName\"]($2)"
        ghcjs_dom_document_get_elements_by_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_document_get_elements_by_name ::
                                          JSRef Document -> JSString -> IO (JSRef NodeList)
ghcjs_dom_document_get_elements_by_name = undefined
#endif
 
documentGetElementsByName ::
                          (IsDocument self, ToJSString elementName) =>
                            self -> elementName -> IO (Maybe NodeList)
documentGetElementsByName self elementName
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_get_elements_by_name
         (unDocument (toDocument self))
         (toJSString elementName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"elementFromPoint\"]($2, $3)"
        ghcjs_dom_document_element_from_point ::
        JSRef Document -> Int -> Int -> IO (JSRef Element)
#else 
ghcjs_dom_document_element_from_point ::
                                        JSRef Document -> Int -> Int -> IO (JSRef Element)
ghcjs_dom_document_element_from_point = undefined
#endif
 
documentElementFromPoint ::
                         (IsDocument self) => self -> Int -> Int -> IO (Maybe Element)
documentElementFromPoint self x y
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_element_from_point
         (unDocument (toDocument self))
         x
         y)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"caretRangeFromPoint\"]($2,\n$3)"
        ghcjs_dom_document_caret_range_from_point ::
        JSRef Document -> Int -> Int -> IO (JSRef DOMRange)
#else 
ghcjs_dom_document_caret_range_from_point ::
                                            JSRef Document -> Int -> Int -> IO (JSRef DOMRange)
ghcjs_dom_document_caret_range_from_point = undefined
#endif
 
documentCaretRangeFromPoint ::
                            (IsDocument self) => self -> Int -> Int -> IO (Maybe DOMRange)
documentCaretRangeFromPoint self x y
  = fmap DOMRange . maybeJSNull <$>
      (ghcjs_dom_document_caret_range_from_point
         (unDocument (toDocument self))
         x
         y)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createCSSStyleDeclaration\"]()"
        ghcjs_dom_document_create_css_style_declaration ::
        JSRef Document -> IO (JSRef CSSStyleDeclaration)
#else 
ghcjs_dom_document_create_css_style_declaration ::
                                                  JSRef Document -> IO (JSRef CSSStyleDeclaration)
ghcjs_dom_document_create_css_style_declaration = undefined
#endif
 
documentCreateCSSStyleDeclaration ::
                                  (IsDocument self) => self -> IO (Maybe CSSStyleDeclaration)
documentCreateCSSStyleDeclaration self
  = fmap CSSStyleDeclaration . maybeJSNull <$>
      (ghcjs_dom_document_create_css_style_declaration
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)"
        ghcjs_dom_document_get_elements_by_class_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_document_get_elements_by_class_name ::
                                                JSRef Document -> JSString -> IO (JSRef NodeList)
ghcjs_dom_document_get_elements_by_class_name = undefined
#endif
 
documentGetElementsByClassName ::
                               (IsDocument self, ToJSString tagname) =>
                                 self -> tagname -> IO (Maybe NodeList)
documentGetElementsByClassName self tagname
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_get_elements_by_class_name
         (unDocument (toDocument self))
         (toJSString tagname))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        ghcjs_dom_document_query_selector ::
        JSRef Document -> JSString -> IO (JSRef Element)
#else 
ghcjs_dom_document_query_selector ::
                                    JSRef Document -> JSString -> IO (JSRef Element)
ghcjs_dom_document_query_selector = undefined
#endif
 
documentQuerySelector ::
                      (IsDocument self, ToJSString selectors) =>
                        self -> selectors -> IO (Maybe Element)
documentQuerySelector self selectors
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_query_selector (unDocument (toDocument self))
         (toJSString selectors))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        ghcjs_dom_document_query_selector_all ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_document_query_selector_all ::
                                        JSRef Document -> JSString -> IO (JSRef NodeList)
ghcjs_dom_document_query_selector_all = undefined
#endif
 
documentQuerySelectorAll ::
                         (IsDocument self, ToJSString selectors) =>
                           self -> selectors -> IO (Maybe NodeList)
documentQuerySelectorAll self selectors
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_document_query_selector_all
         (unDocument (toDocument self))
         (toJSString selectors))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitExitPointerLock\"]()"
        ghcjs_dom_document_webkit_exit_pointer_lock ::
        JSRef Document -> IO ()
#else 
ghcjs_dom_document_webkit_exit_pointer_lock ::
                                              JSRef Document -> IO ()
ghcjs_dom_document_webkit_exit_pointer_lock = undefined
#endif
 
documentWebkitExitPointerLock :: (IsDocument self) => self -> IO ()
documentWebkitExitPointerLock self
  = ghcjs_dom_document_webkit_exit_pointer_lock
      (unDocument (toDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitGetNamedFlows\"]()"
        ghcjs_dom_document_webkit_get_named_flows ::
        JSRef Document -> IO (JSRef DOMNamedFlowCollection)
#else 
ghcjs_dom_document_webkit_get_named_flows ::
                                            JSRef Document -> IO (JSRef DOMNamedFlowCollection)
ghcjs_dom_document_webkit_get_named_flows = undefined
#endif
 
documentWebkitGetNamedFlows ::
                            (IsDocument self) => self -> IO (Maybe DOMNamedFlowCollection)
documentWebkitGetNamedFlows self
  = fmap DOMNamedFlowCollection . maybeJSNull <$>
      (ghcjs_dom_document_webkit_get_named_flows
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"doctype\"]"
        ghcjs_dom_document_get_doctype ::
        JSRef Document -> IO (JSRef DocumentType)
#else 
ghcjs_dom_document_get_doctype ::
                                 JSRef Document -> IO (JSRef DocumentType)
ghcjs_dom_document_get_doctype = undefined
#endif
 
documentGetDoctype ::
                   (IsDocument self) => self -> IO (Maybe DocumentType)
documentGetDoctype self
  = fmap DocumentType . maybeJSNull <$>
      (ghcjs_dom_document_get_doctype (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"implementation\"]"
        ghcjs_dom_document_get_implementation ::
        JSRef Document -> IO (JSRef DOMImplementation)
#else 
ghcjs_dom_document_get_implementation ::
                                        JSRef Document -> IO (JSRef DOMImplementation)
ghcjs_dom_document_get_implementation = undefined
#endif
 
documentGetImplementation ::
                          (IsDocument self) => self -> IO (Maybe DOMImplementation)
documentGetImplementation self
  = fmap DOMImplementation . maybeJSNull <$>
      (ghcjs_dom_document_get_implementation
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"documentElement\"]"
        ghcjs_dom_document_get_document_element ::
        JSRef Document -> IO (JSRef Element)
#else 
ghcjs_dom_document_get_document_element ::
                                          JSRef Document -> IO (JSRef Element)
ghcjs_dom_document_get_document_element = undefined
#endif
 
documentGetDocumentElement ::
                           (IsDocument self) => self -> IO (Maybe Element)
documentGetDocumentElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_get_document_element
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"inputEncoding\"]"
        ghcjs_dom_document_get_input_encoding ::
        JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_input_encoding ::
                                        JSRef Document -> IO JSString
ghcjs_dom_document_get_input_encoding = undefined
#endif
 
documentGetInputEncoding ::
                         (IsDocument self, FromJSString result) => self -> IO result
documentGetInputEncoding self
  = fromJSString <$>
      (ghcjs_dom_document_get_input_encoding
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"xmlEncoding\"]"
        ghcjs_dom_document_get_xml_encoding ::
        JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_xml_encoding ::
                                      JSRef Document -> IO JSString
ghcjs_dom_document_get_xml_encoding = undefined
#endif
 
documentGetXmlEncoding ::
                       (IsDocument self, FromJSString result) => self -> IO result
documentGetXmlEncoding self
  = fromJSString <$>
      (ghcjs_dom_document_get_xml_encoding
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"xmlVersion\"] = $2;"
        ghcjs_dom_document_set_xml_version ::
        JSRef Document -> JSString -> IO ()
#else 
ghcjs_dom_document_set_xml_version ::
                                     JSRef Document -> JSString -> IO ()
ghcjs_dom_document_set_xml_version = undefined
#endif
 
documentSetXmlVersion ::
                      (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetXmlVersion self val
  = ghcjs_dom_document_set_xml_version (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"xmlVersion\"]"
        ghcjs_dom_document_get_xml_version :: JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_xml_version :: JSRef Document -> IO JSString
ghcjs_dom_document_get_xml_version = undefined
#endif
 
documentGetXmlVersion ::
                      (IsDocument self, FromJSString result) => self -> IO result
documentGetXmlVersion self
  = fromJSString <$>
      (ghcjs_dom_document_get_xml_version (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"xmlStandalone\"] = $2;"
        ghcjs_dom_document_set_xml_standalone ::
        JSRef Document -> Bool -> IO ()
#else 
ghcjs_dom_document_set_xml_standalone ::
                                        JSRef Document -> Bool -> IO ()
ghcjs_dom_document_set_xml_standalone = undefined
#endif
 
documentSetXmlStandalone ::
                         (IsDocument self) => self -> Bool -> IO ()
documentSetXmlStandalone self val
  = ghcjs_dom_document_set_xml_standalone
      (unDocument (toDocument self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"xmlStandalone\"] ? 1 : 0)"
        ghcjs_dom_document_get_xml_standalone :: JSRef Document -> IO Bool
#else 
ghcjs_dom_document_get_xml_standalone :: JSRef Document -> IO Bool
ghcjs_dom_document_get_xml_standalone = undefined
#endif
 
documentGetXmlStandalone :: (IsDocument self) => self -> IO Bool
documentGetXmlStandalone self
  = ghcjs_dom_document_get_xml_standalone
      (unDocument (toDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"documentURI\"] = $2;"
        ghcjs_dom_document_set_document_uri ::
        JSRef Document -> JSString -> IO ()
#else 
ghcjs_dom_document_set_document_uri ::
                                      JSRef Document -> JSString -> IO ()
ghcjs_dom_document_set_document_uri = undefined
#endif
 
documentSetDocumentURI ::
                       (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetDocumentURI self val
  = ghcjs_dom_document_set_document_uri
      (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"documentURI\"]"
        ghcjs_dom_document_get_document_uri ::
        JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_document_uri ::
                                      JSRef Document -> IO JSString
ghcjs_dom_document_get_document_uri = undefined
#endif
 
documentGetDocumentURI ::
                       (IsDocument self, FromJSString result) => self -> IO result
documentGetDocumentURI self
  = fromJSString <$>
      (ghcjs_dom_document_get_document_uri
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultView\"]"
        ghcjs_dom_document_get_default_view ::
        JSRef Document -> IO (JSRef DOMWindow)
#else 
ghcjs_dom_document_get_default_view ::
                                      JSRef Document -> IO (JSRef DOMWindow)
ghcjs_dom_document_get_default_view = undefined
#endif
 
documentGetDefaultView ::
                       (IsDocument self) => self -> IO (Maybe DOMWindow)
documentGetDefaultView self
  = fmap DOMWindow . maybeJSNull <$>
      (ghcjs_dom_document_get_default_view
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"styleSheets\"]"
        ghcjs_dom_document_get_style_sheets ::
        JSRef Document -> IO (JSRef StyleSheetList)
#else 
ghcjs_dom_document_get_style_sheets ::
                                      JSRef Document -> IO (JSRef StyleSheetList)
ghcjs_dom_document_get_style_sheets = undefined
#endif
 
documentGetStyleSheets ::
                       (IsDocument self) => self -> IO (Maybe StyleSheetList)
documentGetStyleSheets self
  = fmap StyleSheetList . maybeJSNull <$>
      (ghcjs_dom_document_get_style_sheets
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"title\"] = $2;"
        ghcjs_dom_document_set_title :: JSRef Document -> JSString -> IO ()
#else 
ghcjs_dom_document_set_title :: JSRef Document -> JSString -> IO ()
ghcjs_dom_document_set_title = undefined
#endif
 
documentSetTitle ::
                 (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetTitle self val
  = ghcjs_dom_document_set_title (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_document_get_title :: JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_title :: JSRef Document -> IO JSString
ghcjs_dom_document_get_title = undefined
#endif
 
documentGetTitle ::
                 (IsDocument self, FromJSString result) => self -> IO result
documentGetTitle self
  = fromJSString <$>
      (ghcjs_dom_document_get_title (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"referrer\"]"
        ghcjs_dom_document_get_referrer :: JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_referrer :: JSRef Document -> IO JSString
ghcjs_dom_document_get_referrer = undefined
#endif
 
documentGetReferrer ::
                    (IsDocument self, FromJSString result) => self -> IO result
documentGetReferrer self
  = fromJSString <$>
      (ghcjs_dom_document_get_referrer (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"domain\"]"
        ghcjs_dom_document_get_domain :: JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_domain :: JSRef Document -> IO JSString
ghcjs_dom_document_get_domain = undefined
#endif
 
documentGetDomain ::
                  (IsDocument self, FromJSString result) => self -> IO result
documentGetDomain self
  = fromJSString <$>
      (ghcjs_dom_document_get_domain (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cookie\"] = $2;"
        ghcjs_dom_document_set_cookie ::
        JSRef Document -> JSString -> IO ()
#else 
ghcjs_dom_document_set_cookie ::
                                JSRef Document -> JSString -> IO ()
ghcjs_dom_document_set_cookie = undefined
#endif
 
documentSetCookie ::
                  (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetCookie self val
  = ghcjs_dom_document_set_cookie (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cookie\"]"
        ghcjs_dom_document_get_cookie :: JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_cookie :: JSRef Document -> IO JSString
ghcjs_dom_document_get_cookie = undefined
#endif
 
documentGetCookie ::
                  (IsDocument self, FromJSString result) => self -> IO result
documentGetCookie self
  = fromJSString <$>
      (ghcjs_dom_document_get_cookie (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"body\"] = $2;"
        ghcjs_dom_document_set_body ::
        JSRef Document -> JSRef HTMLElement -> IO ()
#else 
ghcjs_dom_document_set_body ::
                              JSRef Document -> JSRef HTMLElement -> IO ()
ghcjs_dom_document_set_body = undefined
#endif
 
documentSetBody ::
                (IsDocument self, IsHTMLElement val) => self -> Maybe val -> IO ()
documentSetBody self val
  = ghcjs_dom_document_set_body (unDocument (toDocument self))
      (maybe jsNull (unHTMLElement . toHTMLElement) val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"body\"]"
        ghcjs_dom_document_get_body ::
        JSRef Document -> IO (JSRef HTMLElement)
#else 
ghcjs_dom_document_get_body ::
                              JSRef Document -> IO (JSRef HTMLElement)
ghcjs_dom_document_get_body = undefined
#endif
 
documentGetBody ::
                (IsDocument self) => self -> IO (Maybe HTMLElement)
documentGetBody self
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_document_get_body (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"head\"]"
        ghcjs_dom_document_get_head ::
        JSRef Document -> IO (JSRef HTMLHeadElement)
#else 
ghcjs_dom_document_get_head ::
                              JSRef Document -> IO (JSRef HTMLHeadElement)
ghcjs_dom_document_get_head = undefined
#endif
 
documentGetHead ::
                (IsDocument self) => self -> IO (Maybe HTMLHeadElement)
documentGetHead self
  = fmap HTMLHeadElement . maybeJSNull <$>
      (ghcjs_dom_document_get_head (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"images\"]"
        ghcjs_dom_document_get_images ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_document_get_images ::
                                JSRef Document -> IO (JSRef HTMLCollection)
ghcjs_dom_document_get_images = undefined
#endif
 
documentGetImages ::
                  (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetImages self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_images (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"applets\"]"
        ghcjs_dom_document_get_applets ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_document_get_applets ::
                                 JSRef Document -> IO (JSRef HTMLCollection)
ghcjs_dom_document_get_applets = undefined
#endif
 
documentGetApplets ::
                   (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetApplets self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_applets (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"links\"]"
        ghcjs_dom_document_get_links ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_document_get_links ::
                               JSRef Document -> IO (JSRef HTMLCollection)
ghcjs_dom_document_get_links = undefined
#endif
 
documentGetLinks ::
                 (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetLinks self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_links (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"forms\"]"
        ghcjs_dom_document_get_forms ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_document_get_forms ::
                               JSRef Document -> IO (JSRef HTMLCollection)
ghcjs_dom_document_get_forms = undefined
#endif
 
documentGetForms ::
                 (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetForms self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_forms (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"anchors\"]"
        ghcjs_dom_document_get_anchors ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_document_get_anchors ::
                                 JSRef Document -> IO (JSRef HTMLCollection)
ghcjs_dom_document_get_anchors = undefined
#endif
 
documentGetAnchors ::
                   (IsDocument self) => self -> IO (Maybe HTMLCollection)
documentGetAnchors self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_document_get_anchors (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lastModified\"]"
        ghcjs_dom_document_get_last_modified ::
        JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_last_modified ::
                                       JSRef Document -> IO JSString
ghcjs_dom_document_get_last_modified = undefined
#endif
 
documentGetLastModified ::
                        (IsDocument self, FromJSString result) => self -> IO result
documentGetLastModified self
  = fromJSString <$>
      (ghcjs_dom_document_get_last_modified
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        ghcjs_dom_document_set_charset ::
        JSRef Document -> JSString -> IO ()
#else 
ghcjs_dom_document_set_charset ::
                                 JSRef Document -> JSString -> IO ()
ghcjs_dom_document_set_charset = undefined
#endif
 
documentSetCharset ::
                   (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetCharset self val
  = ghcjs_dom_document_set_charset (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_document_get_charset :: JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_charset :: JSRef Document -> IO JSString
ghcjs_dom_document_get_charset = undefined
#endif
 
documentGetCharset ::
                   (IsDocument self, FromJSString result) => self -> IO result
documentGetCharset self
  = fromJSString <$>
      (ghcjs_dom_document_get_charset (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultCharset\"]"
        ghcjs_dom_document_get_default_charset ::
        JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_default_charset ::
                                         JSRef Document -> IO JSString
ghcjs_dom_document_get_default_charset = undefined
#endif
 
documentGetDefaultCharset ::
                          (IsDocument self, FromJSString result) => self -> IO result
documentGetDefaultCharset self
  = fromJSString <$>
      (ghcjs_dom_document_get_default_charset
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_document_get_ready_state :: JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_ready_state :: JSRef Document -> IO JSString
ghcjs_dom_document_get_ready_state = undefined
#endif
 
documentGetReadyState ::
                      (IsDocument self, FromJSString result) => self -> IO result
documentGetReadyState self
  = fromJSString <$>
      (ghcjs_dom_document_get_ready_state (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"characterSet\"]"
        ghcjs_dom_document_get_character_set ::
        JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_character_set ::
                                       JSRef Document -> IO JSString
ghcjs_dom_document_get_character_set = undefined
#endif
 
documentGetCharacterSet ::
                        (IsDocument self, FromJSString result) => self -> IO result
documentGetCharacterSet self
  = fromJSString <$>
      (ghcjs_dom_document_get_character_set
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"preferredStylesheetSet\"]"
        ghcjs_dom_document_get_preferred_stylesheet_set ::
        JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_preferred_stylesheet_set ::
                                                  JSRef Document -> IO JSString
ghcjs_dom_document_get_preferred_stylesheet_set = undefined
#endif
 
documentGetPreferredStylesheetSet ::
                                  (IsDocument self, FromJSString result) => self -> IO result
documentGetPreferredStylesheetSet self
  = fromJSString <$>
      (ghcjs_dom_document_get_preferred_stylesheet_set
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"selectedStylesheetSet\"] = $2;"
        ghcjs_dom_document_set_selected_stylesheet_set ::
        JSRef Document -> JSString -> IO ()
#else 
ghcjs_dom_document_set_selected_stylesheet_set ::
                                                 JSRef Document -> JSString -> IO ()
ghcjs_dom_document_set_selected_stylesheet_set = undefined
#endif
 
documentSetSelectedStylesheetSet ::
                                 (IsDocument self, ToJSString val) => self -> val -> IO ()
documentSetSelectedStylesheetSet self val
  = ghcjs_dom_document_set_selected_stylesheet_set
      (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectedStylesheetSet\"]"
        ghcjs_dom_document_get_selected_stylesheet_set ::
        JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_selected_stylesheet_set ::
                                                 JSRef Document -> IO JSString
ghcjs_dom_document_get_selected_stylesheet_set = undefined
#endif
 
documentGetSelectedStylesheetSet ::
                                 (IsDocument self, FromJSString result) => self -> IO result
documentGetSelectedStylesheetSet self
  = fromJSString <$>
      (ghcjs_dom_document_get_selected_stylesheet_set
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"compatMode\"]"
        ghcjs_dom_document_get_compat_mode :: JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_compat_mode :: JSRef Document -> IO JSString
ghcjs_dom_document_get_compat_mode = undefined
#endif
 
documentGetCompatMode ::
                      (IsDocument self, FromJSString result) => self -> IO result
documentGetCompatMode self
  = fromJSString <$>
      (ghcjs_dom_document_get_compat_mode (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitPointerLockElement\"]"
        ghcjs_dom_document_get_webkit_pointer_lock_element ::
        JSRef Document -> IO (JSRef Element)
#else 
ghcjs_dom_document_get_webkit_pointer_lock_element ::
                                                     JSRef Document -> IO (JSRef Element)
ghcjs_dom_document_get_webkit_pointer_lock_element = undefined
#endif
 
documentGetWebkitPointerLockElement ::
                                    (IsDocument self) => self -> IO (Maybe Element)
documentGetWebkitPointerLockElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_document_get_webkit_pointer_lock_element
         (unDocument (toDocument self)))
 
documentOnabort ::
                (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnabort = (connect "abort")
 
documentOnblur ::
               (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnblur = (connect "blur")
 
documentOnchange ::
                 (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnchange = (connect "change")
 
documentOnclick ::
                (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOnclick = (connect "click")
 
documentOncontextmenu ::
                      (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOncontextmenu = (connect "contextmenu")
 
documentOndblclick ::
                   (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOndblclick = (connect "dblclick")
 
documentOndrag ::
               (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOndrag = (connect "drag")
 
documentOndragend ::
                  (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOndragend = (connect "dragend")
 
documentOndragenter ::
                    (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOndragenter = (connect "dragenter")
 
documentOndragleave ::
                    (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOndragleave = (connect "dragleave")
 
documentOndragover ::
                   (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOndragover = (connect "dragover")
 
documentOndragstart ::
                    (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOndragstart = (connect "dragstart")
 
documentOndrop ::
               (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOndrop = (connect "drop")
 
documentOnerror ::
                (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnerror = (connect "error")
 
documentOnfocus ::
                (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnfocus = (connect "focus")
 
documentOninput ::
                (IsDocument self) => Signal self (EventM UIEvent self ())
documentOninput = (connect "input")
 
documentOninvalid ::
                  (IsDocument self) => Signal self (EventM UIEvent self ())
documentOninvalid = (connect "invalid")
 
documentOnkeydown ::
                  (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnkeydown = (connect "keydown")
 
documentOnkeypress ::
                   (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnkeypress = (connect "keypress")
 
documentOnkeyup ::
                (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnkeyup = (connect "keyup")
 
documentOnload ::
               (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnload = (connect "load")
 
documentOnmousedown ::
                    (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOnmousedown = (connect "mousedown")
 
documentOnmouseenter ::
                     (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnmouseenter = (connect "mouseenter")
 
documentOnmouseleave ::
                     (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnmouseleave = (connect "mouseleave")
 
documentOnmousemove ::
                    (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOnmousemove = (connect "mousemove")
 
documentOnmouseout ::
                   (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOnmouseout = (connect "mouseout")
 
documentOnmouseover ::
                    (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOnmouseover = (connect "mouseover")
 
documentOnmouseup ::
                  (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOnmouseup = (connect "mouseup")
 
documentOnmousewheel ::
                     (IsDocument self) => Signal self (EventM MouseEvent self ())
documentOnmousewheel = (connect "mousewheel")
 
documentOnreadystatechange ::
                           (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnreadystatechange = (connect "readystatechange")
 
documentOnscroll ::
                 (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnscroll = (connect "scroll")
 
documentOnselect ::
                 (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnselect = (connect "select")
 
documentOnsubmit ::
                 (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnsubmit = (connect "submit")
 
documentOnbeforecut ::
                    (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnbeforecut = (connect "beforecut")
 
documentOncut ::
              (IsDocument self) => Signal self (EventM UIEvent self ())
documentOncut = (connect "cut")
 
documentOnbeforecopy ::
                     (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnbeforecopy = (connect "beforecopy")
 
documentOncopy ::
               (IsDocument self) => Signal self (EventM UIEvent self ())
documentOncopy = (connect "copy")
 
documentOnbeforepaste ::
                      (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnbeforepaste = (connect "beforepaste")
 
documentOnpaste ::
                (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnpaste = (connect "paste")
 
documentOnreset ::
                (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnreset = (connect "reset")
 
documentOnsearch ::
                 (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnsearch = (connect "search")
 
documentOnselectstart ::
                      (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnselectstart = (connect "selectstart")
 
documentOnselectionchange ::
                          (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnselectionchange = (connect "selectionchange")
 
documentOntouchstart ::
                     (IsDocument self) => Signal self (EventM UIEvent self ())
documentOntouchstart = (connect "touchstart")
 
documentOntouchmove ::
                    (IsDocument self) => Signal self (EventM UIEvent self ())
documentOntouchmove = (connect "touchmove")
 
documentOntouchend ::
                   (IsDocument self) => Signal self (EventM UIEvent self ())
documentOntouchend = (connect "touchend")
 
documentOntouchcancel ::
                      (IsDocument self) => Signal self (EventM UIEvent self ())
documentOntouchcancel = (connect "touchcancel")
 
documentOnwebkitfullscreenchange ::
                                 (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnwebkitfullscreenchange
  = (connect "webkitfullscreenchange")
 
documentOnwebkitfullscreenerror ::
                                (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnwebkitfullscreenerror = (connect "webkitfullscreenerror")
 
documentOnwebkitpointerlockchange ::
                                  (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnwebkitpointerlockchange
  = (connect "webkitpointerlockchange")
 
documentOnwebkitpointerlockerror ::
                                 (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnwebkitpointerlockerror
  = (connect "webkitpointerlockerror")
 
documentOnsecuritypolicyviolation ::
                                  (IsDocument self) => Signal self (EventM UIEvent self ())
documentOnsecuritypolicyviolation
  = (connect "securitypolicyviolation")


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"visibilityState\"]"
        ghcjs_dom_document_get_visibility_state ::
        JSRef Document -> IO JSString
#else 
ghcjs_dom_document_get_visibility_state ::
                                          JSRef Document -> IO JSString
ghcjs_dom_document_get_visibility_state = undefined
#endif
 
documentGetVisibilityState ::
                           (IsDocument self, FromJSString result) => self -> IO result
documentGetVisibilityState self
  = fromJSString <$>
      (ghcjs_dom_document_get_visibility_state
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        ghcjs_dom_document_get_hidden :: JSRef Document -> IO Bool
#else 
ghcjs_dom_document_get_hidden :: JSRef Document -> IO Bool
ghcjs_dom_document_get_hidden = undefined
#endif
 
documentGetHidden :: (IsDocument self) => self -> IO Bool
documentGetHidden self
  = ghcjs_dom_document_get_hidden (unDocument (toDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"securityPolicy\"]"
        ghcjs_dom_document_get_security_policy ::
        JSRef Document -> IO (JSRef DOMSecurityPolicy)
#else 
ghcjs_dom_document_get_security_policy ::
                                         JSRef Document -> IO (JSRef DOMSecurityPolicy)
ghcjs_dom_document_get_security_policy = undefined
#endif
 
documentGetSecurityPolicy ::
                          (IsDocument self) => self -> IO (Maybe DOMSecurityPolicy)
documentGetSecurityPolicy self
  = fmap DOMSecurityPolicy . maybeJSNull <$>
      (ghcjs_dom_document_get_security_policy
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentScript\"]"
        ghcjs_dom_document_get_current_script ::
        JSRef Document -> IO (JSRef HTMLScriptElement)
#else 
ghcjs_dom_document_get_current_script ::
                                        JSRef Document -> IO (JSRef HTMLScriptElement)
ghcjs_dom_document_get_current_script = undefined
#endif
 
documentGetCurrentScript ::
                         (IsDocument self) => self -> IO (Maybe HTMLScriptElement)
documentGetCurrentScript self
  = fmap HTMLScriptElement . maybeJSNull <$>
      (ghcjs_dom_document_get_current_script
         (unDocument (toDocument self)))
#else
module GHCJS.DOM.Document (
  module Graphics.UI.Gtk.WebKit.DOM.Document
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Document
#endif
