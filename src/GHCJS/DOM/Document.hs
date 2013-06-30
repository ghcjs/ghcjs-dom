{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Document
       (webkit_dom_document_create_element, documentCreateElement,
        webkit_dom_document_create_document_fragment,
        documentCreateDocumentFragment,
        webkit_dom_document_create_text_node, documentCreateTextNode,
        webkit_dom_document_create_comment, documentCreateComment,
        webkit_dom_document_create_cdata_section,
        documentCreateCDATASection,
        webkit_dom_document_create_processing_instruction,
        documentCreateProcessingInstruction,
        webkit_dom_document_create_attribute, documentCreateAttribute,
        webkit_dom_document_create_entity_reference,
        documentCreateEntityReference,
        webkit_dom_document_get_elements_by_tag_name,
        documentGetElementsByTagName, webkit_dom_document_import_node,
        documentImportNode, webkit_dom_document_create_element_ns,
        documentCreateElementNS, webkit_dom_document_create_attribute_ns,
        documentCreateAttributeNS,
        webkit_dom_document_get_elements_by_tag_name_ns,
        documentGetElementsByTagNameNS,
        webkit_dom_document_get_element_by_id, documentGetElementById,
        webkit_dom_document_adopt_node, documentAdoptNode,
        webkit_dom_document_create_event, documentCreateEvent,
        webkit_dom_document_create_range, documentCreateRange,
        webkit_dom_document_create_node_iterator,
        documentCreateNodeIterator, webkit_dom_document_create_tree_walker,
        documentCreateTreeWalker, webkit_dom_document_get_override_style,
        documentGetOverrideStyle, webkit_dom_document_create_expression,
        documentCreateExpression, webkit_dom_document_create_ns_resolver,
        documentCreateNSResolver, webkit_dom_document_evaluate,
        documentEvaluate, webkit_dom_document_exec_command,
        documentExecCommand, webkit_dom_document_query_command_enabled,
        documentQueryCommandEnabled,
        webkit_dom_document_query_command_indeterm,
        documentQueryCommandIndeterm,
        webkit_dom_document_query_command_state, documentQueryCommandState,
        webkit_dom_document_query_command_supported,
        documentQueryCommandSupported,
        webkit_dom_document_query_command_value, documentQueryCommandValue,
        webkit_dom_document_get_elements_by_name,
        documentGetElementsByName, webkit_dom_document_element_from_point,
        documentElementFromPoint,
        webkit_dom_document_caret_range_from_point,
        documentCaretRangeFromPoint,
        webkit_dom_document_create_css_style_declaration,
        documentCreateCSSStyleDeclaration,
        webkit_dom_document_get_elements_by_class_name,
        documentGetElementsByClassName, webkit_dom_document_query_selector,
        documentQuerySelector, webkit_dom_document_query_selector_all,
        documentQuerySelectorAll, webkit_dom_document_get_doctype,
        documentGetDoctype, webkit_dom_document_get_implementation,
        documentGetImplementation,
        webkit_dom_document_get_document_element,
        documentGetDocumentElement, webkit_dom_document_get_input_encoding,
        documentGetInputEncoding, webkit_dom_document_get_xml_encoding,
        documentGetXmlEncoding, webkit_dom_document_set_xml_version,
        documentSetXmlVersion, webkit_dom_document_get_xml_version,
        documentGetXmlVersion, webkit_dom_document_set_xml_standalone,
        documentSetXmlStandalone, webkit_dom_document_get_xml_standalone,
        documentGetXmlStandalone, webkit_dom_document_set_document_uri,
        documentSetDocumentURI, webkit_dom_document_get_document_uri,
        documentGetDocumentURI, webkit_dom_document_get_default_view,
        documentGetDefaultView, webkit_dom_document_get_style_sheets,
        documentGetStyleSheets, webkit_dom_document_set_title,
        documentSetTitle, webkit_dom_document_get_title, documentGetTitle,
        webkit_dom_document_get_referrer, documentGetReferrer,
        webkit_dom_document_get_domain, documentGetDomain,
        webkit_dom_document_set_cookie, documentSetCookie,
        webkit_dom_document_get_cookie, documentGetCookie,
        webkit_dom_document_set_body, documentSetBody,
        webkit_dom_document_get_body, documentGetBody,
        webkit_dom_document_get_head, documentGetHead,
        webkit_dom_document_get_images, documentGetImages,
        webkit_dom_document_get_applets, documentGetApplets,
        webkit_dom_document_get_links, documentGetLinks,
        webkit_dom_document_get_forms, documentGetForms,
        webkit_dom_document_get_anchors, documentGetAnchors,
        webkit_dom_document_get_last_modified, documentGetLastModified,
        webkit_dom_document_set_charset, documentSetCharset,
        webkit_dom_document_get_charset, documentGetCharset,
        webkit_dom_document_get_default_charset, documentGetDefaultCharset,
        webkit_dom_document_get_ready_state, documentGetReadyState,
        webkit_dom_document_get_character_set, documentGetCharacterSet,
        webkit_dom_document_get_preferred_stylesheet_set,
        documentGetPreferredStylesheetSet,
        webkit_dom_document_set_selected_stylesheet_set,
        documentSetSelectedStylesheetSet,
        webkit_dom_document_get_selected_stylesheet_set,
        documentGetSelectedStylesheetSet,
        webkit_dom_document_get_compat_mode, documentGetCompatMode,
        webkit_dom_document_get_webkit_pointer_lock_element,
        documentGetWebkitPointerLockElement, documentOnabort,
        documentOnblur, documentOnchange, documentOnclick,
        documentOncontextmenu, documentOndblclick, documentOndrag,
        documentOndragend, documentOndragenter, documentOndragleave,
        documentOndragover, documentOndragstart, documentOndrop,
        documentOnerror, documentOnfocus, documentOninput,
        documentOninvalid, documentOnkeydown, documentOnkeypress,
        documentOnkeyup, documentOnload, documentOnmousedown,
        documentOnmousemove, documentOnmouseout, documentOnmouseover,
        documentOnmouseup, documentOnmousewheel,
        documentOnreadystatechange, documentOnscroll, documentOnselect,
        documentOnsubmit, documentOnbeforecut, documentOncut,
        documentOnbeforecopy, documentOncopy, documentOnbeforepaste,
        documentOnpaste, documentOnreset, documentOnsearch,
        documentOnselectstart, documentOnselectionchange,
        documentOntouchstart, documentOntouchmove, documentOntouchend,
        documentOntouchcancel, documentOnwebkitfullscreenchange,
        documentOnwebkitfullscreenerror, documentOnwebkitpointerlockchange,
        documentOnwebkitpointerlockerror,
        webkit_dom_document_get_webkit_visibility_state,
        documentGetWebkitVisibilityState,
        webkit_dom_document_get_webkit_hidden, documentGetWebkitHidden,
        webkit_dom_document_get_security_policy, documentGetSecurityPolicy)
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
        webkit_dom_document_create_element ::
        JSRef Document -> JSString -> IO (JSRef Element)
#else 
webkit_dom_document_create_element ::
                                     JSRef Document -> JSString -> IO (JSRef Element)
webkit_dom_document_create_element = undefined
#endif
 
documentCreateElement ::
                      (DocumentClass self, ToJSString tagName) =>
                        self -> tagName -> IO (Maybe Element)
documentCreateElement self tagName
  = fmap Element . maybeJSNull <$>
      (webkit_dom_document_create_element (unDocument (toDocument self))
         (toJSString tagName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createDocumentFragment\"]()"
        webkit_dom_document_create_document_fragment ::
        JSRef Document -> IO (JSRef DocumentFragment)
#else 
webkit_dom_document_create_document_fragment ::
                                               JSRef Document -> IO (JSRef DocumentFragment)
webkit_dom_document_create_document_fragment = undefined
#endif
 
documentCreateDocumentFragment ::
                               (DocumentClass self) => self -> IO (Maybe DocumentFragment)
documentCreateDocumentFragment self
  = fmap DocumentFragment . maybeJSNull <$>
      (webkit_dom_document_create_document_fragment
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createTextNode\"]($2)"
        webkit_dom_document_create_text_node ::
        JSRef Document -> JSString -> IO (JSRef Text)
#else 
webkit_dom_document_create_text_node ::
                                       JSRef Document -> JSString -> IO (JSRef Text)
webkit_dom_document_create_text_node = undefined
#endif
 
documentCreateTextNode ::
                       (DocumentClass self, ToJSString data') =>
                         self -> data' -> IO (Maybe Text)
documentCreateTextNode self data'
  = fmap Text . maybeJSNull <$>
      (webkit_dom_document_create_text_node
         (unDocument (toDocument self))
         (toJSString data'))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createComment\"]($2)"
        webkit_dom_document_create_comment ::
        JSRef Document -> JSString -> IO (JSRef Comment)
#else 
webkit_dom_document_create_comment ::
                                     JSRef Document -> JSString -> IO (JSRef Comment)
webkit_dom_document_create_comment = undefined
#endif
 
documentCreateComment ::
                      (DocumentClass self, ToJSString data') =>
                        self -> data' -> IO (Maybe Comment)
documentCreateComment self data'
  = fmap Comment . maybeJSNull <$>
      (webkit_dom_document_create_comment (unDocument (toDocument self))
         (toJSString data'))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createCDATASection\"]($2)"
        webkit_dom_document_create_cdata_section ::
        JSRef Document -> JSString -> IO (JSRef CDATASection)
#else 
webkit_dom_document_create_cdata_section ::
                                           JSRef Document -> JSString -> IO (JSRef CDATASection)
webkit_dom_document_create_cdata_section = undefined
#endif
 
documentCreateCDATASection ::
                           (DocumentClass self, ToJSString data') =>
                             self -> data' -> IO (Maybe CDATASection)
documentCreateCDATASection self data'
  = fmap CDATASection . maybeJSNull <$>
      (webkit_dom_document_create_cdata_section
         (unDocument (toDocument self))
         (toJSString data'))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createProcessingInstruction\"]($2,\n$3)"
        webkit_dom_document_create_processing_instruction ::
        JSRef Document ->
          JSString -> JSString -> IO (JSRef ProcessingInstruction)
#else 
webkit_dom_document_create_processing_instruction ::
                                                    JSRef Document ->
                                                      JSString ->
                                                        JSString -> IO (JSRef ProcessingInstruction)
webkit_dom_document_create_processing_instruction = undefined
#endif
 
documentCreateProcessingInstruction ::
                                    (DocumentClass self, ToJSString target, ToJSString data') =>
                                      self -> target -> data' -> IO (Maybe ProcessingInstruction)
documentCreateProcessingInstruction self target data'
  = fmap ProcessingInstruction . maybeJSNull <$>
      (webkit_dom_document_create_processing_instruction
         (unDocument (toDocument self))
         (toJSString target)
         (toJSString data'))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createAttribute\"]($2)"
        webkit_dom_document_create_attribute ::
        JSRef Document -> JSString -> IO (JSRef DOMAttr)
#else 
webkit_dom_document_create_attribute ::
                                       JSRef Document -> JSString -> IO (JSRef DOMAttr)
webkit_dom_document_create_attribute = undefined
#endif
 
documentCreateAttribute ::
                        (DocumentClass self, ToJSString name) =>
                          self -> name -> IO (Maybe DOMAttr)
documentCreateAttribute self name
  = fmap DOMAttr . maybeJSNull <$>
      (webkit_dom_document_create_attribute
         (unDocument (toDocument self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createEntityReference\"]($2)"
        webkit_dom_document_create_entity_reference ::
        JSRef Document -> JSString -> IO (JSRef EntityReference)
#else 
webkit_dom_document_create_entity_reference ::
                                              JSRef Document ->
                                                JSString -> IO (JSRef EntityReference)
webkit_dom_document_create_entity_reference = undefined
#endif
 
documentCreateEntityReference ::
                              (DocumentClass self, ToJSString name) =>
                                self -> name -> IO (Maybe EntityReference)
documentCreateEntityReference self name
  = fmap EntityReference . maybeJSNull <$>
      (webkit_dom_document_create_entity_reference
         (unDocument (toDocument self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        webkit_dom_document_get_elements_by_tag_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_document_get_elements_by_tag_name ::
                                               JSRef Document -> JSString -> IO (JSRef NodeList)
webkit_dom_document_get_elements_by_tag_name = undefined
#endif
 
documentGetElementsByTagName ::
                             (DocumentClass self, ToJSString tagname) =>
                               self -> tagname -> IO (Maybe NodeList)
documentGetElementsByTagName self tagname
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_document_get_elements_by_tag_name
         (unDocument (toDocument self))
         (toJSString tagname))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"importNode\"]($2, $3)"
        webkit_dom_document_import_node ::
        JSRef Document -> JSRef Node -> JSBool -> IO (JSRef Node)
#else 
webkit_dom_document_import_node ::
                                  JSRef Document -> JSRef Node -> JSBool -> IO (JSRef Node)
webkit_dom_document_import_node = undefined
#endif
 
documentImportNode ::
                   (DocumentClass self, NodeClass importedNode) =>
                     self -> Maybe importedNode -> Bool -> IO (Maybe Node)
documentImportNode self importedNode deep
  = fmap Node . maybeJSNull <$>
      (webkit_dom_document_import_node (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) importedNode)
         (toJSBool deep))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createElementNS\"]($2, $3)"
        webkit_dom_document_create_element_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef Element)
#else 
webkit_dom_document_create_element_ns ::
                                        JSRef Document -> JSString -> JSString -> IO (JSRef Element)
webkit_dom_document_create_element_ns = undefined
#endif
 
documentCreateElementNS ::
                        (DocumentClass self, ToJSString namespaceURI,
                         ToJSString qualifiedName) =>
                          self -> namespaceURI -> qualifiedName -> IO (Maybe Element)
documentCreateElementNS self namespaceURI qualifiedName
  = fmap Element . maybeJSNull <$>
      (webkit_dom_document_create_element_ns
         (unDocument (toDocument self))
         (toJSString namespaceURI)
         (toJSString qualifiedName))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createAttributeNS\"]($2, $3)"
        webkit_dom_document_create_attribute_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef DOMAttr)
#else 
webkit_dom_document_create_attribute_ns ::
                                          JSRef Document ->
                                            JSString -> JSString -> IO (JSRef DOMAttr)
webkit_dom_document_create_attribute_ns = undefined
#endif
 
documentCreateAttributeNS ::
                          (DocumentClass self, ToJSString namespaceURI,
                           ToJSString qualifiedName) =>
                            self -> namespaceURI -> qualifiedName -> IO (Maybe DOMAttr)
documentCreateAttributeNS self namespaceURI qualifiedName
  = fmap DOMAttr . maybeJSNull <$>
      (webkit_dom_document_create_attribute_ns
         (unDocument (toDocument self))
         (toJSString namespaceURI)
         (toJSString qualifiedName))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)"
        webkit_dom_document_get_elements_by_tag_name_ns ::
        JSRef Document -> JSString -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_document_get_elements_by_tag_name_ns ::
                                                  JSRef Document ->
                                                    JSString -> JSString -> IO (JSRef NodeList)
webkit_dom_document_get_elements_by_tag_name_ns = undefined
#endif
 
documentGetElementsByTagNameNS ::
                               (DocumentClass self, ToJSString namespaceURI,
                                ToJSString localName) =>
                                 self -> namespaceURI -> localName -> IO (Maybe NodeList)
documentGetElementsByTagNameNS self namespaceURI localName
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_document_get_elements_by_tag_name_ns
         (unDocument (toDocument self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        webkit_dom_document_get_element_by_id ::
        JSRef Document -> JSString -> IO (JSRef Element)
#else 
webkit_dom_document_get_element_by_id ::
                                        JSRef Document -> JSString -> IO (JSRef Element)
webkit_dom_document_get_element_by_id = undefined
#endif
 
documentGetElementById ::
                       (DocumentClass self, ToJSString elementId) =>
                         self -> elementId -> IO (Maybe Element)
documentGetElementById self elementId
  = fmap Element . maybeJSNull <$>
      (webkit_dom_document_get_element_by_id
         (unDocument (toDocument self))
         (toJSString elementId))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"adoptNode\"]($2)"
        webkit_dom_document_adopt_node ::
        JSRef Document -> JSRef Node -> IO (JSRef Node)
#else 
webkit_dom_document_adopt_node ::
                                 JSRef Document -> JSRef Node -> IO (JSRef Node)
webkit_dom_document_adopt_node = undefined
#endif
 
documentAdoptNode ::
                  (DocumentClass self, NodeClass source) =>
                    self -> Maybe source -> IO (Maybe Node)
documentAdoptNode self source
  = fmap Node . maybeJSNull <$>
      (webkit_dom_document_adopt_node (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) source))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        webkit_dom_document_create_event ::
        JSRef Document -> JSString -> IO (JSRef Event)
#else 
webkit_dom_document_create_event ::
                                   JSRef Document -> JSString -> IO (JSRef Event)
webkit_dom_document_create_event = undefined
#endif
 
documentCreateEvent ::
                    (DocumentClass self, ToJSString eventType) =>
                      self -> eventType -> IO (Maybe Event)
documentCreateEvent self eventType
  = fmap Event . maybeJSNull <$>
      (webkit_dom_document_create_event (unDocument (toDocument self))
         (toJSString eventType))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createRange\"]()"
        webkit_dom_document_create_range ::
        JSRef Document -> IO (JSRef DOMRange)
#else 
webkit_dom_document_create_range ::
                                   JSRef Document -> IO (JSRef DOMRange)
webkit_dom_document_create_range = undefined
#endif
 
documentCreateRange ::
                    (DocumentClass self) => self -> IO (Maybe DOMRange)
documentCreateRange self
  = fmap DOMRange . maybeJSNull <$>
      (webkit_dom_document_create_range (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createNodeIterator\"]($2, $3,\n$4, $5)"
        webkit_dom_document_create_node_iterator ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> JSBool -> IO (JSRef NodeIterator)
#else 
webkit_dom_document_create_node_iterator ::
                                           JSRef Document ->
                                             JSRef Node ->
                                               Word ->
                                                 JSRef NodeFilter ->
                                                   JSBool -> IO (JSRef NodeIterator)
webkit_dom_document_create_node_iterator = undefined
#endif
 
documentCreateNodeIterator ::
                           (DocumentClass self, NodeClass root, NodeFilterClass filter) =>
                             self ->
                               Maybe root ->
                                 Word -> Maybe filter -> Bool -> IO (Maybe NodeIterator)
documentCreateNodeIterator self root whatToShow filter
  expandEntityReferences
  = fmap NodeIterator . maybeJSNull <$>
      (webkit_dom_document_create_node_iterator
         (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) root)
         whatToShow
         (maybe jsNull (unNodeFilter . toNodeFilter) filter)
         (toJSBool expandEntityReferences))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createTreeWalker\"]($2, $3,\n$4, $5)"
        webkit_dom_document_create_tree_walker ::
        JSRef Document ->
          JSRef Node ->
            Word -> JSRef NodeFilter -> JSBool -> IO (JSRef TreeWalker)
#else 
webkit_dom_document_create_tree_walker ::
                                         JSRef Document ->
                                           JSRef Node ->
                                             Word ->
                                               JSRef NodeFilter -> JSBool -> IO (JSRef TreeWalker)
webkit_dom_document_create_tree_walker = undefined
#endif
 
documentCreateTreeWalker ::
                         (DocumentClass self, NodeClass root, NodeFilterClass filter) =>
                           self ->
                             Maybe root -> Word -> Maybe filter -> Bool -> IO (Maybe TreeWalker)
documentCreateTreeWalker self root whatToShow filter
  expandEntityReferences
  = fmap TreeWalker . maybeJSNull <$>
      (webkit_dom_document_create_tree_walker
         (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) root)
         whatToShow
         (maybe jsNull (unNodeFilter . toNodeFilter) filter)
         (toJSBool expandEntityReferences))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getOverrideStyle\"]($2, $3)"
        webkit_dom_document_get_override_style ::
        JSRef Document ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)
#else 
webkit_dom_document_get_override_style ::
                                         JSRef Document ->
                                           JSRef Element ->
                                             JSString -> IO (JSRef CSSStyleDeclaration)
webkit_dom_document_get_override_style = undefined
#endif
 
documentGetOverrideStyle ::
                         (DocumentClass self, ElementClass element,
                          ToJSString pseudoElement) =>
                           self ->
                             Maybe element -> pseudoElement -> IO (Maybe CSSStyleDeclaration)
documentGetOverrideStyle self element pseudoElement
  = fmap CSSStyleDeclaration . maybeJSNull <$>
      (webkit_dom_document_get_override_style
         (unDocument (toDocument self))
         (maybe jsNull (unElement . toElement) element)
         (toJSString pseudoElement))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createExpression\"]($2, $3)"
        webkit_dom_document_create_expression ::
        JSRef Document ->
          JSString -> JSRef XPathNSResolver -> IO (JSRef XPathExpression)
#else 
webkit_dom_document_create_expression ::
                                        JSRef Document ->
                                          JSString ->
                                            JSRef XPathNSResolver -> IO (JSRef XPathExpression)
webkit_dom_document_create_expression = undefined
#endif
 
documentCreateExpression ::
                         (DocumentClass self, ToJSString expression,
                          XPathNSResolverClass resolver) =>
                           self -> expression -> Maybe resolver -> IO (Maybe XPathExpression)
documentCreateExpression self expression resolver
  = fmap XPathExpression . maybeJSNull <$>
      (webkit_dom_document_create_expression
         (unDocument (toDocument self))
         (toJSString expression)
         (maybe jsNull (unXPathNSResolver . toXPathNSResolver) resolver))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createNSResolver\"]($2)"
        webkit_dom_document_create_ns_resolver ::
        JSRef Document -> JSRef Node -> IO (JSRef XPathNSResolver)
#else 
webkit_dom_document_create_ns_resolver ::
                                         JSRef Document -> JSRef Node -> IO (JSRef XPathNSResolver)
webkit_dom_document_create_ns_resolver = undefined
#endif
 
documentCreateNSResolver ::
                         (DocumentClass self, NodeClass nodeResolver) =>
                           self -> Maybe nodeResolver -> IO (Maybe XPathNSResolver)
documentCreateNSResolver self nodeResolver
  = fmap XPathNSResolver . maybeJSNull <$>
      (webkit_dom_document_create_ns_resolver
         (unDocument (toDocument self))
         (maybe jsNull (unNode . toNode) nodeResolver))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"evaluate\"]($2, $3, $4, $5,\n$6)"
        webkit_dom_document_evaluate ::
        JSRef Document ->
          JSString ->
            JSRef Node ->
              JSRef XPathNSResolver ->
                Word -> JSRef XPathResult -> IO (JSRef XPathResult)
#else 
webkit_dom_document_evaluate ::
                               JSRef Document ->
                                 JSString ->
                                   JSRef Node ->
                                     JSRef XPathNSResolver ->
                                       Word -> JSRef XPathResult -> IO (JSRef XPathResult)
webkit_dom_document_evaluate = undefined
#endif
 
documentEvaluate ::
                 (DocumentClass self, ToJSString expression, NodeClass contextNode,
                  XPathNSResolverClass resolver, XPathResultClass inResult) =>
                   self ->
                     expression ->
                       Maybe contextNode ->
                         Maybe resolver -> Word -> Maybe inResult -> IO (Maybe XPathResult)
documentEvaluate self expression contextNode resolver type'
  inResult
  = fmap XPathResult . maybeJSNull <$>
      (webkit_dom_document_evaluate (unDocument (toDocument self))
         (toJSString expression)
         (maybe jsNull (unNode . toNode) contextNode)
         (maybe jsNull (unXPathNSResolver . toXPathNSResolver) resolver)
         type'
         (maybe jsNull (unXPathResult . toXPathResult) inResult))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"execCommand\"]($2, $3,\n$4) ? 1 : 0)"
        webkit_dom_document_exec_command ::
        JSRef Document -> JSString -> JSBool -> JSString -> IO JSBool
#else 
webkit_dom_document_exec_command ::
                                   JSRef Document -> JSString -> JSBool -> JSString -> IO JSBool
webkit_dom_document_exec_command = undefined
#endif
 
documentExecCommand ::
                    (DocumentClass self, ToJSString command, ToJSString value) =>
                      self -> command -> Bool -> value -> IO Bool
documentExecCommand self command userInterface value
  = fromJSBool <$>
      (webkit_dom_document_exec_command (unDocument (toDocument self))
         (toJSString command)
         (toJSBool userInterface)
         (toJSString value))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"queryCommandEnabled\"]($2) ? 1 : 0)"
        webkit_dom_document_query_command_enabled ::
        JSRef Document -> JSString -> IO JSBool
#else 
webkit_dom_document_query_command_enabled ::
                                            JSRef Document -> JSString -> IO JSBool
webkit_dom_document_query_command_enabled = undefined
#endif
 
documentQueryCommandEnabled ::
                            (DocumentClass self, ToJSString command) =>
                              self -> command -> IO Bool
documentQueryCommandEnabled self command
  = fromJSBool <$>
      (webkit_dom_document_query_command_enabled
         (unDocument (toDocument self))
         (toJSString command))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"queryCommandIndeterm\"]($2) ? 1 : 0)"
        webkit_dom_document_query_command_indeterm ::
        JSRef Document -> JSString -> IO JSBool
#else 
webkit_dom_document_query_command_indeterm ::
                                             JSRef Document -> JSString -> IO JSBool
webkit_dom_document_query_command_indeterm = undefined
#endif
 
documentQueryCommandIndeterm ::
                             (DocumentClass self, ToJSString command) =>
                               self -> command -> IO Bool
documentQueryCommandIndeterm self command
  = fromJSBool <$>
      (webkit_dom_document_query_command_indeterm
         (unDocument (toDocument self))
         (toJSString command))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"queryCommandState\"]($2) ? 1 : 0)"
        webkit_dom_document_query_command_state ::
        JSRef Document -> JSString -> IO JSBool
#else 
webkit_dom_document_query_command_state ::
                                          JSRef Document -> JSString -> IO JSBool
webkit_dom_document_query_command_state = undefined
#endif
 
documentQueryCommandState ::
                          (DocumentClass self, ToJSString command) =>
                            self -> command -> IO Bool
documentQueryCommandState self command
  = fromJSBool <$>
      (webkit_dom_document_query_command_state
         (unDocument (toDocument self))
         (toJSString command))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"queryCommandSupported\"]($2) ? 1 : 0)"
        webkit_dom_document_query_command_supported ::
        JSRef Document -> JSString -> IO JSBool
#else 
webkit_dom_document_query_command_supported ::
                                              JSRef Document -> JSString -> IO JSBool
webkit_dom_document_query_command_supported = undefined
#endif
 
documentQueryCommandSupported ::
                              (DocumentClass self, ToJSString command) =>
                                self -> command -> IO Bool
documentQueryCommandSupported self command
  = fromJSBool <$>
      (webkit_dom_document_query_command_supported
         (unDocument (toDocument self))
         (toJSString command))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"queryCommandValue\"]($2)"
        webkit_dom_document_query_command_value ::
        JSRef Document -> JSString -> IO JSString
#else 
webkit_dom_document_query_command_value ::
                                          JSRef Document -> JSString -> IO JSString
webkit_dom_document_query_command_value = undefined
#endif
 
documentQueryCommandValue ::
                          (DocumentClass self, ToJSString command, FromJSString result) =>
                            self -> command -> IO result
documentQueryCommandValue self command
  = fromJSString <$>
      (webkit_dom_document_query_command_value
         (unDocument (toDocument self))
         (toJSString command))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getElementsByName\"]($2)"
        webkit_dom_document_get_elements_by_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_document_get_elements_by_name ::
                                           JSRef Document -> JSString -> IO (JSRef NodeList)
webkit_dom_document_get_elements_by_name = undefined
#endif
 
documentGetElementsByName ::
                          (DocumentClass self, ToJSString elementName) =>
                            self -> elementName -> IO (Maybe NodeList)
documentGetElementsByName self elementName
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_document_get_elements_by_name
         (unDocument (toDocument self))
         (toJSString elementName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"elementFromPoint\"]($2, $3)"
        webkit_dom_document_element_from_point ::
        JSRef Document -> Int -> Int -> IO (JSRef Element)
#else 
webkit_dom_document_element_from_point ::
                                         JSRef Document -> Int -> Int -> IO (JSRef Element)
webkit_dom_document_element_from_point = undefined
#endif
 
documentElementFromPoint ::
                         (DocumentClass self) => self -> Int -> Int -> IO (Maybe Element)
documentElementFromPoint self x y
  = fmap Element . maybeJSNull <$>
      (webkit_dom_document_element_from_point
         (unDocument (toDocument self))
         x
         y)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"caretRangeFromPoint\"]($2,\n$3)"
        webkit_dom_document_caret_range_from_point ::
        JSRef Document -> Int -> Int -> IO (JSRef DOMRange)
#else 
webkit_dom_document_caret_range_from_point ::
                                             JSRef Document -> Int -> Int -> IO (JSRef DOMRange)
webkit_dom_document_caret_range_from_point = undefined
#endif
 
documentCaretRangeFromPoint ::
                            (DocumentClass self) => self -> Int -> Int -> IO (Maybe DOMRange)
documentCaretRangeFromPoint self x y
  = fmap DOMRange . maybeJSNull <$>
      (webkit_dom_document_caret_range_from_point
         (unDocument (toDocument self))
         x
         y)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createCSSStyleDeclaration\"]()"
        webkit_dom_document_create_css_style_declaration ::
        JSRef Document -> IO (JSRef CSSStyleDeclaration)
#else 
webkit_dom_document_create_css_style_declaration ::
                                                   JSRef Document -> IO (JSRef CSSStyleDeclaration)
webkit_dom_document_create_css_style_declaration = undefined
#endif
 
documentCreateCSSStyleDeclaration ::
                                  (DocumentClass self) => self -> IO (Maybe CSSStyleDeclaration)
documentCreateCSSStyleDeclaration self
  = fmap CSSStyleDeclaration . maybeJSNull <$>
      (webkit_dom_document_create_css_style_declaration
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)"
        webkit_dom_document_get_elements_by_class_name ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_document_get_elements_by_class_name ::
                                                 JSRef Document -> JSString -> IO (JSRef NodeList)
webkit_dom_document_get_elements_by_class_name = undefined
#endif
 
documentGetElementsByClassName ::
                               (DocumentClass self, ToJSString tagname) =>
                                 self -> tagname -> IO (Maybe NodeList)
documentGetElementsByClassName self tagname
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_document_get_elements_by_class_name
         (unDocument (toDocument self))
         (toJSString tagname))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        webkit_dom_document_query_selector ::
        JSRef Document -> JSString -> IO (JSRef Element)
#else 
webkit_dom_document_query_selector ::
                                     JSRef Document -> JSString -> IO (JSRef Element)
webkit_dom_document_query_selector = undefined
#endif
 
documentQuerySelector ::
                      (DocumentClass self, ToJSString selectors) =>
                        self -> selectors -> IO (Maybe Element)
documentQuerySelector self selectors
  = fmap Element . maybeJSNull <$>
      (webkit_dom_document_query_selector (unDocument (toDocument self))
         (toJSString selectors))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        webkit_dom_document_query_selector_all ::
        JSRef Document -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_document_query_selector_all ::
                                         JSRef Document -> JSString -> IO (JSRef NodeList)
webkit_dom_document_query_selector_all = undefined
#endif
 
documentQuerySelectorAll ::
                         (DocumentClass self, ToJSString selectors) =>
                           self -> selectors -> IO (Maybe NodeList)
documentQuerySelectorAll self selectors
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_document_query_selector_all
         (unDocument (toDocument self))
         (toJSString selectors))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"doctype\"]"
        webkit_dom_document_get_doctype ::
        JSRef Document -> IO (JSRef DocumentType)
#else 
webkit_dom_document_get_doctype ::
                                  JSRef Document -> IO (JSRef DocumentType)
webkit_dom_document_get_doctype = undefined
#endif
 
documentGetDoctype ::
                   (DocumentClass self) => self -> IO (Maybe DocumentType)
documentGetDoctype self
  = fmap DocumentType . maybeJSNull <$>
      (webkit_dom_document_get_doctype (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"implementation\"]"
        webkit_dom_document_get_implementation ::
        JSRef Document -> IO (JSRef DOMImplementation)
#else 
webkit_dom_document_get_implementation ::
                                         JSRef Document -> IO (JSRef DOMImplementation)
webkit_dom_document_get_implementation = undefined
#endif
 
documentGetImplementation ::
                          (DocumentClass self) => self -> IO (Maybe DOMImplementation)
documentGetImplementation self
  = fmap DOMImplementation . maybeJSNull <$>
      (webkit_dom_document_get_implementation
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"documentElement\"]"
        webkit_dom_document_get_document_element ::
        JSRef Document -> IO (JSRef Element)
#else 
webkit_dom_document_get_document_element ::
                                           JSRef Document -> IO (JSRef Element)
webkit_dom_document_get_document_element = undefined
#endif
 
documentGetDocumentElement ::
                           (DocumentClass self) => self -> IO (Maybe Element)
documentGetDocumentElement self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_document_get_document_element
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"inputEncoding\"]"
        webkit_dom_document_get_input_encoding ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_input_encoding ::
                                         JSRef Document -> IO JSString
webkit_dom_document_get_input_encoding = undefined
#endif
 
documentGetInputEncoding ::
                         (DocumentClass self, FromJSString result) => self -> IO result
documentGetInputEncoding self
  = fromJSString <$>
      (webkit_dom_document_get_input_encoding
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"xmlEncoding\"]"
        webkit_dom_document_get_xml_encoding ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_xml_encoding ::
                                       JSRef Document -> IO JSString
webkit_dom_document_get_xml_encoding = undefined
#endif
 
documentGetXmlEncoding ::
                       (DocumentClass self, FromJSString result) => self -> IO result
documentGetXmlEncoding self
  = fromJSString <$>
      (webkit_dom_document_get_xml_encoding
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"xmlVersion\"] = $2;"
        webkit_dom_document_set_xml_version ::
        JSRef Document -> JSString -> IO ()
#else 
webkit_dom_document_set_xml_version ::
                                      JSRef Document -> JSString -> IO ()
webkit_dom_document_set_xml_version = undefined
#endif
 
documentSetXmlVersion ::
                      (DocumentClass self, ToJSString val) => self -> val -> IO ()
documentSetXmlVersion self val
  = webkit_dom_document_set_xml_version
      (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"xmlVersion\"]"
        webkit_dom_document_get_xml_version ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_xml_version ::
                                      JSRef Document -> IO JSString
webkit_dom_document_get_xml_version = undefined
#endif
 
documentGetXmlVersion ::
                      (DocumentClass self, FromJSString result) => self -> IO result
documentGetXmlVersion self
  = fromJSString <$>
      (webkit_dom_document_get_xml_version
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"xmlStandalone\"] = $2;"
        webkit_dom_document_set_xml_standalone ::
        JSRef Document -> JSBool -> IO ()
#else 
webkit_dom_document_set_xml_standalone ::
                                         JSRef Document -> JSBool -> IO ()
webkit_dom_document_set_xml_standalone = undefined
#endif
 
documentSetXmlStandalone ::
                         (DocumentClass self) => self -> Bool -> IO ()
documentSetXmlStandalone self val
  = webkit_dom_document_set_xml_standalone
      (unDocument (toDocument self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"xmlStandalone\"] ? 1 : 0)"
        webkit_dom_document_get_xml_standalone ::
        JSRef Document -> IO JSBool
#else 
webkit_dom_document_get_xml_standalone ::
                                         JSRef Document -> IO JSBool
webkit_dom_document_get_xml_standalone = undefined
#endif
 
documentGetXmlStandalone :: (DocumentClass self) => self -> IO Bool
documentGetXmlStandalone self
  = fromJSBool <$>
      (webkit_dom_document_get_xml_standalone
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"documentURI\"] = $2;"
        webkit_dom_document_set_document_uri ::
        JSRef Document -> JSString -> IO ()
#else 
webkit_dom_document_set_document_uri ::
                                       JSRef Document -> JSString -> IO ()
webkit_dom_document_set_document_uri = undefined
#endif
 
documentSetDocumentURI ::
                       (DocumentClass self, ToJSString val) => self -> val -> IO ()
documentSetDocumentURI self val
  = webkit_dom_document_set_document_uri
      (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"documentURI\"]"
        webkit_dom_document_get_document_uri ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_document_uri ::
                                       JSRef Document -> IO JSString
webkit_dom_document_get_document_uri = undefined
#endif
 
documentGetDocumentURI ::
                       (DocumentClass self, FromJSString result) => self -> IO result
documentGetDocumentURI self
  = fromJSString <$>
      (webkit_dom_document_get_document_uri
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultView\"]"
        webkit_dom_document_get_default_view ::
        JSRef Document -> IO (JSRef DOMWindow)
#else 
webkit_dom_document_get_default_view ::
                                       JSRef Document -> IO (JSRef DOMWindow)
webkit_dom_document_get_default_view = undefined
#endif
 
documentGetDefaultView ::
                       (DocumentClass self) => self -> IO (Maybe DOMWindow)
documentGetDefaultView self
  = fmap DOMWindow . maybeJSNull <$>
      (webkit_dom_document_get_default_view
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"styleSheets\"]"
        webkit_dom_document_get_style_sheets ::
        JSRef Document -> IO (JSRef StyleSheetList)
#else 
webkit_dom_document_get_style_sheets ::
                                       JSRef Document -> IO (JSRef StyleSheetList)
webkit_dom_document_get_style_sheets = undefined
#endif
 
documentGetStyleSheets ::
                       (DocumentClass self) => self -> IO (Maybe StyleSheetList)
documentGetStyleSheets self
  = fmap StyleSheetList . maybeJSNull <$>
      (webkit_dom_document_get_style_sheets
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"title\"] = $2;"
        webkit_dom_document_set_title ::
        JSRef Document -> JSString -> IO ()
#else 
webkit_dom_document_set_title ::
                                JSRef Document -> JSString -> IO ()
webkit_dom_document_set_title = undefined
#endif
 
documentSetTitle ::
                 (DocumentClass self, ToJSString val) => self -> val -> IO ()
documentSetTitle self val
  = webkit_dom_document_set_title (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"title\"]"
        webkit_dom_document_get_title :: JSRef Document -> IO JSString
#else 
webkit_dom_document_get_title :: JSRef Document -> IO JSString
webkit_dom_document_get_title = undefined
#endif
 
documentGetTitle ::
                 (DocumentClass self, FromJSString result) => self -> IO result
documentGetTitle self
  = fromJSString <$>
      (webkit_dom_document_get_title (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"referrer\"]"
        webkit_dom_document_get_referrer :: JSRef Document -> IO JSString
#else 
webkit_dom_document_get_referrer :: JSRef Document -> IO JSString
webkit_dom_document_get_referrer = undefined
#endif
 
documentGetReferrer ::
                    (DocumentClass self, FromJSString result) => self -> IO result
documentGetReferrer self
  = fromJSString <$>
      (webkit_dom_document_get_referrer (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"domain\"]"
        webkit_dom_document_get_domain :: JSRef Document -> IO JSString
#else 
webkit_dom_document_get_domain :: JSRef Document -> IO JSString
webkit_dom_document_get_domain = undefined
#endif
 
documentGetDomain ::
                  (DocumentClass self, FromJSString result) => self -> IO result
documentGetDomain self
  = fromJSString <$>
      (webkit_dom_document_get_domain (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cookie\"] = $2;"
        webkit_dom_document_set_cookie ::
        JSRef Document -> JSString -> IO ()
#else 
webkit_dom_document_set_cookie ::
                                 JSRef Document -> JSString -> IO ()
webkit_dom_document_set_cookie = undefined
#endif
 
documentSetCookie ::
                  (DocumentClass self, ToJSString val) => self -> val -> IO ()
documentSetCookie self val
  = webkit_dom_document_set_cookie (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cookie\"]"
        webkit_dom_document_get_cookie :: JSRef Document -> IO JSString
#else 
webkit_dom_document_get_cookie :: JSRef Document -> IO JSString
webkit_dom_document_get_cookie = undefined
#endif
 
documentGetCookie ::
                  (DocumentClass self, FromJSString result) => self -> IO result
documentGetCookie self
  = fromJSString <$>
      (webkit_dom_document_get_cookie (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"body\"] = $2;"
        webkit_dom_document_set_body ::
        JSRef Document -> JSRef HTMLElement -> IO ()
#else 
webkit_dom_document_set_body ::
                               JSRef Document -> JSRef HTMLElement -> IO ()
webkit_dom_document_set_body = undefined
#endif
 
documentSetBody ::
                (DocumentClass self, HTMLElementClass val) =>
                  self -> Maybe val -> IO ()
documentSetBody self val
  = webkit_dom_document_set_body (unDocument (toDocument self))
      (maybe jsNull (unHTMLElement . toHTMLElement) val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"body\"]"
        webkit_dom_document_get_body ::
        JSRef Document -> IO (JSRef HTMLElement)
#else 
webkit_dom_document_get_body ::
                               JSRef Document -> IO (JSRef HTMLElement)
webkit_dom_document_get_body = undefined
#endif
 
documentGetBody ::
                (DocumentClass self) => self -> IO (Maybe HTMLElement)
documentGetBody self
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_document_get_body (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"head\"]"
        webkit_dom_document_get_head ::
        JSRef Document -> IO (JSRef HTMLHeadElement)
#else 
webkit_dom_document_get_head ::
                               JSRef Document -> IO (JSRef HTMLHeadElement)
webkit_dom_document_get_head = undefined
#endif
 
documentGetHead ::
                (DocumentClass self) => self -> IO (Maybe HTMLHeadElement)
documentGetHead self
  = fmap HTMLHeadElement . maybeJSNull <$>
      (webkit_dom_document_get_head (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"images\"]"
        webkit_dom_document_get_images ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
webkit_dom_document_get_images ::
                                 JSRef Document -> IO (JSRef HTMLCollection)
webkit_dom_document_get_images = undefined
#endif
 
documentGetImages ::
                  (DocumentClass self) => self -> IO (Maybe HTMLCollection)
documentGetImages self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_document_get_images (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"applets\"]"
        webkit_dom_document_get_applets ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
webkit_dom_document_get_applets ::
                                  JSRef Document -> IO (JSRef HTMLCollection)
webkit_dom_document_get_applets = undefined
#endif
 
documentGetApplets ::
                   (DocumentClass self) => self -> IO (Maybe HTMLCollection)
documentGetApplets self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_document_get_applets (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"links\"]"
        webkit_dom_document_get_links ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
webkit_dom_document_get_links ::
                                JSRef Document -> IO (JSRef HTMLCollection)
webkit_dom_document_get_links = undefined
#endif
 
documentGetLinks ::
                 (DocumentClass self) => self -> IO (Maybe HTMLCollection)
documentGetLinks self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_document_get_links (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"forms\"]"
        webkit_dom_document_get_forms ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
webkit_dom_document_get_forms ::
                                JSRef Document -> IO (JSRef HTMLCollection)
webkit_dom_document_get_forms = undefined
#endif
 
documentGetForms ::
                 (DocumentClass self) => self -> IO (Maybe HTMLCollection)
documentGetForms self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_document_get_forms (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"anchors\"]"
        webkit_dom_document_get_anchors ::
        JSRef Document -> IO (JSRef HTMLCollection)
#else 
webkit_dom_document_get_anchors ::
                                  JSRef Document -> IO (JSRef HTMLCollection)
webkit_dom_document_get_anchors = undefined
#endif
 
documentGetAnchors ::
                   (DocumentClass self) => self -> IO (Maybe HTMLCollection)
documentGetAnchors self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_document_get_anchors (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lastModified\"]"
        webkit_dom_document_get_last_modified ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_last_modified ::
                                        JSRef Document -> IO JSString
webkit_dom_document_get_last_modified = undefined
#endif
 
documentGetLastModified ::
                        (DocumentClass self, FromJSString result) => self -> IO result
documentGetLastModified self
  = fromJSString <$>
      (webkit_dom_document_get_last_modified
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        webkit_dom_document_set_charset ::
        JSRef Document -> JSString -> IO ()
#else 
webkit_dom_document_set_charset ::
                                  JSRef Document -> JSString -> IO ()
webkit_dom_document_set_charset = undefined
#endif
 
documentSetCharset ::
                   (DocumentClass self, ToJSString val) => self -> val -> IO ()
documentSetCharset self val
  = webkit_dom_document_set_charset (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"charset\"]"
        webkit_dom_document_get_charset :: JSRef Document -> IO JSString
#else 
webkit_dom_document_get_charset :: JSRef Document -> IO JSString
webkit_dom_document_get_charset = undefined
#endif
 
documentGetCharset ::
                   (DocumentClass self, FromJSString result) => self -> IO result
documentGetCharset self
  = fromJSString <$>
      (webkit_dom_document_get_charset (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"defaultCharset\"]"
        webkit_dom_document_get_default_charset ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_default_charset ::
                                          JSRef Document -> IO JSString
webkit_dom_document_get_default_charset = undefined
#endif
 
documentGetDefaultCharset ::
                          (DocumentClass self, FromJSString result) => self -> IO result
documentGetDefaultCharset self
  = fromJSString <$>
      (webkit_dom_document_get_default_charset
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"readyState\"]"
        webkit_dom_document_get_ready_state ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_ready_state ::
                                      JSRef Document -> IO JSString
webkit_dom_document_get_ready_state = undefined
#endif
 
documentGetReadyState ::
                      (DocumentClass self, FromJSString result) => self -> IO result
documentGetReadyState self
  = fromJSString <$>
      (webkit_dom_document_get_ready_state
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"characterSet\"]"
        webkit_dom_document_get_character_set ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_character_set ::
                                        JSRef Document -> IO JSString
webkit_dom_document_get_character_set = undefined
#endif
 
documentGetCharacterSet ::
                        (DocumentClass self, FromJSString result) => self -> IO result
documentGetCharacterSet self
  = fromJSString <$>
      (webkit_dom_document_get_character_set
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"preferredStylesheetSet\"]"
        webkit_dom_document_get_preferred_stylesheet_set ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_preferred_stylesheet_set ::
                                                   JSRef Document -> IO JSString
webkit_dom_document_get_preferred_stylesheet_set = undefined
#endif
 
documentGetPreferredStylesheetSet ::
                                  (DocumentClass self, FromJSString result) => self -> IO result
documentGetPreferredStylesheetSet self
  = fromJSString <$>
      (webkit_dom_document_get_preferred_stylesheet_set
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"selectedStylesheetSet\"] = $2;"
        webkit_dom_document_set_selected_stylesheet_set ::
        JSRef Document -> JSString -> IO ()
#else 
webkit_dom_document_set_selected_stylesheet_set ::
                                                  JSRef Document -> JSString -> IO ()
webkit_dom_document_set_selected_stylesheet_set = undefined
#endif
 
documentSetSelectedStylesheetSet ::
                                 (DocumentClass self, ToJSString val) => self -> val -> IO ()
documentSetSelectedStylesheetSet self val
  = webkit_dom_document_set_selected_stylesheet_set
      (unDocument (toDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectedStylesheetSet\"]"
        webkit_dom_document_get_selected_stylesheet_set ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_selected_stylesheet_set ::
                                                  JSRef Document -> IO JSString
webkit_dom_document_get_selected_stylesheet_set = undefined
#endif
 
documentGetSelectedStylesheetSet ::
                                 (DocumentClass self, FromJSString result) => self -> IO result
documentGetSelectedStylesheetSet self
  = fromJSString <$>
      (webkit_dom_document_get_selected_stylesheet_set
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"compatMode\"]"
        webkit_dom_document_get_compat_mode ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_compat_mode ::
                                      JSRef Document -> IO JSString
webkit_dom_document_get_compat_mode = undefined
#endif
 
documentGetCompatMode ::
                      (DocumentClass self, FromJSString result) => self -> IO result
documentGetCompatMode self
  = fromJSString <$>
      (webkit_dom_document_get_compat_mode
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitPointerLockElement\"]"
        webkit_dom_document_get_webkit_pointer_lock_element ::
        JSRef Document -> IO (JSRef Element)
#else 
webkit_dom_document_get_webkit_pointer_lock_element ::
                                                      JSRef Document -> IO (JSRef Element)
webkit_dom_document_get_webkit_pointer_lock_element = undefined
#endif
 
documentGetWebkitPointerLockElement ::
                                    (DocumentClass self) => self -> IO (Maybe Element)
documentGetWebkitPointerLockElement self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_document_get_webkit_pointer_lock_element
         (unDocument (toDocument self)))
 
documentOnabort ::
                (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnabort = (connect "abort")
 
documentOnblur ::
               (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnblur = (connect "blur")
 
documentOnchange ::
                 (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnchange = (connect "change")
 
documentOnclick ::
                (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOnclick = (connect "click")
 
documentOncontextmenu ::
                      (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOncontextmenu = (connect "contextmenu")
 
documentOndblclick ::
                   (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOndblclick = (connect "dblclick")
 
documentOndrag ::
               (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOndrag = (connect "drag")
 
documentOndragend ::
                  (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOndragend = (connect "dragend")
 
documentOndragenter ::
                    (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOndragenter = (connect "dragenter")
 
documentOndragleave ::
                    (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOndragleave = (connect "dragleave")
 
documentOndragover ::
                   (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOndragover = (connect "dragover")
 
documentOndragstart ::
                    (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOndragstart = (connect "dragstart")
 
documentOndrop ::
               (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOndrop = (connect "drop")
 
documentOnerror ::
                (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnerror = (connect "error")
 
documentOnfocus ::
                (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnfocus = (connect "focus")
 
documentOninput ::
                (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOninput = (connect "input")
 
documentOninvalid ::
                  (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOninvalid = (connect "invalid")
 
documentOnkeydown ::
                  (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnkeydown = (connect "keydown")
 
documentOnkeypress ::
                   (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnkeypress = (connect "keypress")
 
documentOnkeyup ::
                (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnkeyup = (connect "keyup")
 
documentOnload ::
               (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnload = (connect "load")
 
documentOnmousedown ::
                    (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOnmousedown = (connect "mousedown")
 
documentOnmousemove ::
                    (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOnmousemove = (connect "mousemove")
 
documentOnmouseout ::
                   (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOnmouseout = (connect "mouseout")
 
documentOnmouseover ::
                    (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOnmouseover = (connect "mouseover")
 
documentOnmouseup ::
                  (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOnmouseup = (connect "mouseup")
 
documentOnmousewheel ::
                     (DocumentClass self) => Signal self (EventM MouseEvent self ())
documentOnmousewheel = (connect "mousewheel")
 
documentOnreadystatechange ::
                           (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnreadystatechange = (connect "readystatechange")
 
documentOnscroll ::
                 (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnscroll = (connect "scroll")
 
documentOnselect ::
                 (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnselect = (connect "select")
 
documentOnsubmit ::
                 (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnsubmit = (connect "submit")
 
documentOnbeforecut ::
                    (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnbeforecut = (connect "beforecut")
 
documentOncut ::
              (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOncut = (connect "cut")
 
documentOnbeforecopy ::
                     (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnbeforecopy = (connect "beforecopy")
 
documentOncopy ::
               (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOncopy = (connect "copy")
 
documentOnbeforepaste ::
                      (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnbeforepaste = (connect "beforepaste")
 
documentOnpaste ::
                (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnpaste = (connect "paste")
 
documentOnreset ::
                (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnreset = (connect "reset")
 
documentOnsearch ::
                 (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnsearch = (connect "search")
 
documentOnselectstart ::
                      (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnselectstart = (connect "selectstart")
 
documentOnselectionchange ::
                          (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnselectionchange = (connect "selectionchange")
 
documentOntouchstart ::
                     (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOntouchstart = (connect "touchstart")
 
documentOntouchmove ::
                    (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOntouchmove = (connect "touchmove")
 
documentOntouchend ::
                   (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOntouchend = (connect "touchend")
 
documentOntouchcancel ::
                      (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOntouchcancel = (connect "touchcancel")
 
documentOnwebkitfullscreenchange ::
                                 (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnwebkitfullscreenchange
  = (connect "webkitfullscreenchange")
 
documentOnwebkitfullscreenerror ::
                                (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnwebkitfullscreenerror = (connect "webkitfullscreenerror")
 
documentOnwebkitpointerlockchange ::
                                  (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnwebkitpointerlockchange
  = (connect "webkitpointerlockchange")
 
documentOnwebkitpointerlockerror ::
                                 (DocumentClass self) => Signal self (EventM UIEvent self ())
documentOnwebkitpointerlockerror
  = (connect "webkitpointerlockerror")


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitVisibilityState\"]"
        webkit_dom_document_get_webkit_visibility_state ::
        JSRef Document -> IO JSString
#else 
webkit_dom_document_get_webkit_visibility_state ::
                                                  JSRef Document -> IO JSString
webkit_dom_document_get_webkit_visibility_state = undefined
#endif
 
documentGetWebkitVisibilityState ::
                                 (DocumentClass self, FromJSString result) => self -> IO result
documentGetWebkitVisibilityState self
  = fromJSString <$>
      (webkit_dom_document_get_webkit_visibility_state
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"webkitHidden\"] ? 1 : 0)"
        webkit_dom_document_get_webkit_hidden ::
        JSRef Document -> IO JSBool
#else 
webkit_dom_document_get_webkit_hidden ::
                                        JSRef Document -> IO JSBool
webkit_dom_document_get_webkit_hidden = undefined
#endif
 
documentGetWebkitHidden :: (DocumentClass self) => self -> IO Bool
documentGetWebkitHidden self
  = fromJSBool <$>
      (webkit_dom_document_get_webkit_hidden
         (unDocument (toDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"SecurityPolicy\"]"
        webkit_dom_document_get_security_policy ::
        JSRef Document -> IO (JSRef DOMSecurityPolicy)
#else 
webkit_dom_document_get_security_policy ::
                                          JSRef Document -> IO (JSRef DOMSecurityPolicy)
webkit_dom_document_get_security_policy = undefined
#endif
 
documentGetSecurityPolicy ::
                          (DocumentClass self) => self -> IO (Maybe DOMSecurityPolicy)
documentGetSecurityPolicy self
  = fmap DOMSecurityPolicy . maybeJSNull <$>
      (webkit_dom_document_get_security_policy
         (unDocument (toDocument self)))