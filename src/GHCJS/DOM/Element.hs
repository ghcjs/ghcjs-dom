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
        elementQuerySelectorAll, ghcjs_dom_element_matches, elementMatches,
        ghcjs_dom_element_closest, elementClosest,
        ghcjs_dom_element_webkit_matches_selector,
        elementWebkitMatchesSelector,
        ghcjs_dom_element_webkit_request_full_screen,
        elementWebkitRequestFullScreen,
        ghcjs_dom_element_webkit_request_fullscreen,
        elementWebkitRequestFullscreen,
        ghcjs_dom_element_request_pointer_lock, elementRequestPointerLock,
        cALLOW_KEYBOARD_INPUT, ghcjs_dom_element_get_tag_name,
        elementGetTagName, ghcjs_dom_element_get_attributes,
        elementGetAttributes, ghcjs_dom_element_get_style, elementGetStyle,
        ghcjs_dom_element_set_id, elementSetId, ghcjs_dom_element_get_id,
        elementGetId, ghcjs_dom_element_get_offset_left,
        elementGetOffsetLeft, ghcjs_dom_element_get_offset_top,
        elementGetOffsetTop, ghcjs_dom_element_get_offset_width,
        elementGetOffsetWidth, ghcjs_dom_element_get_offset_height,
        elementGetOffsetHeight, ghcjs_dom_element_get_client_left,
        elementGetClientLeft, ghcjs_dom_element_get_client_top,
        elementGetClientTop, ghcjs_dom_element_get_client_width,
        elementGetClientWidth, ghcjs_dom_element_get_client_height,
        elementGetClientHeight, ghcjs_dom_element_set_scroll_left,
        elementSetScrollLeft, ghcjs_dom_element_get_scroll_left,
        elementGetScrollLeft, ghcjs_dom_element_set_scroll_top,
        elementSetScrollTop, ghcjs_dom_element_get_scroll_top,
        elementGetScrollTop, ghcjs_dom_element_get_scroll_width,
        elementGetScrollWidth, ghcjs_dom_element_get_scroll_height,
        elementGetScrollHeight, ghcjs_dom_element_get_offset_parent,
        elementGetOffsetParent, ghcjs_dom_element_set_class_name,
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
        elementGetChildElementCount, ghcjs_dom_element_set_uiactions,
        elementSetUiactions, ghcjs_dom_element_get_uiactions,
        elementGetUiactions, ghcjs_dom_element_get_webkit_region_overset,
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
        elementOnselect, elementOnsubmit, elementOnwheel,
        elementOnbeforecut, elementOncut, elementOnbeforecopy,
        elementOncopy, elementOnbeforepaste, elementOnpaste,
        elementOnreset, elementOnsearch, elementOnselectstart,
        elementOntouchstart, elementOntouchmove, elementOntouchend,
        elementOntouchcancel, elementOnwebkitfullscreenchange,
        elementOnwebkitfullscreenerror, elementOnwebkitwillrevealbottom,
        elementOnwebkitwillrevealleft, elementOnwebkitwillrevealright,
        elementOnwebkitwillrevealtop, Element, IsElement, castToElement,
        gTypeElement, toElement)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"getAttribute\"]($2)"
        ghcjs_dom_element_get_attribute ::
        JSRef Element -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attribute Mozilla Element.attribute documentation> 
elementGetAttribute ::
                    (IsElement self, ToJSString name, FromJSString result) =>
                      self -> name -> IO result
elementGetAttribute self name
  = fromJSString <$>
      (ghcjs_dom_element_get_attribute (unElement (toElement self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"setAttribute\"]($2, $3)"
        ghcjs_dom_element_set_attribute ::
        JSRef Element -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attribute Mozilla Element.attribute documentation> 
elementSetAttribute ::
                    (IsElement self, ToJSString name, ToJSString value) =>
                      self -> name -> value -> IO ()
elementSetAttribute self name value
  = ghcjs_dom_element_set_attribute (unElement (toElement self))
      (toJSString name)
      (toJSString value)
 
foreign import javascript unsafe "$1[\"removeAttribute\"]($2)"
        ghcjs_dom_element_remove_attribute ::
        JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttribute Mozilla Element.removeAttribute documentation> 
elementRemoveAttribute ::
                       (IsElement self, ToJSString name) => self -> name -> IO ()
elementRemoveAttribute self name
  = ghcjs_dom_element_remove_attribute (unElement (toElement self))
      (toJSString name)
 
foreign import javascript unsafe "$1[\"getAttributeNode\"]($2)"
        ghcjs_dom_element_get_attribute_node ::
        JSRef Element -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNode Mozilla Element.attributeNode documentation> 
elementGetAttributeNode ::
                        (IsElement self, ToJSString name) =>
                          self -> name -> IO (Maybe DOMAttr)
elementGetAttributeNode self name
  = (ghcjs_dom_element_get_attribute_node
       (unElement (toElement self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"setAttributeNode\"]($2)"
        ghcjs_dom_element_set_attribute_node ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNode Mozilla Element.attributeNode documentation> 
elementSetAttributeNode ::
                        (IsElement self, IsDOMAttr newAttr) =>
                          self -> Maybe newAttr -> IO (Maybe DOMAttr)
elementSetAttributeNode self newAttr
  = (ghcjs_dom_element_set_attribute_node
       (unElement (toElement self))
       (maybe jsNull (unDOMAttr . toDOMAttr) newAttr))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"removeAttributeNode\"]($2)"
        ghcjs_dom_element_remove_attribute_node ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
elementRemoveAttributeNode ::
                           (IsElement self, IsDOMAttr oldAttr) =>
                             self -> Maybe oldAttr -> IO (Maybe DOMAttr)
elementRemoveAttributeNode self oldAttr
  = (ghcjs_dom_element_remove_attribute_node
       (unElement (toElement self))
       (maybe jsNull (unDOMAttr . toDOMAttr) oldAttr))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        ghcjs_dom_element_get_elements_by_tag_name ::
        JSRef Element -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.elementsByTagName Mozilla Element.elementsByTagName documentation> 
elementGetElementsByTagName ::
                            (IsElement self, ToJSString name) =>
                              self -> name -> IO (Maybe NodeList)
elementGetElementsByTagName self name
  = (ghcjs_dom_element_get_elements_by_tag_name
       (unElement (toElement self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"hasAttributes\"]() ? 1 : 0)"
        ghcjs_dom_element_has_attributes :: JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributes Mozilla Element.hasAttributes documentation> 
elementHasAttributes :: (IsElement self) => self -> IO Bool
elementHasAttributes self
  = ghcjs_dom_element_has_attributes (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"getAttributeNS\"]($2, $3)"
        ghcjs_dom_element_get_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNS Mozilla Element.attributeNS documentation> 
elementGetAttributeNS ::
                      (IsElement self, ToJSString namespaceURI, ToJSString localName,
                       FromJSString result) =>
                        self -> namespaceURI -> localName -> IO result
elementGetAttributeNS self namespaceURI localName
  = fromJSString <$>
      (ghcjs_dom_element_get_attribute_ns (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe
        "$1[\"setAttributeNS\"]($2, $3, $4)"
        ghcjs_dom_element_set_attribute_ns ::
        JSRef Element -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNS Mozilla Element.attributeNS documentation> 
elementSetAttributeNS ::
                      (IsElement self, ToJSString namespaceURI, ToJSString qualifiedName,
                       ToJSString value) =>
                        self -> namespaceURI -> qualifiedName -> value -> IO ()
elementSetAttributeNS self namespaceURI qualifiedName value
  = ghcjs_dom_element_set_attribute_ns (unElement (toElement self))
      (toJSString namespaceURI)
      (toJSString qualifiedName)
      (toJSString value)
 
foreign import javascript unsafe
        "$1[\"removeAttributeNS\"]($2, $3)"
        ghcjs_dom_element_remove_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNS Mozilla Element.removeAttributeNS documentation> 
elementRemoveAttributeNS ::
                         (IsElement self, ToJSString namespaceURI, ToJSString localName) =>
                           self -> namespaceURI -> localName -> IO ()
elementRemoveAttributeNS self namespaceURI localName
  = ghcjs_dom_element_remove_attribute_ns
      (unElement (toElement self))
      (toJSString namespaceURI)
      (toJSString localName)
 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)"
        ghcjs_dom_element_get_elements_by_tag_name_ns ::
        JSRef Element -> JSString -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.elementsByTagNameNS Mozilla Element.elementsByTagNameNS documentation> 
elementGetElementsByTagNameNS ::
                              (IsElement self, ToJSString namespaceURI, ToJSString localName) =>
                                self -> namespaceURI -> localName -> IO (Maybe NodeList)
elementGetElementsByTagNameNS self namespaceURI localName
  = (ghcjs_dom_element_get_elements_by_tag_name_ns
       (unElement (toElement self))
       (toJSString namespaceURI)
       (toJSString localName))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"getAttributeNodeNS\"]($2, $3)"
        ghcjs_dom_element_get_attribute_node_ns ::
        JSRef Element -> JSString -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNodeNS Mozilla Element.attributeNodeNS documentation> 
elementGetAttributeNodeNS ::
                          (IsElement self, ToJSString namespaceURI, ToJSString localName) =>
                            self -> namespaceURI -> localName -> IO (Maybe DOMAttr)
elementGetAttributeNodeNS self namespaceURI localName
  = (ghcjs_dom_element_get_attribute_node_ns
       (unElement (toElement self))
       (toJSString namespaceURI)
       (toJSString localName))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"setAttributeNodeNS\"]($2)"
        ghcjs_dom_element_set_attribute_node_ns ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNodeNS Mozilla Element.attributeNodeNS documentation> 
elementSetAttributeNodeNS ::
                          (IsElement self, IsDOMAttr newAttr) =>
                            self -> Maybe newAttr -> IO (Maybe DOMAttr)
elementSetAttributeNodeNS self newAttr
  = (ghcjs_dom_element_set_attribute_node_ns
       (unElement (toElement self))
       (maybe jsNull (unDOMAttr . toDOMAttr) newAttr))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"hasAttribute\"]($2) ? 1 : 0)"
        ghcjs_dom_element_has_attribute ::
        JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttribute Mozilla Element.hasAttribute documentation> 
elementHasAttribute ::
                    (IsElement self, ToJSString name) => self -> name -> IO Bool
elementHasAttribute self name
  = ghcjs_dom_element_has_attribute (unElement (toElement self))
      (toJSString name)
 
foreign import javascript unsafe
        "($1[\"hasAttributeNS\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_element_has_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributeNS Mozilla Element.hasAttributeNS documentation> 
elementHasAttributeNS ::
                      (IsElement self, ToJSString namespaceURI, ToJSString localName) =>
                        self -> namespaceURI -> localName -> IO Bool
elementHasAttributeNS self namespaceURI localName
  = ghcjs_dom_element_has_attribute_ns (unElement (toElement self))
      (toJSString namespaceURI)
      (toJSString localName)
 
foreign import javascript unsafe "$1[\"focus\"]()"
        ghcjs_dom_element_focus :: JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.focus Mozilla Element.focus documentation> 
elementFocus :: (IsElement self) => self -> IO ()
elementFocus self
  = ghcjs_dom_element_focus (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"blur\"]()"
        ghcjs_dom_element_blur :: JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.blur Mozilla Element.blur documentation> 
elementBlur :: (IsElement self) => self -> IO ()
elementBlur self
  = ghcjs_dom_element_blur (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"scrollIntoView\"]($2)"
        ghcjs_dom_element_scroll_into_view ::
        JSRef Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoView Mozilla Element.scrollIntoView documentation> 
elementScrollIntoView :: (IsElement self) => self -> Bool -> IO ()
elementScrollIntoView self alignWithTop
  = ghcjs_dom_element_scroll_into_view (unElement (toElement self))
      alignWithTop
 
foreign import javascript unsafe
        "$1[\"scrollIntoViewIfNeeded\"]($2)"
        ghcjs_dom_element_scroll_into_view_if_needed ::
        JSRef Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoViewIfNeeded Mozilla Element.scrollIntoViewIfNeeded documentation> 
elementScrollIntoViewIfNeeded ::
                              (IsElement self) => self -> Bool -> IO ()
elementScrollIntoViewIfNeeded self centerIfNeeded
  = ghcjs_dom_element_scroll_into_view_if_needed
      (unElement (toElement self))
      centerIfNeeded
 
foreign import javascript unsafe "$1[\"scrollByLines\"]($2)"
        ghcjs_dom_element_scroll_by_lines :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByLines Mozilla Element.scrollByLines documentation> 
elementScrollByLines :: (IsElement self) => self -> Int -> IO ()
elementScrollByLines self lines
  = ghcjs_dom_element_scroll_by_lines (unElement (toElement self))
      lines
 
foreign import javascript unsafe "$1[\"scrollByPages\"]($2)"
        ghcjs_dom_element_scroll_by_pages :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByPages Mozilla Element.scrollByPages documentation> 
elementScrollByPages :: (IsElement self) => self -> Int -> IO ()
elementScrollByPages self pages
  = ghcjs_dom_element_scroll_by_pages (unElement (toElement self))
      pages
 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)"
        ghcjs_dom_element_get_elements_by_class_name ::
        JSRef Element -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.elementsByClassName Mozilla Element.elementsByClassName documentation> 
elementGetElementsByClassName ::
                              (IsElement self, ToJSString name) =>
                                self -> name -> IO (Maybe NodeList)
elementGetElementsByClassName self name
  = (ghcjs_dom_element_get_elements_by_class_name
       (unElement (toElement self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        ghcjs_dom_element_query_selector ::
        JSRef Element -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelector Mozilla Element.querySelector documentation> 
elementQuerySelector ::
                     (IsElement self, ToJSString selectors) =>
                       self -> selectors -> IO (Maybe Element)
elementQuerySelector self selectors
  = (ghcjs_dom_element_query_selector (unElement (toElement self))
       (toJSString selectors))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        ghcjs_dom_element_query_selector_all ::
        JSRef Element -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelectorAll Mozilla Element.querySelectorAll documentation> 
elementQuerySelectorAll ::
                        (IsElement self, ToJSString selectors) =>
                          self -> selectors -> IO (Maybe NodeList)
elementQuerySelectorAll self selectors
  = (ghcjs_dom_element_query_selector_all
       (unElement (toElement self))
       (toJSString selectors))
      >>= fromJSRef
 
foreign import javascript unsafe "($1[\"matches\"]($2) ? 1 : 0)"
        ghcjs_dom_element_matches :: JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.matches Mozilla Element.matches documentation> 
elementMatches ::
               (IsElement self, ToJSString selectors) =>
                 self -> selectors -> IO Bool
elementMatches self selectors
  = ghcjs_dom_element_matches (unElement (toElement self))
      (toJSString selectors)
 
foreign import javascript unsafe "$1[\"closest\"]($2)"
        ghcjs_dom_element_closest ::
        JSRef Element -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
elementClosest ::
               (IsElement self, ToJSString selectors) =>
                 self -> selectors -> IO (Maybe Element)
elementClosest self selectors
  = (ghcjs_dom_element_closest (unElement (toElement self))
       (toJSString selectors))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"webkitMatchesSelector\"]($2) ? 1 : 0)"
        ghcjs_dom_element_webkit_matches_selector ::
        JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitMatchesSelector Mozilla Element.webkitMatchesSelector documentation> 
elementWebkitMatchesSelector ::
                             (IsElement self, ToJSString selectors) =>
                               self -> selectors -> IO Bool
elementWebkitMatchesSelector self selectors
  = ghcjs_dom_element_webkit_matches_selector
      (unElement (toElement self))
      (toJSString selectors)
 
foreign import javascript unsafe
        "$1[\"webkitRequestFullScreen\"]($2)"
        ghcjs_dom_element_webkit_request_full_screen ::
        JSRef Element -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullScreen Mozilla Element.webkitRequestFullScreen documentation> 
elementWebkitRequestFullScreen ::
                               (IsElement self) => self -> Word -> IO ()
elementWebkitRequestFullScreen self flags
  = ghcjs_dom_element_webkit_request_full_screen
      (unElement (toElement self))
      flags
 
foreign import javascript unsafe
        "$1[\"webkitRequestFullscreen\"]()"
        ghcjs_dom_element_webkit_request_fullscreen ::
        JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullscreen Mozilla Element.webkitRequestFullscreen documentation> 
elementWebkitRequestFullscreen :: (IsElement self) => self -> IO ()
elementWebkitRequestFullscreen self
  = ghcjs_dom_element_webkit_request_fullscreen
      (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"requestPointerLock\"]()"
        ghcjs_dom_element_request_pointer_lock :: JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.requestPointerLock Mozilla Element.requestPointerLock documentation> 
elementRequestPointerLock :: (IsElement self) => self -> IO ()
elementRequestPointerLock self
  = ghcjs_dom_element_request_pointer_lock
      (unElement (toElement self))
cALLOW_KEYBOARD_INPUT = 1
 
foreign import javascript unsafe "$1[\"tagName\"]"
        ghcjs_dom_element_get_tag_name :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.tagName Mozilla Element.tagName documentation> 
elementGetTagName ::
                  (IsElement self, FromJSString result) => self -> IO result
elementGetTagName self
  = fromJSString <$>
      (ghcjs_dom_element_get_tag_name (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"attributes\"]"
        ghcjs_dom_element_get_attributes ::
        JSRef Element -> IO (JSRef NamedNodeMap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributes Mozilla Element.attributes documentation> 
elementGetAttributes ::
                     (IsElement self) => self -> IO (Maybe NamedNodeMap)
elementGetAttributes self
  = (ghcjs_dom_element_get_attributes (unElement (toElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"style\"]"
        ghcjs_dom_element_get_style ::
        JSRef Element -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.style Mozilla Element.style documentation> 
elementGetStyle ::
                (IsElement self) => self -> IO (Maybe CSSStyleDeclaration)
elementGetStyle self
  = (ghcjs_dom_element_get_style (unElement (toElement self))) >>=
      fromJSRef
 
foreign import javascript unsafe "$1[\"id\"] = $2;"
        ghcjs_dom_element_set_id :: JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
elementSetId ::
             (IsElement self, ToJSString val) => self -> val -> IO ()
elementSetId self val
  = ghcjs_dom_element_set_id (unElement (toElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_element_get_id :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
elementGetId ::
             (IsElement self, FromJSString result) => self -> IO result
elementGetId self
  = fromJSString <$>
      (ghcjs_dom_element_get_id (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"offsetLeft\"]"
        ghcjs_dom_element_get_offset_left :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetLeft Mozilla Element.offsetLeft documentation> 
elementGetOffsetLeft :: (IsElement self) => self -> IO Double
elementGetOffsetLeft self
  = ghcjs_dom_element_get_offset_left (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"offsetTop\"]"
        ghcjs_dom_element_get_offset_top :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetTop Mozilla Element.offsetTop documentation> 
elementGetOffsetTop :: (IsElement self) => self -> IO Double
elementGetOffsetTop self
  = ghcjs_dom_element_get_offset_top (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"offsetWidth\"]"
        ghcjs_dom_element_get_offset_width :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetWidth Mozilla Element.offsetWidth documentation> 
elementGetOffsetWidth :: (IsElement self) => self -> IO Double
elementGetOffsetWidth self
  = ghcjs_dom_element_get_offset_width (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"offsetHeight\"]"
        ghcjs_dom_element_get_offset_height :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetHeight Mozilla Element.offsetHeight documentation> 
elementGetOffsetHeight :: (IsElement self) => self -> IO Double
elementGetOffsetHeight self
  = ghcjs_dom_element_get_offset_height (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"clientLeft\"]"
        ghcjs_dom_element_get_client_left :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientLeft Mozilla Element.clientLeft documentation> 
elementGetClientLeft :: (IsElement self) => self -> IO Double
elementGetClientLeft self
  = ghcjs_dom_element_get_client_left (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"clientTop\"]"
        ghcjs_dom_element_get_client_top :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientTop Mozilla Element.clientTop documentation> 
elementGetClientTop :: (IsElement self) => self -> IO Double
elementGetClientTop self
  = ghcjs_dom_element_get_client_top (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"clientWidth\"]"
        ghcjs_dom_element_get_client_width :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientWidth Mozilla Element.clientWidth documentation> 
elementGetClientWidth :: (IsElement self) => self -> IO Double
elementGetClientWidth self
  = ghcjs_dom_element_get_client_width (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"clientHeight\"]"
        ghcjs_dom_element_get_client_height :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientHeight Mozilla Element.clientHeight documentation> 
elementGetClientHeight :: (IsElement self) => self -> IO Double
elementGetClientHeight self
  = ghcjs_dom_element_get_client_height (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"scrollLeft\"] = $2;"
        ghcjs_dom_element_set_scroll_left :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
elementSetScrollLeft :: (IsElement self) => self -> Int -> IO ()
elementSetScrollLeft self val
  = ghcjs_dom_element_set_scroll_left (unElement (toElement self))
      val
 
foreign import javascript unsafe "$1[\"scrollLeft\"]"
        ghcjs_dom_element_get_scroll_left :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
elementGetScrollLeft :: (IsElement self) => self -> IO Int
elementGetScrollLeft self
  = ghcjs_dom_element_get_scroll_left (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"scrollTop\"] = $2;"
        ghcjs_dom_element_set_scroll_top :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
elementSetScrollTop :: (IsElement self) => self -> Int -> IO ()
elementSetScrollTop self val
  = ghcjs_dom_element_set_scroll_top (unElement (toElement self)) val
 
foreign import javascript unsafe "$1[\"scrollTop\"]"
        ghcjs_dom_element_get_scroll_top :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
elementGetScrollTop :: (IsElement self) => self -> IO Int
elementGetScrollTop self
  = ghcjs_dom_element_get_scroll_top (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"scrollWidth\"]"
        ghcjs_dom_element_get_scroll_width :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollWidth Mozilla Element.scrollWidth documentation> 
elementGetScrollWidth :: (IsElement self) => self -> IO Int
elementGetScrollWidth self
  = ghcjs_dom_element_get_scroll_width (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"scrollHeight\"]"
        ghcjs_dom_element_get_scroll_height :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollHeight Mozilla Element.scrollHeight documentation> 
elementGetScrollHeight :: (IsElement self) => self -> IO Int
elementGetScrollHeight self
  = ghcjs_dom_element_get_scroll_height (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"offsetParent\"]"
        ghcjs_dom_element_get_offset_parent ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetParent Mozilla Element.offsetParent documentation> 
elementGetOffsetParent ::
                       (IsElement self) => self -> IO (Maybe Element)
elementGetOffsetParent self
  = (ghcjs_dom_element_get_offset_parent
       (unElement (toElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"className\"] = $2;"
        ghcjs_dom_element_set_class_name ::
        JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
elementSetClassName ::
                    (IsElement self, ToJSString val) => self -> val -> IO ()
elementSetClassName self val
  = ghcjs_dom_element_set_class_name (unElement (toElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"className\"]"
        ghcjs_dom_element_get_class_name :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
elementGetClassName ::
                    (IsElement self, FromJSString result) => self -> IO result
elementGetClassName self
  = fromJSString <$>
      (ghcjs_dom_element_get_class_name (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"classList\"]"
        ghcjs_dom_element_get_class_list ::
        JSRef Element -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.classList Mozilla Element.classList documentation> 
elementGetClassList ::
                    (IsElement self) => self -> IO (Maybe DOMTokenList)
elementGetClassList self
  = (ghcjs_dom_element_get_class_list (unElement (toElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"firstElementChild\"]"
        ghcjs_dom_element_get_first_element_child ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.firstElementChild Mozilla Element.firstElementChild documentation> 
elementGetFirstElementChild ::
                            (IsElement self) => self -> IO (Maybe Element)
elementGetFirstElementChild self
  = (ghcjs_dom_element_get_first_element_child
       (unElement (toElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"lastElementChild\"]"
        ghcjs_dom_element_get_last_element_child ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.lastElementChild Mozilla Element.lastElementChild documentation> 
elementGetLastElementChild ::
                           (IsElement self) => self -> IO (Maybe Element)
elementGetLastElementChild self
  = (ghcjs_dom_element_get_last_element_child
       (unElement (toElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"previousElementSibling\"]"
        ghcjs_dom_element_get_previous_element_sibling ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.previousElementSibling Mozilla Element.previousElementSibling documentation> 
elementGetPreviousElementSibling ::
                                 (IsElement self) => self -> IO (Maybe Element)
elementGetPreviousElementSibling self
  = (ghcjs_dom_element_get_previous_element_sibling
       (unElement (toElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"nextElementSibling\"]"
        ghcjs_dom_element_get_next_element_sibling ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.nextElementSibling Mozilla Element.nextElementSibling documentation> 
elementGetNextElementSibling ::
                             (IsElement self) => self -> IO (Maybe Element)
elementGetNextElementSibling self
  = (ghcjs_dom_element_get_next_element_sibling
       (unElement (toElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"childElementCount\"]"
        ghcjs_dom_element_get_child_element_count ::
        JSRef Element -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.childElementCount Mozilla Element.childElementCount documentation> 
elementGetChildElementCount :: (IsElement self) => self -> IO Word
elementGetChildElementCount self
  = ghcjs_dom_element_get_child_element_count
      (unElement (toElement self))
 
foreign import javascript unsafe "$1[\"uiactions\"] = $2;"
        ghcjs_dom_element_set_uiactions ::
        JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.uiactions Mozilla Element.uiactions documentation> 
elementSetUiactions ::
                    (IsElement self, ToJSString val) => self -> val -> IO ()
elementSetUiactions self val
  = ghcjs_dom_element_set_uiactions (unElement (toElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"uiactions\"]"
        ghcjs_dom_element_get_uiactions :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.uiactions Mozilla Element.uiactions documentation> 
elementGetUiactions ::
                    (IsElement self, FromJSString result) => self -> IO result
elementGetUiactions self
  = fromJSString <$>
      (ghcjs_dom_element_get_uiactions (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"webkitRegionOverset\"]"
        ghcjs_dom_element_get_webkit_region_overset ::
        JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRegionOverset Mozilla Element.webkitRegionOverset documentation> 
elementGetWebkitRegionOverset ::
                              (IsElement self, FromJSString result) => self -> IO result
elementGetWebkitRegionOverset self
  = fromJSString <$>
      (ghcjs_dom_element_get_webkit_region_overset
         (unElement (toElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onabort Mozilla Element.onabort documentation> 
elementOnabort ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnabort = (connect "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onblur Mozilla Element.onblur documentation> 
elementOnblur ::
              (IsElement self) => Signal self (EventM UIEvent self ())
elementOnblur = (connect "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onchange Mozilla Element.onchange documentation> 
elementOnchange ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnchange = (connect "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onclick Mozilla Element.onclick documentation> 
elementOnclick ::
               (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnclick = (connect "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncontextmenu Mozilla Element.oncontextmenu documentation> 
elementOncontextmenu ::
                     (IsElement self) => Signal self (EventM MouseEvent self ())
elementOncontextmenu = (connect "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondblclick Mozilla Element.ondblclick documentation> 
elementOndblclick ::
                  (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndblclick = (connect "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondrag Mozilla Element.ondrag documentation> 
elementOndrag ::
              (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndrag = (connect "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragend Mozilla Element.ondragend documentation> 
elementOndragend ::
                 (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragend = (connect "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragenter Mozilla Element.ondragenter documentation> 
elementOndragenter ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragenter = (connect "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragleave Mozilla Element.ondragleave documentation> 
elementOndragleave ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragleave = (connect "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragover Mozilla Element.ondragover documentation> 
elementOndragover ::
                  (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragover = (connect "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondragstart Mozilla Element.ondragstart documentation> 
elementOndragstart ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndragstart = (connect "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ondrop Mozilla Element.ondrop documentation> 
elementOndrop ::
              (IsElement self) => Signal self (EventM MouseEvent self ())
elementOndrop = (connect "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onerror Mozilla Element.onerror documentation> 
elementOnerror ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onfocus Mozilla Element.onfocus documentation> 
elementOnfocus ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnfocus = (connect "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oninput Mozilla Element.oninput documentation> 
elementOninput ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOninput = (connect "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oninvalid Mozilla Element.oninvalid documentation> 
elementOninvalid ::
                 (IsElement self) => Signal self (EventM UIEvent self ())
elementOninvalid = (connect "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onkeydown Mozilla Element.onkeydown documentation> 
elementOnkeydown ::
                 (IsElement self) => Signal self (EventM UIEvent self ())
elementOnkeydown = (connect "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onkeypress Mozilla Element.onkeypress documentation> 
elementOnkeypress ::
                  (IsElement self) => Signal self (EventM UIEvent self ())
elementOnkeypress = (connect "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onkeyup Mozilla Element.onkeyup documentation> 
elementOnkeyup ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnkeyup = (connect "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onload Mozilla Element.onload documentation> 
elementOnload ::
              (IsElement self) => Signal self (EventM UIEvent self ())
elementOnload = (connect "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmousedown Mozilla Element.onmousedown documentation> 
elementOnmousedown ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmousedown = (connect "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseenter Mozilla Element.onmouseenter documentation> 
elementOnmouseenter ::
                    (IsElement self) => Signal self (EventM UIEvent self ())
elementOnmouseenter = (connect "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseleave Mozilla Element.onmouseleave documentation> 
elementOnmouseleave ::
                    (IsElement self) => Signal self (EventM UIEvent self ())
elementOnmouseleave = (connect "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmousemove Mozilla Element.onmousemove documentation> 
elementOnmousemove ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmousemove = (connect "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseout Mozilla Element.onmouseout documentation> 
elementOnmouseout ::
                  (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmouseout = (connect "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseover Mozilla Element.onmouseover documentation> 
elementOnmouseover ::
                   (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmouseover = (connect "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmouseup Mozilla Element.onmouseup documentation> 
elementOnmouseup ::
                 (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmouseup = (connect "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onmousewheel Mozilla Element.onmousewheel documentation> 
elementOnmousewheel ::
                    (IsElement self) => Signal self (EventM MouseEvent self ())
elementOnmousewheel = (connect "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onscroll Mozilla Element.onscroll documentation> 
elementOnscroll ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnscroll = (connect "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onselect Mozilla Element.onselect documentation> 
elementOnselect ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnselect = (connect "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onsubmit Mozilla Element.onsubmit documentation> 
elementOnsubmit ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnsubmit = (connect "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwheel Mozilla Element.onwheel documentation> 
elementOnwheel ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnwheel = (connect "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforecut Mozilla Element.onbeforecut documentation> 
elementOnbeforecut ::
                   (IsElement self) => Signal self (EventM UIEvent self ())
elementOnbeforecut = (connect "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncut Mozilla Element.oncut documentation> 
elementOncut ::
             (IsElement self) => Signal self (EventM UIEvent self ())
elementOncut = (connect "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforecopy Mozilla Element.onbeforecopy documentation> 
elementOnbeforecopy ::
                    (IsElement self) => Signal self (EventM UIEvent self ())
elementOnbeforecopy = (connect "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.oncopy Mozilla Element.oncopy documentation> 
elementOncopy ::
              (IsElement self) => Signal self (EventM UIEvent self ())
elementOncopy = (connect "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onbeforepaste Mozilla Element.onbeforepaste documentation> 
elementOnbeforepaste ::
                     (IsElement self) => Signal self (EventM UIEvent self ())
elementOnbeforepaste = (connect "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onpaste Mozilla Element.onpaste documentation> 
elementOnpaste ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnpaste = (connect "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onreset Mozilla Element.onreset documentation> 
elementOnreset ::
               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnreset = (connect "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onsearch Mozilla Element.onsearch documentation> 
elementOnsearch ::
                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnsearch = (connect "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onselectstart Mozilla Element.onselectstart documentation> 
elementOnselectstart ::
                     (IsElement self) => Signal self (EventM UIEvent self ())
elementOnselectstart = (connect "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchstart Mozilla Element.ontouchstart documentation> 
elementOntouchstart ::
                    (IsElement self) => Signal self (EventM UIEvent self ())
elementOntouchstart = (connect "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchmove Mozilla Element.ontouchmove documentation> 
elementOntouchmove ::
                   (IsElement self) => Signal self (EventM UIEvent self ())
elementOntouchmove = (connect "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchend Mozilla Element.ontouchend documentation> 
elementOntouchend ::
                  (IsElement self) => Signal self (EventM UIEvent self ())
elementOntouchend = (connect "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.ontouchcancel Mozilla Element.ontouchcancel documentation> 
elementOntouchcancel ::
                     (IsElement self) => Signal self (EventM UIEvent self ())
elementOntouchcancel = (connect "touchcancel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitfullscreenchange Mozilla Element.onwebkitfullscreenchange documentation> 
elementOnwebkitfullscreenchange ::
                                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnwebkitfullscreenchange
  = (connect "webkitfullscreenchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitfullscreenerror Mozilla Element.onwebkitfullscreenerror documentation> 
elementOnwebkitfullscreenerror ::
                               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnwebkitfullscreenerror = (connect "webkitfullscreenerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealbottom Mozilla Element.onwebkitwillrevealbottom documentation> 
elementOnwebkitwillrevealbottom ::
                                (IsElement self) => Signal self (EventM UIEvent self ())
elementOnwebkitwillrevealbottom
  = (connect "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealleft Mozilla Element.onwebkitwillrevealleft documentation> 
elementOnwebkitwillrevealleft ::
                              (IsElement self) => Signal self (EventM UIEvent self ())
elementOnwebkitwillrevealleft = (connect "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealright Mozilla Element.onwebkitwillrevealright documentation> 
elementOnwebkitwillrevealright ::
                               (IsElement self) => Signal self (EventM UIEvent self ())
elementOnwebkitwillrevealright = (connect "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.onwebkitwillrevealtop Mozilla Element.onwebkitwillrevealtop documentation> 
elementOnwebkitwillrevealtop ::
                             (IsElement self) => Signal self (EventM UIEvent self ())
elementOnwebkitwillrevealtop = (connect "webkitwillrevealtop")
#else
module GHCJS.DOM.Element (
  module Graphics.UI.Gtk.WebKit.DOM.Element
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Element
#endif
