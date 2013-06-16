{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMSelection
       (webkit_dom_dom_selection_collapse, domSelectionCollapse,
        webkit_dom_dom_selection_collapse_to_end,
        domSelectionCollapseToEnd,
        webkit_dom_dom_selection_collapse_to_start,
        domSelectionCollapseToStart,
        webkit_dom_dom_selection_delete_from_document,
        domSelectionDeleteFromDocument,
        webkit_dom_dom_selection_contains_node, domSelectionContainsNode,
        webkit_dom_dom_selection_select_all_children,
        domSelectionSelectAllChildren, webkit_dom_dom_selection_extend,
        domSelectionExtend, webkit_dom_dom_selection_get_range_at,
        domSelectionGetRangeAt, webkit_dom_dom_selection_remove_all_ranges,
        domSelectionRemoveAllRanges, webkit_dom_dom_selection_add_range,
        domSelectionAddRange, webkit_dom_dom_selection_modify,
        domSelectionModify, webkit_dom_dom_selection_set_base_and_extent,
        domSelectionSetBaseAndExtent,
        webkit_dom_dom_selection_set_position, domSelectionSetPosition,
        webkit_dom_dom_selection_empty, domSelectionEmpty,
        webkit_dom_dom_selection_get_anchor_node,
        domSelectionGetAnchorNode,
        webkit_dom_dom_selection_get_anchor_offset,
        domSelectionGetAnchorOffset,
        webkit_dom_dom_selection_get_focus_node, domSelectionGetFocusNode,
        webkit_dom_dom_selection_get_focus_offset,
        domSelectionGetFocusOffset,
        webkit_dom_dom_selection_get_is_collapsed,
        domSelectionGetIsCollapsed,
        webkit_dom_dom_selection_get_range_count,
        domSelectionGetRangeCount, webkit_dom_dom_selection_get_base_node,
        domSelectionGetBaseNode, webkit_dom_dom_selection_get_base_offset,
        domSelectionGetBaseOffset,
        webkit_dom_dom_selection_get_extent_node,
        domSelectionGetExtentNode,
        webkit_dom_dom_selection_get_extent_offset,
        domSelectionGetExtentOffset)
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
foreign import javascript unsafe "$1[\"collapse\"]($2, $3)"
        webkit_dom_dom_selection_collapse ::
        JSRef DOMSelection -> JSRef Node -> Int -> IO ()
#else 
webkit_dom_dom_selection_collapse ::
                                    JSRef DOMSelection -> JSRef Node -> Int -> IO ()
webkit_dom_dom_selection_collapse = undefined
#endif
 
domSelectionCollapse ::
                     (DOMSelectionClass self, NodeClass node) =>
                       self -> Maybe node -> Int -> IO ()
domSelectionCollapse self node index
  = webkit_dom_dom_selection_collapse
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) node)
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"collapseToEnd\"]()"
        webkit_dom_dom_selection_collapse_to_end ::
        JSRef DOMSelection -> IO ()
#else 
webkit_dom_dom_selection_collapse_to_end ::
                                           JSRef DOMSelection -> IO ()
webkit_dom_dom_selection_collapse_to_end = undefined
#endif
 
domSelectionCollapseToEnd ::
                          (DOMSelectionClass self) => self -> IO ()
domSelectionCollapseToEnd self
  = webkit_dom_dom_selection_collapse_to_end
      (unDOMSelection (toDOMSelection self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"collapseToStart\"]()"
        webkit_dom_dom_selection_collapse_to_start ::
        JSRef DOMSelection -> IO ()
#else 
webkit_dom_dom_selection_collapse_to_start ::
                                             JSRef DOMSelection -> IO ()
webkit_dom_dom_selection_collapse_to_start = undefined
#endif
 
domSelectionCollapseToStart ::
                            (DOMSelectionClass self) => self -> IO ()
domSelectionCollapseToStart self
  = webkit_dom_dom_selection_collapse_to_start
      (unDOMSelection (toDOMSelection self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteFromDocument\"]()"
        webkit_dom_dom_selection_delete_from_document ::
        JSRef DOMSelection -> IO ()
#else 
webkit_dom_dom_selection_delete_from_document ::
                                                JSRef DOMSelection -> IO ()
webkit_dom_dom_selection_delete_from_document = undefined
#endif
 
domSelectionDeleteFromDocument ::
                               (DOMSelectionClass self) => self -> IO ()
domSelectionDeleteFromDocument self
  = webkit_dom_dom_selection_delete_from_document
      (unDOMSelection (toDOMSelection self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"containsNode\"]($2, $3)"
        webkit_dom_dom_selection_contains_node ::
        JSRef DOMSelection -> JSRef Node -> JSBool -> IO JSBool
#else 
webkit_dom_dom_selection_contains_node ::
                                         JSRef DOMSelection -> JSRef Node -> JSBool -> IO JSBool
webkit_dom_dom_selection_contains_node = undefined
#endif
 
domSelectionContainsNode ::
                         (DOMSelectionClass self, NodeClass node) =>
                           self -> Maybe node -> Bool -> IO Bool
domSelectionContainsNode self node allowPartial
  = fromJSBool <$>
      (webkit_dom_dom_selection_contains_node
         (unDOMSelection (toDOMSelection self))
         (maybe jsNull (unNode . toNode) node)
         (toJSBool allowPartial))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectAllChildren\"]($2)"
        webkit_dom_dom_selection_select_all_children ::
        JSRef DOMSelection -> JSRef Node -> IO ()
#else 
webkit_dom_dom_selection_select_all_children ::
                                               JSRef DOMSelection -> JSRef Node -> IO ()
webkit_dom_dom_selection_select_all_children = undefined
#endif
 
domSelectionSelectAllChildren ::
                              (DOMSelectionClass self, NodeClass node) =>
                                self -> Maybe node -> IO ()
domSelectionSelectAllChildren self node
  = webkit_dom_dom_selection_select_all_children
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) node)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"extend\"]($2, $3)"
        webkit_dom_dom_selection_extend ::
        JSRef DOMSelection -> JSRef Node -> Int -> IO ()
#else 
webkit_dom_dom_selection_extend ::
                                  JSRef DOMSelection -> JSRef Node -> Int -> IO ()
webkit_dom_dom_selection_extend = undefined
#endif
 
domSelectionExtend ::
                   (DOMSelectionClass self, NodeClass node) =>
                     self -> Maybe node -> Int -> IO ()
domSelectionExtend self node offset
  = webkit_dom_dom_selection_extend
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) node)
      offset


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getRangeAt\"]($2)"
        webkit_dom_dom_selection_get_range_at ::
        JSRef DOMSelection -> Int -> IO (JSRef DOMRange)
#else 
webkit_dom_dom_selection_get_range_at ::
                                        JSRef DOMSelection -> Int -> IO (JSRef DOMRange)
webkit_dom_dom_selection_get_range_at = undefined
#endif
 
domSelectionGetRangeAt ::
                       (DOMSelectionClass self) => self -> Int -> IO (Maybe DOMRange)
domSelectionGetRangeAt self index
  = fmap DOMRange . maybeJSNull <$>
      (webkit_dom_dom_selection_get_range_at
         (unDOMSelection (toDOMSelection self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"removeAllRanges\"]()"
        webkit_dom_dom_selection_remove_all_ranges ::
        JSRef DOMSelection -> IO ()
#else 
webkit_dom_dom_selection_remove_all_ranges ::
                                             JSRef DOMSelection -> IO ()
webkit_dom_dom_selection_remove_all_ranges = undefined
#endif
 
domSelectionRemoveAllRanges ::
                            (DOMSelectionClass self) => self -> IO ()
domSelectionRemoveAllRanges self
  = webkit_dom_dom_selection_remove_all_ranges
      (unDOMSelection (toDOMSelection self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"addRange\"]($2)"
        webkit_dom_dom_selection_add_range ::
        JSRef DOMSelection -> JSRef DOMRange -> IO ()
#else 
webkit_dom_dom_selection_add_range ::
                                     JSRef DOMSelection -> JSRef DOMRange -> IO ()
webkit_dom_dom_selection_add_range = undefined
#endif
 
domSelectionAddRange ::
                     (DOMSelectionClass self, DOMRangeClass range) =>
                       self -> Maybe range -> IO ()
domSelectionAddRange self range
  = webkit_dom_dom_selection_add_range
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unDOMRange . toDOMRange) range)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"modify\"]($2, $3, $4)"
        webkit_dom_dom_selection_modify ::
        JSRef DOMSelection -> JSString -> JSString -> JSString -> IO ()
#else 
webkit_dom_dom_selection_modify ::
                                  JSRef DOMSelection -> JSString -> JSString -> JSString -> IO ()
webkit_dom_dom_selection_modify = undefined
#endif
 
domSelectionModify ::
                   (DOMSelectionClass self, ToJSString alter, ToJSString direction,
                    ToJSString granularity) =>
                     self -> alter -> direction -> granularity -> IO ()
domSelectionModify self alter direction granularity
  = webkit_dom_dom_selection_modify
      (unDOMSelection (toDOMSelection self))
      (toJSString alter)
      (toJSString direction)
      (toJSString granularity)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"setBaseAndExtent\"]($2, $3,\n$4, $5)"
        webkit_dom_dom_selection_set_base_and_extent ::
        JSRef DOMSelection ->
          JSRef Node -> Int -> JSRef Node -> Int -> IO ()
#else 
webkit_dom_dom_selection_set_base_and_extent ::
                                               JSRef DOMSelection ->
                                                 JSRef Node -> Int -> JSRef Node -> Int -> IO ()
webkit_dom_dom_selection_set_base_and_extent = undefined
#endif
 
domSelectionSetBaseAndExtent ::
                             (DOMSelectionClass self, NodeClass baseNode,
                              NodeClass extentNode) =>
                               self -> Maybe baseNode -> Int -> Maybe extentNode -> Int -> IO ()
domSelectionSetBaseAndExtent self baseNode baseOffset extentNode
  extentOffset
  = webkit_dom_dom_selection_set_base_and_extent
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) baseNode)
      baseOffset
      (maybe jsNull (unNode . toNode) extentNode)
      extentOffset


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setPosition\"]($2, $3)"
        webkit_dom_dom_selection_set_position ::
        JSRef DOMSelection -> JSRef Node -> Int -> IO ()
#else 
webkit_dom_dom_selection_set_position ::
                                        JSRef DOMSelection -> JSRef Node -> Int -> IO ()
webkit_dom_dom_selection_set_position = undefined
#endif
 
domSelectionSetPosition ::
                        (DOMSelectionClass self, NodeClass node) =>
                          self -> Maybe node -> Int -> IO ()
domSelectionSetPosition self node offset
  = webkit_dom_dom_selection_set_position
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) node)
      offset


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"empty\"]()"
        webkit_dom_dom_selection_empty :: JSRef DOMSelection -> IO ()
#else 
webkit_dom_dom_selection_empty :: JSRef DOMSelection -> IO ()
webkit_dom_dom_selection_empty = undefined
#endif
 
domSelectionEmpty :: (DOMSelectionClass self) => self -> IO ()
domSelectionEmpty self
  = webkit_dom_dom_selection_empty
      (unDOMSelection (toDOMSelection self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"anchorNode\"]"
        webkit_dom_dom_selection_get_anchor_node ::
        JSRef DOMSelection -> IO (JSRef Node)
#else 
webkit_dom_dom_selection_get_anchor_node ::
                                           JSRef DOMSelection -> IO (JSRef Node)
webkit_dom_dom_selection_get_anchor_node = undefined
#endif
 
domSelectionGetAnchorNode ::
                          (DOMSelectionClass self) => self -> IO (Maybe Node)
domSelectionGetAnchorNode self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_dom_selection_get_anchor_node
         (unDOMSelection (toDOMSelection self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"anchorOffset\"]"
        webkit_dom_dom_selection_get_anchor_offset ::
        JSRef DOMSelection -> IO Int
#else 
webkit_dom_dom_selection_get_anchor_offset ::
                                             JSRef DOMSelection -> IO Int
webkit_dom_dom_selection_get_anchor_offset = undefined
#endif
 
domSelectionGetAnchorOffset ::
                            (DOMSelectionClass self) => self -> IO Int
domSelectionGetAnchorOffset self
  = webkit_dom_dom_selection_get_anchor_offset
      (unDOMSelection (toDOMSelection self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"focusNode\"]"
        webkit_dom_dom_selection_get_focus_node ::
        JSRef DOMSelection -> IO (JSRef Node)
#else 
webkit_dom_dom_selection_get_focus_node ::
                                          JSRef DOMSelection -> IO (JSRef Node)
webkit_dom_dom_selection_get_focus_node = undefined
#endif
 
domSelectionGetFocusNode ::
                         (DOMSelectionClass self) => self -> IO (Maybe Node)
domSelectionGetFocusNode self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_dom_selection_get_focus_node
         (unDOMSelection (toDOMSelection self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"focusOffset\"]"
        webkit_dom_dom_selection_get_focus_offset ::
        JSRef DOMSelection -> IO Int
#else 
webkit_dom_dom_selection_get_focus_offset ::
                                            JSRef DOMSelection -> IO Int
webkit_dom_dom_selection_get_focus_offset = undefined
#endif
 
domSelectionGetFocusOffset ::
                           (DOMSelectionClass self) => self -> IO Int
domSelectionGetFocusOffset self
  = webkit_dom_dom_selection_get_focus_offset
      (unDOMSelection (toDOMSelection self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"isCollapsed\"]"
        webkit_dom_dom_selection_get_is_collapsed ::
        JSRef DOMSelection -> IO JSBool
#else 
webkit_dom_dom_selection_get_is_collapsed ::
                                            JSRef DOMSelection -> IO JSBool
webkit_dom_dom_selection_get_is_collapsed = undefined
#endif
 
domSelectionGetIsCollapsed ::
                           (DOMSelectionClass self) => self -> IO Bool
domSelectionGetIsCollapsed self
  = fromJSBool <$>
      (webkit_dom_dom_selection_get_is_collapsed
         (unDOMSelection (toDOMSelection self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rangeCount\"]"
        webkit_dom_dom_selection_get_range_count ::
        JSRef DOMSelection -> IO Int
#else 
webkit_dom_dom_selection_get_range_count ::
                                           JSRef DOMSelection -> IO Int
webkit_dom_dom_selection_get_range_count = undefined
#endif
 
domSelectionGetRangeCount ::
                          (DOMSelectionClass self) => self -> IO Int
domSelectionGetRangeCount self
  = webkit_dom_dom_selection_get_range_count
      (unDOMSelection (toDOMSelection self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"baseNode\"]"
        webkit_dom_dom_selection_get_base_node ::
        JSRef DOMSelection -> IO (JSRef Node)
#else 
webkit_dom_dom_selection_get_base_node ::
                                         JSRef DOMSelection -> IO (JSRef Node)
webkit_dom_dom_selection_get_base_node = undefined
#endif
 
domSelectionGetBaseNode ::
                        (DOMSelectionClass self) => self -> IO (Maybe Node)
domSelectionGetBaseNode self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_dom_selection_get_base_node
         (unDOMSelection (toDOMSelection self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"baseOffset\"]"
        webkit_dom_dom_selection_get_base_offset ::
        JSRef DOMSelection -> IO Int
#else 
webkit_dom_dom_selection_get_base_offset ::
                                           JSRef DOMSelection -> IO Int
webkit_dom_dom_selection_get_base_offset = undefined
#endif
 
domSelectionGetBaseOffset ::
                          (DOMSelectionClass self) => self -> IO Int
domSelectionGetBaseOffset self
  = webkit_dom_dom_selection_get_base_offset
      (unDOMSelection (toDOMSelection self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"extentNode\"]"
        webkit_dom_dom_selection_get_extent_node ::
        JSRef DOMSelection -> IO (JSRef Node)
#else 
webkit_dom_dom_selection_get_extent_node ::
                                           JSRef DOMSelection -> IO (JSRef Node)
webkit_dom_dom_selection_get_extent_node = undefined
#endif
 
domSelectionGetExtentNode ::
                          (DOMSelectionClass self) => self -> IO (Maybe Node)
domSelectionGetExtentNode self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_dom_selection_get_extent_node
         (unDOMSelection (toDOMSelection self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"extentOffset\"]"
        webkit_dom_dom_selection_get_extent_offset ::
        JSRef DOMSelection -> IO Int
#else 
webkit_dom_dom_selection_get_extent_offset ::
                                             JSRef DOMSelection -> IO Int
webkit_dom_dom_selection_get_extent_offset = undefined
#endif
 
domSelectionGetExtentOffset ::
                            (DOMSelectionClass self) => self -> IO Int
domSelectionGetExtentOffset self
  = webkit_dom_dom_selection_get_extent_offset
      (unDOMSelection (toDOMSelection self))