{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Element
       (ghcjs_dom_element_get_attribute, elementGetAttribute,
        ghcjs_dom_element_set_attribute, elementSetAttribute,
        ghcjs_dom_element_remove_attribute, elementRemoveAttribute,
        ghcjs_dom_element_get_attribute_node, elementGetAttributeNode,
        ghcjs_dom_element_set_attribute_node, elementSetAttributeNode,
        ghcjs_dom_element_remove_attribute_node,
        elementRemoveAttributeNode,
        ghcjs_dom_element_get_elements_by_tag_name,
        elementGetElementsByTagName, ghcjs_dom_element_has_attributes,
        elementHasAttributes, ghcjs_dom_element_get_attribute_ns,
        elementGetAttributeNS, ghcjs_dom_element_set_attribute_ns,
        elementSetAttributeNS, ghcjs_dom_element_remove_attribute_ns,
        elementRemoveAttributeNS,
        ghcjs_dom_element_get_elements_by_tag_name_ns,
        elementGetElementsByTagNameNS,
        ghcjs_dom_element_get_attribute_node_ns, elementGetAttributeNodeNS,
        ghcjs_dom_element_set_attribute_node_ns, elementSetAttributeNodeNS,
        ghcjs_dom_element_has_attribute, elementHasAttribute,
        ghcjs_dom_element_has_attribute_ns, elementHasAttributeNS,
        ghcjs_dom_element_focus, elementFocus, ghcjs_dom_element_blur,
        elementBlur, ghcjs_dom_element_scroll_into_view,
        elementScrollIntoView,
        ghcjs_dom_element_scroll_into_view_if_needed,
        elementScrollIntoViewIfNeeded, ghcjs_dom_element_scroll_by_lines,
        elementScrollByLines, ghcjs_dom_element_scroll_by_pages,
        elementScrollByPages, ghcjs_dom_element_get_elements_by_class_name,
        elementGetElementsByClassName, ghcjs_dom_element_query_selector,
        elementQuerySelector, ghcjs_dom_element_query_selector_all,
        elementQuerySelectorAll, ghcjs_dom_element_webkit_matches_selector,
        elementWebkitMatchesSelector,
        ghcjs_dom_element_webkit_request_pointer_lock,
        elementWebkitRequestPointerLock, ghcjs_dom_element_get_tag_name,
        elementGetTagName, ghcjs_dom_element_get_attributes,
        elementGetAttributes, ghcjs_dom_element_get_style, elementGetStyle,
        ghcjs_dom_element_set_id, elementSetId, ghcjs_dom_element_get_id,
        elementGetId, ghcjs_dom_element_get_offset_left,
        elementGetOffsetLeft, ghcjs_dom_element_get_offset_top,
        elementGetOffsetTop, ghcjs_dom_element_get_offset_width,
        elementGetOffsetWidth, ghcjs_dom_element_get_offset_height,
        elementGetOffsetHeight, ghcjs_dom_element_get_offset_parent,
        elementGetOffsetParent, ghcjs_dom_element_get_client_left,
        elementGetClientLeft, ghcjs_dom_element_get_client_top,
        elementGetClientTop, ghcjs_dom_element_get_client_width,
        elementGetClientWidth, ghcjs_dom_element_get_client_height,
        elementGetClientHeight, ghcjs_dom_element_set_scroll_left,
        elementSetScrollLeft, ghcjs_dom_element_get_scroll_left,
        elementGetScrollLeft, ghcjs_dom_element_set_scroll_top,
        elementSetScrollTop, ghcjs_dom_element_get_scroll_top,
        elementGetScrollTop, ghcjs_dom_element_get_scroll_width,
        elementGetScrollWidth, ghcjs_dom_element_get_scroll_height,
        elementGetScrollHeight, ghcjs_dom_element_set_class_name,
        elementSetClassName, ghcjs_dom_element_get_class_name,
        elementGetClassName, ghcjs_dom_element_get_class_list,
        elementGetClassList, ghcjs_dom_element_get_first_element_child,
        elementGetFirstElementChild,
        ghcjs_dom_element_get_last_element_child,
        elementGetLastElementChild,
        ghcjs_dom_element_get_previous_element_sibling,
        elementGetPreviousElementSibling,
        ghcjs_dom_element_get_next_element_sibling,
        elementGetNextElementSibling,
        ghcjs_dom_element_get_child_element_count,
        elementGetChildElementCount,
        ghcjs_dom_element_get_webkit_region_overset,
        elementGetWebkitRegionOverset, elementOnabort, elementOnblur,
        elementOnchange, elementOnclick, elementOncontextmenu,
        elementOndblclick, elementOndrag, elementOndragend,
        elementOndragenter, elementOndragleave, elementOndragover,
        elementOndragstart, elementOndrop, elementOnerror, elementOnfocus,
        elementOninput, elementOninvalid, elementOnkeydown,
        elementOnkeypress, elementOnkeyup, elementOnload,
        elementOnmousedown, elementOnmouseenter, elementOnmouseleave,
        elementOnmousemove, elementOnmouseout, elementOnmouseover,
        elementOnmouseup, elementOnmousewheel, elementOnscroll,
        elementOnselect, elementOnsubmit, elementOnbeforecut, elementOncut,
        elementOnbeforecopy, elementOncopy, elementOnbeforepaste,
        elementOnpaste, elementOnreset, elementOnsearch,
        elementOnselectstart, elementOntouchstart, elementOntouchmove,
        elementOntouchend, elementOntouchcancel,
        elementOnwebkitfullscreenchange, elementOnwebkitfullscreenerror,
        Element, IsElement, castToElement, gTypeElement, toElement)
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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getAttribute\"]($2)"
        ghcjs_dom_element_get_attribute ::
        JSRef Element -> JSString -> IO JSString
#else 
ghcjs_dom_element_get_attribute ::
                                  JSRef Element -> JSString -> IO JSString
ghcjs_dom_element_get_attribute = undefined
#endif
 
elementGetAttribute ::
                    (IsElement self, ToJSString name, FromJSString result) =>
                      self -> name -> IO result
elementGetAttribute self name
  = fromJSString <$>
      (ghcjs_dom_element_get_attribute (unElement (toElement self))
         (toJSString name))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setAttribute\"]($2, $3)"
        ghcjs_dom_element_set_attribute ::
        JSRef Element -> JSString -> JSString -> IO ()
#else 
ghcjs_dom_element_set_attribute ::
                                  JSRef Element -> JSString -> JSString -> IO ()
ghcjs_dom_element_set_attribute = undefined
#endif
 
elementSetAttribute ::
                    (IsElement self, ToJSString name, ToJSString value) =>
                      self -> name -> value -> IO ()
elementSetAttribute self name value
  = ghcjs_dom_element_set_attribute (unElement (toElement self))
      (toJSString name)
      (toJSString value)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"removeAttribute\"]($2)"
        ghcjs_dom_element_remove_attribute ::
        JSRef Element -> JSString -> IO ()
#else 
ghcjs_dom_element_remove_attribute ::
                                     JSRef Element -> JSString -> IO ()
ghcjs_dom_element_remove_attribute = undefined
#endif
 
elementRemoveAttribute ::
                       (IsElement self, ToJSString name) => self -> name -> IO ()
elementRemoveAttribute self name
  = ghcjs_dom_element_remove_attribute (unElement (toElement self))
      (toJSString name)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getAttributeNode\"]($2)"
        ghcjs_dom_element_get_attribute_node ::
        JSRef Element -> JSString -> IO (JSRef DOMAttr)
#else 
ghcjs_dom_element_get_attribute_node ::
                                       JSRef Element -> JSString -> IO (JSRef DOMAttr)
ghcjs_dom_element_get_attribute_node = undefined
#endif
 
elementGetAttributeNode ::
                        (IsElement self, ToJSString name) =>
                          self -> name -> IO (Maybe DOMAttr)
elementGetAttributeNode self name
  = fmap DOMAttr . maybeJSNull <$>
      (ghcjs_dom_element_get_attribute_node (unElement (toElement self))
         (toJSString name))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setAttributeNode\"]($2)"
        ghcjs_dom_element_set_attribute_node ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
#else 
ghcjs_dom_element_set_attribute_node ::
                                       JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
ghcjs_dom_element_set_attribute_node = undefined
#endif
 
elementSetAttributeNode ::
                        (IsElement self, IsDOMAttr newAttr) =>
                          self -> Maybe newAttr -> IO (Maybe DOMAttr)
elementSetAttributeNode self newAttr
  = fmap DOMAttr . maybeJSNull <$>
      (ghcjs_dom_element_set_attribute_node (unElement (toElement self))
         (maybe jsNull (unDOMAttr . toDOMAttr) newAttr))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"removeAttributeNode\"]($2)"
        ghcjs_dom_element_remove_attribute_node ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
#else 
ghcjs_dom_element_remove_attribute_node ::
                                          JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
ghcjs_dom_element_remove_attribute_node = undefined
#endif
 
elementRemoveAttributeNode ::
                           (IsElement self, IsDOMAttr oldAttr) =>
                             self -> Maybe oldAttr -> IO (Maybe DOMAttr)
elementRemoveAttributeNode self oldAttr
  = fmap DOMAttr . maybeJSNull <$>
      (ghcjs_dom_element_remove_attribute_node
         (unElement (toElement self))
         (maybe jsNull (unDOMAttr . toDOMAttr) oldAttr))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        ghcjs_dom_element_get_elements_by_tag_name ::
        JSRef Element -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_element_get_elements_by_tag_name ::
                                             JSRef Element -> JSString -> IO (JSRef NodeList)
ghcjs_dom_element_get_elements_by_tag_name = undefined
#endif
 
elementGetElementsByTagName ::
                            (IsElement self, ToJSString name) =>
                              self -> name -> IO (Maybe NodeList)
elementGetElementsByTagName self name
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_element_get_elements_by_tag_name
         (unElement (toElement self))
         (toJSString name))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"hasAttributes\"]() ? 1 : 0)"
        ghcjs_dom_element_has_attributes :: JSRef Element -> IO Bool
#else 
ghcjs_dom_element_has_attributes :: JSRef Element -> IO Bool
ghcjs_dom_element_has_attributes = undefined
#endif
 
elementHasAttributes :: (IsElement self) => self -> IO Bool
elementHasAttributes self
  = ghcjs_dom_element_has_attributes (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getAttributeNS\"]($2, $3)"
        ghcjs_dom_element_get_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO JSString
#else 
ghcjs_dom_element_get_attribute_ns ::
                                     JSRef Element -> JSString -> JSString -> IO JSString
ghcjs_dom_element_get_attribute_ns = undefined
#endif
 
elementGetAttributeNS ::
                      (IsElement self, ToJSString namespaceURI, ToJSString localName,
                       FromJSString result) =>
                        self -> namespaceURI -> localName -> IO result
elementGetAttributeNS self namespaceURI localName
  = fromJSString <$>
      (ghcjs_dom_element_get_attribute_ns (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"setAttributeNS\"]($2, $3, $4)"
        ghcjs_dom_element_set_attribute_ns ::
        JSRef Element -> JSString -> JSString -> JSString -> IO ()
#else 
ghcjs_dom_element_set_attribute_ns ::
                                     JSRef Element -> JSString -> JSString -> JSString -> IO ()
ghcjs_dom_element_set_attribute_ns = undefined
#endif
 
elementSetAttributeNS ::
                      (IsElement self, ToJSString namespaceURI, ToJSString qualifiedName,
                       ToJSString value) =>
                        self -> namespaceURI -> qualifiedName -> value -> IO ()
elementSetAttributeNS self namespaceURI qualifiedName value
  = ghcjs_dom_element_set_attribute_ns (unElement (toElement self))
      (toJSString namespaceURI)
      (toJSString qualifiedName)
      (toJSString value)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"removeAttributeNS\"]($2, $3)"
        ghcjs_dom_element_remove_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO ()
#else 
ghcjs_dom_element_remove_attribute_ns ::
                                        JSRef Element -> JSString -> JSString -> IO ()
ghcjs_dom_element_remove_attribute_ns = undefined
#endif
 
elementRemoveAttributeNS ::
                         (IsElement self, ToJSString namespaceURI, ToJSString localName) =>
                           self -> namespaceURI -> localName -> IO ()
elementRemoveAttributeNS self namespaceURI localName
  = ghcjs_dom_element_remove_attribute_ns
      (unElement (toElement self))
      (toJSString namespaceURI)
      (toJSString localName)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)"
        ghcjs_dom_element_get_elements_by_tag_name_ns ::
        JSRef Element -> JSString -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_element_get_elements_by_tag_name_ns ::
                                                JSRef Element ->
                                                  JSString -> JSString -> IO (JSRef NodeList)
ghcjs_dom_element_get_elements_by_tag_name_ns = undefined
#endif
 
elementGetElementsByTagNameNS ::
                              (IsElement self, ToJSString namespaceURI, ToJSString localName) =>
                                self -> namespaceURI -> localName -> IO (Maybe NodeList)
elementGetElementsByTagNameNS self namespaceURI localName
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_element_get_elements_by_tag_name_ns
         (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"getAttributeNodeNS\"]($2, $3)"
        ghcjs_dom_element_get_attribute_node_ns ::
        JSRef Element -> JSString -> JSString -> IO (JSRef DOMAttr)
#else 
ghcjs_dom_element_get_attribute_node_ns ::
                                          JSRef Element ->
                                            JSString -> JSString -> IO (JSRef DOMAttr)
ghcjs_dom_element_get_attribute_node_ns = undefined
#endif
 
elementGetAttributeNodeNS ::
                          (IsElement self, ToJSString namespaceURI, ToJSString localName) =>
                            self -> namespaceURI -> localName -> IO (Maybe DOMAttr)
elementGetAttributeNodeNS self namespaceURI localName
  = fmap DOMAttr . maybeJSNull <$>
      (ghcjs_dom_element_get_attribute_node_ns
         (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setAttributeNodeNS\"]($2)"
        ghcjs_dom_element_set_attribute_node_ns ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
#else 
ghcjs_dom_element_set_attribute_node_ns ::
                                          JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
ghcjs_dom_element_set_attribute_node_ns = undefined
#endif
 
elementSetAttributeNodeNS ::
                          (IsElement self, IsDOMAttr newAttr) =>
                            self -> Maybe newAttr -> IO (Maybe DOMAttr)
elementSetAttributeNodeNS self newAttr
  = fmap DOMAttr . maybeJSNull <$>
      (ghcjs_dom_element_set_attribute_node_ns
         (unElement (toElement self))
         (maybe jsNull (unDOMAttr . toDOMAttr) newAttr))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"hasAttribute\"]($2) ? 1 : 0)"
        ghcjs_dom_element_has_attribute ::
        JSRef Element -> JSString -> IO Bool
#else 
ghcjs_dom_element_has_attribute ::
                                  JSRef Element -> JSString -> IO Bool
ghcjs_dom_element_has_attribute = undefined
#endif
 
elementHasAttribute ::
                    (IsElement self, ToJSString name) => self -> name -> IO Bool
elementHasAttribute self name
  = ghcjs_dom_element_has_attribute (unElement (toElement self))
      (toJSString name)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"hasAttributeNS\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_element_has_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO Bool
#else 
ghcjs_dom_element_has_attribute_ns ::
                                     JSRef Element -> JSString -> JSString -> IO Bool
ghcjs_dom_element_has_attribute_ns = undefined
#endif
 
elementHasAttributeNS ::
                      (IsElement self, ToJSString namespaceURI, ToJSString localName) =>
                        self -> namespaceURI -> localName -> IO Bool
elementHasAttributeNS self namespaceURI localName
  = ghcjs_dom_element_has_attribute_ns (unElement (toElement self))
      (toJSString namespaceURI)
      (toJSString localName)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"focus\"]()"
        ghcjs_dom_element_focus :: JSRef Element -> IO ()
#else 
ghcjs_dom_element_focus :: JSRef Element -> IO ()
ghcjs_dom_element_focus = undefined
#endif
 
elementFocus :: (IsElement self) => self -> IO ()
elementFocus self
  = ghcjs_dom_element_focus (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"blur\"]()"
        ghcjs_dom_element_blur :: JSRef Element -> IO ()
#else 
ghcjs_dom_element_blur :: JSRef Element -> IO ()
ghcjs_dom_element_blur = undefined
#endif
 
elementBlur :: (IsElement self) => self -> IO ()
elementBlur self
  = ghcjs_dom_element_blur (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollIntoView\"]($2)"
        ghcjs_dom_element_scroll_into_view ::
        JSRef Element -> Bool -> IO ()
#else 
ghcjs_dom_element_scroll_into_view ::
                                     JSRef Element -> Bool -> IO ()
ghcjs_dom_element_scroll_into_view = undefined
#endif
 
elementScrollIntoView :: (IsElement self) => self -> Bool -> IO ()
elementScrollIntoView self alignWithTop
  = ghcjs_dom_element_scroll_into_view (unElement (toElement self))
      alignWithTop


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"scrollIntoViewIfNeeded\"]($2)"
        ghcjs_dom_element_scroll_into_view_if_needed ::
        JSRef Element -> Bool -> IO ()
#else 
ghcjs_dom_element_scroll_into_view_if_needed ::
                                               JSRef Element -> Bool -> IO ()
ghcjs_dom_element_scroll_into_view_if_needed = undefined
#endif
 
elementScrollIntoViewIfNeeded ::
                              (IsElement self) => self -> Bool -> IO ()
elementScrollIntoViewIfNeeded self centerIfNeeded
  = ghcjs_dom_element_scroll_into_view_if_needed
      (unElement (toElement self))
      centerIfNeeded


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollByLines\"]($2)"
        ghcjs_dom_element_scroll_by_lines :: JSRef Element -> Int -> IO ()
#else 
ghcjs_dom_element_scroll_by_lines :: JSRef Element -> Int -> IO ()
ghcjs_dom_element_scroll_by_lines = undefined
#endif
 
elementScrollByLines :: (IsElement self) => self -> Int -> IO ()
elementScrollByLines self lines
  = ghcjs_dom_element_scroll_by_lines (unElement (toElement self))
      lines


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollByPages\"]($2)"
        ghcjs_dom_element_scroll_by_pages :: JSRef Element -> Int -> IO ()
#else 
ghcjs_dom_element_scroll_by_pages :: JSRef Element -> Int -> IO ()
ghcjs_dom_element_scroll_by_pages = undefined
#endif
 
elementScrollByPages :: (IsElement self) => self -> Int -> IO ()
elementScrollByPages self pages
  = ghcjs_dom_element_scroll_by_pages (unElement (toElement self))
      pages


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)"
        ghcjs_dom_element_get_elements_by_class_name ::
        JSRef Element -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_element_get_elements_by_class_name ::
                                               JSRef Element -> JSString -> IO (JSRef NodeList)
ghcjs_dom_element_get_elements_by_class_name = undefined
#endif
 
elementGetElementsByClassName ::
                              (IsElement self, ToJSString name) =>
                                self -> name -> IO (Maybe NodeList)
elementGetElementsByClassName self name
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_element_get_elements_by_class_name
         (unElement (toElement self))
         (toJSString name))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        ghcjs_dom_element_query_selector ::
        JSRef Element -> JSString -> IO (JSRef Element)
#else 
ghcjs_dom_element_query_selector ::
                                   JSRef Element -> JSString -> IO (JSRef Element)
ghcjs_dom_element_query_selector = undefined
#endif
 
elementQuerySelector ::
                     (IsElement self, ToJSString selectors) =>
                       self -> selectors -> IO (Maybe Element)
elementQuerySelector self selectors
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_element_query_selector (unElement (toElement self))
         (toJSString selectors))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        ghcjs_dom_element_query_selector_all ::
        JSRef Element -> JSString -> IO (JSRef NodeList)
#else 
ghcjs_dom_element_query_selector_all ::
                                       JSRef Element -> JSString -> IO (JSRef NodeList)
ghcjs_dom_element_query_selector_all = undefined
#endif
 
elementQuerySelectorAll ::
                        (IsElement self, ToJSString selectors) =>
                          self -> selectors -> IO (Maybe NodeList)
elementQuerySelectorAll self selectors
  = fmap NodeList . maybeJSNull <$>
      (ghcjs_dom_element_query_selector_all (unElement (toElement self))
         (toJSString selectors))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"webkitMatchesSelector\"]($2) ? 1 : 0)"
        ghcjs_dom_element_webkit_matches_selector ::
        JSRef Element -> JSString -> IO Bool
#else 
ghcjs_dom_element_webkit_matches_selector ::
                                            JSRef Element -> JSString -> IO Bool
ghcjs_dom_element_webkit_matches_selector = undefined
#endif
 
elementWebkitMatchesSelector ::
                             (IsElement self, ToJSString selectors) =>
                               self -> selectors -> IO Bool
elementWebkitMatchesSelector self selectors
  = ghcjs_dom_element_webkit_matches_selector
      (unElement (toElement self))
      (toJSString selectors)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "$1[\"webkitRequestPointerLock\"]()"
        ghcjs_dom_element_webkit_request_pointer_lock ::
        JSRef Element -> IO ()
#else 
ghcjs_dom_element_webkit_request_pointer_lock ::
                                                JSRef Element -> IO ()
ghcjs_dom_element_webkit_request_pointer_lock = undefined
#endif
 
elementWebkitRequestPointerLock ::
                                (IsElement self) => self -> IO ()
elementWebkitRequestPointerLock self
  = ghcjs_dom_element_webkit_request_pointer_lock
      (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"tagName\"]"
        ghcjs_dom_element_get_tag_name :: JSRef Element -> IO JSString
#else 
ghcjs_dom_element_get_tag_name :: JSRef Element -> IO JSString
ghcjs_dom_element_get_tag_name = undefined
#endif
 
elementGetTagName ::
                  (IsElement self, FromJSString result) => self -> IO result
elementGetTagName self
  = fromJSString <$>
      (ghcjs_dom_element_get_tag_name (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"attributes\"]"
        ghcjs_dom_element_get_attributes ::
        JSRef Element -> IO (JSRef NamedNodeMap)
#else 
ghcjs_dom_element_get_attributes ::
                                   JSRef Element -> IO (JSRef NamedNodeMap)
ghcjs_dom_element_get_attributes = undefined
#endif
 
elementGetAttributes ::
                     (IsElement self) => self -> IO (Maybe NamedNodeMap)
elementGetAttributes self
  = fmap NamedNodeMap . maybeJSNull <$>
      (ghcjs_dom_element_get_attributes (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"style\"]"
        ghcjs_dom_element_get_style ::
        JSRef Element -> IO (JSRef CSSStyleDeclaration)
#else 
ghcjs_dom_element_get_style ::
                              JSRef Element -> IO (JSRef CSSStyleDeclaration)
ghcjs_dom_element_get_style = undefined
#endif
 
elementGetStyle ::
                (IsElement self) => self -> IO (Maybe CSSStyleDeclaration)
elementGetStyle self
  = fmap CSSStyleDeclaration . maybeJSNull <$>
      (ghcjs_dom_element_get_style (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"id\"] = $2;"
        ghcjs_dom_element_set_id :: JSRef Element -> JSString -> IO ()
#else 
ghcjs_dom_element_set_id :: JSRef Element -> JSString -> IO ()
ghcjs_dom_element_set_id = undefined
#endif
 
elementSetId ::
             (IsElement self, ToJSString val) => self -> val -> IO ()
elementSetId self val
  = ghcjs_dom_element_set_id (unElement (toElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_element_get_id :: JSRef Element -> IO JSString
#else 
ghcjs_dom_element_get_id :: JSRef Element -> IO JSString
ghcjs_dom_element_get_id = undefined
#endif
 
elementGetId ::
             (IsElement self, FromJSString result) => self -> IO result
elementGetId self
  = fromJSString <$>
      (ghcjs_dom_element_get_id (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"offsetLeft\"]"
        ghcjs_dom_element_get_offset_left :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_offset_left :: JSRef Element -> IO Int
ghcjs_dom_element_get_offset_left = undefined
#endif
 
elementGetOffsetLeft :: (IsElement self) => self -> IO Int
elementGetOffsetLeft self
  = ghcjs_dom_element_get_offset_left (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"offsetTop\"]"
        ghcjs_dom_element_get_offset_top :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_offset_top :: JSRef Element -> IO Int
ghcjs_dom_element_get_offset_top = undefined
#endif
 
elementGetOffsetTop :: (IsElement self) => self -> IO Int
elementGetOffsetTop self
  = ghcjs_dom_element_get_offset_top (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"offsetWidth\"]"
        ghcjs_dom_element_get_offset_width :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_offset_width :: JSRef Element -> IO Int
ghcjs_dom_element_get_offset_width = undefined
#endif
 
elementGetOffsetWidth :: (IsElement self) => self -> IO Int
elementGetOffsetWidth self
  = ghcjs_dom_element_get_offset_width (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"offsetHeight\"]"
        ghcjs_dom_element_get_offset_height :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_offset_height :: JSRef Element -> IO Int
ghcjs_dom_element_get_offset_height = undefined
#endif
 
elementGetOffsetHeight :: (IsElement self) => self -> IO Int
elementGetOffsetHeight self
  = ghcjs_dom_element_get_offset_height (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"offsetParent\"]"
        ghcjs_dom_element_get_offset_parent ::
        JSRef Element -> IO (JSRef Element)
#else 
ghcjs_dom_element_get_offset_parent ::
                                      JSRef Element -> IO (JSRef Element)
ghcjs_dom_element_get_offset_parent = undefined
#endif
 
elementGetOffsetParent ::
                       (IsElement self) => self -> IO (Maybe Element)
elementGetOffsetParent self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_element_get_offset_parent (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"clientLeft\"]"
        ghcjs_dom_element_get_client_left :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_client_left :: JSRef Element -> IO Int
ghcjs_dom_element_get_client_left = undefined
#endif
 
elementGetClientLeft :: (IsElement self) => self -> IO Int
elementGetClientLeft self
  = ghcjs_dom_element_get_client_left (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"clientTop\"]"
        ghcjs_dom_element_get_client_top :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_client_top :: JSRef Element -> IO Int
ghcjs_dom_element_get_client_top = undefined
#endif
 
elementGetClientTop :: (IsElement self) => self -> IO Int
elementGetClientTop self
  = ghcjs_dom_element_get_client_top (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"clientWidth\"]"
        ghcjs_dom_element_get_client_width :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_client_width :: JSRef Element -> IO Int
ghcjs_dom_element_get_client_width = undefined
#endif
 
elementGetClientWidth :: (IsElement self) => self -> IO Int
elementGetClientWidth self
  = ghcjs_dom_element_get_client_width (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"clientHeight\"]"
        ghcjs_dom_element_get_client_height :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_client_height :: JSRef Element -> IO Int
ghcjs_dom_element_get_client_height = undefined
#endif
 
elementGetClientHeight :: (IsElement self) => self -> IO Int
elementGetClientHeight self
  = ghcjs_dom_element_get_client_height (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollLeft\"] = $2;"
        ghcjs_dom_element_set_scroll_left :: JSRef Element -> Int -> IO ()
#else 
ghcjs_dom_element_set_scroll_left :: JSRef Element -> Int -> IO ()
ghcjs_dom_element_set_scroll_left = undefined
#endif
 
elementSetScrollLeft :: (IsElement self) => self -> Int -> IO ()
elementSetScrollLeft self val
  = ghcjs_dom_element_set_scroll_left (unElement (toElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollLeft\"]"
        ghcjs_dom_element_get_scroll_left :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_scroll_left :: JSRef Element -> IO Int
ghcjs_dom_element_get_scroll_left = undefined
#endif
 
elementGetScrollLeft :: (IsElement self) => self -> IO Int
elementGetScrollLeft self
  = ghcjs_dom_element_get_scroll_left (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollTop\"] = $2;"
        ghcjs_dom_element_set_scroll_top :: JSRef Element -> Int -> IO ()
#else 
ghcjs_dom_element_set_scroll_top :: JSRef Element -> Int -> IO ()
ghcjs_dom_element_set_scroll_top = undefined
#endif
 
elementSetScrollTop :: (IsElement self) => self -> Int -> IO ()
elementSetScrollTop self val
  = ghcjs_dom_element_set_scroll_top (unElement (toElement self)) val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollTop\"]"
        ghcjs_dom_element_get_scroll_top :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_scroll_top :: JSRef Element -> IO Int
ghcjs_dom_element_get_scroll_top = undefined
#endif
 
elementGetScrollTop :: (IsElement self) => self -> IO Int
elementGetScrollTop self
  = ghcjs_dom_element_get_scroll_top (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollWidth\"]"
        ghcjs_dom_element_get_scroll_width :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_scroll_width :: JSRef Element -> IO Int
ghcjs_dom_element_get_scroll_width = undefined
#endif
 
elementGetScrollWidth :: (IsElement self) => self -> IO Int
elementGetScrollWidth self
  = ghcjs_dom_element_get_scroll_width (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"scrollHeight\"]"
        ghcjs_dom_element_get_scroll_height :: JSRef Element -> IO Int
#else 
ghcjs_dom_element_get_scroll_height :: JSRef Element -> IO Int
ghcjs_dom_element_get_scroll_height = undefined
#endif
 
elementGetScrollHeight :: (IsElement self) => self -> IO Int
elementGetScrollHeight self
  = ghcjs_dom_element_get_scroll_height (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"className\"] = $2;"
        ghcjs_dom_element_set_class_name ::
        JSRef Element -> JSString -> IO ()
#else 
ghcjs_dom_element_set_class_name ::
                                   JSRef Element -> JSString -> IO ()
ghcjs_dom_element_set_class_name = undefined
#endif
 
elementSetClassName ::
                    (IsElement self, ToJSString val) => self -> val -> IO ()
elementSetClassName self val
  = ghcjs_dom_element_set_class_name (unElement (toElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"className\"]"
        ghcjs_dom_element_get_class_name :: JSRef Element -> IO JSString
#else 
ghcjs_dom_element_get_class_name :: JSRef Element -> IO JSString
ghcjs_dom_element_get_class_name = undefined
#endif
 
elementGetClassName ::
                    (IsElement self, FromJSString result) => self -> IO result
elementGetClassName self
  = fromJSString <$>
      (ghcjs_dom_element_get_class_name (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"classList\"]"
        ghcjs_dom_element_get_class_list ::
        JSRef Element -> IO (JSRef DOMTokenList)
#else 
ghcjs_dom_element_get_class_list ::
                                   JSRef Element -> IO (JSRef DOMTokenList)
ghcjs_dom_element_get_class_list = undefined
#endif
 
elementGetClassList ::
                    (IsElement self) => self -> IO (Maybe DOMTokenList)
elementGetClassList self
  = fmap DOMTokenList . maybeJSNull <$>
      (ghcjs_dom_element_get_class_list (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"firstElementChild\"]"
        ghcjs_dom_element_get_first_element_child ::
        JSRef Element -> IO (JSRef Element)
#else 
ghcjs_dom_element_get_first_element_child ::
                                            JSRef Element -> IO (JSRef Element)
ghcjs_dom_element_get_first_element_child = undefined
#endif
 
elementGetFirstElementChild ::
                            (IsElement self) => self -> IO (Maybe Element)
elementGetFirstElementChild self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_element_get_first_element_child
         (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"lastElementChild\"]"
        ghcjs_dom_element_get_last_element_child ::
        JSRef Element -> IO (JSRef Element)
#else 
ghcjs_dom_element_get_last_element_child ::
                                           JSRef Element -> IO (JSRef Element)
ghcjs_dom_element_get_last_element_child = undefined
#endif
 
elementGetLastElementChild ::
                           (IsElement self) => self -> IO (Maybe Element)
elementGetLastElementChild self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_element_get_last_element_child
         (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"previousElementSibling\"]"
        ghcjs_dom_element_get_previous_element_sibling ::
        JSRef Element -> IO (JSRef Element)
#else 
ghcjs_dom_element_get_previous_element_sibling ::
                                                 JSRef Element -> IO (JSRef Element)
ghcjs_dom_element_get_previous_element_sibling = undefined
#endif
 
elementGetPreviousElementSibling ::
                                 (IsElement self) => self -> IO (Maybe Element)
elementGetPreviousElementSibling self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_element_get_previous_element_sibling
         (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"nextElementSibling\"]"
        ghcjs_dom_element_get_next_element_sibling ::
        JSRef Element -> IO (JSRef Element)
#else 
ghcjs_dom_element_get_next_element_sibling ::
                                             JSRef Element -> IO (JSRef Element)
ghcjs_dom_element_get_next_element_sibling = undefined
#endif
 
elementGetNextElementSibling ::
                             (IsElement self) => self -> IO (Maybe Element)
elementGetNextElementSibling self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_element_get_next_element_sibling
         (unElement (toElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"childElementCount\"]"
        ghcjs_dom_element_get_child_element_count ::
        JSRef Element -> IO Word
#else 
ghcjs_dom_element_get_child_element_count ::
                                            JSRef Element -> IO Word
ghcjs_dom_element_get_child_element_count = undefined
#endif
 
elementGetChildElementCount :: (IsElement self) => self -> IO Word
elementGetChildElementCount self
  = ghcjs_dom_element_get_child_element_count
      (unElement (toElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"webkitRegionOverset\"]"
        ghcjs_dom_element_get_webkit_region_overset ::
        JSRef Element -> IO JSString
#else 
ghcjs_dom_element_get_webkit_region_overset ::
                                              JSRef Element -> IO JSString
ghcjs_dom_element_get_webkit_region_overset = undefined
#endif
 
elementGetWebkitRegionOverset ::
                              (IsElement self, FromJSString result) => self -> IO result
elementGetWebkitRegionOverset self
  = fromJSString <$>
      (ghcjs_dom_element_get_webkit_region_overset
         (unElement (toElement self)))
 
elementOnabort ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnabort = (connect "abort")
 
elementOnblur ::
              (IsElement self) => Signal self (EventM UIEvent self ())
elementOnblur = (connect "blur")
 
elementOnchange ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnchange = (connect "change")
 
elementOnclick ::
               (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnclick = (connect "click")
 
elementOncontextmenu ::
                     (IsElement self) => Signal self (EventM MouseEvent self ())
elementOncontextmenu = (connect "contextmenu")
 
elementOndblclick ::
                  (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndblclick = (connect "dblclick")
 
elementOndrag ::
              (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndrag = (connect "drag")
 
elementOndragend ::
                 (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragend = (connect "dragend")
 
elementOndragenter ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragenter = (connect "dragenter")
 
elementOndragleave ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragleave = (connect "dragleave")
 
elementOndragover ::
                  (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragover = (connect "dragover")
 
elementOndragstart ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragstart = (connect "dragstart")
 
elementOndrop ::
              (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndrop = (connect "drop")
 
elementOnerror ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnerror = (connect "error")
 
elementOnfocus ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnfocus = (connect "focus")
 
elementOninput ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOninput = (connect "input")
 
elementOninvalid ::
                 (IsElement self) => Signal self (EventM UIEvent self ())
elementOninvalid = (connect "invalid")
 
elementOnkeydown ::
                 (IsElement self) => Signal self (EventM UIEvent self ())
elementOnkeydown = (connect "keydown")
 
elementOnkeypress ::
                  (IsElement self) => Signal self (EventM UIEvent self ())
elementOnkeypress = (connect "keypress")
 
elementOnkeyup ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnkeyup = (connect "keyup")
 
elementOnload ::
              (IsElement self) => Signal self (EventM UIEvent self ())
elementOnload = (connect "load")
 
elementOnmousedown ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmousedown = (connect "mousedown")
 
elementOnmouseenter ::
                    (IsElement self) => Signal self (EventM UIEvent self ())
elementOnmouseenter = (connect "mouseenter")
 
elementOnmouseleave ::
                    (IsElement self) => Signal self (EventM UIEvent self ())
elementOnmouseleave = (connect "mouseleave")
 
elementOnmousemove ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmousemove = (connect "mousemove")
 
elementOnmouseout ::
                  (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmouseout = (connect "mouseout")
 
elementOnmouseover ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmouseover = (connect "mouseover")
 
elementOnmouseup ::
                 (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmouseup = (connect "mouseup")
 
elementOnmousewheel ::
                    (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmousewheel = (connect "mousewheel")
 
elementOnscroll ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnscroll = (connect "scroll")
 
elementOnselect ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnselect = (connect "select")
 
elementOnsubmit ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnsubmit = (connect "submit")
 
elementOnbeforecut ::
                   (IsElement self) => Signal self (EventM UIEvent self ())
elementOnbeforecut = (connect "beforecut")
 
elementOncut ::
             (IsElement self) => Signal self (EventM UIEvent self ())
elementOncut = (connect "cut")
 
elementOnbeforecopy ::
                    (IsElement self) => Signal self (EventM UIEvent self ())
elementOnbeforecopy = (connect "beforecopy")
 
elementOncopy ::
              (IsElement self) => Signal self (EventM UIEvent self ())
elementOncopy = (connect "copy")
 
elementOnbeforepaste ::
                     (IsElement self) => Signal self (EventM UIEvent self ())
elementOnbeforepaste = (connect "beforepaste")
 
elementOnpaste ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnpaste = (connect "paste")
 
elementOnreset ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnreset = (connect "reset")
 
elementOnsearch ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnsearch = (connect "search")
 
elementOnselectstart ::
                     (IsElement self) => Signal self (EventM UIEvent self ())
elementOnselectstart = (connect "selectstart")
 
elementOntouchstart ::
                    (IsElement self) => Signal self (EventM UIEvent self ())
elementOntouchstart = (connect "touchstart")
 
elementOntouchmove ::
                   (IsElement self) => Signal self (EventM UIEvent self ())
elementOntouchmove = (connect "touchmove")
 
elementOntouchend ::
                  (IsElement self) => Signal self (EventM UIEvent self ())
elementOntouchend = (connect "touchend")
 
elementOntouchcancel ::
                     (IsElement self) => Signal self (EventM UIEvent self ())
elementOntouchcancel = (connect "touchcancel")
 
elementOnwebkitfullscreenchange ::
                                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnwebkitfullscreenchange
  = (connect "webkitfullscreenchange")
 
elementOnwebkitfullscreenerror ::
                               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnwebkitfullscreenerror = (connect "webkitfullscreenerror")
#else
module GHCJS.DOM.Element (
  module Graphics.UI.Gtk.WebKit.DOM.Element
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Element
#endif
