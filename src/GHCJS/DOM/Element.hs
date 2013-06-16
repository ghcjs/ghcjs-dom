{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Element
       (webkit_dom_element_get_attribute, elementGetAttribute,
        webkit_dom_element_set_attribute, elementSetAttribute,
        webkit_dom_element_remove_attribute, elementRemoveAttribute,
        webkit_dom_element_get_attribute_node, elementGetAttributeNode,
        webkit_dom_element_set_attribute_node, elementSetAttributeNode,
        webkit_dom_element_remove_attribute_node,
        elementRemoveAttributeNode,
        webkit_dom_element_get_elements_by_tag_name,
        elementGetElementsByTagName, webkit_dom_element_get_attribute_ns,
        elementGetAttributeNS, webkit_dom_element_set_attribute_ns,
        elementSetAttributeNS, webkit_dom_element_remove_attribute_ns,
        elementRemoveAttributeNS,
        webkit_dom_element_get_elements_by_tag_name_ns,
        elementGetElementsByTagNameNS,
        webkit_dom_element_get_attribute_node_ns,
        elementGetAttributeNodeNS,
        webkit_dom_element_set_attribute_node_ns,
        elementSetAttributeNodeNS, webkit_dom_element_has_attribute,
        elementHasAttribute, webkit_dom_element_has_attribute_ns,
        elementHasAttributeNS, webkit_dom_element_focus, elementFocus,
        webkit_dom_element_blur, elementBlur,
        webkit_dom_element_scroll_into_view, elementScrollIntoView,
        webkit_dom_element_scroll_into_view_if_needed,
        elementScrollIntoViewIfNeeded, webkit_dom_element_scroll_by_lines,
        elementScrollByLines, webkit_dom_element_scroll_by_pages,
        elementScrollByPages,
        webkit_dom_element_get_elements_by_class_name,
        elementGetElementsByClassName, webkit_dom_element_query_selector,
        elementQuerySelector, webkit_dom_element_query_selector_all,
        elementQuerySelectorAll,
        webkit_dom_element_webkit_matches_selector,
        elementWebkitMatchesSelector, webkit_dom_element_get_tag_name,
        elementGetTagName, webkit_dom_element_get_style, elementGetStyle,
        webkit_dom_element_get_offset_left, elementGetOffsetLeft,
        webkit_dom_element_get_offset_top, elementGetOffsetTop,
        webkit_dom_element_get_offset_width, elementGetOffsetWidth,
        webkit_dom_element_get_offset_height, elementGetOffsetHeight,
        webkit_dom_element_get_offset_parent, elementGetOffsetParent,
        webkit_dom_element_get_client_left, elementGetClientLeft,
        webkit_dom_element_get_client_top, elementGetClientTop,
        webkit_dom_element_get_client_width, elementGetClientWidth,
        webkit_dom_element_get_client_height, elementGetClientHeight,
        webkit_dom_element_set_scroll_left, elementSetScrollLeft,
        webkit_dom_element_get_scroll_left, elementGetScrollLeft,
        webkit_dom_element_set_scroll_top, elementSetScrollTop,
        webkit_dom_element_get_scroll_top, elementGetScrollTop,
        webkit_dom_element_get_scroll_width, elementGetScrollWidth,
        webkit_dom_element_get_scroll_height, elementGetScrollHeight,
        webkit_dom_element_set_class_name, elementSetClassName,
        webkit_dom_element_get_class_name, elementGetClassName,
        webkit_dom_element_get_class_list, elementGetClassList,
        webkit_dom_element_get_first_element_child,
        elementGetFirstElementChild,
        webkit_dom_element_get_last_element_child,
        elementGetLastElementChild,
        webkit_dom_element_get_previous_element_sibling,
        elementGetPreviousElementSibling,
        webkit_dom_element_get_next_element_sibling,
        elementGetNextElementSibling,
        webkit_dom_element_get_child_element_count,
        elementGetChildElementCount,
        webkit_dom_element_get_webkit_region_overset,
        elementGetWebkitRegionOverset, elementOnabort, elementOnblur,
        elementOnchange, elementOnclick, elementOncontextmenu,
        elementOndblclick, elementOndrag, elementOndragend,
        elementOndragenter, elementOndragleave, elementOndragover,
        elementOndragstart, elementOndrop, elementOnerror, elementOnfocus,
        elementOninput, elementOninvalid, elementOnkeydown,
        elementOnkeypress, elementOnkeyup, elementOnload,
        elementOnmousedown, elementOnmousemove, elementOnmouseout,
        elementOnmouseover, elementOnmouseup, elementOnmousewheel,
        elementOnscroll, elementOnselect, elementOnsubmit,
        elementOnbeforecut, elementOncut, elementOnbeforecopy,
        elementOncopy, elementOnbeforepaste, elementOnpaste,
        elementOnreset, elementOnsearch, elementOnselectstart,
        elementOntouchstart, elementOntouchmove, elementOntouchend,
        elementOntouchcancel, elementOnwebkitfullscreenchange,
        elementOnwebkitfullscreenerror)
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
foreign import javascript unsafe "$1[\"getAttribute\"]($2)"
        webkit_dom_element_get_attribute ::
        JSRef Element -> JSString -> IO JSString
#else 
webkit_dom_element_get_attribute ::
                                   JSRef Element -> JSString -> IO JSString
webkit_dom_element_get_attribute = undefined
#endif
 
elementGetAttribute ::
                    (ElementClass self, ToJSString name, FromJSString result) =>
                      self -> name -> IO result
elementGetAttribute self name
  = fromJSString <$>
      (webkit_dom_element_get_attribute (unElement (toElement self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setAttribute\"]($2, $3)"
        webkit_dom_element_set_attribute ::
        JSRef Element -> JSString -> JSString -> IO ()
#else 
webkit_dom_element_set_attribute ::
                                   JSRef Element -> JSString -> JSString -> IO ()
webkit_dom_element_set_attribute = undefined
#endif
 
elementSetAttribute ::
                    (ElementClass self, ToJSString name, ToJSString value) =>
                      self -> name -> value -> IO ()
elementSetAttribute self name value
  = webkit_dom_element_set_attribute (unElement (toElement self))
      (toJSString name)
      (toJSString value)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"removeAttribute\"]($2)"
        webkit_dom_element_remove_attribute ::
        JSRef Element -> JSString -> IO ()
#else 
webkit_dom_element_remove_attribute ::
                                      JSRef Element -> JSString -> IO ()
webkit_dom_element_remove_attribute = undefined
#endif
 
elementRemoveAttribute ::
                       (ElementClass self, ToJSString name) => self -> name -> IO ()
elementRemoveAttribute self name
  = webkit_dom_element_remove_attribute (unElement (toElement self))
      (toJSString name)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getAttributeNode\"]($2)"
        webkit_dom_element_get_attribute_node ::
        JSRef Element -> JSString -> IO (JSRef DOMAttr)
#else 
webkit_dom_element_get_attribute_node ::
                                        JSRef Element -> JSString -> IO (JSRef DOMAttr)
webkit_dom_element_get_attribute_node = undefined
#endif
 
elementGetAttributeNode ::
                        (ElementClass self, ToJSString name) =>
                          self -> name -> IO (Maybe DOMAttr)
elementGetAttributeNode self name
  = fmap DOMAttr . maybeJSNull <$>
      (webkit_dom_element_get_attribute_node (unElement (toElement self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setAttributeNode\"]($2)"
        webkit_dom_element_set_attribute_node ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
#else 
webkit_dom_element_set_attribute_node ::
                                        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
webkit_dom_element_set_attribute_node = undefined
#endif
 
elementSetAttributeNode ::
                        (ElementClass self, DOMAttrClass newAttr) =>
                          self -> Maybe newAttr -> IO (Maybe DOMAttr)
elementSetAttributeNode self newAttr
  = fmap DOMAttr . maybeJSNull <$>
      (webkit_dom_element_set_attribute_node (unElement (toElement self))
         (maybe jsNull (unDOMAttr . toDOMAttr) newAttr))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"removeAttributeNode\"]($2)"
        webkit_dom_element_remove_attribute_node ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
#else 
webkit_dom_element_remove_attribute_node ::
                                           JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
webkit_dom_element_remove_attribute_node = undefined
#endif
 
elementRemoveAttributeNode ::
                           (ElementClass self, DOMAttrClass oldAttr) =>
                             self -> Maybe oldAttr -> IO (Maybe DOMAttr)
elementRemoveAttributeNode self oldAttr
  = fmap DOMAttr . maybeJSNull <$>
      (webkit_dom_element_remove_attribute_node
         (unElement (toElement self))
         (maybe jsNull (unDOMAttr . toDOMAttr) oldAttr))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        webkit_dom_element_get_elements_by_tag_name ::
        JSRef Element -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_element_get_elements_by_tag_name ::
                                              JSRef Element -> JSString -> IO (JSRef NodeList)
webkit_dom_element_get_elements_by_tag_name = undefined
#endif
 
elementGetElementsByTagName ::
                            (ElementClass self, ToJSString name) =>
                              self -> name -> IO (Maybe NodeList)
elementGetElementsByTagName self name
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_element_get_elements_by_tag_name
         (unElement (toElement self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getAttributeNS\"]($2, $3)"
        webkit_dom_element_get_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO JSString
#else 
webkit_dom_element_get_attribute_ns ::
                                      JSRef Element -> JSString -> JSString -> IO JSString
webkit_dom_element_get_attribute_ns = undefined
#endif
 
elementGetAttributeNS ::
                      (ElementClass self, ToJSString namespaceURI, ToJSString localName,
                       FromJSString result) =>
                        self -> namespaceURI -> localName -> IO result
elementGetAttributeNS self namespaceURI localName
  = fromJSString <$>
      (webkit_dom_element_get_attribute_ns (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"setAttributeNS\"]($2, $3, $4)"
        webkit_dom_element_set_attribute_ns ::
        JSRef Element -> JSString -> JSString -> JSString -> IO ()
#else 
webkit_dom_element_set_attribute_ns ::
                                      JSRef Element -> JSString -> JSString -> JSString -> IO ()
webkit_dom_element_set_attribute_ns = undefined
#endif
 
elementSetAttributeNS ::
                      (ElementClass self, ToJSString namespaceURI,
                       ToJSString qualifiedName, ToJSString value) =>
                        self -> namespaceURI -> qualifiedName -> value -> IO ()
elementSetAttributeNS self namespaceURI qualifiedName value
  = webkit_dom_element_set_attribute_ns (unElement (toElement self))
      (toJSString namespaceURI)
      (toJSString qualifiedName)
      (toJSString value)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"removeAttributeNS\"]($2, $3)"
        webkit_dom_element_remove_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO ()
#else 
webkit_dom_element_remove_attribute_ns ::
                                         JSRef Element -> JSString -> JSString -> IO ()
webkit_dom_element_remove_attribute_ns = undefined
#endif
 
elementRemoveAttributeNS ::
                         (ElementClass self, ToJSString namespaceURI,
                          ToJSString localName) =>
                           self -> namespaceURI -> localName -> IO ()
elementRemoveAttributeNS self namespaceURI localName
  = webkit_dom_element_remove_attribute_ns
      (unElement (toElement self))
      (toJSString namespaceURI)
      (toJSString localName)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)"
        webkit_dom_element_get_elements_by_tag_name_ns ::
        JSRef Element -> JSString -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_element_get_elements_by_tag_name_ns ::
                                                 JSRef Element ->
                                                   JSString -> JSString -> IO (JSRef NodeList)
webkit_dom_element_get_elements_by_tag_name_ns = undefined
#endif
 
elementGetElementsByTagNameNS ::
                              (ElementClass self, ToJSString namespaceURI,
                               ToJSString localName) =>
                                self -> namespaceURI -> localName -> IO (Maybe NodeList)
elementGetElementsByTagNameNS self namespaceURI localName
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_element_get_elements_by_tag_name_ns
         (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"getAttributeNodeNS\"]($2, $3)"
        webkit_dom_element_get_attribute_node_ns ::
        JSRef Element -> JSString -> JSString -> IO (JSRef DOMAttr)
#else 
webkit_dom_element_get_attribute_node_ns ::
                                           JSRef Element ->
                                             JSString -> JSString -> IO (JSRef DOMAttr)
webkit_dom_element_get_attribute_node_ns = undefined
#endif
 
elementGetAttributeNodeNS ::
                          (ElementClass self, ToJSString namespaceURI,
                           ToJSString localName) =>
                            self -> namespaceURI -> localName -> IO (Maybe DOMAttr)
elementGetAttributeNodeNS self namespaceURI localName
  = fmap DOMAttr . maybeJSNull <$>
      (webkit_dom_element_get_attribute_node_ns
         (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setAttributeNodeNS\"]($2)"
        webkit_dom_element_set_attribute_node_ns ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
#else 
webkit_dom_element_set_attribute_node_ns ::
                                           JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)
webkit_dom_element_set_attribute_node_ns = undefined
#endif
 
elementSetAttributeNodeNS ::
                          (ElementClass self, DOMAttrClass newAttr) =>
                            self -> Maybe newAttr -> IO (Maybe DOMAttr)
elementSetAttributeNodeNS self newAttr
  = fmap DOMAttr . maybeJSNull <$>
      (webkit_dom_element_set_attribute_node_ns
         (unElement (toElement self))
         (maybe jsNull (unDOMAttr . toDOMAttr) newAttr))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hasAttribute\"]($2)"
        webkit_dom_element_has_attribute ::
        JSRef Element -> JSString -> IO JSBool
#else 
webkit_dom_element_has_attribute ::
                                   JSRef Element -> JSString -> IO JSBool
webkit_dom_element_has_attribute = undefined
#endif
 
elementHasAttribute ::
                    (ElementClass self, ToJSString name) => self -> name -> IO Bool
elementHasAttribute self name
  = fromJSBool <$>
      (webkit_dom_element_has_attribute (unElement (toElement self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hasAttributeNS\"]($2, $3)"
        webkit_dom_element_has_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO JSBool
#else 
webkit_dom_element_has_attribute_ns ::
                                      JSRef Element -> JSString -> JSString -> IO JSBool
webkit_dom_element_has_attribute_ns = undefined
#endif
 
elementHasAttributeNS ::
                      (ElementClass self, ToJSString namespaceURI,
                       ToJSString localName) =>
                        self -> namespaceURI -> localName -> IO Bool
elementHasAttributeNS self namespaceURI localName
  = fromJSBool <$>
      (webkit_dom_element_has_attribute_ns (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"focus\"]()"
        webkit_dom_element_focus :: JSRef Element -> IO ()
#else 
webkit_dom_element_focus :: JSRef Element -> IO ()
webkit_dom_element_focus = undefined
#endif
 
elementFocus :: (ElementClass self) => self -> IO ()
elementFocus self
  = webkit_dom_element_focus (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"blur\"]()"
        webkit_dom_element_blur :: JSRef Element -> IO ()
#else 
webkit_dom_element_blur :: JSRef Element -> IO ()
webkit_dom_element_blur = undefined
#endif
 
elementBlur :: (ElementClass self) => self -> IO ()
elementBlur self
  = webkit_dom_element_blur (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollIntoView\"]($2)"
        webkit_dom_element_scroll_into_view ::
        JSRef Element -> JSBool -> IO ()
#else 
webkit_dom_element_scroll_into_view ::
                                      JSRef Element -> JSBool -> IO ()
webkit_dom_element_scroll_into_view = undefined
#endif
 
elementScrollIntoView ::
                      (ElementClass self) => self -> Bool -> IO ()
elementScrollIntoView self alignWithTop
  = webkit_dom_element_scroll_into_view (unElement (toElement self))
      (toJSBool alignWithTop)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"scrollIntoViewIfNeeded\"]($2)"
        webkit_dom_element_scroll_into_view_if_needed ::
        JSRef Element -> JSBool -> IO ()
#else 
webkit_dom_element_scroll_into_view_if_needed ::
                                                JSRef Element -> JSBool -> IO ()
webkit_dom_element_scroll_into_view_if_needed = undefined
#endif
 
elementScrollIntoViewIfNeeded ::
                              (ElementClass self) => self -> Bool -> IO ()
elementScrollIntoViewIfNeeded self centerIfNeeded
  = webkit_dom_element_scroll_into_view_if_needed
      (unElement (toElement self))
      (toJSBool centerIfNeeded)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollByLines\"]($2)"
        webkit_dom_element_scroll_by_lines :: JSRef Element -> Int -> IO ()
#else 
webkit_dom_element_scroll_by_lines :: JSRef Element -> Int -> IO ()
webkit_dom_element_scroll_by_lines = undefined
#endif
 
elementScrollByLines :: (ElementClass self) => self -> Int -> IO ()
elementScrollByLines self lines
  = webkit_dom_element_scroll_by_lines (unElement (toElement self))
      lines


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollByPages\"]($2)"
        webkit_dom_element_scroll_by_pages :: JSRef Element -> Int -> IO ()
#else 
webkit_dom_element_scroll_by_pages :: JSRef Element -> Int -> IO ()
webkit_dom_element_scroll_by_pages = undefined
#endif
 
elementScrollByPages :: (ElementClass self) => self -> Int -> IO ()
elementScrollByPages self pages
  = webkit_dom_element_scroll_by_pages (unElement (toElement self))
      pages


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)"
        webkit_dom_element_get_elements_by_class_name ::
        JSRef Element -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_element_get_elements_by_class_name ::
                                                JSRef Element -> JSString -> IO (JSRef NodeList)
webkit_dom_element_get_elements_by_class_name = undefined
#endif
 
elementGetElementsByClassName ::
                              (ElementClass self, ToJSString name) =>
                                self -> name -> IO (Maybe NodeList)
elementGetElementsByClassName self name
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_element_get_elements_by_class_name
         (unElement (toElement self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        webkit_dom_element_query_selector ::
        JSRef Element -> JSString -> IO (JSRef Element)
#else 
webkit_dom_element_query_selector ::
                                    JSRef Element -> JSString -> IO (JSRef Element)
webkit_dom_element_query_selector = undefined
#endif
 
elementQuerySelector ::
                     (ElementClass self, ToJSString selectors) =>
                       self -> selectors -> IO (Maybe Element)
elementQuerySelector self selectors
  = fmap Element . maybeJSNull <$>
      (webkit_dom_element_query_selector (unElement (toElement self))
         (toJSString selectors))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        webkit_dom_element_query_selector_all ::
        JSRef Element -> JSString -> IO (JSRef NodeList)
#else 
webkit_dom_element_query_selector_all ::
                                        JSRef Element -> JSString -> IO (JSRef NodeList)
webkit_dom_element_query_selector_all = undefined
#endif
 
elementQuerySelectorAll ::
                        (ElementClass self, ToJSString selectors) =>
                          self -> selectors -> IO (Maybe NodeList)
elementQuerySelectorAll self selectors
  = fmap NodeList . maybeJSNull <$>
      (webkit_dom_element_query_selector_all (unElement (toElement self))
         (toJSString selectors))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"webkitMatchesSelector\"]($2)"
        webkit_dom_element_webkit_matches_selector ::
        JSRef Element -> JSString -> IO JSBool
#else 
webkit_dom_element_webkit_matches_selector ::
                                             JSRef Element -> JSString -> IO JSBool
webkit_dom_element_webkit_matches_selector = undefined
#endif
 
elementWebkitMatchesSelector ::
                             (ElementClass self, ToJSString selectors) =>
                               self -> selectors -> IO Bool
elementWebkitMatchesSelector self selectors
  = fromJSBool <$>
      (webkit_dom_element_webkit_matches_selector
         (unElement (toElement self))
         (toJSString selectors))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"tagName\"]"
        webkit_dom_element_get_tag_name :: JSRef Element -> IO JSString
#else 
webkit_dom_element_get_tag_name :: JSRef Element -> IO JSString
webkit_dom_element_get_tag_name = undefined
#endif
 
elementGetTagName ::
                  (ElementClass self, FromJSString result) => self -> IO result
elementGetTagName self
  = fromJSString <$>
      (webkit_dom_element_get_tag_name (unElement (toElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"style\"]"
        webkit_dom_element_get_style ::
        JSRef Element -> IO (JSRef CSSStyleDeclaration)
#else 
webkit_dom_element_get_style ::
                               JSRef Element -> IO (JSRef CSSStyleDeclaration)
webkit_dom_element_get_style = undefined
#endif
 
elementGetStyle ::
                (ElementClass self) => self -> IO (Maybe CSSStyleDeclaration)
elementGetStyle self
  = fmap CSSStyleDeclaration . maybeJSNull <$>
      (webkit_dom_element_get_style (unElement (toElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"offsetLeft\"]"
        webkit_dom_element_get_offset_left :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_offset_left :: JSRef Element -> IO Int
webkit_dom_element_get_offset_left = undefined
#endif
 
elementGetOffsetLeft :: (ElementClass self) => self -> IO Int
elementGetOffsetLeft self
  = webkit_dom_element_get_offset_left (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"offsetTop\"]"
        webkit_dom_element_get_offset_top :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_offset_top :: JSRef Element -> IO Int
webkit_dom_element_get_offset_top = undefined
#endif
 
elementGetOffsetTop :: (ElementClass self) => self -> IO Int
elementGetOffsetTop self
  = webkit_dom_element_get_offset_top (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"offsetWidth\"]"
        webkit_dom_element_get_offset_width :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_offset_width :: JSRef Element -> IO Int
webkit_dom_element_get_offset_width = undefined
#endif
 
elementGetOffsetWidth :: (ElementClass self) => self -> IO Int
elementGetOffsetWidth self
  = webkit_dom_element_get_offset_width (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"offsetHeight\"]"
        webkit_dom_element_get_offset_height :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_offset_height :: JSRef Element -> IO Int
webkit_dom_element_get_offset_height = undefined
#endif
 
elementGetOffsetHeight :: (ElementClass self) => self -> IO Int
elementGetOffsetHeight self
  = webkit_dom_element_get_offset_height (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"offsetParent\"]"
        webkit_dom_element_get_offset_parent ::
        JSRef Element -> IO (JSRef Element)
#else 
webkit_dom_element_get_offset_parent ::
                                       JSRef Element -> IO (JSRef Element)
webkit_dom_element_get_offset_parent = undefined
#endif
 
elementGetOffsetParent ::
                       (ElementClass self) => self -> IO (Maybe Element)
elementGetOffsetParent self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_element_get_offset_parent (unElement (toElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clientLeft\"]"
        webkit_dom_element_get_client_left :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_client_left :: JSRef Element -> IO Int
webkit_dom_element_get_client_left = undefined
#endif
 
elementGetClientLeft :: (ElementClass self) => self -> IO Int
elementGetClientLeft self
  = webkit_dom_element_get_client_left (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clientTop\"]"
        webkit_dom_element_get_client_top :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_client_top :: JSRef Element -> IO Int
webkit_dom_element_get_client_top = undefined
#endif
 
elementGetClientTop :: (ElementClass self) => self -> IO Int
elementGetClientTop self
  = webkit_dom_element_get_client_top (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clientWidth\"]"
        webkit_dom_element_get_client_width :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_client_width :: JSRef Element -> IO Int
webkit_dom_element_get_client_width = undefined
#endif
 
elementGetClientWidth :: (ElementClass self) => self -> IO Int
elementGetClientWidth self
  = webkit_dom_element_get_client_width (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clientHeight\"]"
        webkit_dom_element_get_client_height :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_client_height :: JSRef Element -> IO Int
webkit_dom_element_get_client_height = undefined
#endif
 
elementGetClientHeight :: (ElementClass self) => self -> IO Int
elementGetClientHeight self
  = webkit_dom_element_get_client_height (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollLeft\"] = $2;"
        webkit_dom_element_set_scroll_left :: JSRef Element -> Int -> IO ()
#else 
webkit_dom_element_set_scroll_left :: JSRef Element -> Int -> IO ()
webkit_dom_element_set_scroll_left = undefined
#endif
 
elementSetScrollLeft :: (ElementClass self) => self -> Int -> IO ()
elementSetScrollLeft self val
  = webkit_dom_element_set_scroll_left (unElement (toElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollLeft\"]"
        webkit_dom_element_get_scroll_left :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_scroll_left :: JSRef Element -> IO Int
webkit_dom_element_get_scroll_left = undefined
#endif
 
elementGetScrollLeft :: (ElementClass self) => self -> IO Int
elementGetScrollLeft self
  = webkit_dom_element_get_scroll_left (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollTop\"] = $2;"
        webkit_dom_element_set_scroll_top :: JSRef Element -> Int -> IO ()
#else 
webkit_dom_element_set_scroll_top :: JSRef Element -> Int -> IO ()
webkit_dom_element_set_scroll_top = undefined
#endif
 
elementSetScrollTop :: (ElementClass self) => self -> Int -> IO ()
elementSetScrollTop self val
  = webkit_dom_element_set_scroll_top (unElement (toElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollTop\"]"
        webkit_dom_element_get_scroll_top :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_scroll_top :: JSRef Element -> IO Int
webkit_dom_element_get_scroll_top = undefined
#endif
 
elementGetScrollTop :: (ElementClass self) => self -> IO Int
elementGetScrollTop self
  = webkit_dom_element_get_scroll_top (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollWidth\"]"
        webkit_dom_element_get_scroll_width :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_scroll_width :: JSRef Element -> IO Int
webkit_dom_element_get_scroll_width = undefined
#endif
 
elementGetScrollWidth :: (ElementClass self) => self -> IO Int
elementGetScrollWidth self
  = webkit_dom_element_get_scroll_width (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollHeight\"]"
        webkit_dom_element_get_scroll_height :: JSRef Element -> IO Int
#else 
webkit_dom_element_get_scroll_height :: JSRef Element -> IO Int
webkit_dom_element_get_scroll_height = undefined
#endif
 
elementGetScrollHeight :: (ElementClass self) => self -> IO Int
elementGetScrollHeight self
  = webkit_dom_element_get_scroll_height (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"className\"] = $2;"
        webkit_dom_element_set_class_name ::
        JSRef Element -> JSString -> IO ()
#else 
webkit_dom_element_set_class_name ::
                                    JSRef Element -> JSString -> IO ()
webkit_dom_element_set_class_name = undefined
#endif
 
elementSetClassName ::
                    (ElementClass self, ToJSString val) => self -> val -> IO ()
elementSetClassName self val
  = webkit_dom_element_set_class_name (unElement (toElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"className\"]"
        webkit_dom_element_get_class_name :: JSRef Element -> IO JSString
#else 
webkit_dom_element_get_class_name :: JSRef Element -> IO JSString
webkit_dom_element_get_class_name = undefined
#endif
 
elementGetClassName ::
                    (ElementClass self, FromJSString result) => self -> IO result
elementGetClassName self
  = fromJSString <$>
      (webkit_dom_element_get_class_name (unElement (toElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"classList\"]"
        webkit_dom_element_get_class_list ::
        JSRef Element -> IO (JSRef DOMTokenList)
#else 
webkit_dom_element_get_class_list ::
                                    JSRef Element -> IO (JSRef DOMTokenList)
webkit_dom_element_get_class_list = undefined
#endif
 
elementGetClassList ::
                    (ElementClass self) => self -> IO (Maybe DOMTokenList)
elementGetClassList self
  = fmap DOMTokenList . maybeJSNull <$>
      (webkit_dom_element_get_class_list (unElement (toElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"firstElementChild\"]"
        webkit_dom_element_get_first_element_child ::
        JSRef Element -> IO (JSRef Element)
#else 
webkit_dom_element_get_first_element_child ::
                                             JSRef Element -> IO (JSRef Element)
webkit_dom_element_get_first_element_child = undefined
#endif
 
elementGetFirstElementChild ::
                            (ElementClass self) => self -> IO (Maybe Element)
elementGetFirstElementChild self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_element_get_first_element_child
         (unElement (toElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lastElementChild\"]"
        webkit_dom_element_get_last_element_child ::
        JSRef Element -> IO (JSRef Element)
#else 
webkit_dom_element_get_last_element_child ::
                                            JSRef Element -> IO (JSRef Element)
webkit_dom_element_get_last_element_child = undefined
#endif
 
elementGetLastElementChild ::
                           (ElementClass self) => self -> IO (Maybe Element)
elementGetLastElementChild self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_element_get_last_element_child
         (unElement (toElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"previousElementSibling\"]"
        webkit_dom_element_get_previous_element_sibling ::
        JSRef Element -> IO (JSRef Element)
#else 
webkit_dom_element_get_previous_element_sibling ::
                                                  JSRef Element -> IO (JSRef Element)
webkit_dom_element_get_previous_element_sibling = undefined
#endif
 
elementGetPreviousElementSibling ::
                                 (ElementClass self) => self -> IO (Maybe Element)
elementGetPreviousElementSibling self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_element_get_previous_element_sibling
         (unElement (toElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"nextElementSibling\"]"
        webkit_dom_element_get_next_element_sibling ::
        JSRef Element -> IO (JSRef Element)
#else 
webkit_dom_element_get_next_element_sibling ::
                                              JSRef Element -> IO (JSRef Element)
webkit_dom_element_get_next_element_sibling = undefined
#endif
 
elementGetNextElementSibling ::
                             (ElementClass self) => self -> IO (Maybe Element)
elementGetNextElementSibling self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_element_get_next_element_sibling
         (unElement (toElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"childElementCount\"]"
        webkit_dom_element_get_child_element_count ::
        JSRef Element -> IO Word
#else 
webkit_dom_element_get_child_element_count ::
                                             JSRef Element -> IO Word
webkit_dom_element_get_child_element_count = undefined
#endif
 
elementGetChildElementCount ::
                            (ElementClass self) => self -> IO Word
elementGetChildElementCount self
  = webkit_dom_element_get_child_element_count
      (unElement (toElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitRegionOverset\"]"
        webkit_dom_element_get_webkit_region_overset ::
        JSRef Element -> IO JSString
#else 
webkit_dom_element_get_webkit_region_overset ::
                                               JSRef Element -> IO JSString
webkit_dom_element_get_webkit_region_overset = undefined
#endif
 
elementGetWebkitRegionOverset ::
                              (ElementClass self, FromJSString result) => self -> IO result
elementGetWebkitRegionOverset self
  = fromJSString <$>
      (webkit_dom_element_get_webkit_region_overset
         (unElement (toElement self)))
 
elementOnabort ::
               (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnabort = (connect "abort")
 
elementOnblur ::
              (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnblur = (connect "blur")
 
elementOnchange ::
                (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnchange = (connect "change")
 
elementOnclick ::
               (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOnclick = (connect "click")
 
elementOncontextmenu ::
                     (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOncontextmenu = (connect "contextmenu")
 
elementOndblclick ::
                  (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOndblclick = (connect "dblclick")
 
elementOndrag ::
              (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOndrag = (connect "drag")
 
elementOndragend ::
                 (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOndragend = (connect "dragend")
 
elementOndragenter ::
                   (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOndragenter = (connect "dragenter")
 
elementOndragleave ::
                   (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOndragleave = (connect "dragleave")
 
elementOndragover ::
                  (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOndragover = (connect "dragover")
 
elementOndragstart ::
                   (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOndragstart = (connect "dragstart")
 
elementOndrop ::
              (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOndrop = (connect "drop")
 
elementOnerror ::
               (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnerror = (connect "error")
 
elementOnfocus ::
               (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnfocus = (connect "focus")
 
elementOninput ::
               (ElementClass self) => Signal self (EventM UIEvent self ())
elementOninput = (connect "input")
 
elementOninvalid ::
                 (ElementClass self) => Signal self (EventM UIEvent self ())
elementOninvalid = (connect "invalid")
 
elementOnkeydown ::
                 (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnkeydown = (connect "keydown")
 
elementOnkeypress ::
                  (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnkeypress = (connect "keypress")
 
elementOnkeyup ::
               (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnkeyup = (connect "keyup")
 
elementOnload ::
              (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnload = (connect "load")
 
elementOnmousedown ::
                   (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOnmousedown = (connect "mousedown")
 
elementOnmousemove ::
                   (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOnmousemove = (connect "mousemove")
 
elementOnmouseout ::
                  (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOnmouseout = (connect "mouseout")
 
elementOnmouseover ::
                   (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOnmouseover = (connect "mouseover")
 
elementOnmouseup ::
                 (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOnmouseup = (connect "mouseup")
 
elementOnmousewheel ::
                    (ElementClass self) => Signal self (EventM MouseEvent self ())
elementOnmousewheel = (connect "mousewheel")
 
elementOnscroll ::
                (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnscroll = (connect "scroll")
 
elementOnselect ::
                (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnselect = (connect "select")
 
elementOnsubmit ::
                (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnsubmit = (connect "submit")
 
elementOnbeforecut ::
                   (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnbeforecut = (connect "beforecut")
 
elementOncut ::
             (ElementClass self) => Signal self (EventM UIEvent self ())
elementOncut = (connect "cut")
 
elementOnbeforecopy ::
                    (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnbeforecopy = (connect "beforecopy")
 
elementOncopy ::
              (ElementClass self) => Signal self (EventM UIEvent self ())
elementOncopy = (connect "copy")
 
elementOnbeforepaste ::
                     (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnbeforepaste = (connect "beforepaste")
 
elementOnpaste ::
               (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnpaste = (connect "paste")
 
elementOnreset ::
               (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnreset = (connect "reset")
 
elementOnsearch ::
                (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnsearch = (connect "search")
 
elementOnselectstart ::
                     (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnselectstart = (connect "selectstart")
 
elementOntouchstart ::
                    (ElementClass self) => Signal self (EventM UIEvent self ())
elementOntouchstart = (connect "touchstart")
 
elementOntouchmove ::
                   (ElementClass self) => Signal self (EventM UIEvent self ())
elementOntouchmove = (connect "touchmove")
 
elementOntouchend ::
                  (ElementClass self) => Signal self (EventM UIEvent self ())
elementOntouchend = (connect "touchend")
 
elementOntouchcancel ::
                     (ElementClass self) => Signal self (EventM UIEvent self ())
elementOntouchcancel = (connect "touchcancel")
 
elementOnwebkitfullscreenchange ::
                                (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnwebkitfullscreenchange
  = (connect "webkitfullscreenchange")
 
elementOnwebkitfullscreenerror ::
                               (ElementClass self) => Signal self (EventM UIEvent self ())
elementOnwebkitfullscreenerror = (connect "webkitfullscreenerror")