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
        elementGetWebkitRegionOverset, elementAbort, elementBlurEvent,
        elementChange, elementClick, elementContextMenu, elementDblClick,
        elementDrag, elementDragEnd, elementDragEnter, elementDragLeave,
        elementDragOver, elementDragStart, elementDrop, elementError,
        elementFocusEvent, elementInput, elementInvalid, elementKeyDown,
        elementKeyPress, elementKeyUp, elementLoad, elementMouseDown,
        elementMouseEnter, elementMouseLeave, elementMouseMove,
        elementMouseOut, elementMouseOver, elementMouseUp,
        elementMouseWheel, elementScroll, elementSelect, elementSubmit,
        elementWheel, elementBeforeCut, elementCut, elementBeforeCopy,
        elementCopy, elementBeforePaste, elementPaste, elementReset,
        elementSearch, elementSelectStart, elementTouchStart,
        elementTouchMove, elementTouchEnd, elementTouchCancel,
        elementWebKitFullscreenChange, elementWebKitFullscreenError,
        elementWebKitWillRevealBottom, elementWebKitWillRevealLeft,
        elementWebKitWillRevealRight, elementWebKitWillRevealTop, Element,
        IsElement, castToElement, gTypeElement, toElement)
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

 
foreign import javascript unsafe "$1[\"getAttribute\"]($2)"
        ghcjs_dom_element_get_attribute ::
        JSRef Element -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attribute Mozilla Element.attribute documentation> 
elementGetAttribute ::
                    (MonadIO m, IsElement self, ToJSString name,
                     FromJSString result) =>
                      self -> name -> m result
elementGetAttribute self name
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_element_get_attribute (unElement (toElement self))
            (toJSString name)))
 
foreign import javascript unsafe "$1[\"setAttribute\"]($2, $3)"
        ghcjs_dom_element_set_attribute ::
        JSRef Element -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attribute Mozilla Element.attribute documentation> 
elementSetAttribute ::
                    (MonadIO m, IsElement self, ToJSString name, ToJSString value) =>
                      self -> name -> value -> m ()
elementSetAttribute self name value
  = liftIO
      (ghcjs_dom_element_set_attribute (unElement (toElement self))
         (toJSString name)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"removeAttribute\"]($2)"
        ghcjs_dom_element_remove_attribute ::
        JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttribute Mozilla Element.removeAttribute documentation> 
elementRemoveAttribute ::
                       (MonadIO m, IsElement self, ToJSString name) =>
                         self -> name -> m ()
elementRemoveAttribute self name
  = liftIO
      (ghcjs_dom_element_remove_attribute (unElement (toElement self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"getAttributeNode\"]($2)"
        ghcjs_dom_element_get_attribute_node ::
        JSRef Element -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNode Mozilla Element.attributeNode documentation> 
elementGetAttributeNode ::
                        (MonadIO m, IsElement self, ToJSString name) =>
                          self -> name -> m (Maybe DOMAttr)
elementGetAttributeNode self name
  = liftIO
      ((ghcjs_dom_element_get_attribute_node (unElement (toElement self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setAttributeNode\"]($2)"
        ghcjs_dom_element_set_attribute_node ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNode Mozilla Element.attributeNode documentation> 
elementSetAttributeNode ::
                        (MonadIO m, IsElement self, IsDOMAttr newAttr) =>
                          self -> Maybe newAttr -> m (Maybe DOMAttr)
elementSetAttributeNode self newAttr
  = liftIO
      ((ghcjs_dom_element_set_attribute_node (unElement (toElement self))
          (maybe jsNull (unDOMAttr . toDOMAttr) newAttr))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeAttributeNode\"]($2)"
        ghcjs_dom_element_remove_attribute_node ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNode Mozilla Element.removeAttributeNode documentation> 
elementRemoveAttributeNode ::
                           (MonadIO m, IsElement self, IsDOMAttr oldAttr) =>
                             self -> Maybe oldAttr -> m (Maybe DOMAttr)
elementRemoveAttributeNode self oldAttr
  = liftIO
      ((ghcjs_dom_element_remove_attribute_node
          (unElement (toElement self))
          (maybe jsNull (unDOMAttr . toDOMAttr) oldAttr))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getElementsByTagName\"]($2)"
        ghcjs_dom_element_get_elements_by_tag_name ::
        JSRef Element -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.elementsByTagName Mozilla Element.elementsByTagName documentation> 
elementGetElementsByTagName ::
                            (MonadIO m, IsElement self, ToJSString name) =>
                              self -> name -> m (Maybe NodeList)
elementGetElementsByTagName self name
  = liftIO
      ((ghcjs_dom_element_get_elements_by_tag_name
          (unElement (toElement self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"hasAttributes\"]() ? 1 : 0)"
        ghcjs_dom_element_has_attributes :: JSRef Element -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributes Mozilla Element.hasAttributes documentation> 
elementHasAttributes ::
                     (MonadIO m, IsElement self) => self -> m Bool
elementHasAttributes self
  = liftIO
      (ghcjs_dom_element_has_attributes (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"getAttributeNS\"]($2, $3)"
        ghcjs_dom_element_get_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNS Mozilla Element.attributeNS documentation> 
elementGetAttributeNS ::
                      (MonadIO m, IsElement self, ToJSString namespaceURI,
                       ToJSString localName, FromJSString result) =>
                        self -> namespaceURI -> localName -> m result
elementGetAttributeNS self namespaceURI localName
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_element_get_attribute_ns (unElement (toElement self))
            (toJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe
        "$1[\"setAttributeNS\"]($2, $3, $4)"
        ghcjs_dom_element_set_attribute_ns ::
        JSRef Element -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNS Mozilla Element.attributeNS documentation> 
elementSetAttributeNS ::
                      (MonadIO m, IsElement self, ToJSString namespaceURI,
                       ToJSString qualifiedName, ToJSString value) =>
                        self -> namespaceURI -> qualifiedName -> value -> m ()
elementSetAttributeNS self namespaceURI qualifiedName value
  = liftIO
      (ghcjs_dom_element_set_attribute_ns (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString qualifiedName)
         (toJSString value))
 
foreign import javascript unsafe
        "$1[\"removeAttributeNS\"]($2, $3)"
        ghcjs_dom_element_remove_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.removeAttributeNS Mozilla Element.removeAttributeNS documentation> 
elementRemoveAttributeNS ::
                         (MonadIO m, IsElement self, ToJSString namespaceURI,
                          ToJSString localName) =>
                           self -> namespaceURI -> localName -> m ()
elementRemoveAttributeNS self namespaceURI localName
  = liftIO
      (ghcjs_dom_element_remove_attribute_ns (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe
        "$1[\"getElementsByTagNameNS\"]($2,\n$3)"
        ghcjs_dom_element_get_elements_by_tag_name_ns ::
        JSRef Element -> JSString -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.elementsByTagNameNS Mozilla Element.elementsByTagNameNS documentation> 
elementGetElementsByTagNameNS ::
                              (MonadIO m, IsElement self, ToJSString namespaceURI,
                               ToJSString localName) =>
                                self -> namespaceURI -> localName -> m (Maybe NodeList)
elementGetElementsByTagNameNS self namespaceURI localName
  = liftIO
      ((ghcjs_dom_element_get_elements_by_tag_name_ns
          (unElement (toElement self))
          (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getAttributeNodeNS\"]($2, $3)"
        ghcjs_dom_element_get_attribute_node_ns ::
        JSRef Element -> JSString -> JSString -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNodeNS Mozilla Element.attributeNodeNS documentation> 
elementGetAttributeNodeNS ::
                          (MonadIO m, IsElement self, ToJSString namespaceURI,
                           ToJSString localName) =>
                            self -> namespaceURI -> localName -> m (Maybe DOMAttr)
elementGetAttributeNodeNS self namespaceURI localName
  = liftIO
      ((ghcjs_dom_element_get_attribute_node_ns
          (unElement (toElement self))
          (toJSString namespaceURI)
          (toJSString localName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setAttributeNodeNS\"]($2)"
        ghcjs_dom_element_set_attribute_node_ns ::
        JSRef Element -> JSRef DOMAttr -> IO (JSRef DOMAttr)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributeNodeNS Mozilla Element.attributeNodeNS documentation> 
elementSetAttributeNodeNS ::
                          (MonadIO m, IsElement self, IsDOMAttr newAttr) =>
                            self -> Maybe newAttr -> m (Maybe DOMAttr)
elementSetAttributeNodeNS self newAttr
  = liftIO
      ((ghcjs_dom_element_set_attribute_node_ns
          (unElement (toElement self))
          (maybe jsNull (unDOMAttr . toDOMAttr) newAttr))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"hasAttribute\"]($2) ? 1 : 0)"
        ghcjs_dom_element_has_attribute ::
        JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttribute Mozilla Element.hasAttribute documentation> 
elementHasAttribute ::
                    (MonadIO m, IsElement self, ToJSString name) =>
                      self -> name -> m Bool
elementHasAttribute self name
  = liftIO
      (ghcjs_dom_element_has_attribute (unElement (toElement self))
         (toJSString name))
 
foreign import javascript unsafe
        "($1[\"hasAttributeNS\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_element_has_attribute_ns ::
        JSRef Element -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.hasAttributeNS Mozilla Element.hasAttributeNS documentation> 
elementHasAttributeNS ::
                      (MonadIO m, IsElement self, ToJSString namespaceURI,
                       ToJSString localName) =>
                        self -> namespaceURI -> localName -> m Bool
elementHasAttributeNS self namespaceURI localName
  = liftIO
      (ghcjs_dom_element_has_attribute_ns (unElement (toElement self))
         (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe "$1[\"focus\"]()"
        ghcjs_dom_element_focus :: JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.focus Mozilla Element.focus documentation> 
elementFocus :: (MonadIO m, IsElement self) => self -> m ()
elementFocus self
  = liftIO (ghcjs_dom_element_focus (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"blur\"]()"
        ghcjs_dom_element_blur :: JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.blur Mozilla Element.blur documentation> 
elementBlur :: (MonadIO m, IsElement self) => self -> m ()
elementBlur self
  = liftIO (ghcjs_dom_element_blur (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollIntoView\"]($2)"
        ghcjs_dom_element_scroll_into_view ::
        JSRef Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoView Mozilla Element.scrollIntoView documentation> 
elementScrollIntoView ::
                      (MonadIO m, IsElement self) => self -> Bool -> m ()
elementScrollIntoView self alignWithTop
  = liftIO
      (ghcjs_dom_element_scroll_into_view (unElement (toElement self))
         alignWithTop)
 
foreign import javascript unsafe
        "$1[\"scrollIntoViewIfNeeded\"]($2)"
        ghcjs_dom_element_scroll_into_view_if_needed ::
        JSRef Element -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollIntoViewIfNeeded Mozilla Element.scrollIntoViewIfNeeded documentation> 
elementScrollIntoViewIfNeeded ::
                              (MonadIO m, IsElement self) => self -> Bool -> m ()
elementScrollIntoViewIfNeeded self centerIfNeeded
  = liftIO
      (ghcjs_dom_element_scroll_into_view_if_needed
         (unElement (toElement self))
         centerIfNeeded)
 
foreign import javascript unsafe "$1[\"scrollByLines\"]($2)"
        ghcjs_dom_element_scroll_by_lines :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByLines Mozilla Element.scrollByLines documentation> 
elementScrollByLines ::
                     (MonadIO m, IsElement self) => self -> Int -> m ()
elementScrollByLines self lines
  = liftIO
      (ghcjs_dom_element_scroll_by_lines (unElement (toElement self))
         lines)
 
foreign import javascript unsafe "$1[\"scrollByPages\"]($2)"
        ghcjs_dom_element_scroll_by_pages :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollByPages Mozilla Element.scrollByPages documentation> 
elementScrollByPages ::
                     (MonadIO m, IsElement self) => self -> Int -> m ()
elementScrollByPages self pages
  = liftIO
      (ghcjs_dom_element_scroll_by_pages (unElement (toElement self))
         pages)
 
foreign import javascript unsafe
        "$1[\"getElementsByClassName\"]($2)"
        ghcjs_dom_element_get_elements_by_class_name ::
        JSRef Element -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.elementsByClassName Mozilla Element.elementsByClassName documentation> 
elementGetElementsByClassName ::
                              (MonadIO m, IsElement self, ToJSString name) =>
                                self -> name -> m (Maybe NodeList)
elementGetElementsByClassName self name
  = liftIO
      ((ghcjs_dom_element_get_elements_by_class_name
          (unElement (toElement self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"querySelector\"]($2)"
        ghcjs_dom_element_query_selector ::
        JSRef Element -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelector Mozilla Element.querySelector documentation> 
elementQuerySelector ::
                     (MonadIO m, IsElement self, ToJSString selectors) =>
                       self -> selectors -> m (Maybe Element)
elementQuerySelector self selectors
  = liftIO
      ((ghcjs_dom_element_query_selector (unElement (toElement self))
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"querySelectorAll\"]($2)"
        ghcjs_dom_element_query_selector_all ::
        JSRef Element -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.querySelectorAll Mozilla Element.querySelectorAll documentation> 
elementQuerySelectorAll ::
                        (MonadIO m, IsElement self, ToJSString selectors) =>
                          self -> selectors -> m (Maybe NodeList)
elementQuerySelectorAll self selectors
  = liftIO
      ((ghcjs_dom_element_query_selector_all (unElement (toElement self))
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"matches\"]($2) ? 1 : 0)"
        ghcjs_dom_element_matches :: JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.matches Mozilla Element.matches documentation> 
elementMatches ::
               (MonadIO m, IsElement self, ToJSString selectors) =>
                 self -> selectors -> m Bool
elementMatches self selectors
  = liftIO
      (ghcjs_dom_element_matches (unElement (toElement self))
         (toJSString selectors))
 
foreign import javascript unsafe "$1[\"closest\"]($2)"
        ghcjs_dom_element_closest ::
        JSRef Element -> JSString -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.closest Mozilla Element.closest documentation> 
elementClosest ::
               (MonadIO m, IsElement self, ToJSString selectors) =>
                 self -> selectors -> m (Maybe Element)
elementClosest self selectors
  = liftIO
      ((ghcjs_dom_element_closest (unElement (toElement self))
          (toJSString selectors))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"webkitMatchesSelector\"]($2) ? 1 : 0)"
        ghcjs_dom_element_webkit_matches_selector ::
        JSRef Element -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitMatchesSelector Mozilla Element.webkitMatchesSelector documentation> 
elementWebkitMatchesSelector ::
                             (MonadIO m, IsElement self, ToJSString selectors) =>
                               self -> selectors -> m Bool
elementWebkitMatchesSelector self selectors
  = liftIO
      (ghcjs_dom_element_webkit_matches_selector
         (unElement (toElement self))
         (toJSString selectors))
 
foreign import javascript unsafe
        "$1[\"webkitRequestFullScreen\"]($2)"
        ghcjs_dom_element_webkit_request_full_screen ::
        JSRef Element -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullScreen Mozilla Element.webkitRequestFullScreen documentation> 
elementWebkitRequestFullScreen ::
                               (MonadIO m, IsElement self) => self -> Word -> m ()
elementWebkitRequestFullScreen self flags
  = liftIO
      (ghcjs_dom_element_webkit_request_full_screen
         (unElement (toElement self))
         flags)
 
foreign import javascript unsafe
        "$1[\"webkitRequestFullscreen\"]()"
        ghcjs_dom_element_webkit_request_fullscreen ::
        JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRequestFullscreen Mozilla Element.webkitRequestFullscreen documentation> 
elementWebkitRequestFullscreen ::
                               (MonadIO m, IsElement self) => self -> m ()
elementWebkitRequestFullscreen self
  = liftIO
      (ghcjs_dom_element_webkit_request_fullscreen
         (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"requestPointerLock\"]()"
        ghcjs_dom_element_request_pointer_lock :: JSRef Element -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.requestPointerLock Mozilla Element.requestPointerLock documentation> 
elementRequestPointerLock ::
                          (MonadIO m, IsElement self) => self -> m ()
elementRequestPointerLock self
  = liftIO
      (ghcjs_dom_element_request_pointer_lock
         (unElement (toElement self)))
cALLOW_KEYBOARD_INPUT = 1
 
foreign import javascript unsafe "$1[\"tagName\"]"
        ghcjs_dom_element_get_tag_name :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.tagName Mozilla Element.tagName documentation> 
elementGetTagName ::
                  (MonadIO m, IsElement self, FromJSString result) =>
                    self -> m result
elementGetTagName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_element_get_tag_name (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"attributes\"]"
        ghcjs_dom_element_get_attributes ::
        JSRef Element -> IO (JSRef NamedNodeMap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.attributes Mozilla Element.attributes documentation> 
elementGetAttributes ::
                     (MonadIO m, IsElement self) => self -> m (Maybe NamedNodeMap)
elementGetAttributes self
  = liftIO
      ((ghcjs_dom_element_get_attributes (unElement (toElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"style\"]"
        ghcjs_dom_element_get_style ::
        JSRef Element -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.style Mozilla Element.style documentation> 
elementGetStyle ::
                (MonadIO m, IsElement self) =>
                  self -> m (Maybe CSSStyleDeclaration)
elementGetStyle self
  = liftIO
      ((ghcjs_dom_element_get_style (unElement (toElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"id\"] = $2;"
        ghcjs_dom_element_set_id :: JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
elementSetId ::
             (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
elementSetId self val
  = liftIO
      (ghcjs_dom_element_set_id (unElement (toElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_element_get_id :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.id Mozilla Element.id documentation> 
elementGetId ::
             (MonadIO m, IsElement self, FromJSString result) =>
               self -> m result
elementGetId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_element_get_id (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"offsetLeft\"]"
        ghcjs_dom_element_get_offset_left :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetLeft Mozilla Element.offsetLeft documentation> 
elementGetOffsetLeft ::
                     (MonadIO m, IsElement self) => self -> m Double
elementGetOffsetLeft self
  = liftIO
      (ghcjs_dom_element_get_offset_left (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"offsetTop\"]"
        ghcjs_dom_element_get_offset_top :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetTop Mozilla Element.offsetTop documentation> 
elementGetOffsetTop ::
                    (MonadIO m, IsElement self) => self -> m Double
elementGetOffsetTop self
  = liftIO
      (ghcjs_dom_element_get_offset_top (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"offsetWidth\"]"
        ghcjs_dom_element_get_offset_width :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetWidth Mozilla Element.offsetWidth documentation> 
elementGetOffsetWidth ::
                      (MonadIO m, IsElement self) => self -> m Double
elementGetOffsetWidth self
  = liftIO
      (ghcjs_dom_element_get_offset_width (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"offsetHeight\"]"
        ghcjs_dom_element_get_offset_height :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetHeight Mozilla Element.offsetHeight documentation> 
elementGetOffsetHeight ::
                       (MonadIO m, IsElement self) => self -> m Double
elementGetOffsetHeight self
  = liftIO
      (ghcjs_dom_element_get_offset_height (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"clientLeft\"]"
        ghcjs_dom_element_get_client_left :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientLeft Mozilla Element.clientLeft documentation> 
elementGetClientLeft ::
                     (MonadIO m, IsElement self) => self -> m Double
elementGetClientLeft self
  = liftIO
      (ghcjs_dom_element_get_client_left (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"clientTop\"]"
        ghcjs_dom_element_get_client_top :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientTop Mozilla Element.clientTop documentation> 
elementGetClientTop ::
                    (MonadIO m, IsElement self) => self -> m Double
elementGetClientTop self
  = liftIO
      (ghcjs_dom_element_get_client_top (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"clientWidth\"]"
        ghcjs_dom_element_get_client_width :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientWidth Mozilla Element.clientWidth documentation> 
elementGetClientWidth ::
                      (MonadIO m, IsElement self) => self -> m Double
elementGetClientWidth self
  = liftIO
      (ghcjs_dom_element_get_client_width (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"clientHeight\"]"
        ghcjs_dom_element_get_client_height :: JSRef Element -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.clientHeight Mozilla Element.clientHeight documentation> 
elementGetClientHeight ::
                       (MonadIO m, IsElement self) => self -> m Double
elementGetClientHeight self
  = liftIO
      (ghcjs_dom_element_get_client_height (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollLeft\"] = $2;"
        ghcjs_dom_element_set_scroll_left :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
elementSetScrollLeft ::
                     (MonadIO m, IsElement self) => self -> Int -> m ()
elementSetScrollLeft self val
  = liftIO
      (ghcjs_dom_element_set_scroll_left (unElement (toElement self))
         val)
 
foreign import javascript unsafe "$1[\"scrollLeft\"]"
        ghcjs_dom_element_get_scroll_left :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollLeft Mozilla Element.scrollLeft documentation> 
elementGetScrollLeft ::
                     (MonadIO m, IsElement self) => self -> m Int
elementGetScrollLeft self
  = liftIO
      (ghcjs_dom_element_get_scroll_left (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollTop\"] = $2;"
        ghcjs_dom_element_set_scroll_top :: JSRef Element -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
elementSetScrollTop ::
                    (MonadIO m, IsElement self) => self -> Int -> m ()
elementSetScrollTop self val
  = liftIO
      (ghcjs_dom_element_set_scroll_top (unElement (toElement self)) val)
 
foreign import javascript unsafe "$1[\"scrollTop\"]"
        ghcjs_dom_element_get_scroll_top :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollTop Mozilla Element.scrollTop documentation> 
elementGetScrollTop :: (MonadIO m, IsElement self) => self -> m Int
elementGetScrollTop self
  = liftIO
      (ghcjs_dom_element_get_scroll_top (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollWidth\"]"
        ghcjs_dom_element_get_scroll_width :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollWidth Mozilla Element.scrollWidth documentation> 
elementGetScrollWidth ::
                      (MonadIO m, IsElement self) => self -> m Int
elementGetScrollWidth self
  = liftIO
      (ghcjs_dom_element_get_scroll_width (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"scrollHeight\"]"
        ghcjs_dom_element_get_scroll_height :: JSRef Element -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scrollHeight Mozilla Element.scrollHeight documentation> 
elementGetScrollHeight ::
                       (MonadIO m, IsElement self) => self -> m Int
elementGetScrollHeight self
  = liftIO
      (ghcjs_dom_element_get_scroll_height (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"offsetParent\"]"
        ghcjs_dom_element_get_offset_parent ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.offsetParent Mozilla Element.offsetParent documentation> 
elementGetOffsetParent ::
                       (MonadIO m, IsElement self) => self -> m (Maybe Element)
elementGetOffsetParent self
  = liftIO
      ((ghcjs_dom_element_get_offset_parent (unElement (toElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"className\"] = $2;"
        ghcjs_dom_element_set_class_name ::
        JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
elementSetClassName ::
                    (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
elementSetClassName self val
  = liftIO
      (ghcjs_dom_element_set_class_name (unElement (toElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"className\"]"
        ghcjs_dom_element_get_class_name :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.className Mozilla Element.className documentation> 
elementGetClassName ::
                    (MonadIO m, IsElement self, FromJSString result) =>
                      self -> m result
elementGetClassName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_element_get_class_name (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"classList\"]"
        ghcjs_dom_element_get_class_list ::
        JSRef Element -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.classList Mozilla Element.classList documentation> 
elementGetClassList ::
                    (MonadIO m, IsElement self) => self -> m (Maybe DOMTokenList)
elementGetClassList self
  = liftIO
      ((ghcjs_dom_element_get_class_list (unElement (toElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"firstElementChild\"]"
        ghcjs_dom_element_get_first_element_child ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.firstElementChild Mozilla Element.firstElementChild documentation> 
elementGetFirstElementChild ::
                            (MonadIO m, IsElement self) => self -> m (Maybe Element)
elementGetFirstElementChild self
  = liftIO
      ((ghcjs_dom_element_get_first_element_child
          (unElement (toElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lastElementChild\"]"
        ghcjs_dom_element_get_last_element_child ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.lastElementChild Mozilla Element.lastElementChild documentation> 
elementGetLastElementChild ::
                           (MonadIO m, IsElement self) => self -> m (Maybe Element)
elementGetLastElementChild self
  = liftIO
      ((ghcjs_dom_element_get_last_element_child
          (unElement (toElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousElementSibling\"]"
        ghcjs_dom_element_get_previous_element_sibling ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.previousElementSibling Mozilla Element.previousElementSibling documentation> 
elementGetPreviousElementSibling ::
                                 (MonadIO m, IsElement self) => self -> m (Maybe Element)
elementGetPreviousElementSibling self
  = liftIO
      ((ghcjs_dom_element_get_previous_element_sibling
          (unElement (toElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nextElementSibling\"]"
        ghcjs_dom_element_get_next_element_sibling ::
        JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.nextElementSibling Mozilla Element.nextElementSibling documentation> 
elementGetNextElementSibling ::
                             (MonadIO m, IsElement self) => self -> m (Maybe Element)
elementGetNextElementSibling self
  = liftIO
      ((ghcjs_dom_element_get_next_element_sibling
          (unElement (toElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"childElementCount\"]"
        ghcjs_dom_element_get_child_element_count ::
        JSRef Element -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.childElementCount Mozilla Element.childElementCount documentation> 
elementGetChildElementCount ::
                            (MonadIO m, IsElement self) => self -> m Word
elementGetChildElementCount self
  = liftIO
      (ghcjs_dom_element_get_child_element_count
         (unElement (toElement self)))
 
foreign import javascript unsafe "$1[\"uiactions\"] = $2;"
        ghcjs_dom_element_set_uiactions ::
        JSRef Element -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.uiactions Mozilla Element.uiactions documentation> 
elementSetUiactions ::
                    (MonadIO m, IsElement self, ToJSString val) => self -> val -> m ()
elementSetUiactions self val
  = liftIO
      (ghcjs_dom_element_set_uiactions (unElement (toElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"uiactions\"]"
        ghcjs_dom_element_get_uiactions :: JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.uiactions Mozilla Element.uiactions documentation> 
elementGetUiactions ::
                    (MonadIO m, IsElement self, FromJSString result) =>
                      self -> m result
elementGetUiactions self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_element_get_uiactions (unElement (toElement self))))
 
foreign import javascript unsafe "$1[\"webkitRegionOverset\"]"
        ghcjs_dom_element_get_webkit_region_overset ::
        JSRef Element -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webkitRegionOverset Mozilla Element.webkitRegionOverset documentation> 
elementGetWebkitRegionOverset ::
                              (MonadIO m, IsElement self, FromJSString result) =>
                                self -> m result
elementGetWebkitRegionOverset self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_element_get_webkit_region_overset
            (unElement (toElement self))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.abort Mozilla Element.abort documentation> 
elementAbort ::
             (IsElement self, IsEventTarget self) => EventName self UIEvent
elementAbort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.blurEvent Mozilla Element.blurEvent documentation> 
elementBlurEvent ::
                 (IsElement self, IsEventTarget self) => EventName self FocusEvent
elementBlurEvent = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.change Mozilla Element.change documentation> 
elementChange ::
              (IsElement self, IsEventTarget self) => EventName self Event
elementChange = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.click Mozilla Element.click documentation> 
elementClick ::
             (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementClick = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.contextMenu Mozilla Element.contextMenu documentation> 
elementContextMenu ::
                   (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementContextMenu = unsafeEventName (toJSString "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.dblClick Mozilla Element.dblClick documentation> 
elementDblClick ::
                (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementDblClick = unsafeEventName (toJSString "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.drag Mozilla Element.drag documentation> 
elementDrag ::
            (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementDrag = unsafeEventName (toJSString "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.dragEnd Mozilla Element.dragEnd documentation> 
elementDragEnd ::
               (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementDragEnd = unsafeEventName (toJSString "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.dragEnter Mozilla Element.dragEnter documentation> 
elementDragEnter ::
                 (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementDragEnter = unsafeEventName (toJSString "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.dragLeave Mozilla Element.dragLeave documentation> 
elementDragLeave ::
                 (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementDragLeave = unsafeEventName (toJSString "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.dragOver Mozilla Element.dragOver documentation> 
elementDragOver ::
                (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementDragOver = unsafeEventName (toJSString "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.dragStart Mozilla Element.dragStart documentation> 
elementDragStart ::
                 (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementDragStart = unsafeEventName (toJSString "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.drop Mozilla Element.drop documentation> 
elementDrop ::
            (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementDrop = unsafeEventName (toJSString "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.error Mozilla Element.error documentation> 
elementError ::
             (IsElement self, IsEventTarget self) => EventName self UIEvent
elementError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.focusEvent Mozilla Element.focusEvent documentation> 
elementFocusEvent ::
                  (IsElement self, IsEventTarget self) => EventName self FocusEvent
elementFocusEvent = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.input Mozilla Element.input documentation> 
elementInput ::
             (IsElement self, IsEventTarget self) => EventName self Event
elementInput = unsafeEventName (toJSString "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.invalid Mozilla Element.invalid documentation> 
elementInvalid ::
               (IsElement self, IsEventTarget self) => EventName self Event
elementInvalid = unsafeEventName (toJSString "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.keyDown Mozilla Element.keyDown documentation> 
elementKeyDown ::
               (IsElement self, IsEventTarget self) =>
                 EventName self KeyboardEvent
elementKeyDown = unsafeEventName (toJSString "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.keyPress Mozilla Element.keyPress documentation> 
elementKeyPress ::
                (IsElement self, IsEventTarget self) =>
                  EventName self KeyboardEvent
elementKeyPress = unsafeEventName (toJSString "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.keyUp Mozilla Element.keyUp documentation> 
elementKeyUp ::
             (IsElement self, IsEventTarget self) =>
               EventName self KeyboardEvent
elementKeyUp = unsafeEventName (toJSString "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.load Mozilla Element.load documentation> 
elementLoad ::
            (IsElement self, IsEventTarget self) => EventName self UIEvent
elementLoad = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.mouseDown Mozilla Element.mouseDown documentation> 
elementMouseDown ::
                 (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementMouseDown = unsafeEventName (toJSString "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.mouseEnter Mozilla Element.mouseEnter documentation> 
elementMouseEnter ::
                  (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementMouseEnter = unsafeEventName (toJSString "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.mouseLeave Mozilla Element.mouseLeave documentation> 
elementMouseLeave ::
                  (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementMouseLeave = unsafeEventName (toJSString "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.mouseMove Mozilla Element.mouseMove documentation> 
elementMouseMove ::
                 (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementMouseMove = unsafeEventName (toJSString "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.mouseOut Mozilla Element.mouseOut documentation> 
elementMouseOut ::
                (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementMouseOut = unsafeEventName (toJSString "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.mouseOver Mozilla Element.mouseOver documentation> 
elementMouseOver ::
                 (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementMouseOver = unsafeEventName (toJSString "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.mouseUp Mozilla Element.mouseUp documentation> 
elementMouseUp ::
               (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementMouseUp = unsafeEventName (toJSString "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.mouseWheel Mozilla Element.mouseWheel documentation> 
elementMouseWheel ::
                  (IsElement self, IsEventTarget self) => EventName self MouseEvent
elementMouseWheel = unsafeEventName (toJSString "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.scroll Mozilla Element.scroll documentation> 
elementScroll ::
              (IsElement self, IsEventTarget self) => EventName self UIEvent
elementScroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.select Mozilla Element.select documentation> 
elementSelect ::
              (IsElement self, IsEventTarget self) => EventName self UIEvent
elementSelect = unsafeEventName (toJSString "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.submit Mozilla Element.submit documentation> 
elementSubmit ::
              (IsElement self, IsEventTarget self) => EventName self Event
elementSubmit = unsafeEventName (toJSString "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.wheel Mozilla Element.wheel documentation> 
elementWheel ::
             (IsElement self, IsEventTarget self) => EventName self WheelEvent
elementWheel = unsafeEventName (toJSString "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.beforeCut Mozilla Element.beforeCut documentation> 
elementBeforeCut ::
                 (IsElement self, IsEventTarget self) => EventName self Event
elementBeforeCut = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.cut Mozilla Element.cut documentation> 
elementCut ::
           (IsElement self, IsEventTarget self) => EventName self Event
elementCut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.beforeCopy Mozilla Element.beforeCopy documentation> 
elementBeforeCopy ::
                  (IsElement self, IsEventTarget self) => EventName self Event
elementBeforeCopy = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.copy Mozilla Element.copy documentation> 
elementCopy ::
            (IsElement self, IsEventTarget self) => EventName self Event
elementCopy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.beforePaste Mozilla Element.beforePaste documentation> 
elementBeforePaste ::
                   (IsElement self, IsEventTarget self) => EventName self Event
elementBeforePaste = unsafeEventName (toJSString "beforepaste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.paste Mozilla Element.paste documentation> 
elementPaste ::
             (IsElement self, IsEventTarget self) => EventName self Event
elementPaste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.reset Mozilla Element.reset documentation> 
elementReset ::
             (IsElement self, IsEventTarget self) => EventName self Event
elementReset = unsafeEventName (toJSString "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.search Mozilla Element.search documentation> 
elementSearch ::
              (IsElement self, IsEventTarget self) => EventName self Event
elementSearch = unsafeEventName (toJSString "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.selectStart Mozilla Element.selectStart documentation> 
elementSelectStart ::
                   (IsElement self, IsEventTarget self) => EventName self Event
elementSelectStart = unsafeEventName (toJSString "selectstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.touchStart Mozilla Element.touchStart documentation> 
elementTouchStart ::
                  (IsElement self, IsEventTarget self) => EventName self TouchEvent
elementTouchStart = unsafeEventName (toJSString "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.touchMove Mozilla Element.touchMove documentation> 
elementTouchMove ::
                 (IsElement self, IsEventTarget self) => EventName self TouchEvent
elementTouchMove = unsafeEventName (toJSString "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.touchEnd Mozilla Element.touchEnd documentation> 
elementTouchEnd ::
                (IsElement self, IsEventTarget self) => EventName self TouchEvent
elementTouchEnd = unsafeEventName (toJSString "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.touchCancel Mozilla Element.touchCancel documentation> 
elementTouchCancel ::
                   (IsElement self, IsEventTarget self) => EventName self TouchEvent
elementTouchCancel = unsafeEventName (toJSString "touchcancel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webKitFullscreenChange Mozilla Element.webKitFullscreenChange documentation> 
elementWebKitFullscreenChange ::
                              (IsElement self, IsEventTarget self) => EventName self Event
elementWebKitFullscreenChange
  = unsafeEventName (toJSString "webkitfullscreenchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webKitFullscreenError Mozilla Element.webKitFullscreenError documentation> 
elementWebKitFullscreenError ::
                             (IsElement self, IsEventTarget self) => EventName self Event
elementWebKitFullscreenError
  = unsafeEventName (toJSString "webkitfullscreenerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webKitWillRevealBottom Mozilla Element.webKitWillRevealBottom documentation> 
elementWebKitWillRevealBottom ::
                              (IsElement self, IsEventTarget self) => EventName self Event
elementWebKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webKitWillRevealLeft Mozilla Element.webKitWillRevealLeft documentation> 
elementWebKitWillRevealLeft ::
                            (IsElement self, IsEventTarget self) => EventName self Event
elementWebKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webKitWillRevealRight Mozilla Element.webKitWillRevealRight documentation> 
elementWebKitWillRevealRight ::
                             (IsElement self, IsEventTarget self) => EventName self Event
elementWebKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Element.webKitWillRevealTop Mozilla Element.webKitWillRevealTop documentation> 
elementWebKitWillRevealTop ::
                           (IsElement self, IsEventTarget self) => EventName self Event
elementWebKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")
#else
module GHCJS.DOM.Element (
  module Graphics.UI.Gtk.WebKit.DOM.Element
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Element
#endif
